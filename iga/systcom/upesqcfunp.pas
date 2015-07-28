unit upesqcfunp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList, SayPrint;

type
  TfrmPesqcfunp = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesq: TPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label1: TLabel;
    DtpDataI: TDateTimePicker;
    Label2: TLabel;
    DtpDataF: TDateTimePicker;
    pnldir: TPanel;
    dbgcfun: TDBGrid;
    Bevel2: TBevel;
    spdlimpar: TSpeedButton;
    spdfiltrar: TSpeedButton;
    edicodigoi: TEdit;
    edicodigof: TEdit;
    edicodprod: TEdit;
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
    cbxnomefun: TDBLookupComboBox;
    Bevel7: TBevel;
    spdrelatorios176: TSpeedButton;
    spdconfirma: TSpeedButton;
    Panel1: TPanel;
    Label5: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lbltotval: TLabel;
    lbltotvalvlrc: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgcfunKeyPress(Sender: TObject; var Key: Char);
    procedure dbgcfunEnter(Sender: TObject);
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
    procedure dbgcfunExit(Sender: TObject);
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
    procedure dbgcfunKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxnomefunDropDown(Sender: TObject);
    procedure spdrelatorios176Click(Sender: TObject);


  private
    { Private declarations }

  public
    { Public declarations }
     sCompo,sTitRel : String;
     sClassificar:string;
  end;

var
  frmPesqcfunp: TfrmPesqcfunp;

implementation

uses uGeral, uPrincipal, uDados, urelcfunsp, urelcden;

{$R *.DFM}

procedure TfrmPesqcfunp.FormShow(Sender: TObject);
var
   vardir: String;
begin
   vardir := ExtractFilePath(Application.ExeName);

   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Emissão');
   cbxclassificar.ItemIndex := 0;

   with frmdados do
     begin

       cds_funcionarios.Active := false;
       dbx_funcionarios.Active := false;
       dbx_funcionarios.sql.Clear;
       dbx_funcionarios.SQL.Add('Select * from Funcionarios order by nome');
       dbx_funcionarios.Active := true;
       cds_funcionarios.Active := true;


       cbxnomefun.ListSource := Dst_Funcionarios;
       cbxnomefun.ListField := 'Nome';
       cbxnomefun.KeyField := 'Codigo';

       

     end;
   //endi

   spdlimpar.Click;

   
end;

procedure TfrmPesqcfunp.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqcfunp.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqcfunp.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqcfunp.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqcfunp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmPesqcfunp:=nil;
  form_ativo := '';

end;

procedure TfrmPesqcfunp.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqcfunp.dbgcfunKeyPress(Sender: TObject; var Key: Char);
begin

if key = #13 then
   if frmdados.Cds_Comissao.State in [dsinsert, dsedit] then
      frmdados.Cds_Comissao.Post;
   //endi
//endi
end;

procedure TfrmPesqcfunp.dbgcfunEnter(Sender: TObject);
begin
tabela := 'Comissao';
end;

procedure TfrmPesqcfunp.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqcfunp.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqcfunp.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros

  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc  : String;
  ftotcusto, ftotpreco:real;
  icfun, icsitrec:integer;
begin

  with frmdados do
    begin
      Cds_Comissao.Active := false;
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
  sCompo := '(COALESCE(cfun,0) > 0) and ehvenda = '+quotedstr('T');
  sTitRel := '';

  // inicializando variáveis deste filtro
  sDataI := '';
  sDataF := '';
  sCodigoF := '';
  sCodigoI := '';
  sDesc := '';
  icfun := 0;
  icsitRec := 0;
  
  // carregando variaveis
  sDataI := datetostr(dtpdatai.Date);
  sDataI := bar_is_point( sDataI  );
  sCodigoI := edicodigoI.Text;

  sDataF := datetostr(dtpdataF.Date);
  sDataF := bar_is_point( sDataF  );
  sCodigoF := ediCodigoF.Text;

  sDesc := edidesc.Text;
  if cbxnomefun.Text <> '' then
     begin
       icfun := frmdados.Cds_Funcionarios.FieldByName('codigo').asInteger;
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
  if ( icfun > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cfun = ' + inttostr(icfun) + ')';
            sTitRel := sTitRel + ' / Representante: ' + frmdados.Cds_Funcionarios.fieldbyname('nome').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( cfun = ' + inttostr(icfun) + ')';
            sTitRel := sTitRel + ' / Funcionarios: ' + frmdados.Cds_Funcionarios.fieldbyname('nome').asString;
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
         Dbx_Comissao.active := false;
         Dbx_Exec.Active := false;

         Dbx_Comissao.sql.Clear;
         Dbx_exec.SQL.Clear;

         if sCompo <> '' then
            begin
              Dbx_Comissao.sql.Add('select * from Comissao where ('+sCompo+') order by '+sClassificar);
              Dbx_Exec.SQL.Add('Select sum(valor) as totvalor, sum(vcomf) as vlrcom from Comissao where ('+sCompo+')');
            end
         else
            begin
              Dbx_Comissao.sql.Add('select * from Comissao order by '+sClassificar);
              Dbx_Exec.sql.Add('Select sum(valor) as totvalor,sum(vcomf) as vlrcom from Comissao ');
            end;
         //endi

         Dbx_Comissao.active := true;
         Dbx_Exec.Active := true;

         if Dbx_Comissao.recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   Dbx_Comissao.active := false;
                   Dbx_Exec.Active := false;

                   Dbx_Comissao.sql.Clear;
                   Dbx_exec.SQL.Clear;

                   Dbx_Comissao.sql.Add('select * from Comissao where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+' order by '+sClassificar);
                   Dbx_exec.sql.Add('Select sum(valor) as totvalor, sum(vcomf) as vlrcom from Comissao where '+sClassificar+' like '+quotedstr('%'+sDesc+'%'));

                   Dbx_Comissao.active := true;
                   Dbx_Exec.active := true;
                 end;
              //endi
            end;
         //endi

         lbltotval.Caption := formatfloat('###,###,##0.00',Dbx_Exec.fieldbyname('totvalor').asfloat);
         lbltotvalvlrc.Caption := formatfloat('###,###,##0.00',Dbx_Exec.fieldbyname('vlrcom').asfloat);

       end;
    //endth
  except
    showmessage('Não consegui conectar a tabela, operação abortada!!!');
    close;
    exit;
  end;
  with frmdados do
    begin
      Cds_Comissao.Active := true;
    end;
  //end;

  //showmessage(frmdados.Dbx_Comissao.SQL.Text);
end;

procedure TfrmPesqcfunp.spdlimparClick(Sender: TObject);
begin

  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';
  spdfiltrar.Click;
  habdedidesc;

end;

procedure TfrmPesqcfunp.edidescChange(Sender: TObject);
begin
if (edidesc.Text <> '') and (sclassificar <> 'Dte') and (sclassificar <> 'Dtv') and (sclassificar <> 'Dtl') then
   frmdados.cds_Comissao.Locate(frmpesqcfunp.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure TfrmPesqcfunp.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmPesqcfunp.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqcfunp.edidescKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqcfunp.edicodigoiKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqcfunp.edicodigofKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqcfunp.dbgcfunExit(Sender: TObject);
begin
  if frmdados.Cds_Comissao.State in [dsinsert, dsedit] then
     frmdados.Cds_Comissao.Post;
  //endi
end;

procedure TfrmPesqcfunp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqcfunp.cbxclassificar2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;

end;

procedure TfrmPesqcfunp.cbxclassificar2KeyPress(Sender: TObject;
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

procedure TfrmPesqcfunp.cbxclassificarClick(Sender: TObject);
begin
spdfiltrar.Click;
habdedidesc;
end;

procedure tfrmPesqcfunp.habdedidesc;
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


procedure TfrmPesqcfunp.spdprinterClick(Sender: TObject);
begin
//frmMRrec := tfrmMRrec.Create(self);
//frmMRrec.showmodal;
//frmMRrec.Free;
end;

procedure TfrmPesqcfunp.cbxnomeforClick(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqcfunp.cbxnomeforEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqcfunp.cbxnomeclaClick(Sender: TObject);
begin
tabela := 'temp';
end;

procedure TfrmPesqcfunp.cbxnomeclaEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqcfunp.cbxnomeforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_delete then
   frmdados.Cds_temp.edit;
   frmdados.Cds_Temp.FieldByName('codcli').asInteger := 0;
//endi
end;

procedure TfrmPesqcfunp.cbxnomesitpagarClick(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqcfunp.cbxnomesitpagarEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqcfunp.cbxnomesitpagarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = vk_delete then
   frmdados.Cds_temp.edit;
   frmdados.Cds_Temp.FieldByName('codsitrec').asInteger := 0;
//endi

end;


procedure TfrmPesqcfunp.dbgcfunKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqcfunp.cbxnomefunDropDown(Sender: TObject);
begin
//showmessage('');
//tabela := 'Funcionarios';
//frmdados.Cds_Funcionarios.Append;

end;

procedure TfrmPesqcfunp.spdrelatorios176Click(Sender: TObject);
begin
  frmrelcden := tfrmrelcden.create(self);
  frmrelcden.relatorio.preview;
  frmrelcden.free;


  //frmrelcfunsp := tfrmrelcfunsp.create(self);
  //frmrelcfunsp.relatorio.preview;
  //frmrelcfunsp.free;
end;

end.
