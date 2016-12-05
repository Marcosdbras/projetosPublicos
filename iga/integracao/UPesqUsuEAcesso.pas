unit UPesqUsuEAcesso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList;

type
  Tfrmpnivelace = class(TForm)
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
    dbgUsuarios: TDBGrid;
    Label4: TLabel;
    Bevel2: TBevel;
    spdlimpar: TSpeedButton;
    spdfiltrar: TSpeedButton;
    Label5: TLabel;
    edicodigoi: TEdit;
    edicodigof: TEdit;
    Bevel5: TBevel;
    lbltitdesc: TLabel;
    cbxclassificar: TComboBox;
    edidesc: TEdit;
    Label6: TLabel;
    Bevel3: TBevel;
    Label7: TLabel;
    Label8: TLabel;
    edisenha: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    tvwacessogeral: TTreeView;
    dbgacesso: TDBGrid;
    Lista_img: TImageList;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgUsuariosKeyPress(Sender: TObject; var Key: Char);
    procedure spdconfirmaClick(Sender: TObject);
    procedure spdcancelaClick(Sender: TObject);
    procedure dbgvencimentosEnter(Sender: TObject);
    procedure spdfiltrarClick(Sender: TObject);
    procedure spdlimparClick(Sender: TObject);
    procedure edidescChange(Sender: TObject);
    procedure cbxclassificarKeyPress(Sender: TObject; var Key: Char);
    procedure cbxclassificarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edidescKeyPress(Sender: TObject; var Key: Char);
    procedure edicodigoiKeyPress(Sender: TObject; var Key: Char);
    procedure edicodigofKeyPress(Sender: TObject; var Key: Char);
    procedure dbgUsuariosEnter(Sender: TObject);
    procedure dbgacessoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgacessoDblClick(Sender: TObject);
    procedure tvwacessogeralDblClick(Sender: TObject);
    procedure dbgUsuariosExit(Sender: TObject);
    procedure dbgacessoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    sClassificar:string;
    icoluna:integer;
  public
    { Public declarations }
    sSqlAnt:String;
  end;

var
  frmpnivelace: Tfrmpnivelace;

implementation

uses uGeral, uMenuPrincipal, uDados;

{$R *.DFM}

procedure Tfrmpnivelace.FormShow(Sender: TObject);
var
   vardir: String;
   MyTreeNode1, MyTreeNode2: TTreeNode;
   iIndex:integer;

begin
  iIndex := 1;
  vardir := ExtractFilePath(Application.ExeName);

  with tvwacessogeral.Items do
      begin
        clear;
      end;
  //endth

  frmdados.Cds_Invsysp.First;
  while not frmdados.Cds_Invsysp.Eof do
     begin

       with tvwacessogeral.Items do
          begin
            MyTreeNode1 := Add(nil, formatfloat('000',frmdados.Cds_Invsysp.fieldbyname('codigo').asfloat)+' - '+frmdados.Cds_Invsysp.fieldbyname('Descricao').asString);
          end;
       //endth

       frmDados.Cds_Invsys.First;
       while not frmdados.Cds_Invsys.Eof do
         begin
           with tvwacessogeral.Items do
              begin
                AddChild(MyTreeNode1,formatfloat('100',frmdados.Cds_Invsys.fieldbyname('codigo').asfloat)+' - '+frmdados.Cds_Invsys.fieldbyname('Descricao').asString);
              end;
           //endth
           frmdados.Cds_Invsys.Next;
         end;
       //endi

       iIndex := iIndex + 1;
       //MyTreeNode1 := tvwacessogeral.Items[iIndex];
       frmdados.Cds_Invsysp.Next;
     end;
  //endth


  with frmdados do
    begin
      sSqlAnt := dbx_invsysf.SQL.Text;
      Cds_invsys.Active := false;
      Dbx_invsys.Active := false;
      Dbx_invsys.SQL.Clear;
      Dbx_invsys.SQL.Add('Select * from invsys');
      Dbx_invsys.Active := true;
      Cds_invsys.Active := true;
    end;
  //endi

  cbxclassificar.Items.Clear;
  cbxclassificar.Items.Add('Usuário');
  cbxclassificar.ItemIndex := 0;
  spdlimpar.Click;
end;

procedure Tfrmpnivelace.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure Tfrmpnivelace.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure Tfrmpnivelace.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure Tfrmpnivelace.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure Tfrmpnivelace.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//frmPrincipal.pnlcentral.Visible := true;
  Action := caFree;
  frmPnivelAce := nil;
  with frmdados do
  begin
    Dbx_invsysf.Active := false;
    Dbx_invsysf.SQL.Clear;
    Dbx_invsysf.SQL.Add(sSqlAnt);
    Dbx_invsysf.Active := true;
  end;
  //endi
end;

procedure Tfrmpnivelace.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure Tfrmpnivelace.dbgUsuariosKeyPress(Sender: TObject; var Key: Char);
begin
//Key := AnsiUpperCase(Key);
if key = #13 then
   if frmdados.Cds_Usuario.State in [dsinsert, dsedit] then
      frmdados.Cds_Usuario.Post;
   //endi
//endi
end;

procedure Tfrmpnivelace.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure Tfrmpnivelace.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure Tfrmpnivelace.dbgvencimentosEnter(Sender: TObject);
begin
tabela := 'Vencimentos';
end;

procedure Tfrmpnivelace.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo,sTitRel:String;
  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc : String;
  ftotcusto, ftotpreco:real;
begin

  with frmdados do
    begin
      Cds_Usuario.Active := false;
      //Cds_dProdutos.Active := false;
    end;
  //end;

  if cbxclassificar.Text = 'Usuário' then
     sClassificar := 'Nome';
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
    with frmdados.Dbx_Usuario do
       begin
         active := false;
         sql.Clear;
         if sCompo <> '' then
            sql.Add('select * from Usuario where '+sCompo+' order by '+sClassificar)
         else
            sql.Add('select * from Usuario order by '+sClassificar);
         //endi
         active := true;

         if recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   active := false;
                   sql.Clear;
                   sql.Add('select * from Usuarios where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
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
      Cds_Usuario.Active := true;
      //if Cds_Produtos.RecordCount <> 0 then
      //   Cds_dprodutos.Active := true;
      //endi
    end;
  //end;
end;

procedure Tfrmpnivelace.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
//  dtpDataI.Date := Date - frmdados.Cds_Indices.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';
  spdfiltrar.Click;
end;

procedure Tfrmpnivelace.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   frmdados.cds_Usuario.Locate(frmpnivelace.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure Tfrmpnivelace.cbxclassificarKeyPress(Sender: TObject;
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

procedure Tfrmpnivelace.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure Tfrmpnivelace.edidescKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpnivelace.edicodigoiKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpnivelace.edicodigofKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpnivelace.dbgUsuariosEnter(Sender: TObject);
begin
tabela := 'Usuarios';
end;

procedure Tfrmpnivelace.dbgacessoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Icon: TBitmap;
begin
  if FrmDados.Cds_invsysf.RecordCount = 0 then
     exit;
  //endi
  Icon := TBitmap.Create;
  if (Column.FieldName = 'INS') then
  begin
    with dbgacesso.Canvas do
    begin
      Brush.Color := clWhite;
      FillRect(Rect);
      if (FrmDados.Cds_invsysf.FieldByName('INS').asString = 'F') then
        Lista_Img.GetBitmap(1, Icon)
      else
        Lista_Img.GetBitmap(0, Icon);
      //endi
      Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
    end;
  end;

  Icon := TBitmap.Create;
  if (Column.FieldName = 'DEL') then
  begin
    with dbgacesso.Canvas do
    begin
      Brush.Color := clWhite;
      FillRect(Rect);
      if (FrmDados.Cds_invsysf.FieldByName('DEL').asString = 'F') then
        Lista_Img.GetBitmap(1, Icon)
      else
        Lista_Img.GetBitmap(0, Icon);
      //endi
      Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
    end;
  end;

  Icon := TBitmap.Create;
  if (Column.FieldName = 'UPDT') then
  begin
    with dbgacesso.Canvas do
    begin
      Brush.Color := clWhite;
      FillRect(Rect);
      if (FrmDados.Cds_invsysf.FieldByName('UPDT').asString = 'F') then
        Lista_Img.GetBitmap(1, Icon)
      else
        Lista_Img.GetBitmap(0, Icon);
      //endi
      Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
    end;
  end;

  Icon := TBitmap.Create;
  if (Column.FieldName = 'LOOKFOR') then
  begin
    with dbgacesso.Canvas do
    begin
      Brush.Color := clWhite;
      FillRect(Rect);
      if (FrmDados.Cds_invsysf.FieldByName('LOOKFOR').asString = 'F') then
        Lista_Img.GetBitmap(1, Icon)
      else
        Lista_Img.GetBitmap(0, Icon);
      //endi
      Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
    end;
  end;

  Icon := TBitmap.Create;
  if (Column.FieldName = 'CONFIDENCIAL') then
  begin
    with dbgacesso.Canvas do
    begin
      Brush.Color := clWhite;
      FillRect(Rect);
      if (FrmDados.Cds_invsysf.FieldByName('CONFIDENCIAL').asString = 'F') then
        Lista_Img.GetBitmap(1, Icon)
      else
        Lista_Img.GetBitmap(0, Icon);
      //endi
      Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
    end;
  end;

  Icon := TBitmap.Create;
  if (Column.FieldName = 'RESTRITO') then
  begin
    with dbgacesso.Canvas do
    begin
      Brush.Color := clWhite;
      FillRect(Rect);
      if (FrmDados.Cds_invsysf.FieldByName('RESTRITO').asString = 'F') then
        Lista_Img.GetBitmap(1, Icon)
      else
        Lista_Img.GetBitmap(0, Icon);
      //endi
      Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
    end;
  end;

  Icon := TBitmap.Create;
  if (Column.FieldName = 'NEGA') then
  begin
    with dbgacesso.Canvas do
    begin
      Brush.Color := clWhite;
      FillRect(Rect);
      if (FrmDados.Cds_invsysf.FieldByName('NEGA').asString = 'F') then
        Lista_Img.GetBitmap(1, Icon)
      else
        Lista_Img.GetBitmap(0, Icon);
      //endi
      Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
    end;
  end;


end;

procedure Tfrmpnivelace.dbgacessoDblClick(Sender: TObject);
begin
  If frmDados.Cds_invsysf.RecordCount = 0 then
     exit;
  //endi
  if (dbgacesso.SelectedIndex = 1 ) then
      begin
        FrmDados.Cds_invsysf.Edit;
        if FrmDados.Cds_invsysf.FieldByName('INS').asString = 'F' then
           FrmDados.Cds_invsysf.FieldByName('INS').asString := 'T'
        else
           FrmDados.Cds_invsysf.FieldByName('INS').asString := 'F';
        //endi
        FrmDados.Cds_invsysf.post;
      end;
  //endi
  if (dbgacesso.SelectedIndex = 2 ) then
      begin
        FrmDados.Cds_invsysf.Edit;
        if FrmDados.Cds_invsysf.FieldByName('UpDt').asString = 'F' then
           FrmDados.Cds_invsysf.FieldByName('UpDt').asString := 'T'
        else
           FrmDados.Cds_invsysf.FieldByName('UpDt').asString := 'F';
        //endi
        FrmDados.Cds_invsysf.post;
      end;
  //endi
  if (dbgacesso.SelectedIndex = 3 ) then
      begin
        FrmDados.Cds_invsysf.Edit;
        if FrmDados.Cds_invsysf.FieldByName('Del').asString = 'F' then
           FrmDados.Cds_invsysf.FieldByName('Del').asString := 'T'
        else
           FrmDados.Cds_invsysf.FieldByName('Del').asString := 'F';
        //endi
        FrmDados.Cds_invsysf.post;
      end;
  //endi
  if (dbgacesso.SelectedIndex = 4 ) then
      begin
        FrmDados.Cds_invsysf.Edit;
        if FrmDados.Cds_invsysf.FieldByName('LookFor').asString = 'F' then
           FrmDados.Cds_invsysf.FieldByName('LookFor').asString := 'T'
        else
           FrmDados.Cds_invsysf.FieldByName('LookFor').asString := 'F';
        //endi
        FrmDados.Cds_invsysf.post;
      end;
  //endi
  if (dbgacesso.SelectedIndex = 5 ) then
      begin
        FrmDados.Cds_invsysf.Edit;
        if FrmDados.Cds_invsysf.FieldByName('Restrito').asString = 'F' then
           FrmDados.Cds_invsysf.FieldByName('Restrito').asString := 'T'
        else
           FrmDados.Cds_invsysf.FieldByName('Restrito').asString := 'F';
        //endi
        FrmDados.Cds_invsysf.post;
      end;
  //endi
  if (dbgacesso.SelectedIndex = 6 ) then
      begin
        FrmDados.Cds_invsysf.Edit;
        if FrmDados.Cds_invsysf.FieldByName('Confidencial').asString = 'F' then
           FrmDados.Cds_invsysf.FieldByName('Confidencial').asString := 'T'
        else
           FrmDados.Cds_invsysf.FieldByName('Confidencial').asString := 'F';
        //endi
        FrmDados.Cds_invsysf.post;
      end;
  //endi
  if (dbgacesso.SelectedIndex = 7 ) then
      begin
        FrmDados.Cds_invsysf.Edit;
        if FrmDados.Cds_invsysf.FieldByName('Nega').asString = 'F' then
           FrmDados.Cds_invsysf.FieldByName('Nega').asString := 'T'
        else
           FrmDados.Cds_invsysf.FieldByName('Nega').asString := 'F';
        //endi
        FrmDados.Cds_invsysf.post;
      end;
  //endi
  if (dbgacesso.SelectedIndex = 0 ) then
      begin
        FrmDados.Cds_invsysf.Delete;
      end;
  //endi


end;

procedure Tfrmpnivelace.tvwacessogeralDblClick(Sender: TObject);
begin
  if copy(tvwacessogeral.Selected.Text,2,2) = '0' then
     exit;
  //endi
  tabela := 'Invsysf';
  with frmdados do
    begin
      Dbx_Exec.Active := false;
      Dbx_Exec.SQL.Clear;
      Dbx_Exec.SQL.Add('Select * from invsysf where codsys = '+copy(tvwacessogeral.Selected.Text,2,2)+' and codusu = '+Cds_Usuario.fieldbyname('Codigo').asString);
      Dbx_Exec.Active := true;
      if Dbx_exec.RecordCount = 0 then
         begin
           Cds_Invsysf.Append;
           Cds_Invsysf.FieldByName('codusu').asInteger := Cds_Usuario.fieldbyname('Codigo').asInteger ;
           Cds_Invsysf.FieldByName('codsys').asString := copy(tvwacessogeral.Selected.Text,2,2);
           //showmessage('UHU!');
           Cds_Invsysf.Post;
         end;
      //endi
      CDS_InvSysF.Refresh;
    end;
  //endth

end;

procedure Tfrmpnivelace.dbgUsuariosExit(Sender: TObject);
begin
  if frmdados.Cds_Usuario.State in [dsinsert, dsedit] then
     frmdados.Cds_Usuario.Post;
  //endi

end;

procedure Tfrmpnivelace.dbgacessoExit(Sender: TObject);
begin
  if frmdados.Cds_Invsysf.State in [dsinsert, dsedit] then
     frmdados.Cds_Invsysf.Post;
  //endi
end;

procedure Tfrmpnivelace.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

end.
