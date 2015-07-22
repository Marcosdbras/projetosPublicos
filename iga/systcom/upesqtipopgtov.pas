unit upesqtipopgtov;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList;

type
  TfrmPesqtipopgtov = class(TForm)
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
    dbgtipopgtov: TDBGrid;
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
    Lista_img: TImageList;
    spdrelatorios176: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgtipopgtovKeyPress(Sender: TObject; var Key: Char);
    procedure dbgtipopgtovEnter(Sender: TObject);
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
    procedure dbgtipopgtovExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdIncluir171Click(Sender: TObject);
    procedure spdantClick(Sender: TObject);
    procedure spdproxClick(Sender: TObject);
    procedure spdExcluir173Click(Sender: TObject);
    procedure dbgtipopgtovKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgtipopgtovDblClick(Sender: TObject);
    procedure dbgtipopgtovDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbgtipopgtovColEnter(Sender: TObject);
    procedure spdrelatorios176Click(Sender: TObject);
  private
    { Private declarations }
    sClassificar:string;
  public
    { Public declarations }
    sTitRel:String;
    sColuna:string;
  end;

var
  frmPesqtipopgtov: TfrmPesqtipopgtov;

implementation

uses uGeral, uPrincipal, uDados , uMRtipopgtov;

{$R *.DFM}

procedure TfrmPesqtipopgtov.FormShow(Sender: TObject);
var
   vardir: String;
begin
   vardir := ExtractFilePath(Application.ExeName);

   scoluna := 'DESCRICAO';

   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Descri��o');
   cbxclassificar.ItemIndex := 0;
   spdlimpar.Click;
end;

procedure TfrmPesqtipopgtov.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqtipopgtov.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqtipopgtov.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqtipopgtov.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqtipopgtov.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmpesqtipopgtov:=nil;
  form_ativo := '';

end;

procedure TfrmPesqtipopgtov.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqtipopgtov.dbgtipopgtovKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_tipo_pgto.State in [dsinsert, dsedit] then
      frmdados.Cds_tipo_pgto.Post;
   //endi
//endi
end;

procedure TfrmPesqtipopgtov.dbgtipopgtovEnter(Sender: TObject);
begin
tabela := 'tipo_pgto';
end;

procedure TfrmPesqtipopgtov.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqtipopgtov.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqtipopgtov.spdfiltrarClick(Sender: TObject);
var
  // vari�veis comuns a todos os filtros
  sCompo,sTitRel : String;
  // vari�veis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc : String;
  ftotcusto, ftotpreco:real;
begin

  with frmdados do
    begin
      Cds_tipo_pgto.Active := false;
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
    with frmdados.Dbx_tipo_pgto do
       begin
         active := false;
         sql.Clear;
         if sCompo <> '' then
            sql.Add('select * from tipo_pgto where '+sCompo+' order by '+sClassificar)
         else
            sql.Add('select * from tipo_pgto order by '+sClassificar);
         //endi
         active := true;

         if recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   active := false;
                   sql.Clear;
                   sql.Add('select * from tipo_pgto where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
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
      Cds_tipo_pgto.Active := true;
    end;
  //end;
end;

procedure TfrmPesqtipopgtov.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';
  spdfiltrar.Click;
end;

procedure TfrmPesqtipopgtov.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   frmdados.cds_tipo_pgto.Locate(frmpesqtipopgtov.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure TfrmPesqtipopgtov.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmPesqtipopgtov.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqtipopgtov.edidescKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqtipopgtov.edicodigoiKeyPress(Sender: TObject; var Key: Char);
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
        if not frmdados.cds_tipo_pgto.Locate('codigo',edicodigoi.text,[])then
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

procedure TfrmPesqtipopgtov.edicodigofKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqtipopgtov.dbgtipopgtovExit(Sender: TObject);
begin
  if frmdados.Cds_tipo_pgto.State in [dsinsert, dsedit] then
     frmdados.Cds_tipo_pgto.Post;
  //endi
end;

procedure TfrmPesqtipopgtov.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqtipopgtov.spdIncluir171Click(Sender: TObject);
begin
tabela := 'tipo_pgto';
dbgtipopgtov.SetFocus;
frmdados.Cds_tipo_pgto.Append;
end;

procedure TfrmPesqtipopgtov.spdantClick(Sender: TObject);
begin
  frmdados.Cds_tipo_pgto.Prior;

end;

procedure TfrmPesqtipopgtov.spdproxClick(Sender: TObject);
begin
frmdados.Cds_tipo_pgto.Next;
end;

procedure TfrmPesqtipopgtov.spdExcluir173Click(Sender: TObject);
begin
tabela := 'tipo_pgto';
if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Aten��o',mb_YesNo + mb_DefButton2) = idYes then
   begin

     frmdados.cds_Tipo_Pgto.Delete;

   end;
//endi

end;

procedure TfrmPesqtipopgtov.dbgtipopgtovKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqtipopgtov.dbgtipopgtovDblClick(Sender: TObject);
begin
  if frmdados.Cds_tipo_pgto.RecordCount = 0 then
     exit;
  //endi
  FrmDados.Cds_tipo_pgto.Edit;

  if (sColuna = 'MOSVD') then
  begin

    if FrmDados.Cds_tipo_pgto.FieldByName('mosvd').asString = 'F' then
       FrmDados.Cds_tipo_pgto.FieldByName('mosvd').asString := 'T'
    else
       FrmDados.Cds_tipo_pgto.FieldByName('mosvd').asString := 'F';
    //endi

  end;

  if (sColuna = 'EHELETRONICO') then
  begin

    if FrmDados.Cds_tipo_pgto.FieldByName('eheletronico').asString = 'F' then
       FrmDados.Cds_tipo_pgto.FieldByName('eheletronico').asString := 'T'
    else
       FrmDados.Cds_tipo_pgto.FieldByName('eheletronico').asString := 'F';
    //endi

  end;

  FrmDados.Cds_tipo_pgto.post;

end;

procedure TfrmPesqtipopgtov.dbgtipopgtovDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Icon: TBitmap;

begin
  Icon := TBitmap.Create;

  if (Column.FieldName = 'MOSVD') then
  begin
    with dbgtipopgtov.Canvas do
    begin
      Brush.Color := clWhite;
      FillRect(Rect);
      if (FrmDados.Cds_tipo_pgto.FieldByName('MOSVD').asString = 'F') then
        Lista_Img.GetBitmap(1, Icon)
      else
        Lista_Img.GetBitmap(0, Icon);
      //endi
      Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
    end;
  end;

  if (Column.FieldName = 'EHELETRONICO') then
  begin
    with dbgtipopgtov.Canvas do
    begin
      Brush.Color := clWhite;
      FillRect(Rect);
      if (FrmDados.Cds_tipo_pgto.FieldByName('EHELETRONICO').asString = 'F') then
        Lista_Img.GetBitmap(1, Icon)
      else
        Lista_Img.GetBitmap(0, Icon);
      //endi
      Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
    end;
  end;



end;

procedure TfrmPesqtipopgtov.dbgtipopgtovColEnter(Sender: TObject);
begin
sColuna := dbgtipopgtov.SelectedField.FieldName;

if (sColuna = 'MOSVD') or
   (sColuna = 'EHELETRONICO')
then
   dbgtipopgtov.Options := dbgtipopgtov.Options - [dgEditing]
else
   dbgtipopgtov.Options := dbgtipopgtov.Options + [dgEditing];
//endi   

end;

procedure TfrmPesqtipopgtov.spdrelatorios176Click(Sender: TObject);
begin
    frmMRtipopgtov := tfrmMRtipopgtov.create(self);
    frmMRtipopgtov.Showmodal;
    frmMRtipopgtov.Free;
end;

end.
