unit upesqcmobrad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, SqlExpr,
  Db, DBTables;

type
  Tfrmpesqcmobrad = class(TForm)
    pnlsuperior: TPanel;
    spdconfirma: TSpeedButton;
    pnlesq: TPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    spdlimpar: TSpeedButton;
    spdfiltrar: TSpeedButton;
    DtpDataI: TDateTimePicker;
    DtpDataF: TDateTimePicker;
    edicodigoi: TEdit;
    edicodigof: TEdit;
    pnldir: TPanel;
    Bevel2: TBevel;
    Label4: TLabel;
    Bevel5: TBevel;
    lbltitdesc: TLabel;
    Label6: TLabel;
    dbgprodutos: TDBGrid;
    edicodprod: TEdit;
    cbxclassificar: TComboBox;
    edidesc: TEdit;
    pnlinferior: TPanel;
    Bevel4: TBevel;
    spdadd178: TSpeedButton;
    spdInserir179: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure spdlimparClick(Sender: TObject);
    procedure spdfiltrarClick(Sender: TObject);
    procedure edicodigoiKeyPress(Sender: TObject; var Key: Char);
    procedure edicodigofKeyPress(Sender: TObject; var Key: Char);
    procedure cbxclassificarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxclassificarKeyPress(Sender: TObject; var Key: Char);
    procedure edidescChange(Sender: TObject);
    procedure edidescKeyPress(Sender: TObject; var Key: Char);
    procedure spdconfirmaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spdadd178Click(Sender: TObject);
    procedure spdInserir179Click(Sender: TObject);
    procedure dbgprodutosDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure aproximado;
  private
    { Private declarations }
    sClassificar:string;
  public
    { Public declarations }
    sTitRel:String;
  end;

var
  frmpesqcmobrad: Tfrmpesqcmobrad;

implementation
   uses ugeral, ufrente, uDados, upesqvd, upesqos;
{$R *.dfm}

procedure Tfrmpesqcmobrad.FormShow(Sender: TObject);
var
   vardir: String;
begin
   vardir := ExtractFilePath(Application.ExeName);


   if frmfrente <> nil then
      begin
        frmfrente.bprocura := false;
        frmfrente.divinfo;
        edidesc.Text := frmfrente.sdescricao;
      end
   else
      begin
        edidesc.Text := '';
      end;
   //endi

   //showmessage(floattostr(frmfrente.fqtde));
   //showmessage(floattostr(frmfrente.fprve));


   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Descrição');
   cbxclassificar.ItemIndex := 0;


   spdlimpar.Click;

   edidesc.SetFocus;


end;

procedure Tfrmpesqcmobrad.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  //edidesc.Text := '';
  spdfiltrar.Click;

end;

procedure Tfrmpesqcmobrad.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo,sTitRel : String;
  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc : String;
  ftotcusto, ftotpreco:real;
begin
  with frmdados do
    begin
      Cds_cmobra.Active := false;
    end;
  //end;
  if cbxclassificar.Text = 'Descrição' then
     sClassificar := 'Descr';
  //endi
  if edicodigoi.Text <> '' then
     sClassificar := 'Codigo';
  //endi
  if edicodigof.Text <> '' then
     sClassificar := 'Codigo';
  //endi

  // inicializando variáveis comuns
  sCompo := '(cmod = '+inttostr(frmdados.cds_temp.fieldbyname('cod4').asInteger)+')';
  sTitRel := '';

  // inicializando variáveis deste filtro
  sDataI := '';
  sDataF := '';
  sCodigoF := '';
  sCodigoI := '';
  sDesc := '';

  // carregando variaveis
  sCodigoI := edicodigoI.Text;
  sCodigoF := ediCodigoF.Text;
  sDesc := edidesc.Text;


//if frmdados.Cds_Indice.FieldByName('ABRIRPRODFV').asInteger = 0 then
//   begin

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


                  //aproximado;

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

   //end;
//else
//   begin

//       with frmdados do
//         begin

//           cds_cmobra.Active := false;
//           dbx_cmobra.active := false;
//           dbx_cmobra.sql.Clear;
//           dbx_cmobra.sql.Add('select * from cmobra where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
//           dbx_cmobra.active := true;
//           cds_cmobra.Active := true;

//         end;
       //endi
       //showmessage(frmdados.dbx_cmobra.sql.Text);
     //aproximado;
//   end;
//endi



end;

procedure Tfrmpesqcmobrad.edicodigoiKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqcmobrad.edicodigofKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqcmobrad.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;

end;

procedure Tfrmpesqcmobrad.cbxclassificarKeyPress(Sender: TObject;
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

procedure Tfrmpesqcmobrad.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   frmdados.cds_cmobra.Locate(frmpesqcmobrad.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi

end;

procedure Tfrmpesqcmobrad.edidescKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqcmobrad.spdconfirmaClick(Sender: TObject);
begin
  close;
end;



procedure Tfrmpesqcmobrad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if frmfrente <> nil then
   frmfrente.bprocura := true;
//endi
//if frmpesqvd <> nil then
//   frmdados.Cds_dVenda.Active := true;
//endi


end;

procedure Tfrmpesqcmobrad.spdadd178Click(Sender: TObject);
var
  contador, x: Integer;
begin
  if frmpesqvd <> nil then
     begin
       frmpesqvd.edicpro.Text :=  frmdados.Cds_cmobra.fieldbyname('codigo').AsString;

       close;
       exit;
     end;
  //endi
  if frmpesqos <> nil then
     begin
       frmpesqos.edicproM.Text :=  frmdados.Cds_cmobra.fieldbyname('codigo').AsString;

       close;
       exit;
     end;
  //endi






  if frmfrente.fqtde = 0 then
     frmfrente.fqtde := 1;
  //endi

  x := 0;
  frmfrente.bprocura := true;
  With dbgprodutos do
    Begin

      for contador:= 0 to Pred(SelectedRows.Count) do
        Begin
          x := x + 1;
        end;
      //endfor

     //showmessage(inttostr(x));
      if x > 1 then
         begin

           frmdados.Cds_cmobra.DisableControls;
           for contador:= 0 to Pred(SelectedRows.Count) do
             Begin
               frmdados.dts_cmobra.Dataset.Bookmark:= SelectedRows[contador]; // posiciona nos registros selecionados do DBGrid
               frmfrente.edidescricao.Text := frmdados.Cds_cmobra.fieldbyname('codigo').AsString;
               frmfrente.divinfo;
               //showmessage(frmfrente.pnlnpro.Caption);
               frmfrente.spdsalvar233.Click;
             end;
           //endfor

           frmfrente.limpargrav;
           frmfrente.bprocura := false;
           frmfrente.pnlnpro.Visible :=true;

           frmdados.Cds_cmobra.EnableControls;

         end
      else
         begin
           if frmfrente.fprve = 0 then
              frmfrente.edidescricao.Text := floattostr(frmfrente.fqtde)+'*'+frmdados.Cds_cmobra.fieldbyname('codigo').asString
           else
              frmfrente.edidescricao.Text := floattostr(frmfrente.fqtde)+'*'+frmdados.Cds_cmobra.fieldbyname('codigo').asString+'='+floattostr(frmfrente.fprve);
           //endi
           frmfrente.pnlnpro.Visible := false;

         end;
      //endi
    end;
  //endth


  close;
end;

procedure Tfrmpesqcmobrad.spdInserir179Click(Sender: TObject);
begin
frmfrente.edidescricao.Text := floattostr(frmfrente.fqtde)+'*'+frmdados.Cds_cmobra.fieldbyname('descricao').asString;
frmfrente.pnlnpro.Visible := false;
close;
end;

procedure Tfrmpesqcmobrad.dbgprodutosDblClick(Sender: TObject);
begin
spdadd178.Click;
end;

procedure Tfrmpesqcmobrad.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   if dbgprodutos.Focused then
      spdadd178.Click;
   //endi   
//endi    
end;


procedure Tfrmpesqcmobrad.aproximado;
begin
  with frmdados do
    begin
      if edidesc.Text <> '' then
         begin
           cds_cmobra.Active := false;
           dbx_cmobra.active := false;
           dbx_cmobra.sql.Clear;
           dbx_cmobra.sql.Add('select * from cmobra where '+sClassificar+' like '+quotedstr('%'+edidesc.Text+'%')+'order by '+sClassificar);
           dbx_cmobra.active := true;
           cds_cmobra.Active := true;
         end;
      //endi
    end;
  //endi

end;
end.
