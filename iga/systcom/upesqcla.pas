unit upesqcla;
                
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList;

type
  TfrmPesqcla = class(TForm)
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
    pclres: TPageControl;
    tbslista: TTabSheet;
    tbsresrea: TTabSheet;
    dbgclasses: TDBGrid;
    grdres: TStringGrid;
    Bevel7: TBevel;
    spdrelatorios176: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgclassesKeyPress(Sender: TObject; var Key: Char);
    procedure dbgclassesEnter(Sender: TObject);
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
    procedure dbgclassesExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure res_ano;
    procedure tbsresreaShow(Sender: TObject);
    procedure tbslistaShow(Sender: TObject);
    procedure titcol;
    procedure linhadetpago(ilinha:integer);
    procedure subtotpago(ilinha:integer);
    procedure totpagomes(ilinha:integer);
    procedure limparsubtot;
    procedure limpartotmes;
    procedure spdprinterClick(Sender: TObject);
    procedure dbgclassesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdrelatorios176Click(Sender: TObject);

  private
    { Private declarations }
    sClassificar:string;
    scclap:string;
    fsubtotjan, fsubtotfev, fsubtotmar, fsubtotabr, fsubtotmai, fsubtotjun,
    fsubtotjul, fsubtotago, fsubtotsete, fsubtotout, fsubtotnov, fsubtotdez,
    ftotg, ftotjan, ftotfev, ftotmar, ftotabr, ftotmai, ftotjun, ftotjul,
    ftotago, ftotsete, ftotout, ftotnov, ftotdez, ftotano:real;
  public
    { Public declarations }
    sTitRel :String;
  end;

var
  frmPesqcla: TfrmPesqcla;

implementation

uses uGeral, uPrincipal, uDados, uMRCla;

{$R *.DFM}

procedure TfrmPesqcla.FormShow(Sender: TObject);
var
   vardir: String;
begin
   vardir := ExtractFilePath(Application.ExeName);

   pclres.ActivePageIndex := 0;

   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Descrição');
   cbxclassificar.ItemIndex := 0;


   with frmdados do
     begin

       cds_classep.Active := false;
       dbx_classep.Active := false;
       dbx_classep.SQL.Clear;
       dbx_classep.SQL.Add('Select * from classep order by descricao');
       dbx_classep.Active := true;
       cds_classep.Active := true;
       

       sqp_dados.Close;
       sqp_dados.StoredProcName := 'res_cla_conta';
     end;
  //endth


   spdlimpar.Click;
end;

procedure TfrmPesqcla.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqcla.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqcla.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqcla.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqcla.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmPesqcla:=nil;
  form_ativo := '';

end;

procedure TfrmPesqcla.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqcla.dbgclassesKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_Classe.State in [dsinsert, dsedit] then
      frmdados.Cds_Classe.Post;
   //endi
//endi
end;

procedure TfrmPesqcla.dbgclassesEnter(Sender: TObject);
begin
tabela := 'Classe';
end;

procedure TfrmPesqcla.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqcla.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqcla.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo,sTitRel : String;
  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc : String;
  ftotcusto, ftotpreco:real;
begin

  with frmdados do
    begin
      Cds_Classe.Active := false;
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
    with frmdados.Dbx_Classe do
       begin
         active := false;
         sql.Clear;
         if sCompo <> '' then
            sql.Add('select * from Classe where '+sCompo+' order by cclap, '+sClassificar)
         else
            sql.Add('select * from Classe order by cclap, '+sClassificar);
         //endi
         active := true;

         if recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   active := false;
                   sql.Clear;
                   sql.Add('select * from Classe where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by cclap, '+sClassificar);
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
      Cds_Classe.Active := true;
    end;
  //end;
end;

procedure TfrmPesqcla.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';
  limpartotmes;
  limparsubtot;
  spdfiltrar.Click;
end;

procedure TfrmPesqcla.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   frmdados.cds_Classe.Locate(frmpesqcla.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure TfrmPesqcla.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmPesqcla.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqcla.edidescKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqcla.edicodigoiKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqcla.edicodigofKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqcla.dbgclassesExit(Sender: TObject);
begin
  if frmdados.Cds_Classe.State in [dsinsert, dsedit] then
     frmdados.Cds_Classe.Post;
  //endi
end;

procedure TfrmPesqcla.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqcla.res_ano;
var
  iano, imes, idia:word;
begin
   decodedate(date,iano,imes,idia);
   with frmdados do
     begin
       sqp_dados.Close;
       sqp_dados.StoredProcName := 'res_cla_conta';
       sqp_dados.ParamByName('VARANOI').AsInteger := iAno;
       sqp_dados.ParamByName('VARANOF').AsInteger := iAno;
       sqp_dados.ParamByName('VARCOD_CLA').AsInteger := cds_classe.fieldbyname('codigo').asInteger;
       sqp_dados.ExecProc;
       //cds_classe.Edit;
       //cds_classe.fieldbyname('Ago').asfloat := sqp_dados.ParamByName('Ago').Asfloat;
       //cds_classe.Post;
     end;
   //endth


end;


procedure TfrmPesqcla.tbsresreaShow(Sender: TObject);
var
  x,y,z, icontador, icoluna:integer;
   iano, imes, idia:word;
   s0:string;
begin
  limpartotmes;
  limparsubtot;

  x := 0;
  y := 1;
  z := 0;


   decodedate(date,iano,imes,idia);



  grdres.DefaultColWidth := 100;
  grdres.ColWidths[0] := 380;
  grdres.Cells[0,0] := 'DESCRIÇÃO - ANO DE '+inttostr(iano);
  //grdres.Cells[1,0] := 'JANEIRO';
  //grdres.Cells[2,0] := 'FEVEREIRO';
  //grdres.Cells[3,0] := 'MARÇO';
  //grdres.Cells[4,0] := 'ABRIL';
  //grdres.Cells[5,0] := 'MAIO';
  //grdres.Cells[6,0] := 'JUNHO';
  //grdres.Cells[7,0] := 'JULHO';
  //grdres.Cells[8,0] := 'AGOSTO';
  //grdres.Cells[9,0] := 'SETEMBRO';
  //grdres.Cells[10,0] := 'OUTUBRO';
  //grdres.Cells[11,0] := 'NOVEMBRO';
  //grdres.Cells[12,0] := 'DEZEMBRO';

  titcol;

  //for x := 1 to 12 do
  //   begin
  //     grdres.ColWidths[x] := 60;
  //   end;
  //endfor

 ftotg := 0;


  with frmdados do
    begin
      cds_classe.First;
      scClap := cds_classe.fieldbyname('cClap').asString;

      grdres.RowCount := cds_classe.RecordCount + 2;

      //while not cds_classep.eof do
      //  begin

       //   Dbx_classe.Active := false;
       //   Dbx_classe.SQL.Clear;
       //   Dbx_classe.SQL.Add('Select * from Classe where cclap = '+Cds_Classep.fieldbyname('codigo').asString);
       //   Dbx_classe.Active := true;
       //   cds_classe.Refresh;



          while true do
            begin







              grdres.Cells[x,y]:=cds_classe.fieldbyname('nclap').asString+' - '+cds_classe.fieldbyname('descricao').asString;


               //with frmdados do
               //  begin
                   sqp_dados.ParamByName('VARANOI').AsInteger := iAno;
                   sqp_dados.ParamByName('VARANOF').AsInteger := iAno;
                   sqp_dados.ParamByName('VARCOD_CLA').AsInteger := cds_classe.fieldbyname('codigo').asInteger;
                   sqp_dados.ExecProc;
                   //grdres.Cells[8,y] :=  StringOfChar(' ',5-Length(   formatfloat('###,###,##0.00',sqp_dados.ParamByName('Ago').Asfloat)));
                   //grdres.Cells[8,y] :=  formatfloat('###,###,##0.00',sqp_dados.ParamByName('Ago').Asfloat);
                   //grdres.Cells[8,y] :=  StringOfChar(' ',6-Length(  '333' ));

                   //s0 := '';
                   //for z := 0 to 14 - length(formatfloat('###,###,##0.00',sqp_dados.ParamByName('Ago').Asfloat)) do
                   //  begin
                   //    s0 := s0 + ' ';
                   //  end;
                   //endi


                   linhadetpago(y);








                   //grdres.Cells[1,y] :=  AlinNumD(10,sqp_dados.ParamByName('Jan').Asfloat);
                   //grdres.Cells[2,y] :=  AlinNumD(10,sqp_dados.ParamByName('Fev').Asfloat);
                   //grdres.Cells[3,y] :=  AlinNumD(10,sqp_dados.ParamByName('Mar').Asfloat);
                   //grdres.Cells[4,y] :=  AlinNumD(10,sqp_dados.ParamByName('Abr').Asfloat);
                   //grdres.Cells[5,y] :=  AlinNumD(10,sqp_dados.ParamByName('Mai').Asfloat);
                   //grdres.Cells[6,y] :=  AlinNumD(10,sqp_dados.ParamByName('Jun').Asfloat);
                   //grdres.Cells[7,y] :=  AlinNumD(10,sqp_dados.ParamByName('Jul').Asfloat);
                   //grdres.Cells[8,y] :=  AlinNumD(10,sqp_dados.ParamByName('Ago').Asfloat);
                   //grdres.Cells[9,y] :=  AlinNumD(10,sqp_dados.ParamByName('Sete').Asfloat);
                   //grdres.Cells[10,y] :=  AlinNumD(10,sqp_dados.ParamByName('Out').Asfloat);
                   //grdres.Cells[11,y] :=  AlinNumD(10,sqp_dados.ParamByName('Nov').Asfloat);
                   //grdres.Cells[12,y] :=  AlinNumD(10,sqp_dados.ParamByName('Dez').Asfloat);


               //  end;
               //endth


              cds_classe.Next;
              y := y + 1;


              if (scClap <> cds_classe.fieldbyname('cclap').asString) or (cds_classe.Eof) then
                 begin
                   if not cds_classe.Eof then
                      begin
                       grdres.RowCount := grdres.RowCount + 2;
                      end;
                   //endi
                   //grdres.Cells[2,y] := AlinNumD(10,fsubtotago);
                   subtotpago(y);

                   limparsubtot;


                   y := y + 2;


                 end;
              //endi







              if cds_classe.Eof then
                 break;
              //endi


              scClap := cds_classe.fieldbyname('cClap').asString;


            end;
          //endw


          grdres.RowCount := grdres.RowCount + 2;
          totpagomes(y);



       //   cds_classep.Next;
       //   y := y + 1;
      //  end;
      //endw


    end;
  //endth

end;

procedure TfrmPesqcla.tbslistaShow(Sender: TObject);
begin
if frmdados.Cds_Classe.Active then
   frmdados.Cds_Classe.First;
//endi   
end;


procedure TfrmPesqcla.titcol;
var
  icontador, icoluna:integer;
  imes, idia, iano:word;
begin
   decodedate(date,iano,imes,idia);


   icoluna := 1;
   for icontador := imes downto 1 do
       begin
          if icontador = 1 then
             begin
               grdres.Cells[icoluna,0] := 'JANEIRO';
             end;
         //endi
          if icontador = 2 then
             begin
               grdres.Cells[icoluna,0] := 'FEVEREIRO';
             end;
         //endi
          if icontador = 3 then
             begin
               grdres.Cells[icoluna,0] := 'MARÇO';
             end;
         //endi
          if icontador = 4 then
             begin
               grdres.Cells[icoluna,0] := 'ABRIL';
             end;
         //endi
          if icontador = 5 then
             begin
               grdres.Cells[icoluna,0] := 'MAIO';
             end;
         //endi
          if icontador = 6 then
             begin
               grdres.Cells[icoluna,0] := 'JUNHO';
             end;
         //endi
          if icontador = 7 then
             begin
               grdres.Cells[icoluna,0] := 'JULHO';
             end;
         //endi
          if icontador = 8 then
             begin
               grdres.Cells[icoluna,0] := 'AGOSTO';
             end;
         //endi
          if icontador = 9 then
             begin
               grdres.Cells[icoluna,0] := 'SETEMBRO';
             end;
         //endi
          if icontador = 10 then
             begin
               grdres.Cells[icoluna,0] := 'OUTUBRO';
             end;
         //endi
          if icontador = 11 then
             begin
               grdres.Cells[icoluna,0] := 'NOVEMBRO';
             end;
         //endi
          if icontador = 12 then
             begin
             grdres.Cells[icoluna,0] := 'DEZEMBRO';
             end;
         //endi
         icoluna := icoluna + 1;
       end;
  //endfor

 if imes < 12 then
  begin
   for icontador := 12 downto imes+1 do
       begin
          if icontador = 1 then
             begin
               grdres.Cells[icoluna,0] := 'JANEIRO';
             end;
         //endi
          if icontador = 2 then
             begin
               grdres.Cells[icoluna,0] := 'FEVEREIRO';
             end;
         //endi
          if icontador = 3 then
             begin
               grdres.Cells[icoluna,0] := 'MARÇO';
             end;
         //endi
          if icontador = 4 then
             begin
               grdres.Cells[icoluna,0] := 'ABRIL';
             end;
         //endi
          if icontador = 5 then
             begin
               grdres.Cells[icoluna,0] := 'MAIO';
             end;
         //endi
          if icontador = 6 then
             begin
               grdres.Cells[icoluna,0] := 'JUNHO';
             end;
         //endi
          if icontador = 7 then
             begin
               grdres.Cells[icoluna,0] := 'JULHO';
             end;
         //endi
          if icontador = 8 then
             begin
               grdres.Cells[icoluna,0] := 'AGOSTO';
             end;
         //endi
          if icontador = 9 then
             begin
               grdres.Cells[icoluna,0] := 'SETEMBRO';
             end;
         //endi
          if icontador = 10 then
             begin
               grdres.Cells[icoluna,0] := 'OUTUBRO';
             end;
         //endi
          if icontador = 11 then
             begin
               grdres.Cells[icoluna,0] := 'NOVEMBRO';
             end;
         //endi
          if icontador = 12 then
             begin
             grdres.Cells[icoluna,0] := 'DEZEMBRO';
             end;
         //endi
         icoluna := icoluna + 1;
       end;
   //endfor
  end;
 //endif

end;

procedure TfrmPesqcla.linhadetpago(ilinha:integer);
var
  icoluna, icontador:integer;
  imes, idia, iano:word;
begin
decodedate(date,iano,imes,idia);
icoluna := 1;
  with frmdados do
     begin



                   for icontador := imes downto 1 do
                     begin
                        if icontador = 1 then
                           begin
                             grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('Jan').Asfloat);
                             fsubtotjan := fsubtotjan + sqp_dados.ParamByName('Jan').Asfloat;
                             ftotjan := ftotjan + sqp_dados.ParamByName('Jan').Asfloat;
                           end;
                         //endi
                         if icontador = 2 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('fev').Asfloat);
                               fsubtotfev := fsubtotfev + sqp_dados.ParamByName('fev').Asfloat;
                               ftotfev := ftotfev + sqp_dados.ParamByName('fev').Asfloat;
                             end;
                         //endi
                         if icontador = 3 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('mar').Asfloat);
                               fsubtotmar := fsubtotmar + sqp_dados.ParamByName('mar').Asfloat;
                               ftotmar := ftotmar + sqp_dados.ParamByName('mar').Asfloat;
                             end;
                         //endi
                         if icontador = 4 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('abr').Asfloat);
                               fsubtotabr := fsubtotabr + sqp_dados.ParamByName('abr').Asfloat;
                               ftotabr := ftotabr + sqp_dados.ParamByName('abr').Asfloat;
                             end;
                         //endi
                         if icontador = 5 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('mai').Asfloat);
                               fsubtotmai := fsubtotmai + sqp_dados.ParamByName('mai').Asfloat;
                               ftotmai := ftotmai + sqp_dados.ParamByName('mai').Asfloat;
                             end;
                         //endi
                         if icontador = 6 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('Jun').Asfloat);
                               fsubtotjun := fsubtotjun + sqp_dados.ParamByName('Jun').Asfloat;
                               ftotjun := ftotjun + sqp_dados.ParamByName('Jun').Asfloat;
                             end;
                         //endi
                         if icontador = 7 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('Jul').Asfloat);
                               fsubtotjul := fsubtotjul + sqp_dados.ParamByName('Jul').Asfloat;
                               ftotjul := ftotjul + sqp_dados.ParamByName('Jul').Asfloat;
                             end;
                         //endi
                         if icontador = 8 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('Ago').Asfloat);
                               fsubtotago := fsubtotago + sqp_dados.ParamByName('ago').Asfloat;
                               ftotago := ftotago + sqp_dados.ParamByName('ago').Asfloat;
                             end;
                         //endi
                         if icontador = 9 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('Sete').Asfloat);
                               fsubtotsete := fsubtotsete + sqp_dados.ParamByName('sete').Asfloat;
                               ftotsete := ftotsete + sqp_dados.ParamByName('sete').Asfloat;
                             end;
                         //endi
                         if icontador = 10 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('Out').Asfloat);
                               fsubtotout := fsubtotout + sqp_dados.ParamByName('out').Asfloat;
                               ftotout := ftotout + sqp_dados.ParamByName('out').Asfloat;
                             end;
                         //endi
                         if icontador = 11 then
                            begin
                              grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('Nov').Asfloat);
                              fsubtotnov := fsubtotnov + sqp_dados.ParamByName('nov').Asfloat;
                              ftotnov := ftotnov + sqp_dados.ParamByName('nov').Asfloat;
                             end;
                         //endi
                         if icontador = 12 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('Dez').Asfloat);
                               fsubtotdez := fsubtotdez + sqp_dados.ParamByName('dez').Asfloat;
                               ftotdez := ftotdez + sqp_dados.ParamByName('dez').Asfloat;
                             end;
                         //endi
                         icoluna := icoluna + 1;
                       end;
                  //endfor

                 if imes < 12 then
                    begin
                       for icontador := 12 downto imes+1 do
                           begin

                              if icontador = 1 then
                                 begin
                                   grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('Jan').Asfloat);
                                   fsubtotjan := fsubtotjan + sqp_dados.ParamByName('Jan').Asfloat;
                                   ftotjan := ftotjan + sqp_dados.ParamByName('Jan').Asfloat;
                                 end;
                               //endi
                               if icontador = 2 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('fev').Asfloat);
                                     fsubtotfev := fsubtotfev + sqp_dados.ParamByName('fev').Asfloat;
                                     ftotfev := ftotfev + sqp_dados.ParamByName('fev').Asfloat;
                                   end;
                               //endi
                               if icontador = 3 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('mar').Asfloat);
                                     fsubtotmar := fsubtotmar + sqp_dados.ParamByName('mar').Asfloat;
                                     ftotmar := ftotmar + sqp_dados.ParamByName('mar').Asfloat;
                                   end;
                                 //endi
                               if icontador = 4 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('abr').Asfloat);
                                     fsubtotabr := fsubtotabr + sqp_dados.ParamByName('abr').Asfloat;
                                     ftotabr := ftotabr + sqp_dados.ParamByName('abr').Asfloat;
                                   end;
                               //endi
                               if icontador = 5 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('mai').Asfloat);
                                     fsubtotmai := fsubtotmai + sqp_dados.ParamByName('mai').Asfloat;
                                     ftotmai := ftotmai + sqp_dados.ParamByName('mai').Asfloat;
                                   end;
                               //endi
                               if icontador = 6 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('Jun').Asfloat);
                                     fsubtotjun := fsubtotjun + sqp_dados.ParamByName('Jun').Asfloat;
                                     ftotjun := ftotjun + sqp_dados.ParamByName('Jun').Asfloat;
                                   end;
                               //endi
                               if icontador = 7 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('Jul').Asfloat);
                                     fsubtotjul := fsubtotjul + sqp_dados.ParamByName('Jul').Asfloat;
                                     ftotjul := ftotjul + sqp_dados.ParamByName('Jul').Asfloat;
                                   end;
                               //endi
                               if icontador = 8 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('Ago').Asfloat);
                                     fsubtotago := fsubtotago + sqp_dados.ParamByName('Ago').Asfloat;
                                     ftotago := ftotago + sqp_dados.ParamByName('Ago').Asfloat;
                                   end;
                               //endi
                               if icontador = 9 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('Sete').Asfloat);
                                     fsubtotSete := fsubtotSete + sqp_dados.ParamByName('sete').Asfloat;
                                     ftotSete := ftotSete + sqp_dados.ParamByName('sete').Asfloat;
                                   end;
                               //endi
                               if icontador = 10 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('Out').Asfloat);
                                     fsubtotOut := fsubtotOut + sqp_dados.ParamByName('Out').Asfloat;
                                     ftotOut := ftotOut + sqp_dados.ParamByName('Out').Asfloat;
                                   end;
                               //endi
                               if icontador = 11 then
                                  begin
                                    grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('Nov').Asfloat);
                                    fsubtotnov := fsubtotnov + sqp_dados.ParamByName('nov').Asfloat;
                                    ftotnov := ftotnov + sqp_dados.ParamByName('nov').Asfloat;
                                   end;
                               //endi
                               if icontador = 12 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,sqp_dados.ParamByName('Dez').Asfloat);
                                     fsubtotdez := fsubtotdez + sqp_dados.ParamByName('Dez').Asfloat;
                                     ftotdez := ftotdez + sqp_dados.ParamByName('Dez').Asfloat;
                                   end;
                               //endi



                               icoluna := icoluna + 1;
                             end;
                       //endfor


                


           end;
         //endif

       end;
    //endth

end;

procedure TfrmPesqcla.subtotpago(ilinha:integer);
var
  icoluna, icontador:integer;
  imes, idia, iano:word;
begin
decodedate(date,iano,imes,idia);
icoluna := 1;

grdres.Cells[0,ilinha] := 'SUB-TOTAL';
  with frmdados do
     begin


                   for icontador := imes downto 1 do
                     begin
                        if icontador = 1 then
                           begin
                             grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotjan);
                           end;
                         //endi
                         if icontador = 2 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotfev);
                             end;
                         //endi
                         if icontador = 3 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotmar);
                             end;
                         //endi
                         if icontador = 4 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotabr);
                             end;
                         //endi
                         if icontador = 5 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotmai);
                             end;
                         //endi
                         if icontador = 6 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotjun);
                             end;
                         //endi
                         if icontador = 7 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotjul);
                             end;
                         //endi
                         if icontador = 8 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotago);
                             end;
                         //endi
                         if icontador = 9 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotsete);
                             end;
                         //endi
                         if icontador = 10 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotout);
                             end;
                         //endi
                         if icontador = 11 then
                            begin
                              grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotnov);
                             end;
                         //endi
                         if icontador = 12 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotdez);
                             end;
                         //endi
                         icoluna := icoluna + 1;
                       end;
                  //endfor

                 if imes < 12 then
                    begin
                       for icontador := 12 downto imes+1 do
                           begin

                              if icontador = 1 then
                                 begin
                                   grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotjan);
                                 end;
                               //endi
                               if icontador = 2 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotfev);
                                   end;
                               //endi
                               if icontador = 3 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotmar);
                                   end;
                                 //endi
                               if icontador = 4 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotabr);
                                   end;
                               //endi
                               if icontador = 5 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotmai);
                                   end;
                               //endi
                               if icontador = 6 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotjun);
                                   end;
                               //endi
                               if icontador = 7 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotjul);
                                   end;
                               //endi
                               if icontador = 8 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotago);
                                   end;
                               //endi
                               if icontador = 9 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotsete);
                                   end;
                               //endi
                               if icontador = 10 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotout);
                                   end;
                               //endi
                               if icontador = 11 then
                                  begin
                                    grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotnov);
                                   end;
                               //endi
                               if icontador = 12 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,fsubtotdez);
                                   end;
                               //endi



                               icoluna := icoluna + 1;
                             end;
                       //endfor


           end;
         //endif

       end;
    //endth

end;



procedure TfrmPesqcla.totpagomes(ilinha:integer);
var
  icoluna, icontador:integer;
  imes, idia, iano:word;
begin
decodedate(date,iano,imes,idia);
icoluna := 1;




grdres.Cells[0,ilinha] := 'TOTAL';
  with frmdados do
     begin


                   for icontador := imes downto 1 do
                     begin
                        if icontador = 1 then
                           begin
                             grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotjan);
                           end;
                         //endi
                         if icontador = 2 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotfev);
                             end;
                         //endi
                         if icontador = 3 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotmar);
                             end;
                         //endi
                         if icontador = 4 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotabr);
                             end;
                         //endi
                         if icontador = 5 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotmai);
                             end;
                         //endi
                         if icontador = 6 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotjun);
                             end;
                         //endi
                         if icontador = 7 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotjul);
                             end;
                         //endi
                         if icontador = 8 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotago);
                             end;
                         //endi
                         if icontador = 9 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotsete);
                             end;
                         //endi
                         if icontador = 10 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotout);
                             end;
                         //endi
                         if icontador = 11 then
                            begin
                              grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotnov);
                             end;
                         //endi
                         if icontador = 12 then
                             begin
                               grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotdez);
                             end;
                         //endi
                         icoluna := icoluna + 1;
                       end;
                  //endfor

                 if imes < 12 then
                    begin
                       for icontador := 12 downto imes+1 do
                           begin

                              if icontador = 1 then
                                 begin
                                   grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotjan);
                                 end;
                               //endi
                               if icontador = 2 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotfev);
                                   end;
                               //endi
                               if icontador = 3 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotmar);
                                   end;
                                 //endi
                               if icontador = 4 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotabr);
                                   end;
                               //endi
                               if icontador = 5 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotmai);
                                   end;
                               //endi
                               if icontador = 6 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotjun);
                                   end;
                               //endi
                               if icontador = 7 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotjul);
                                   end;
                               //endi
                               if icontador = 8 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotago);
                                   end;
                               //endi
                               if icontador = 9 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotsete);
                                   end;
                               //endi
                               if icontador = 10 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotout);
                                   end;
                               //endi
                               if icontador = 11 then
                                  begin
                                    grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotnov);
                                   end;
                               //endi
                               if icontador = 12 then
                                   begin
                                     grdres.Cells[icoluna,ilinha] := AlinNumD(10,ftotdez);
                                   end;
                               //endi



                               icoluna := icoluna + 1;
                             end;
                       //endfor


           end;
         //endif

       end;
    //endth

end;






procedure tfrmpesqcla.limparsubtot;
begin
  fsubtotjan := 0;
  fsubtotfev := 0;
  fsubtotmar := 0;
  fsubtotabr := 0;
  fsubtotmai := 0;
  fsubtotjun := 0;
  fsubtotjul := 0;
  fsubtotago := 0;
  fsubtotsete := 0;
  fsubtotout := 0;
  fsubtotnov := 0;
  fsubtotdez := 0;
end;

procedure tfrmpesqcla.limpartotmes;
begin
  ftotjan := 0;
  ftotfev := 0;
  ftotmar := 0;
  ftotabr := 0;
  ftotmai := 0;
  ftotjun := 0;
  ftotjul := 0;
  ftotago := 0;
  ftotsete := 0;
  ftotout := 0;
  ftotnov := 0;
  ftotdez := 0;
  ftotano := 0;
end;



procedure TfrmPesqcla.spdprinterClick(Sender: TObject);
begin
frmMRCla := tfrmMRCla.Create(self);
frmMRCla.ShowModal;
frmMRCla.Free;

end;

procedure TfrmPesqcla.dbgclassesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqcla.spdrelatorios176Click(Sender: TObject);
begin
  frmMRcla := tfrmMRcla.Create(self);
  frmMRcla.Showmodal;
  frmMRcla.free;
end;

end.
