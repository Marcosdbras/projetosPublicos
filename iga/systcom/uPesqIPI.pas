unit uPesqIPI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList;

type
  TfrmPesqIPI = class(TForm)
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
    dbgIPI: TDBGrid;
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
    Bevel3: TBevel;
    sPdGravar: TSpeedButton;
    spdrelatorios176: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgIPIKeyPress(Sender: TObject; var Key: Char);
    procedure dbgIPIEnter(Sender: TObject);
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
    procedure dbgIPIExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdIncluir171Click(Sender: TObject);
    procedure spdantClick(Sender: TObject);
    procedure spdproxClick(Sender: TObject);
    procedure spdExcluir173Click(Sender: TObject);
    procedure dbgIPIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdrelatorios176Click(Sender: TObject);
    procedure sPdGravarClick(Sender: TObject);
  private
    { Private declarations }
    sClassificar:string;
  public
    { Public declarations }
    sTitRel:String;
  end;

var
  frmPesqIPI: TfrmPesqIPI;

implementation

uses uGeral, uPrincipal, uDados , uMRipi ;

{$R *.DFM}

procedure TfrmPesqIPI.FormShow(Sender: TObject);
var
   vardir: String;
begin
   vardir := ExtractFilePath(Application.ExeName);
   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Descri��o');
   cbxclassificar.ItemIndex := 0;
   spdlimpar.Click;
end;

procedure TfrmPesqIPI.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqIPI.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqIPI.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqIPI.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqIPI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmpesqipi:=nil;
  form_ativo := '';

end;

procedure TfrmPesqIPI.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqIPI.dbgIPIKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_IPI.State in [dsinsert, dsedit] then
      frmdados.Cds_IPI.Post;
   //endi
//endi
end;

procedure TfrmPesqIPI.dbgIPIEnter(Sender: TObject);
begin
tabela := 'IPI';
end;

procedure TfrmPesqIPI.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqIPI.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqIPI.spdfiltrarClick(Sender: TObject);
var
  // vari�veis comuns a todos os filtros
  sCompo,sTitRel : String;
  // vari�veis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc : String;
  ftotcusto, ftotpreco:real;
begin

  with frmdados do
    begin
      Cds_IPI.Active := false;
    end;
  //end;

  if cbxclassificar.Text = 'Descri��o' then
     sClassificar := 'Descricao';
  //endi
  if edicodigoi.Text <> '' then
     sClassificar := 'Codigo';
  //endi
  if edicodigof.Text <> '' then
     sClassificar := 'Codigo';
  //endi

  // inicializando vari�veis comuns
  sCompo := '';
  sTitRel := '';

  // inicializando vari�veis deste filtro
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
            //sTitRel := sTitRel + ' / at�: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end
       else
          begin
            //sCompo := sCompo + 'and ( EmissaoSt <= ' + QuotedStr(sDataF) + ')';
            //sTitRel := sTitRel + ' / at�: ' + copy(datetimetostr(dtpdataf.Date),1,10);
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
            sTitRel := sTitRel + ' / C�digo de.: ' + sCodigoI;
          end
       else
          begin
            sCompo := sCompo + 'and ( Codigo >= ' + sCodigoI + ')';
            sTitRel := sTitRel + ' / C�digo de.: ' + sCodigoI;
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
            sTitRel := sTitRel + ' / at�: ' + sCodigoF;
          end
       else
          begin
            sCompo := sCompo + 'and ( Codigo <= ' + sCodigoF + ')';
            sTitRel := sTitRel + ' / at�: ' + sCodigoF;
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
    with frmdados.Dbx_IPI do
       begin
         active := false;
         sql.Clear;
         if sCompo <> '' then
            sql.Add('select * from IPI where '+sCompo+' order by '+sClassificar)
         else
            sql.Add('select * from IPI order by '+sClassificar);
         //endi
         active := true;

         if recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   active := false;
                   sql.Clear;
                   sql.Add('select * from IPI where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
                   active := true;
                 end;
              //endi
            end;
         //endi
       end;
    //endi
  except
    showmessage('N�o consegui conectar a tabela, opera��o abortada!!!');
    close;
    exit;
  end;
  with frmdados do
    begin
      Cds_IPI.Active := true;
    end;
  //end;
end;

procedure TfrmPesqIPI.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';
  spdfiltrar.Click;
end;

procedure TfrmPesqIPI.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   frmdados.cds_IPI.Locate(frmpesqipi.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure TfrmPesqIPI.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmPesqIPI.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqIPI.edidescKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqIPI.edicodigoiKeyPress(Sender: TObject; var Key: Char);
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
        if not frmdados.cds_IPI.Locate('codigo',edicodigoi.text,[])then
           showmessage('C�digo n�o Encontrado...');
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

procedure TfrmPesqIPI.edicodigofKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqIPI.dbgIPIExit(Sender: TObject);
begin
  if frmdados.Cds_IPI.State in [dsinsert, dsedit] then
     frmdados.Cds_IPI.Post;
  //endi
end;

procedure TfrmPesqIPI.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqIPI.spdIncluir171Click(Sender: TObject);
begin
tabela := 'IPI';
dbgIPI.SetFocus;
frmdados.Cds_IPI.Append;
end;

procedure TfrmPesqIPI.spdantClick(Sender: TObject);
begin
  frmdados.Cds_IPI.Prior;

end;

procedure TfrmPesqIPI.spdproxClick(Sender: TObject);
begin
frmdados.Cds_IPI.Next;
end;

procedure TfrmPesqIPI.spdExcluir173Click(Sender: TObject);
begin
tabela := 'IPI';
if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Aten��o',mb_YesNo + mb_DefButton2) = idYes then
   begin

     frmdados.Cds_IPI.Delete;

   end;
//endi

end;

procedure TfrmPesqIPI.dbgIPIKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqIPI.spdrelatorios176Click(Sender: TObject);
begin
    frmMRipi := tfrmMRipi.Create(self);
    frmMRipi.ShowModal;
    frmMRipi.Free;
end;

procedure TfrmPesqIPI.sPdGravarClick(Sender: TObject);
begin
if frmDados.Cds_IPI.State in [dsedit,dsinsert] then
       begin
          frmDados.Cds_IPI.Post;
       end
    //endif
end;

end.
