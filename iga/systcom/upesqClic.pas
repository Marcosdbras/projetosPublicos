unit upesqClic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, SqlExpr,
  Db, DBTables, Mask, DBCtrls;

type
  TfrmpesqClic = class(TForm)
    pnlsuperior: TPanel;
    spdconfirma: TSpeedButton;
    pnlinferior: TPanel;
    pnlcentral: TPanel;
    pnllistacli: TPanel;
    Bevel2: TBevel;
    spdIncluir111: TSpeedButton;
    spdAlterar112: TSpeedButton;
    dbgcli: TDBGrid;
    pctcli: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBText1: TDBText;
    Label8: TLabel;
    DBText2: TDBText;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    Label20: TLabel;
    DBEdit15: TDBEdit;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    TabSheet4: TTabSheet;
    Label22: TLabel;
    DBEdit17: TDBEdit;
    Label23: TLabel;
    DBEdit18: TDBEdit;
    Label24: TLabel;
    DBEdit19: TDBEdit;
    Label25: TLabel;
    DBEdit20: TDBEdit;
    Label26: TLabel;
    DBEdit21: TDBEdit;
    Label27: TLabel;
    DBEdit22: TDBEdit;
    Label28: TLabel;
    DBEdit23: TDBEdit;
    Label29: TLabel;
    DBEdit24: TDBEdit;
    Label30: TLabel;
    DBEdit25: TDBEdit;
    Label31: TLabel;
    DBEdit26: TDBEdit;
    Label32: TLabel;
    DBEdit27: TDBEdit;
    Label33: TLabel;
    DBEdit28: TDBEdit;
    Label34: TLabel;
    DBEdit29: TDBEdit;
    Label35: TLabel;
    DBEdit30: TDBEdit;
    TabSheet5: TTabSheet;
    mmoobs: TMemo;
    TabSheet6: TTabSheet;
    DBMemo1: TDBMemo;
    lbltitdesc: TLabel;
    cbxclassificar: TComboBox;
    edidesc: TEdit;
    Label1: TLabel;
    spdlimpar: TSpeedButton;
    cbxntabela: TDBLookupComboBox;
    Label2: TLabel;
    procedure cbxclassificarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxclassificarKeyPress(Sender: TObject; var Key: Char);
    procedure spdconfirmaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spdadd178Click(Sender: TObject);
    procedure edinomecliChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edinomecliKeyPress(Sender: TObject; var Key: Char);
    procedure dbgcliDblClick(Sender: TObject);
    procedure inserircli;
    procedure alteracli;
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure spdIncluir111Click(Sender: TObject);
    procedure spdAlterar112Click(Sender: TObject);
    procedure edidescChange(Sender: TObject);
    procedure edidescKeyPress(Sender: TObject; var Key: Char);
    procedure filtrar;
    procedure limpar;
    procedure aproximado;
    procedure spdlimparClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cbxntabelaKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }


  public
    { Public declarations }
    sClassificar, sFantasia, sNovoCli:string;
  end;

var
  frmpesqClic: TfrmpesqClic;

implementation
   uses ugeral, ufrente, uDados;
{$R *.dfm}

procedure TfrmpesqClic.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;

end;

procedure TfrmpesqClic.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmpesqClic.spdconfirmaClick(Sender: TObject);
begin

  with frmdados do
    begin
      if frmdados.Cds_Clientes.State in [dsinsert, dsedit] then
         begin
           frmdados.Cds_Clientes.Post;
           pnllistacli.Visible := true;
         end
      else
         begin
           // caso inserçao do cliente seja em dois movimentos
         end;
      //endi



    end;
  //endth

  frmfrente.iccli := frmdados.Cds_Clientes.fieldbyname('codigo').asInteger;
  frmfrente.lblncli.caption := frmdados.Cds_Clientes.fieldbyname('Nome').asString;

  tabela := 'Temp';
  frmdados.Cds_Temp.Edit;
  frmdados.Cds_Temp.FieldByName('cod').asInteger := frmdados.Cds_Clientes.fieldbyname('ctipotab').asInteger;

  tabela := 'Vendab';
  close;

end;



procedure TfrmpesqClic.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
tabela := 'Vendab';
frmfrente.bprocura := true;
end;

procedure TfrmpesqClic.spdadd178Click(Sender: TObject);
var
  contador, x: Integer;
begin
end;

procedure TfrmpesqClic.edinomecliChange(Sender: TObject);
begin
//if edinomecli.Text <> '' then
//   frmdados.cds_clientes.Locate(frmpesqclic.sClassificar,edinomecli.text,[loPartialKey,loCaseInsensitive]);
//endi

end;

procedure TfrmpesqClic.FormShow(Sender: TObject);
var
   vardir: String;

begin
   itag := 11;

   with frmdados do
     begin
       cds_tipotab.Active := false;
       dbx_tipotab.Active := false;
       dbx_tipotab.SQL.Clear;
       dbx_tipotab.SQL.Add('Select * from tipotab');
       dbx_tipotab.Active := false;
       cds_tipotab.Active := true;
     end;
   //endth

   tabela := 'Clientes';

   pnllistacli.Top := 0;
   pnllistacli.Left := -1;
   pctcli.ActivePageIndex := 0;

   vardir := ExtractFilePath(Application.ExeName);
   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Nome');
   cbxclassificar.ItemIndex := 0;
   limpar;

   if frmfrente.iccli > 0 then
      edidesc.Text := frmfrente.lblncli.caption;
   //endi

   if frmfrente.bReimp then
      begin
        dbgcli.Enabled := false;
        edidesc.Enabled := false;
      end;
   //endi   


end;

procedure TfrmpesqClic.edinomecliKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endi

end;

procedure TfrmpesqClic.dbgcliDblClick(Sender: TObject);
begin
spdconfirma.Click;

//edinomecli.text := frmdados.cds_clientes.fieldbyname('Nome').asString;
//edinomecli.setfocus;

end;

procedure TfrmpesqClic.inserircli;
begin
    {
     with frmdados do
       begin


           if edinomecli.Text <> '' then
              begin
                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Insert into clientes (');
                if sfantasia <> '' then
                   dbx_exec.SQL.Add('Fantasia,');
                //endi
                if ediendereco.Text <> '' then
                   dbx_exec.SQL.Add('endent,');
                //endi
                if edicomplement.Text <> '' then
                   dbx_exec.SQL.Add('complent,');
                //endi
                if edibairro.Text <> '' then
                   dbx_exec.SQL.Add('bairroent,');
                //endi
                if edicidade.Text <> '' then
                   dbx_exec.SQL.Add('cidadeent,');
                //endi
                if ediestado.Text <> '' then
                   dbx_exec.SQL.Add('estadoent,');
                //endi
                if edicep.Text <> '' then
                   dbx_exec.SQL.Add('cepent,');
                //endi
                if editelefone.Text <> '' then
                   dbx_exec.SQL.Add('telefoneent,');
                //endi
                if ediemail.Text <> '' then
                  dbx_exec.SQL.Add('email,');
                //endi
                if edicontato.Text <> '' then
                   dbx_exec.SQL.Add('contato,');
                //endi
                if edicpf.Text <> '' then
                   dbx_exec.SQL.Add('cpf,');
                //endi
                if edirg.Text <> '' then
                   dbx_exec.SQL.Add('ie,');
                //endi
                dbx_exec.SQL.Add('Nome');

                dbx_exec.SQL.Add(') values (');
                if sfantasia <> '' then
                   dbx_exec.SQL.Add(quotedstr(sfantasia)+',');
                //endi
                if ediendereco.Text <> '' then
                   dbx_exec.SQL.Add(quotedstr(ediendereco.Text)+',');
                //endi
                if edicomplement.Text <> '' then
                   dbx_exec.SQL.Add(quotedstr(edicomplement.Text)+',');
                //endi
                if edibairro.Text <> '' then
                   dbx_exec.SQL.Add(quotedstr(edibairro.Text)+',');
                //endi
                if edicidade.Text <> '' then
                   dbx_exec.SQL.Add(quotedstr(edicidade.Text)+',');
                //endi
                if ediestado.Text <> '' then
                   dbx_exec.SQL.Add(quotedstr(ediestado.Text)+',');
                //endi
                if edicep.Text <> '' then
                   dbx_exec.SQL.Add(quotedstr(edicep.Text)+',');
                //endi
                if editelefone.Text <> '' then
                   dbx_exec.SQL.Add(quotedstr(editelefone.Text)+',');
                //endi
                if ediemail.Text <> '' then
                   dbx_exec.SQL.Add(quotedstr(ediemail.Text)+',');
                //endi
                if edicontato.Text <> '' then
                   dbx_exec.SQL.Add(quotedstr(edicontato.Text)+',');
                //endi
                if edicpf.Text <> '' then
                   dbx_exec.SQL.Add(quotedstr(edicpf.Text)+',');
                //endi
                if edirg.Text <> '' then
                   dbx_exec.SQL.Add(quotedstr(edirg.Text)+',');
                //endi
                dbx_exec.SQL.Add(quotedstr(edinomecli.Text));
                dbx_exec.SQL.Add(')');
                dbx_exec.ExecSQL;
                //showmessage(dbx_exec.SQL.Text);
              end;
           //endi

           dbx_exec.Active := false;
           dbx_exec.SQL.Clear;
           dbx_exec.SQL.Add('Select * from clientes order by codigo');
           dbx_exec.ExecSQL;

        end;
     //endth

    }

end;


procedure TfrmpesqClic.alteracli;
begin

  {

  with frmdados do
    begin
      if sfantasia <> '' then
         begin
           dbx_exec.Active := false;
           dbx_exec.SQL.Clear;
           dbx_exec.SQL.Add('Update Clientes set Fantasia = '+quotedstr(sfantasia)+' Where codigo = '+inttostr(strtoint(lblcodcli.caption)));
           dbx_exec.ExecSQL;
         end;
      //endi
      if ediendereco.Text <> '' then
         begin
           dbx_exec.Active := false;
           dbx_exec.SQL.Clear;
           dbx_exec.SQL.Add('Update Clientes set endent = '+quotedstr(ediendereco.Text)+' Where codigo = '+inttostr(strtoint(lblcodcli.caption)));
           dbx_exec.ExecSQL;
         end;
      //endi
      if edicomplement.Text <> '' then
         begin
           dbx_exec.Active := false;
           dbx_exec.SQL.Clear;
           dbx_exec.SQL.Add('Update Clientes set complent = '+quotedstr(edicomplement.Text)+' Where codigo = '+inttostr(strtoint(lblcodcli.caption)));
           dbx_exec.ExecSQL;
         end;
      //endi
      if edibairro.Text <> '' then
         begin
           dbx_exec.Active := false;
           dbx_exec.SQL.Clear;
           dbx_exec.SQL.Add('Update Clientes set bairroent = '+quotedstr(edibairro.Text)+' Where codigo = '+inttostr(strtoint(lblcodcli.caption)));
           dbx_exec.ExecSQL;
         end;
      //endi
      if edicidade.Text <> '' then
         begin
           dbx_exec.Active := false;
           dbx_exec.SQL.Clear;
           dbx_exec.SQL.Add('Update Clientes set cidadeent = '+quotedstr(edicidade.Text)+' Where codigo = '+inttostr(strtoint(lblcodcli.caption)));
           dbx_exec.ExecSQL;
         end;
      //endi
      if ediestado.Text <> '' then
         begin
           dbx_exec.Active := false;
           dbx_exec.SQL.Clear;
           dbx_exec.SQL.Add('Update Clientes set estadoent = '+quotedstr(ediestado.Text)+' Where codigo = '+inttostr(strtoint(lblcodcli.caption)));
           dbx_exec.ExecSQL;
         end;
      //endi
      if edicep.Text <> '' then
         begin
           dbx_exec.Active := false;
           dbx_exec.SQL.Clear;
           dbx_exec.SQL.Add('Update Clientes set cepent = '+quotedstr(edicep.Text)+' Where codigo = '+inttostr(strtoint(lblcodcli.caption)));
           dbx_exec.ExecSQL;
         end;
      //endi
      if editelefone.Text <> '' then
         begin
           dbx_exec.Active := false;
           dbx_exec.SQL.Clear;
           dbx_exec.SQL.Add('Update Clientes set telefoneent = '+quotedstr(editelefone.Text)+' Where codigo = '+inttostr(strtoint(lblcodcli.caption)));
           dbx_exec.ExecSQL;
         end;
      //endi
      if ediemail.Text <> '' then
         begin
           dbx_exec.Active := false;
           dbx_exec.SQL.Clear;
           dbx_exec.SQL.Add('Update Clientes set email = '+quotedstr(ediemail.Text)+' Where codigo = '+inttostr(strtoint(lblcodcli.caption)));
           dbx_exec.ExecSQL;
         end;
      //endi
      if edicontato.Text <> '' then
         begin
           dbx_exec.Active := false;
           dbx_exec.SQL.Clear;
           dbx_exec.SQL.Add('Update Clientes set contato = '+quotedstr(edicontato.Text)+' Where codigo = '+inttostr(strtoint(lblcodcli.caption)));
           dbx_exec.ExecSQL;
         end;
      //endi
      if edicpf.Text <> '' then
         begin
           dbx_exec.Active := false;
           dbx_exec.SQL.Clear;
           dbx_exec.SQL.Add('Update Clientes set cpf = '+quotedstr(edicpf.Text)+' Where codigo = '+inttostr(strtoint(lblcodcli.caption)));
           dbx_exec.ExecSQL;
         end;
      //endi
      if edirg.Text <> '' then
         begin
           dbx_exec.Active := false;
           dbx_exec.SQL.Clear;
           dbx_exec.SQL.Add('Update Clientes set ie = '+quotedstr(edirg.Text)+' Where codigo = '+inttostr(strtoint(lblcodcli.caption)));
           dbx_exec.ExecSQL;
         end;
      //endi
      if edinomecli.Text <> '' then
         begin
           dbx_exec.Active := false;
           dbx_exec.SQL.Clear;
           dbx_exec.SQL.Add('Update Clientes set Nome = '+quotedstr(ediNomeCli.Text)+' Where codigo = '+inttostr(strtoint(lblcodcli.caption)));
           dbx_exec.ExecSQL;
         end;
      //endi





    end;
  //endth

  }
end;
procedure TfrmpesqClic.DBEdit1Exit(Sender: TObject);
begin
     with frmdados do
       begin
         if cds_ClientesCPF.text <> '' then
            if length(cds_ClientesCPF.text) > 14 then
               cds_ClientesCPF.EditMask := '00.000.000/0000-00;0;_'
            else
               cds_ClientesCPF.EditMask := '000.000.000-00;0;_'
            //endi
         else
            cds_ClientesCPF.EditMask := '';
         //endi
       end;
     //endth

end;

procedure TfrmpesqClic.DBEdit1Enter(Sender: TObject);
begin
frmdados.cds_ClientesCPF.EditMask := '';
end;

procedure TfrmpesqClic.spdIncluir111Click(Sender: TObject);
begin
pnllistacli.Visible := false;
frmdados.Cds_Clientes.Append;
dbedit1.SetFocus;
end;

procedure TfrmpesqClic.spdAlterar112Click(Sender: TObject);
begin
pnllistacli.Visible := false;
frmdados.Cds_Clientes.Edit;
dbedit1.SetFocus;
end;

procedure TfrmpesqClic.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   frmdados.cds_Clientes.Locate(frmpesqclic.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure TfrmpesqClic.edidescKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     aproximado;
   end;
//endi

end;

procedure TfrmpesqClic.filtrar;
var
  // variáveis comuns a todos os filtros
  sCompo,sTitRel : String;
  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc : String;
  ftotcusto, ftotpreco:real;
begin

     with frmdados do
       begin
         Cds_Clientes.Active := false;
       end;
     //end;

     if cbxclassificar.Text = 'Nome' then
        sClassificar := 'Nome';
     //endi

     // inicializando variáveis comuns
     sCompo := '';
     sTitRel := '';

     // inicializando variáveis deste filtro
     sCodigoF := '';
     sCodigoI := '';
     sDesc := '';

     // carregando variaveis


     sDesc := edidesc.Text;

     try
       with frmdados.Dbx_Clientes do
          begin
            active := false;
            sql.Clear;
            if sCompo <> '' then
               sql.Add('select * from Clientes where '+sCompo+' order by '+sClassificar)
            else
               sql.Add('select * from Clientes order by '+sClassificar);
            //endi
            active := true;
          end;
       //endi
     except
       showmessage('Não consegui conectar a tabela, operação abortada!!!');
       close;
       exit;
     end;
     with frmdados do
       begin
         Cds_Clientes.Active := true;
       end;
     //end;



end;

procedure TfrmpesqClic.limpar;
begin

  edidesc.Text := '';
  filtrar;

   mmoobs.Clear;
   mmoobs.Lines.Add(frmfrente.mmoinfent);

   with frmdados do
     begin

         if cds_ClientesCPF.text <> '' then
            if length(cds_ClientesCPF.text) > 14 then
               cds_ClientesCPF.EditMask := '00.000.000/0000-00;0;_'
            else
               cds_ClientesCPF.EditMask := '000.000.000-00;0;_'
            //endi
         else
            cds_ClientesCPF.EditMask := '';
         //endi
     end;
   //endi

end;

procedure TfrmpesqClic.aproximado;
begin
  with frmdados do
    begin
      if edidesc.Text <> '' then
         begin
           dbx_clientes.active := false;
           dbx_clientes.sql.Clear;
           dbx_clientes.sql.Add('select * from Clientes where '+sClassificar+' like '+quotedstr('%'+edidesc.Text+'%')+'order by '+sClassificar);
           dbx_clientes.active := true;
           cds_clientes.Refresh;
         end;
      //endi
    end;
  //endi
end;


procedure TfrmpesqClic.spdlimparClick(Sender: TObject);
begin
limpar;
end;

procedure TfrmpesqClic.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
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

procedure TfrmpesqClic.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     exit;
   end;
//endi

end;

procedure TfrmpesqClic.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   if pnllistacli.Visible then
      spdconfirma.Click;
   //endi
//endi

end;

procedure TfrmpesqClic.cbxntabelaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     exit;
   end;
//endi

end;

end.
