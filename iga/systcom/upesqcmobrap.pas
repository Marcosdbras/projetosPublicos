unit upesqcmobrap;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList;

type
  TfrmPesqcmobrap = class(TForm)
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
    spdIncluir171: TSpeedButton;
    spdant: TSpeedButton;
    spdprox: TSpeedButton;
    spdExcluir173: TSpeedButton;
    pgtmao: TPageControl;
    tbsmodulo: TTabSheet;
    tbscmobra: TTabSheet;
    dbgcmobra: TDBGrid;
    dbgmodulo: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgcmobraKeyPress(Sender: TObject; var Key: Char);
    procedure dbgcmobraEnter(Sender: TObject);
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
    procedure dbgcmobraExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdIncluir171Click(Sender: TObject);
    procedure spdantClick(Sender: TObject);
    procedure spdproxClick(Sender: TObject);
    procedure spdExcluir173Click(Sender: TObject);
    procedure dbgcmobraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgmoduloEnter(Sender: TObject);
    procedure dbgmoduloExit(Sender: TObject);
    procedure dbgmoduloKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgmoduloKeyPress(Sender: TObject; var Key: Char);
    procedure tbscmobraShow(Sender: TObject);
    procedure tbsmoduloShow(Sender: TObject);
  private
    { Private declarations }
    sClassificar:string;
  public
    { Public declarations }
  end;

var
  frmPesqcmobrap: TfrmPesqcmobrap;

implementation

uses uGeral, uPrincipal, uDados;

{$R *.DFM}

procedure TfrmPesqcmobrap.FormShow(Sender: TObject);
var
   vardir: String;
begin
   vardir := ExtractFilePath(Application.ExeName);

  with frmdados do
    begin
      cds_modulo.Active := false;
      dbx_modulo.Active := false;
      dbx_modulo.SQL.Clear;
      dbx_modulo.SQL.Add('Select * from modulo order by descricao');
      dbx_modulo.Active := true;
      cds_modulo.Active := true;

      cds_tipotab.Active := false;
      dbx_tipotab.Active := false;
      dbx_tipotab.SQL.Clear;
      dbx_tipotab.SQL.Add('Select * from tipotab order by descricao');
      dbx_tipotab.Active := true;
      cds_tipotab.Active := true;


    end;
  //endth


   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Descrição');
   cbxclassificar.ItemIndex := 0;
   spdlimpar.Click;
end;

procedure TfrmPesqcmobrap.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqcmobrap.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqcmobrap.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqcmobrap.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqcmobrap.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmPesqcmobrap:=nil;
  form_ativo := '';

end;

procedure TfrmPesqcmobrap.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqcmobrap.dbgcmobraKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_cmobra.State in [dsinsert, dsedit] then
      frmdados.Cds_cmobra.Post;
   //endi
//endi
end;

procedure TfrmPesqcmobrap.dbgcmobraEnter(Sender: TObject);
begin
tabela := 'cmobra';
end;

procedure TfrmPesqcmobrap.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqcmobrap.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqcmobrap.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo,sTitRel : String;
  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc : String;
  ftotcusto, ftotpreco:real;
begin



     if pgtmao.ActivePageIndex = 1 then
        begin

          with frmdados do
            begin
              Cds_cmobra.Active := false;
            end;
          //end;

          if cbxclassificar.Text = 'Descrição' then
             sClassificar := 'descr';
          //endi
          if edicodigoi.Text <> '' then
             sClassificar := 'Codigo';
          //endi
          if edicodigof.Text <> '' then
             sClassificar := 'Codigo';
          //endi

        end;
     //endi
     if pgtmao.ActivePageIndex = 0 then
        begin

          with frmdados do
            begin
              Cds_modulo.Active := false;
            end;
          //end;

          if cbxclassificar.Text = 'Descrição' then
             sClassificar := 'descricao';
          //endi
          if edicodigoi.Text <> '' then
             sClassificar := 'Codigo';
          //endi
          if edicodigof.Text <> '' then
             sClassificar := 'Codigo';
          //endi




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


     if pgtmao.ActivePageIndex = 1 then
        begin

          try
            with frmdados.Dbx_cmobra do
               begin
                 active := false;
                 sql.Clear;
                 if sCompo <> '' then
                    sql.Add('select * from cmobra where '+sCompo+' order by '+sClassificar)
                 else
                    sql.Add('select * from cmobra order by '+sClassificar);
                 //endi
                 active := true;

                 if recordcount = 0 then
                    begin
                      if sDesc <> '' then
                         begin
                           active := false;
                           sql.Clear;
                           sql.Add('select * from cmobra where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
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
                Cds_cmobra.Active := true;
              end;
          //end;

        end;
     //endi
     if pgtmao.ActivePageIndex = 0 then
        begin

          try
            with frmdados.Dbx_modulo do
               begin
                 active := false;
                 sql.Clear;
                 if sCompo <> '' then
                    sql.Add('select * from modulo where '+sCompo+' order by '+sClassificar)
                 else
                    sql.Add('select * from modulo order by '+sClassificar);
                 //endi
                 active := true;

                 if recordcount = 0 then
                    begin
                      if sDesc <> '' then
                         begin
                           active := false;
                           sql.Clear;
                           sql.Add('select * from modulo where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
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
                Cds_modulo.Active := true;
              end;
          //end;





        end;
     //endi













end;

procedure TfrmPesqcmobrap.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';
  spdfiltrar.Click;
end;

procedure TfrmPesqcmobrap.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   begin

     if pgtmao.ActivePageIndex = 1 then
        begin
          frmdados.cds_cmobra.Locate(frmpesqcmobrap.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
        end;
     //endi
     if pgtmao.ActivePageIndex = 0 then
        begin
          frmdados.cds_modulo.Locate(frmpesqcmobrap.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
        end;
     //endi
   end;
//endi




end;

procedure TfrmPesqcmobrap.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmPesqcmobrap.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqcmobrap.edidescKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqcmobrap.edicodigoiKeyPress(Sender: TObject; var Key: Char);
begin
edidesc.Text := '';
//if key = #13 then
//   begin
//     key := #0;
//     SelectNext(ActiveControl,True,True);
//     exit;
//   end;
//endi


if key = #13 then
   begin

     if edicodigoi.Text <> '' then
        if not frmdados.cds_cmobra.Locate('codigo',edicodigoi.text,[])then
           showmessage('Código não Encontrado...');
        //endi
     //endi



//     key := #0;
//     SelectNext(ActiveControl,True,True);
//     exit;
   end;
//endi




If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure TfrmPesqcmobrap.edicodigofKeyPress(Sender: TObject; var Key: Char);
begin
edidesc.Text := '';
//if key = #13 then
//   begin
//     key := #0;
//     SelectNext(ActiveControl,True,True);
//     exit;
//   end;
//endi
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure TfrmPesqcmobrap.dbgcmobraExit(Sender: TObject);
begin
  if frmdados.Cds_cmobra.State in [dsinsert, dsedit] then
     frmdados.Cds_cmobra.Post;
  //endi
end;

procedure TfrmPesqcmobrap.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqcmobrap.spdIncluir171Click(Sender: TObject);
begin
if pgtmao.ActivePageIndex = 1 then
   begin
     tabela := 'cmobra';
     dbgcmobra.SetFocus;
     frmdados.Cds_cmobra.Append;
   end;
//endi
if pgtmao.ActivePageIndex = 0 then
   begin
     tabela := 'Modulo';
     dbgmodulo.SetFocus;
     frmdados.Cds_modulo.Append;
   end;
//endi
end;

procedure TfrmPesqcmobrap.spdantClick(Sender: TObject);
begin
  frmdados.Cds_cmobra.Prior;

end;

procedure TfrmPesqcmobrap.spdproxClick(Sender: TObject);
begin
frmdados.Cds_cmobra.Next;
end;

procedure TfrmPesqcmobrap.spdExcluir173Click(Sender: TObject);
begin
tabela := 'cmobra';
if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
   begin

     frmdados.Cds_cmobra.Delete;

   end;
//endi

end;

procedure TfrmPesqcmobrap.dbgcmobraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqcmobrap.dbgmoduloEnter(Sender: TObject);
begin
tabela := 'Modulo';
end;

procedure TfrmPesqcmobrap.dbgmoduloExit(Sender: TObject);
begin
  if frmdados.Cds_modulo.State in [dsinsert, dsedit] then
     frmdados.Cds_modulo.Post;
  //endi

end;

procedure TfrmPesqcmobrap.dbgmoduloKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqcmobrap.dbgmoduloKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_modulo.State in [dsinsert, dsedit] then
      frmdados.Cds_modulo.Post;
   //endi
//endi

end;

procedure TfrmPesqcmobrap.tbscmobraShow(Sender: TObject);
begin

if cbxclassificar.Text = 'Descrição' then
   sClassificar := 'descr';
//endi
if edicodigoi.Text <> '' then
   sClassificar := 'Codigo';
//endi
if edicodigof.Text <> '' then
   sClassificar := 'Codigo';
//endi


end;

procedure TfrmPesqcmobrap.tbsmoduloShow(Sender: TObject);
begin

if cbxclassificar.Text = 'Descrição' then
   sClassificar := 'descricao';
//endi
if edicodigoi.Text <> '' then
   sClassificar := 'Codigo';
//endi
if edicodigof.Text <> '' then
   sClassificar := 'Codigo';
//endi


end;

end.
