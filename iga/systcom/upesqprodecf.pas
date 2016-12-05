unit upesqprodecf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, SqlExpr,
  Db, DBTables, DBCtrls;

type
  TfrmpesqprodDecf = class(TForm)
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
    DBText1: TDBText;
    Label5: TLabel;
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
  end;

var
  frmpesqprodDecf: TfrmpesqprodDecf;

implementation
   uses ugeral, ufrenteecf, uDados, upesqvd, upesqos, upesqnf;
{$R *.dfm}

procedure TfrmpesqprodDecf.FormShow(Sender: TObject);
var
   vardir: String;
begin
   vardir := ExtractFilePath(Application.ExeName);


   if frmfrenteecf <> nil then
      begin
        frmfrenteecf.bprocura := false;
        frmfrenteecf.divinfo;
        edidesc.Text := frmfrenteecf.sdescricao;
      end
   else
      begin
        edidesc.Text := '';
      end;
   //endi

   //showmessage(floattostr(frmfrenteecf.fqtde));
   //showmessage(floattostr(frmfrenteecf.fprve));


   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Descrição');
   cbxclassificar.ItemIndex := 0;


   spdlimpar.Click;

   edidesc.SetFocus;


end;

procedure TfrmpesqprodDecf.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  //edidesc.Text := '';
  spdfiltrar.Click;

end;

procedure TfrmpesqprodDecf.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo,sTitRel : String;
  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc : String;
  ftotcusto, ftotpreco:real;
begin
  with frmdados do
    begin
      Cds_vProdutos.Active := false;
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
        with frmdados.Dbx_vProdutos do
           begin
             active := false;
             sql.Clear;
             if sCompo <> '' then
                sql.Add('select * from vProdutos where '+sCompo+' order by '+sClassificar)
             else
                sql.Add('select * from vProdutos order by '+sClassificar);
             //endi
             active := true;

             if recordcount = 0 then
                begin


                  //aproximado;

                  if sDesc <> '' then
                     begin
                       active := false;
                       sql.Clear;
                       sql.Add('select * from vProdutos where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
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
          Cds_vProdutos.Active := true;
        end;
      //end;

//   end
//else
//   begin

//       with frmdados do
//         begin

//           cds_vProdutos.Active := false;
//           dbx_vProdutos.active := false;
//           dbx_vProdutos.sql.Clear;
//           dbx_vProdutos.sql.Add('select * from vProdutos where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
//           dbx_vProdutos.active := true;
//           cds_vProdutos.Active := true;

//         end;
       //endi

     //aproximado;
//   end;
//endi

end;

procedure TfrmpesqprodDecf.edicodigoiKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmpesqprodDecf.edicodigofKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmpesqprodDecf.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;

end;

procedure TfrmpesqprodDecf.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmpesqprodDecf.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   frmdados.cds_vProdutos.Locate(frmpesqprodDecf.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi

end;

procedure TfrmpesqprodDecf.edidescKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmpesqprodDecf.spdconfirmaClick(Sender: TObject);
begin
  close;
end;



procedure TfrmpesqprodDecf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if frmfrenteecf <> nil then
   frmfrenteecf.bprocura := true;
//endi
//if frmpesqvd <> nil then
//   frmdados.Cds_dVenda.Active := true;
//endi


end;

procedure TfrmpesqprodDecf.spdadd178Click(Sender: TObject);
var
  contador, x: Integer;
begin
  if frmpesqvd <> nil then
     begin
       frmpesqvd.edicpro.Text :=  frmdados.Cds_vProdutos.fieldbyname('codigo').AsString;
       
       close;
       exit;
     end;
  //endi
  if frmpesqos <> nil then
     begin
       frmpesqos.edicpro.Text :=  frmdados.Cds_vProdutos.fieldbyname('codigo').AsString;

       close;
       exit;
     end;
  //endi
  
  if frmpesqnf <> nil then
     begin
       frmpesqnf.edicpro.Text :=  frmdados.Cds_vProdutos.fieldbyname('codigo').AsString;

       close;
       exit;
     end;
  //endi



  if frmfrenteecf.fqtde = 0 then
     frmfrenteecf.fqtde := 1;
  //endi

  x := 0;
  frmfrenteecf.bprocura := true;
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

           frmdados.Cds_vProdutos.DisableControls;
           for contador:= 0 to Pred(SelectedRows.Count) do
             Begin
               frmdados.dts_vProdutos.Dataset.Bookmark:= SelectedRows[contador]; // posiciona nos registros selecionados do DBGrid
               frmfrenteecf.edidescricao.Text := frmdados.Cds_vProdutos.fieldbyname('codigo').AsString;
               frmfrenteecf.divinfo;
               //showmessage(frmfrenteecf.pnlnpro.Caption);
               frmfrenteecf.spdsalvar233.Click;
             end;
           //endfor

           frmfrenteecf.limpargrav;
           frmfrenteecf.bprocura := false;
           frmfrenteecf.pnlnpro.Visible :=true;

           frmdados.Cds_vProdutos.EnableControls;

         end
      else
         begin
           if frmfrenteecf.fprve = 0 then
              frmfrenteecf.edidescricao.Text := floattostr(frmfrenteecf.fqtde)+'*'+frmdados.Cds_vProdutos.fieldbyname('codigo').asString
           else
              frmfrenteecf.edidescricao.Text := floattostr(frmfrenteecf.fqtde)+'*'+frmdados.Cds_vProdutos.fieldbyname('codigo').asString+'='+floattostr(frmfrenteecf.fprve);
           //endi
           frmfrenteecf.pnlnpro.Visible := false;

         end;
      //endi
    end;
  //endth


  close;
end;

procedure TfrmpesqprodDecf.spdInserir179Click(Sender: TObject);
begin
frmfrenteecf.edidescricao.Text := floattostr(frmfrenteecf.fqtde)+'*'+frmdados.Cds_vProdutos.fieldbyname('descricao').asString;
frmfrenteecf.pnlnpro.Visible := false;
close;
end;

procedure TfrmpesqprodDecf.dbgprodutosDblClick(Sender: TObject);
begin
spdadd178.Click;
end;

procedure TfrmpesqprodDecf.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   if dbgprodutos.Focused then
      spdadd178.Click;
   //endi   
//endi    
end;


procedure TfrmpesqprodDecf.aproximado;
begin
  with frmdados do
    begin
      if edidesc.Text <> '' then
         begin
           cds_vProdutos.Active := false;
           dbx_vProdutos.active := false;
           dbx_vProdutos.sql.Clear;
           dbx_vProdutos.sql.Add('select * from vProdutos where '+sClassificar+' like '+quotedstr('%'+edidesc.Text+'%')+'order by '+sClassificar);
           dbx_vProdutos.active := true;
           cds_vProdutos.Active := true;
         end;
      //endi
    end;
  //endi

end;
end.
