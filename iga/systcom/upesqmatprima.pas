unit upesqmatprima;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList;

type
  TfrmPesqmatprima = class(TForm)
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
    dbgMatprima: TDBGrid;
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
    spdrelatorios176: TSpeedButton;
    sPdGravar: TSpeedButton;
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgMatprimaKeyPress(Sender: TObject; var Key: Char);
    procedure dbgMatprimaEnter(Sender: TObject);
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
    procedure dbgMatprimaExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdIncluir171Click(Sender: TObject);
    procedure spdantClick(Sender: TObject);
    procedure spdproxClick(Sender: TObject);
    procedure spdExcluir173Click(Sender: TObject);
    procedure dbgMatprimaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sPdGravarClick(Sender: TObject);
    procedure spdrelatorios176Click(Sender: TObject);
  private
    { Private declarations }
    sClassificar:string;
  public
    { Public declarations }
    sTitRel:String;
  end;

var
  frmPesqmatprima: TfrmPesqmatprima;

implementation

uses uGeral, uPrincipal, uDados , uMRmar;

{$R *.DFM}

procedure TfrmPesqmatprima.FormShow(Sender: TObject);
var
   vardir: String;
begin
   vardir := ExtractFilePath(Application.ExeName);
   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Descrição');
   cbxclassificar.ItemIndex := 0;
   spdlimpar.Click;
end;

procedure TfrmPesqmatprima.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqmatprima.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqmatprima.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqmatprima.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqmatprima.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmPesqMatprima:=nil;
  form_ativo := '';

end;

procedure TfrmPesqmatprima.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqmatprima.dbgMatprimaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_matprima.State in [dsinsert, dsedit] then
      frmdados.Cds_matprima.Post;
   //endi
//endi
end;

procedure TfrmPesqmatprima.dbgMatprimaEnter(Sender: TObject);
begin
tabela := 'Matprima';
end;

procedure TfrmPesqmatprima.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqmatprima.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqmatprima.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo,sTitRel : String;
  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc : String;
  ftotcusto, ftotpreco:real;
begin

  with frmdados do
    begin
      Cds_matprima.Active := false;
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
    with frmdados.Dbx_matprima do
       begin
         active := false;
         sql.Clear;
         if sCompo <> '' then
            sql.Add('select * from matprima where '+sCompo+' order by '+sClassificar)
         else
            sql.Add('select * from matprima order by '+sClassificar);
         //endi
         active := true;

         if recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   active := false;
                   sql.Clear;
                   sql.Add('select * from matprima where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
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
      Cds_matprima.Active := true;
    end;
  //end;
end;

procedure TfrmPesqmatprima.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';
  spdfiltrar.Click;
end;

procedure TfrmPesqmatprima.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   frmdados.cds_matprima.Locate(frmpesqMatprima.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure TfrmPesqmatprima.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmPesqmatprima.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqmatprima.edidescKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqmatprima.edicodigoiKeyPress(Sender: TObject; var Key: Char);
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
        if not frmdados.cds_matprima.Locate('codigo',edicodigoi.text,[])then
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

procedure TfrmPesqmatprima.edicodigofKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqmatprima.dbgMatprimaExit(Sender: TObject);
begin
  if frmdados.Cds_matprima.State in [dsinsert, dsedit] then
     frmdados.Cds_matprima.Post;
  //endi
end;

procedure TfrmPesqmatprima.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqmatprima.spdIncluir171Click(Sender: TObject);
begin
tabela := 'Matprima';
dbgmatprima.SetFocus;
frmdados.Cds_matprima.Append;
end;

procedure TfrmPesqmatprima.spdantClick(Sender: TObject);
begin
  frmdados.Cds_matprima.Prior;

end;

procedure TfrmPesqmatprima.spdproxClick(Sender: TObject);
begin
frmdados.Cds_matprima.Next;
end;

procedure TfrmPesqmatprima.spdExcluir173Click(Sender: TObject);
begin
tabela := 'Matprima';
if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
   begin

     frmdados.Cds_matprima.Delete;

   end;
//endi

end;

procedure TfrmPesqmatprima.dbgMatprimaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqmatprima.sPdGravarClick(Sender: TObject);
begin
      if frmDados.Cds_matprima.State in [dsedit,dsinsert] then
          begin
            frmDados.Cds_matprima.Post;
          end
      //endif
end;

procedure TfrmPesqmatprima.spdrelatorios176Click(Sender: TObject);
begin
    frmMRmar := tfrmMRmar.Create(self);
    frmMRmar.ShowModal;
    frmMRmar.Free;
end;

end.
