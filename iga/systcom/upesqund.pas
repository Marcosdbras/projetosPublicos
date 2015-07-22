unit upesqund;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList;

type
  TfrmPesqUnd = class(TForm)
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
    dbgUnidade: TDBGrid;
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
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgUnidadeKeyPress(Sender: TObject; var Key: Char);
    procedure dbgUnidadeEnter(Sender: TObject);
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
    procedure dbgUnidadeExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdIncluir171Click(Sender: TObject);
    procedure spdantClick(Sender: TObject);
    procedure spdproxClick(Sender: TObject);
    procedure spdExcluir173Click(Sender: TObject);
    procedure dbgUnidadeKeyDown(Sender: TObject; var Key: Word;
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
  frmPesqUnd: TfrmPesqUnd;

implementation

uses uGeral, uPrincipal, uDados ,uMRund;

{$R *.DFM}

procedure TfrmPesqUnd.FormShow(Sender: TObject);
var
   vardir: String;
begin
   vardir := ExtractFilePath(Application.ExeName);
   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Descrição');
   cbxclassificar.ItemIndex := 0;
   spdlimpar.Click;
end;

procedure TfrmPesqUnd.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqUnd.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqUnd.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqUnd.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqUnd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmPesqUnd:=nil;
  form_ativo := '';

end;

procedure TfrmPesqUnd.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqUnd.dbgUnidadeKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_Unidade.State in [dsinsert, dsedit] then
      frmdados.Cds_Unidade.Post;
   //endi
//endi
end;

procedure TfrmPesqUnd.dbgUnidadeEnter(Sender: TObject);
begin
tabela := 'Unidade';
end;

procedure TfrmPesqUnd.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqUnd.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqUnd.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo,sTitRel : String;
  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc : String;
  ftotcusto, ftotpreco:real;
begin

  with frmdados do
    begin
      Cds_Unidade.Active := false;
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
    with frmdados.Dbx_Unidade do
       begin
         active := false;
         sql.Clear;
         if sCompo <> '' then
            sql.Add('select * from Unidade where '+sCompo+' order by '+sClassificar)
         else
            sql.Add('select * from Unidade order by '+sClassificar);
         //endi
         active := true;

         if recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   active := false;
                   sql.Clear;
                   sql.Add('select * from Unidade where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
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
      Cds_Unidade.Active := true;
    end;
  //end;
end;

procedure TfrmPesqUnd.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';
  spdfiltrar.Click;
end;

procedure TfrmPesqUnd.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   frmdados.cds_Unidade.Locate(frmpesqUnd.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure TfrmPesqUnd.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmPesqUnd.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqUnd.edidescKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqUnd.edicodigoiKeyPress(Sender: TObject; var Key: Char);
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
        if not frmdados.cds_Unidade.Locate('codigo',edicodigoi.text,[])then
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

procedure TfrmPesqUnd.edicodigofKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqUnd.dbgUnidadeExit(Sender: TObject);
begin
  if frmdados.Cds_Unidade.State in [dsinsert, dsedit] then
     frmdados.Cds_Unidade.Post;
  //endi
end;

procedure TfrmPesqUnd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqUnd.spdIncluir171Click(Sender: TObject);
begin
tabela := 'Unidade';
dbgUnidade.SetFocus;
frmdados.Cds_Unidade.Append;
end;

procedure TfrmPesqUnd.spdantClick(Sender: TObject);
begin
  frmdados.Cds_Unidade.Prior;

end;

procedure TfrmPesqUnd.spdproxClick(Sender: TObject);
begin
frmdados.Cds_Unidade.Next;
end;

procedure TfrmPesqUnd.spdExcluir173Click(Sender: TObject);
begin
tabela := 'Unidade';
if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
   begin

     frmdados.Cds_Unidade.Delete;

   end;
//endi

end;

procedure TfrmPesqUnd.dbgUnidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqUnd.spdrelatorios176Click(Sender: TObject);
begin
    frmMRund :=tfrmMRund.create(self);
    frmMRund.Showmodal;
    frmMRund.free;
end;

end.
