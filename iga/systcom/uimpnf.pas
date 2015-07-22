unit uimpnf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, SqlExpr, Db,
  SayPrint, ComCtrls, Grids, DBGrids;

type
  Tfrmimpnf = class(TForm)
    spdcancelar2310: TSpeedButton;
    spdimprimir: TSpeedButton;
    Label1: TLabel;
    lblnnf: TLabel;
    Label7: TLabel;
    cbxnatureza: TDBLookupComboBox;
    Label8: TLabel;
    cbxcfop: TDBLookupComboBox;
    Label36: TLabel;
    ediBASECALCICMSSUB: TDBEdit;
    Label37: TLabel;
    ediVLRICMSSUB: TDBEdit;
    Label38: TLabel;
    edivlrfrete: TDBEdit;
    ediplacavei: TDBEdit;
    Label42: TLabel;
    edioutdesp: TDBEdit;
    Label40: TLabel;
    edivlrseguro: TDBEdit;
    Label39: TLabel;
    Label41: TLabel;
    cbxntransp: TDBLookupComboBox;
    Label43: TLabel;
    ediufvei: TDBEdit;
    edinumero: TDBEdit;
    Label34: TLabel;
    edimarca: TDBEdit;
    Label33: TLabel;
    ediespecie: TDBEdit;
    Label32: TLabel;
    ediquantidade: TDBEdit;
    Label31: TLabel;
    Label35: TLabel;
    edipesob: TDBEdit;
    Label44: TLabel;
    edipesol: TDBEdit;
    rgbtiponf: TDBRadioGroup;
    rgbfretep: TDBRadioGroup;
    SayPrint: TSayPrint;
    Label3: TLabel;
    rgbimprimir: TRadioGroup;
    lblnped: TLabel;
    mmoobs: TDBMemo;
    Label4: TLabel;
    edincopias: TEdit;
    Label2: TLabel;
    lbltotfolhanf: TLabel;
    procedure spdcancelar2310Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edipdescKeyPress(Sender: TObject; var Key: Char);
    procedure edivaldescKeyPress(Sender: TObject; var Key: Char);
    procedure ediliquidoKeyPress(Sender: TObject; var Key: Char);
    procedure edidinKeyPress(Sender: TObject; var Key: Char);
    procedure edinumdup1KeyPress(Sender: TObject; var Key: Char);
    procedure edinumdup2KeyPress(Sender: TObject; var Key: Char);
    procedure edinumdup3KeyPress(Sender: TObject; var Key: Char);
    procedure edivlrdup1KeyPress(Sender: TObject; var Key: Char);
    procedure edivlrdup2KeyPress(Sender: TObject; var Key: Char);
    procedure edivlrdup3KeyPress(Sender: TObject; var Key: Char);
    procedure edivctdup1KeyPress(Sender: TObject; var Key: Char);
    procedure edivctdup2KeyPress(Sender: TObject; var Key: Char);
    procedure edivctdup3KeyPress(Sender: TObject; var Key: Char);
    procedure cbxnaturezaKeyPress(Sender: TObject; var Key: Char);
    procedure cbxcfopKeyPress(Sender: TObject; var Key: Char);
    procedure ediBASECALCICMSSUBKeyPress(Sender: TObject; var Key: Char);
    procedure ediVLRICMSSUBKeyPress(Sender: TObject; var Key: Char);
    procedure edivlrfreteKeyPress(Sender: TObject; var Key: Char);
    procedure edivlrseguroKeyPress(Sender: TObject; var Key: Char);
    procedure edioutdespKeyPress(Sender: TObject; var Key: Char);
    procedure ediplacaveiKeyPress(Sender: TObject; var Key: Char);
    procedure cbxntranspKeyPress(Sender: TObject; var Key: Char);
    procedure ediufveiKeyPress(Sender: TObject; var Key: Char);
    procedure ediquantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure ediespecieKeyPress(Sender: TObject; var Key: Char);
    procedure edimarcaKeyPress(Sender: TObject; var Key: Char);
    procedure edinumeroKeyPress(Sender: TObject; var Key: Char);
    procedure edipesobKeyPress(Sender: TObject; var Key: Char);
    procedure edipesolKeyPress(Sender: TObject; var Key: Char);
    procedure spdimprimirClick(Sender: TObject);
    procedure ediparcKeyPress(Sender: TObject; var Key: Char);
    procedure limparT;
    procedure limparP;
    procedure edidinEnter(Sender: TObject);
    procedure ediprazo1KeyPress(Sender: TObject; var Key: Char);
    procedure ediprazo2KeyPress(Sender: TObject; var Key: Char);
    procedure ediprazo3KeyPress(Sender: TObject; var Key: Char);
    procedure ediprazo1Exit(Sender: TObject);
    procedure ediprazo2Exit(Sender: TObject);
    procedure ediprazo3Exit(Sender: TObject);
    procedure edivctdup1Exit(Sender: TObject);
    procedure edivctdup2Exit(Sender: TObject);
    procedure edivctdup3Exit(Sender: TObject);
    procedure ediparcEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure imporcrazao66x80;
    procedure imporcrazao66x140;
    procedure rgbimprimirClick(Sender: TObject);
    procedure bloqueiot;
    procedure desbloqueiaf;
    procedure cbxtipoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure apagaparc;
    procedure dbgvenctoEnter(Sender: TObject);
    procedure dbgvenctoExit(Sender: TObject);
    procedure dbgvenctoKeyPress(Sender: TObject; var Key: Char);
    procedure edincopiasExit(Sender: TObject);




  private
    { Private declarations }
    bAvista, bReimp:boolean;
    inorc, inped, iccli:integer;
    sNomeCli, sEnderecoent, sComplent, sBairroent, sCidadeent, sEstadoent,
    scepent, sTelefoneent, sContato, sVendedor, sDataF, sDataImp, sHoraImp, sCodCli,
    sFantasia, sTelefones:string;
    ftot, fpdesc, fvaldesc,  ftotpag:real;
    spdesc, svaldesc, sNumDup1, sNumDup2, sNumDup3, sNumDup4, sVlrDup1, sVlrDup2,
    sVlrDup3, sVlrDup4, sVctDup1, sVctDup2, sVctDup3, sVctDup4:string;
    iParcDup1, iParcDup2, iParcDup3, iParcDup4:integer;
  public
    { Public declarations }
    sColuna:String;
  end;

var
  frmimpnf: Tfrmimpnf;

implementation
  uses ugeral, upesqvd, uDados, Uemailped;
{$R *.dfm}

procedure Tfrmimpnf.spdcancelar2310Click(Sender: TObject);
begin
if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
   frmdados.Cds_sVenda.cancel;
//endi

close;
end;

procedure Tfrmimpnf.FormShow(Sender: TObject);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt, stipopgto : String;
  il1, il2, itotp:integer;
begin
  tabela := 'sVenda';
  scoluna := 'n_tipo_pgto';


  if frmdados.Cds_svenda.State in [dsinsert, dsedit] then
     frmdados.Cds_svenda.Post;
  //endi

  SqlStMt := 'Select gen_id(Gen_nNf,0) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
  if Assigned(ResultSet) then
     lblnnf.Caption  := formatfloat('00000',ResultSet.fieldbyname('valor').asInteger+1);
  //endi

  SqlStMt := 'Select gen_id(Gen_Nped,0) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
  if Assigned(ResultSet) then
     lblnped.Caption  := formatfloat('00000',ResultSet.fieldbyname('valor').asInteger+1);
  //endi

  if frmdados.Cds_sVenda.FieldByName('nped').asInteger <> 0 then
     begin
       lblnped.Caption := formatfloat('00000',frmdados.Cds_sVenda.FieldByName('nped').asfloat);
     end;
  //endi

  iccli := frmdados.cds_clientes.fieldbyname('codigo').asInteger;
  sNomeCli := frmdados.cds_clientes.fieldbyname('Nome').asString;
  sCodCli := formatfloat('00000',frmdados.cds_clientes.fieldbyname('Codigo').asfloat);
  sFantasia := frmdados.cds_clientes.fieldbyname('fantasia').asString;
  sTelefones := frmdados.cds_clientes.fieldbyname('Telefones').asString;

  sEnderecoent := frmdados.cds_clientes.fieldbyname('endent').asString;
  sComplent := frmdados.cds_clientes.fieldbyname('Complent').asString;
  sBairroent := frmdados.cds_clientes.fieldbyname('Bairroent').asString;
  sCidadeent := frmdados.cds_clientes.fieldbyname('Cidadeent').asString;
  sEstadoent := frmdados.cds_clientes.fieldbyname('estadoent').asString;
  sTelefoneent := frmdados.cds_clientes.fieldbyname('telefoneent').asString;
  sCepent := frmdados.cds_clientes.fieldbyname('Cepent').asString;

  sContato := frmdados.cds_clientes.fieldbyname('contato').asString;
  sVendedor := frmdados.cds_Funcionarios.fieldbyname('nome').asString;

  rgbimprimir.ItemIndex := -1;

  bloqueiot;

  limpart;

  mmoobs.Enabled := false;

  with frmdados do
     begin

       Cds_dVenda.Active := false;
       dbx_dVenda.Active := false;
       dbx_dVenda.SQL.Clear;
       dbx_dVenda.SQL.Add('Select * from dVenda where ( codsvenda = '+frmdados.cds_sVenda.fieldbyname('codigo').asString+') and (impnf = '+Quotedstr('T')+')');
       dbx_dVenda.Active := true;
       cds_dVenda.Active := true;

       Cds_NFE.Active := false;
       dbx_NFE.Active := false;
       dbx_NFE.SQL.Clear;
       dbx_NFE.SQL.Add('Select * from NFE where ( cod_svenda = '+frmdados.cds_sVenda.fieldbyname('codigo').asString+')');
       dbx_NFE.Active := true;
       cds_NFE.Active := true;

       cds_tipo_pgto.Active := false;
       dbx_tipo_pgto.Active := false;
       dbx_tipo_pgto.SQL.Clear;
       dbx_tipo_pgto.SQL.Add('Select * from Tipo_Pgto where (codigo <> '+cds_indice.fieldbyname('codavista').asString+')');
       dbx_tipo_pgto.Active := true;
       cds_tipo_pgto.Active := true;

       stipopgto := '';
       while not Cds_Tipo_Pgto.Eof do
         begin
           stipopgto := stipopgto +' '+ Cds_Tipo_Pgto.fieldbyname('codigo').asString+') '+Cds_Tipo_Pgto.fieldbyname('Descricao').asString;

           Cds_tipo_Pgto.Next;
         end;
       //endi

       cds_Vencto.Active := false;
       cds_Venctoc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
       dbx_Vencto.Active := false;
       dbx_Vencto.SQL.Clear;
       dbx_Vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+cds_svenda.fieldbyname('codigo').asString+')');
       dbx_Vencto.Active := true;
       cds_Vencto.Active := true;

       cds_Vencto_NF.Active := false;
       cds_Vencto_NFc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
       dbx_Vencto_NF.Active := false;
       dbx_Vencto_NF.SQL.Clear;
       dbx_Vencto_NF.SQL.Add('Select * from Vencimentos_NF where (c_svenda = '+cds_svenda.fieldbyname('codigo').asString+')');
       dbx_Vencto_NF.Active := true;
       cds_Vencto_NF.Active := true;

       dbx_Conf_Nf.Active := false;
       dbx_Conf_NF.SQL.Clear;
       dbx_Conf_NF.SQL.Add('Select * from ConfNF where codigo = 400');
       dbx_Conf_NF.Active := true;
       il1 := frmdados.Dbx_Conf_NF.fieldbyname('linha').asInteger;
       dbx_Conf_NF.Active := false;

       dbx_Conf_Nf.Active := false;
       dbx_Conf_NF.SQL.Clear;
       dbx_Conf_NF.SQL.Add('Select * from ConfNF where codigo = 280');
       dbx_Conf_NF.Active := true;
       il2 := frmdados.Dbx_Conf_NF.fieldbyname('linha').asInteger;
       dbx_Conf_NF.Active := false;

       itotp := il1 - il2;
       ftotpag := cds_dvenda.RecordCount  div (itotp-2);
       ftotpag := ftotpag + 1;
       lbltotfolhanf.Caption := formatfloat('0000',int(ftotpag));

    end;
  //endi

  edincopias.Enabled := false;
  edincopias.Text := '1';

end;

procedure Tfrmimpnf.edipdescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif


end;

procedure Tfrmimpnf.edivaldescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.ediliquidoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.edidinKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.edinumdup1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.edinumdup2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.edinumdup3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.edivlrdup1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.edivlrdup2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.edivlrdup3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.edivctdup1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.edivctdup2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.edivctdup3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.cbxnaturezaKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.cbxcfopKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.ediBASECALCICMSSUBKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.ediVLRICMSSUBKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.edivlrfreteKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.edivlrseguroKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.edioutdespKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.ediplacaveiKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.cbxntranspKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.ediufveiKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.ediquantidadeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.ediespecieKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.edimarcaKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.edinumeroKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.edipesobKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.edipesolKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;





procedure Tfrmimpnf.spdimprimirClick(Sender: TObject);
var ftotal:currency;
    ftotalprazo:integer;
    ResultSet : tCustomSqlDataSet;
    SqlStMt : String;
    x:integer;
begin

if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
   frmdados.Cds_sVenda.Post;
//endi


if rgbimprimir.ItemIndex = -1 then
   begin
     ShowMessage('Escolha Tipo de Impressão');
     exit;
   end;
//endi

if rgbimprimir.ItemIndex = 1 then
   begin
     with frmdados do
       begin
         dbx_exec.Active := false;
         dbx_exec.SQL.Clear;
         dbx_exec.SQL.Add('Select sum(valor) as totfatu from Vencimentos_NF where (c_svenda = '+cds_svenda.fieldbyname('codigo').asString+')');
         dbx_exec.Active := true;
         ftotal := frmdados.Cds_sVenda.fieldbyname('din').asfloat+dbx_exec.fieldbyname('totfatu').asfloat;
       end;
     //endi

     //if ftotal < frmdados.Cds_sVenda.fieldbyname('liquido').asfloat then
     //   begin
     //     showmessage('Impressão de Nota Fiscal não permitida, Valores de Fechamento inconsistentes.');
     //     exit;
     //   end;
     //endi
     //impnf;

     with frmdados do
          begin

            dbx_exec.Active := false;
            dbx_exec.SQL.Clear;
            dbx_exec.SQL.Add('Update Vencimentos_NF set ehvenda = '+quotedstr('T')+' where c_svenda = '+cds_svenda.fieldbyname('codigo').asString);
            dbx_exec.ExecSQL;

            Cds_sVenda.Edit;
            Cds_sVenda.FieldByName('originado').asString := '2'+Cds_sVenda.fieldbyname('tipoop').asString;
            Cds_sVenda.Post;

          end;
     //endi

   end;
//endi

frmdados.cds_dVenda.Active := false;
frmdados.cds_dVendacodsvenda.DefaultExpression := frmdados.cds_sVenda.fieldbyname('codigo').asString;
frmdados.cds_dVendaImpNf.DefaultExpression := 'T';

frmdados.dbx_dVenda.Active := false;
frmdados.dbx_dVenda.SQL.Clear;
frmdados.dbx_dVenda.SQL.Add('Select * from dVenda where codsvenda = '+frmdados.cds_sVenda.fieldbyname('codigo').asString+' order by npro');
frmdados.dbx_dVenda.Active := true;
frmdados.cds_dVenda.Active := true;

if rgbimprimir.ItemIndex = 0 then
   begin

     if frmpesqvd.rgbtipoop.ItemIndex = 0 then
        begin
          SqlStMt := 'Select gen_id(Gen_nOrc,1) as Valor from RDB$DATABASE;';
          ResultSet := nil;
          frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
          if Assigned(ResultSet) then
             iNorc := ResultSet.fieldbyname('valor').asInteger;
          //endi
        end
     else
        begin
          if frmdados.Cds_sVenda.FieldByName('nped').asInteger = 0 then
             begin
               SqlStMt := 'Select gen_id(Gen_nPed,1) as Valor from RDB$DATABASE;';
               ResultSet := nil;
               frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
               if Assigned(ResultSet) then
                  iNPed := ResultSet.fieldbyname('valor').asInteger;
               //endi

               with frmdados do
                 begin
                   Cds_sVenda.Edit;
                   Cds_sVenda.FieldByName('nped').asInteger := iNped;
                   Cds_sVenda.Post;
                 end;
               //endi

             end;
          //endi

          with frmdados do
               begin

                 dbx_exec.Active := false;
                 dbx_exec.SQL.Clear;
                 dbx_exec.SQL.Add('Select * from Vencimentos where c_svenda = '+cds_svenda.fieldbyname('codigo').asString);
                 dbx_exec.Active := true;
                 if dbx_exec.RecordCount = 0 then
                    begin
                      Showmessage('Valores não foram digitados para posterior lançamento');
                      exit;
                    end;
                 //endi

                 dbx_exec.Active := false;
                 dbx_exec.SQL.Clear;
                 dbx_exec.SQL.Add('Update Vencimentos set ehvenda = '+quotedstr('T')+' where c_svenda = '+cds_svenda.fieldbyname('codigo').asString);
                 dbx_exec.ExecSQL;

                 Cds_sVenda.Edit;
                 Cds_sVenda.FieldByName('originado').asString := '2'+Cds_sVenda.fieldbyname('tipoop').asString;
                 Cds_sVenda.FieldByName('lancado').asString := 'T';
                 Cds_sVenda.Post;

               end;
          //endi

        end;
     //endi

     for x := 1 to strtoint(edincopias.Text) do
       begin
         imporcrazao66x140;
       end;
     //endi    

   end;
//endi

if rgbimprimir.ItemIndex = 2 then
   begin

     frmemailped := tfrmemailped.Create(self);
     frmemailped.ShowModal;
     frmemailped.Free;

   end;
//endi

frmdados.cds_dVenda.Active := false;
frmdados.cds_dVendacodsvenda.DefaultExpression := frmdados.cds_sVenda.fieldbyname('codigo').asString;
frmdados.cds_dVendaImpNf.DefaultExpression := 'T';

frmdados.dbx_dVenda.Active := false;
frmdados.dbx_dVenda.SQL.Clear;
frmdados.dbx_dVenda.SQL.Add('Select * from dVenda where codsvenda = '+frmdados.cds_sVenda.fieldbyname('codigo').asString);
frmdados.dbx_dVenda.Active := true;
frmdados.cds_dVenda.Active := true;

close;

end;

procedure Tfrmimpnf.ediparcKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.limparT;
begin

  if (frmdados.Cds_sVenda.State <> dsinsert) or (frmdados.Cds_sVenda.State <> dsedit) then
     frmdados.Cds_sVenda.Edit;
  //endi

  if frmdados.Cds_sVenda.FieldByName('nped').asInteger <> 0 then
     exit;
  //endi

  frmdados.Cds_sVenda.FieldByName('fretep').asfloat := 2;
  frmdados.Cds_sVenda.FieldByName('tpnf').asfloat := 1;

  frmdados.Cds_sVenda.FieldByName('cnat').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('ctransp').asfloat := 0;

  frmdados.Cds_sVenda.FieldByName('basecalcicmssub').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('vlricmssub').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('vlrfrete').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('vlrseguro').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('outdesp').asfloat := 0;

  frmdados.Cds_sVenda.FieldByName('placavei').asString := '';
  frmdados.Cds_sVenda.FieldByName('quantidade').asString := '';
  frmdados.Cds_sVenda.FieldByName('especie').asString := '';
  frmdados.Cds_sVenda.FieldByName('marca').asString := '';
  frmdados.Cds_sVenda.FieldByName('numero').asString := '';
  frmdados.Cds_sVenda.FieldByName('pesob').asString := '';
  frmdados.Cds_sVenda.FieldByName('pesol').asString := '';


  svlrdup1 := '0';
  svlrdup2 := '0';
  svlrdup3 := '0';


end;

procedure tfrmimpnf.limparP;
begin
  if frmdados.Cds_sVenda.FieldByName('nped').asInteger <> 0 then
     exit;
  //endi
end;


procedure Tfrmimpnf.edidinEnter(Sender: TObject);
begin
if rgbimprimir.ItemIndex = 0 then
   frmdados.Cds_sVenda.FieldByName('parc_p').asInteger := 0;
//endi
if rgbimprimir.ItemIndex = 1 then
   frmdados.Cds_sVenda.FieldByName('parc').asInteger := 0;
//endi
if rgbimprimir.ItemIndex = 2 then
   frmdados.Cds_sVenda.FieldByName('parc').asInteger := 0;
//endi

end;

procedure Tfrmimpnf.ediprazo1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.ediprazo2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.ediprazo3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.ediprazo1Exit(Sender: TObject);
begin
frmdados.Cds_sVenda.FieldByName('vctdup1').asDatetime := date + frmdados.Cds_sVenda.FieldByName('prazo1').asInteger;
end;

procedure Tfrmimpnf.ediprazo2Exit(Sender: TObject);
begin
frmdados.Cds_sVenda.FieldByName('vctdup2').asDatetime := date + frmdados.Cds_sVenda.FieldByName('prazo2').asInteger;
end;

procedure Tfrmimpnf.ediprazo3Exit(Sender: TObject);
begin
frmdados.Cds_sVenda.FieldByName('vctdup3').asDatetime := date + frmdados.Cds_sVenda.FieldByName('prazo3').asInteger;
end;

procedure Tfrmimpnf.edivctdup1Exit(Sender: TObject);
begin
frmdados.Cds_sVenda.FieldByName('prazo1').asfloat := frmdados.Cds_sVenda.FieldByName('vctdup1').asDateTime - date;
end;

procedure Tfrmimpnf.edivctdup2Exit(Sender: TObject);
begin
frmdados.Cds_sVenda.FieldByName('prazo2').asfloat := frmdados.Cds_sVenda.FieldByName('vctdup2').asDateTime - date;
end;

procedure Tfrmimpnf.edivctdup3Exit(Sender: TObject);
begin
frmdados.Cds_sVenda.FieldByName('prazo3').asfloat := frmdados.Cds_sVenda.FieldByName('vctdup3').asDateTime - date;
end;

procedure Tfrmimpnf.ediparcEnter(Sender: TObject);
begin
  if frmdados.Cds_Clientes.FieldByName('prazo').asInteger > 0 then
     begin
       frmdados.Cds_sVenda.FieldByName('parc').asInteger := 1;
       frmdados.Cds_sVenda.FieldByName('prazo1').asInteger := frmdados.Cds_Clientes.FieldByName('prazo').asInteger;
     end;
  //endi

end;

procedure Tfrmimpnf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (chr(Key) in ['I', 'i']) then
     begin
       spdimprimir.Click;
     end;
  //endi
  if (ssCtrl in Shift) and (chr(Key) in ['A', 'a']) then
     begin
       spdcancelar2310.Click;
     end;
  //endi

end;

procedure Tfrmimpnf.imporcrazao66x80;
var
  s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,sImp:string;
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
  Col, Centro,x, iLin, iItens:Integer;
  sDelimitador:string;
  sQtdeImp,sDescricaoImp,sCprodImp, sValorImp, sTotalImp, sUniImp:String;
  ftotG, ftotI, ftotE:real;
begin

sDataImp := datetostr(date);
sHoraImp := copy(timetostr(time),1,5);
sDelimitador := replicar('-',80);

frmdados.Cds_dvenda.First;
if frmdados.Cds_dvenda.RecordCount = 0 then
   exit;
//endi
while true do
  begin


    s1 := '';
    sayprint.BeginPrn;

    sayprint.Condensed(true);
    sayprint.Condensed(false);

    sayprint.Expand(True);
    sayprint.Bold(True);
    for x := 1 to (( 40  - length( frmdados.Cds_Config.fieldbyname('campo2').asString )) div 2) do
        begin
          s1 := (s1 + ' ');
        end;
    //endfor
    sImp := s1+frmdados.Cds_Config.fieldbyname('campo2').asString;
    sayprint.Say(0,0,sImp);
    sayprint.Expand(false);
    sayprint.Bold(false);


    s1 := '';
    for x := 1 to (( 80  - length( frmdados.Cds_Config.fieldbyname('campo6').asString )) div 2) do
        begin
          s1 := (s1 + ' ');
        end;
    //endfor
    sImp := s1+frmdados.Cds_Config.fieldbyname('campo6').asString;
    sayprint.Say(1,0,sImp);



    s1 := '';
    for x := 1 to (( 80  - length( frmdados.Cds_Config.fieldbyname('campo7').asString )) div 2) do
        begin
          s1 := (s1 + ' ');
        end;
    //endfor
    sImp := s1+frmdados.Cds_Config.fieldbyname('campo7').asString;
    sayprint.Say(2,0,sImp);
    sayprint.Say(3,0,sDelimitador);

    if frmpesqvd.rgbtipoop.ItemIndex = 0 then
       begin
         sayprint.Say(4,0,'Orcamento '+formatfloat('00000',iNorc));
       end
    else
       begin
         sayprint.Say(4,0,'Pedido '+formatfloat('00000',frmdados.Cds_sVenda.fieldbyname('nped').asfloat));
       end;
    //endi


    sayprint.Say(4,35,'Data     '+sDataImp);
    sayprint.Say(4,68,'Hora   '+sHoraImp);
    sayprint.Say(5,0,sDelimitador);

    if iccli > 0 then
       begin

         sayprint.Say(6, 0,'Cliente.....: '+sCodCli+'  '+sFantasia);
         sayprint.Say(7, 0,'Endereco....: '+sEnderecoent);

         sayprint.Say(8, 0,'Complemento.: '+copy(sComplent,1,14));
         sayprint.Say(8,30,'Bairro.....: '+copy(sBairroent,1,15));
         sayprint.Say(8,60,'Cidade.: '+copy(sCidadeent,1,10));

         sayprint.Say(9, 0,'Estado......: '+sEstadoent);
         sayprint.Say(9,30,'Cep........: '+scepent);

         sayprint.Say(10, 0,'Telefone....: '+sTelefoneent);
         sayprint.Say(10,30,'Contato....: '+sContato);

       end
    else
       begin

         sayprint.Say(6, 0,'Cliente.....: Consumidor');
         sayprint.Say(7, 0,'Endereco....: ');

         sayprint.Say(8, 0,'Complemento.: ');
         sayprint.Say(8,30,'Bairro.....: ');
         sayprint.Say(8,60,'Cidade.: ');

         sayprint.Say(9, 0,'Estado......: ');
         sayprint.Say(9,30,'Cep........: ');

         sayprint.Say(10, 0,'Telefone....: ');
         sayprint.Say(10,30,'Contato....: ');

       end;
    //endi
    sayprint.Say(11,0,sDelimitador);
    sayprint.Say(12,0,'      Qtde Un. Descricao                          Codigo       Valor       Total');
    //                 xx.xxx,xxx xxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  xxxxx  xxx,xxx.xx  xxx,xxx.xx
    sayprint.Say(13,0,sDelimitador);

    iLin    := 14;
    iItens  := 0;

    //frmDados.Dbx_dvenda.First;



      with frmdados do
         begin


           while true do
              begin

                //sQtdeImp      := AlinNumD3(10,Cds_dvenda.fieldbyname('qtde').asfloat);

                sQtdeImp      := AlinNumD0(10,Cds_dVenda.fieldbyname('qtde').asfloat);
                sDescricaoImp := copy(Cds_dvenda.fieldbyname('npro').asString,1,34);
                sCprodImp     := formatfloat('00000',Cds_dvenda.fieldbyname('cpro').asfloat);
                //sValorImp     := AlinNumD(10,Cds_dvenda.fieldbyname('prve').asfloat-(Cds_dvenda.fieldbyname('prve').asfloat*cds_svenda.fieldbyname('pdesc').asfloat/100));
                sValorImp     := AlinNumD(10,Cds_dvenda.fieldbyname('prve').asfloat);

                //sTotalImp     := AlinNumD(12,Cds_dvenda.fieldbyname('subtotal').asfloat-(Cds_dvenda.fieldbyname('subtotal').asfloat*cds_svenda.fieldbyname('pdesc').asfloat/100));
                sTotalImp     := AlinNumD(12,Cds_dvenda.fieldbyname('subtotal').asfloat);

                sUniImp       := Cds_dvenda.fieldbyname('nUnid').asString;

                sayprint.Say(iLin,0,sQtdeImp);
                sayprint.Say(iLin,11,sUniImp);
                sayprint.Say(iLin,15,sDescricaoImp);
                sayprint.Say(iLin,51,sCprodImp);
                sayprint.Say(iLin,58,sValorImp);
                sayprint.Say(iLin,68,sTotalImp);

                iLin := iLin + 1;
                Cds_dvenda.Next;
                if Cds_dvenda.Eof then
                   break;
                //endi


                iItens := iItens + 1;
                if iItens >= 10 then
                   break;
                //endi



              end;
           //endw


        end;
      //endi


      sayprint.Say(24,0,sDelimitador);

      if frmdados.Cds_dvenda.Eof then
         begin

            with frmdados do
              begin
                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select count(*) as totitens from dvenda where (codsvenda = '+frmdados.Cds_sVenda.fieldbyname('codigo').asString+') and (EouS = '+quotedstr('S')+')');
                dbx_exec.Active := true;
                ftotI := dbx_exec.fieldbyname('totitens').asfloat;

                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dvenda where (codsvenda = '+frmdados.Cds_sVenda.fieldbyname('codigo').asString+') and (EouS = '+quotedstr('S')+')');
                dbx_exec.Active := true;
                //ftotG := dbx_exec.fieldbyname('totbruto').asfloat-(dbx_exec.fieldbyname('totbruto').asfloat*cds_sVenda.fieldbyname('pdesc').asfloat/100);
                ftotG := dbx_exec.fieldbyname('totbruto').asfloat;

                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dvenda where (codsvenda = '+frmdados.Cds_sVenda.fieldbyname('codigo').asString+') and (EouS = '+quotedstr('E')+')');
                dbx_exec.Active := true;
                ftotE := dbx_exec.fieldbyname('totbruto').asfloat;

                dbx_exec.Active := false;

              end;
            //endw

            sayprint.Say(25,0,'Vendedor '+sVendedor);

            if ftote > 0 then
               sayprint.Say(25,21,'Devolução ' +formatfloat('###,###,##0.00',ftotE));
            //endi

            sayprint.Say(25,42,'Itens '+formatfloat('00000',ftotI));

            sayprint.Bold(true);
            sayprint.Say(25,60,'Total');

            sValorImp := formatfloat('###,###,##0.00',ftotG);
            sValorImp := AlinNumD(14,ftotG);

            sayprint.Say(25,66,sValorImp);


            sayprint.Bold(false);

            if bReimp then
               begin
                 sayprint.Say(26,0,'Re-Impressão Pedido');
                 sayprint.Say(27,0,'Data Original '+sDataF);
               end;
            //endi


            sayprint.Say(30,0,sDelimitador);



         end
      else
         begin

            if bReimp then
               begin
                 sayprint.Say(26,0,'Re-Impressão Pedido');
                 sayprint.Say(27,0,'Data Original '+sDataF);
               end;
            //endi



           sayprint.Say(30,0,sDelimitador);


         end;
      //endi


      sayprint.Say(66,0,' ');


      sayprint.FreeCommand(chr(13));
      sayprint.EndPrn;



      if frmdados.Cds_dvenda.Eof then
         break;
      //endi




  end;
//endw

end;


procedure tfrmimpnf.imporcrazao66x140;
var
  s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,sImp:string;
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
  Col, Centro,x, iLin, iItens, iCols, iParc:Integer;
  sDelimitador, sParc:string;
  sQtdeImp,sDescricaoImp,sCprodImp, sValorImp, sTotalImp, sUniImp, sDescMar:String;
  ftotG, ftotI, ftotE:real;
begin

sDataImp := datetostr(date);
sHoraImp := copy(timetostr(time),1,5);
sDelimitador := replicar('-',137);
frmdados.Cds_dvenda.First;
if frmdados.Cds_dvenda.RecordCount = 0 then
   exit;
//endi
//if rgbtipoop.ItemIndex = 0 then
//   begin
//     SqlStMt := 'Select gen_id(Gen_nOrc,1) as Valor from RDB$DATABASE;';
//     ResultSet := nil;
//     frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
//     if Assigned(ResultSet) then
//        iNorc := ResultSet.fieldbyname('valor').asInteger;
     //endi
//   end
//else
//   begin
//     SqlStMt := 'Select gen_id(Gen_nPed,1) as Valor from RDB$DATABASE;';
//     ResultSet := nil;
//     frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
//     if Assigned(ResultSet) then
//        iNPed := ResultSet.fieldbyname('valor').asInteger;
     //endi
//   end;
//endi

while true do
  begin


    s1 := '';
    sayprint.BeginPrn;

    sayprint.Condensed(true);
    sayprint.Condensed(false);

    sayprint.Expand(True);
    sayprint.Bold(True);
    for x := 1 to (( 40  - length( frmdados.Cds_Config.fieldbyname('campo2').asString )) div 2) do
        begin
          s1 := (s1 + ' ');
        end;
    //endfor
    sImp := s1+frmdados.Cds_Config.fieldbyname('campo2').asString;
    sayprint.Say(0,0,sImp);
    sayprint.Expand(false);
    sayprint.Bold(false);


    s1 := '';
    for x := 1 to (( 80  - length( frmdados.Cds_Config.fieldbyname('campo6').asString )) div 2) do
        begin
          s1 := (s1 + ' ');
        end;
    //endfor
    sImp := s1+frmdados.Cds_Config.fieldbyname('campo6').asString;
    sayprint.Say(1,0,sImp);



    s1 := '';
    for x := 1 to (( 80  - length( frmdados.Cds_Config.fieldbyname('campo7').asString )) div 2) do
        begin
          s1 := (s1 + ' ');
        end;
    //endfor
    sImp := s1+frmdados.Cds_Config.fieldbyname('campo7').asString;
    sayprint.Say(2,0,sImp);

    sayprint.Condensed(true);
    sayprint.Say(3,0,sDelimitador);
    sayprint.Condensed(false);

    if frmpesqvd.rgbtipoop.ItemIndex = 0 then
       begin
         sayprint.Say(4,0,'Orcamento '+formatfloat('00000',iNorc));
       end
    else
       begin
         sayprint.Say(4,0,'Pedido '+formatfloat('00000',frmdados.Cds_sVenda.fieldbyname('nped').asfloat));
       end;
    //endi
    sayprint.Say(4,35,'Data     '+sDataImp);
    sayprint.Say(4,68,'Hora   '+sHoraImp);

    sayprint.Condensed(true);


    sayprint.Say(5,0,sDelimitador);

    if iccli > 0 then
       begin

         sayprint.Say(6,0,'Cliente.....: '+sCodCli+'  '+sFantasia);
         sayprint.Say(7,0,'Endereco....: '+sEnderecoent);

         sayprint.Say(8, 0,'Complemento.: '+copy(sComplent,1,65));
         sayprint.Say(8,60,'Bairro.....: '+copy(sBairroent,1,20));
         sayprint.Say(8,103,'Cidade.: '+copy(sCidadeent,1,18));

         sayprint.Say(9, 0,'Estado......: '+sEstadoent);
         sayprint.Say(9,60,'Cep........: '+scepent);

         sayprint.Say(10, 0,'Telefone....: '+sTelefones+'  '+sTelefoneent);
         sayprint.Say(10,60,'Contato....: '+sContato);
         //sayprint.Say(10,103,'Vendedor...: '+sVendedor);

       end
    else
       begin

         sayprint.Say(6,0,'Cliente.....: Consumidor');
         sayprint.Say(7,0,'Endereco....: ');

         sayprint.Say(8,0,'Complemento.: ');
         sayprint.Say(8,60,'Bairro.....: ');
         sayprint.Say(8,103,'Cidade.: ');

         sayprint.Say(9,0,'Estado......: ');
         sayprint.Say(9,60,'Cep........: ');

         sayprint.Say(10,  0,'Telefone....: ');
         sayprint.Say(10, 60,'Contato....: ');
         //sayprint.Say(10,103,'Vendedor...: '+sVendedor);

       end;
    //endi
    sayprint.Say(11,0,sDelimitador);
    sayprint.Say(12,0,'      Qtde Un. Descricao                                                              Marca                Codigo       Valor       Total');
    //                 xx.xxx,xxx xxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxx  xxxxx  xxx,xxx.xx  xxx,xxx.xx
    sayprint.Say(13,0,sDelimitador);

    iLin    := 14;
    iItens  := 0;

    //frmDados.Dbx_dvenda.First;



      with frmdados do
         begin


           while true do
              begin

                if cds_dvenda.fieldbyname('cmar').asInteger > 0 then
                   begin
                     Dbx_Exec.Active := false;
                     Dbx_Exec.SQL.Clear;
                     Dbx_Exec.SQL.Add('Select * from Marca Where codigo = '+cds_dvenda.fieldbyname('cMar').asString);
                     Dbx_Exec.Active := true;
                     sDescMar := copy(Dbx_Exec.fieldbyname('Descricao').asString,1,20);
                   end;
                //endi

                //sQtdeImp      := AlinNumD3(10,Cds_dvenda.fieldbyname('qtde').asfloat);
                sQtdeImp      := AlinNumD0(10,Cds_dVenda.fieldbyname('qtde').asfloat);

                sDescricaoImp := Cds_dvenda.fieldbyname('npro').asString;
                sCprodImp     := formatfloat('00000',Cds_dvenda.fieldbyname('cpro').asfloat);

                //sValorImp     := AlinNumD(10,Cds_dvenda.fieldbyname('prve').asfloat-(Cds_dvenda.fieldbyname('prve').asfloat*cds_svenda.fieldbyname('pdesc').asfloat/100));
                sValorImp     := AlinNumD(10,Cds_dvenda.fieldbyname('prve').asfloat);

                //sTotalImp     := AlinNumD(10,Cds_dvenda.fieldbyname('subtotal').asfloat-(Cds_dvenda.fieldbyname('subtotal').asfloat*cds_svenda.fieldbyname('pdesc').asfloat/100));
                sTotalImp     := AlinNumD(10,Cds_dvenda.fieldbyname('subtotal').asfloat);

                sUniImp       := Cds_dvenda.fieldbyname('nUnid').asString;

                sayprint.Say(iLin,0,sQtdeImp);
                sayprint.Say(iLin,11,sUniImp);
                sayprint.Say(iLin,15,sDescricaoImp);
                sayprint.Say(iLin,86,sDescMar);
                sayprint.Say(iLin,108,sCprodImp);
                sayprint.Say(iLin,115,sValorImp);
                sayprint.Say(iLin,127,sTotalImp);

                iLin := iLin + 1;
                Cds_dvenda.Next;
                if Cds_dvenda.Eof then
                   break;
                //endi

                iItens := iItens + 1;
                if iItens >= 39 then
                   break;
                //endi

              end;
           //endw


        end;
      //endi


      sayprint.Say(53,0,sDelimitador);

      if frmdados.Cds_dvenda.Eof then
         begin

            with frmdados do
              begin
                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select count(*) as totitens from dvenda where (codsvenda = '+frmdados.Cds_sVenda.fieldbyname('codigo').asString+') and (EouS = '+quotedstr('S')+')');
                dbx_exec.Active := true;
                ftotI := dbx_exec.fieldbyname('totitens').asfloat;

                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dvenda where (codsvenda = '+frmdados.Cds_sVenda.fieldbyname('codigo').asString+') and (EouS = '+quotedstr('S')+')');
                dbx_exec.Active := true;
                //ftotG := dbx_exec.fieldbyname('totbruto').asfloat-(dbx_exec.fieldbyname('totbruto').asfloat*cds_sVenda.fieldbyname('pdesc').asfloat/100);
                ftotG := dbx_exec.fieldbyname('totbruto').asfloat;

                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dvenda where (codsvenda = '+frmdados.Cds_sVenda.fieldbyname('codigo').asString+') and (EouS = '+quotedstr('E')+')');
                dbx_exec.Active := true;
                ftotE := dbx_exec.fieldbyname('totbruto').asfloat;

                dbx_exec.Active := false;

              end;
            //endw


            sayprint.Condensed(false);

            sayprint.Say(54,0,'Vendedor(a)'+sVendedor);

            if ftote > 0 then
               sayprint.Say(54,21,'Troca '+formatfloat('###,###,##0.00',ftotE));
            //endi

            sayprint.Say(54,42,'Itens '+formatfloat('00000',ftotI));

            sayprint.Bold(true);
            sayprint.Say(54,55,'Total');

            sValorImp := formatfloat('###,###,##0.00',ftotG);
            sValorImp := AlinNumD(14,ftotG);

            sayprint.Say(54,66,sValorImp);

            sayprint.Say(55,55,'Desc.');

            sValorImp := formatfloat('##0.00',frmdados.Cds_sVenda.fieldbyname('pdesc_p').asfloat);
            sValorImp := AlinNumD(6,frmdados.Cds_sVenda.fieldbyname('pdesc_p').asfloat);

            sayprint.Say(55,60,sValorImp+'% R$');

            sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('valdesc_p').asfloat);
            sValorImp := AlinNumD(10,frmdados.Cds_sVenda.fieldbyname('valdesc_p').asfloat);

            sayprint.Say(55,66,sValorImp);


            sayprint.Say(56,55,'Liquido');

            sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('liquido_p').asfloat);
            sValorImp := AlinNumD(14,frmdados.Cds_sVenda.fieldbyname('liquido_p').asfloat);

            sayprint.Say(56,66,sValorImp);


            sayprint.Condensed(true);

            sayprint.Say(57,0,'Forma de Pagto:');

            if frmdados.Cds_sVenda.fieldbyname('Din_p').asfloat > 0 then
               begin
                 sayprint.Say(57,18,'A vista (');

                 if frmdados.Cds_sVenda.fieldbyname('Din_p').asfloat > frmdados.Cds_sVenda.fieldbyname('liquido_p').asfloat then
                    begin
                      sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('liquido_p').asfloat);
                      sValorImp := AlinNumD(10,frmdados.Cds_sVenda.fieldbyname('liquido_p').asfloat);
                    end
                 else
                    begin
                      sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('din_p').asfloat);
                      sValorImp := AlinNumD(10,frmdados.Cds_sVenda.fieldbyname('din_p').asfloat);
                    end;
                 //endi

                 sayprint.Say(57,25,' R$ '+sValorImp+' )');



               end;
            //endi

            //imprime parcelas
            iCols := 1;
            iLin := 57;
            iItens  := 0;
            svlrdup1 := '0';
            svlrdup2 := '0';
            svlrdup3 := '0';

            with frmdados do
              begin

                cds_vencto.Active := false;
                dbx_vencto.Active := false;
                dbx_vencto.SQL.Clear;
                dbx_vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+cds_svenda.fieldbyname('codigo').asString+')');
                dbx_vencto.Active := true;
                cds_vencto.Active := true;


                while true do
                  begin

                    icols := 1;

                    sNumDup1 := '';
                    sVlrDup1 := '0';
                    sVctDup1 := '';
                    iParcDup1 := 0;

                    sNumDup2 := '';
                    sVlrDup2 := '0';
                    sVctDup2 := '';
                    iParcDup2 := 0;

                    sNumDup3 := '';
                    sVlrDup3 := '0';
                    sVctDup3 := '';
                    iParcDup3 := 0;

                    sNumDup4 := '';
                    sVlrDup4 := '0';
                    sVctDup4 := '';
                    iParcDup4 := 0;

                    while (icols <= 2)do
                      begin

                        if icols = 1 then
                           begin
                             sNumDup1 := cds_vencto.fieldbyname('doc').asString;
                             sVlrDup1 := floattostr(cds_vencto.fieldbyname('valor').asfloat);
                             sVctDup1 := cds_vencto.fieldbyname('dtv').asString;
                             iParcDup1 := strtoint( copy(cds_vencto.fieldbyname('Parc').asString,1,2) );
                           end;
                        //endi

                        if iCols = 2 then
                           begin
                             sNumDup2 := cds_vencto.fieldbyname('doc').asString;
                             sVlrDup2 := floattostr(cds_vencto.fieldbyname('valor').asfloat);
                             sVctDup2 := cds_vencto.fieldbyname('dtv').asString;
                             iParcDup2 := strtoint( copy(cds_vencto.fieldbyname('Parc').asString,1,2) );
                           end;
                        //endi

                        if iCols = 3 then
                           begin
                             sNumDup3 := cds_vencto.fieldbyname('doc').asString;
                             sVlrDup3 := floattostr(cds_vencto.fieldbyname('valor').asfloat);
                             sVctDup3 := cds_vencto.fieldbyname('dtv').asString;
                             iParcDup3 := strtoint( copy(cds_vencto.fieldbyname('Parc').asString,1,2) );
                           end;
                        //endi

                        if iCols = 4 then
                           begin
                             sNumDup4 := cds_vencto.fieldbyname('doc').asString;
                             sVlrDup4 := floattostr(cds_vencto.fieldbyname('valor').asfloat);
                             sVctDup4 := cds_vencto.fieldbyname('dtv').asString;
                             iParcDup4 := strtoint( copy(cds_vencto.fieldbyname('Parc').asString,1,2) );
                          end;
                        //endi

                        icols := icols + 1;
                        Cds_Vencto.Next;
                        if cds_vencto.Eof then
                           break;
                        //endi

                      end;
                    //endi

                    if iparcdup1 > 0 then
                      begin
                        sayprint.Say(iLin,38,' Parc '+inttostr(iParcDup1)+'( '+sVctDup1);
                        sValorImp := formatfloat('###,###,##0.00',strtofloat(tirapontos(sVlrDup1)) );
                        sValorImp := AlinNumD(10,strtofloat(tirapontos(sVlrDup1)));
                        sayprint.Say(iLin,53,' R$ '+sValorImp+' )');
                      end;
                    //endi

                    if iparcdup2 > 0 then
                      begin
                        sayprint.Say(iLin,65,' Parc '+inttostr(iParcDup2)+'( '+sVctDup2);
                        sValorImp := formatfloat('###,###,##0.00',strtofloat(tirapontos(sVlrDup2)) );
                        sValorImp := AlinNumD(10,strtofloat(tirapontos(sVlrDup2)));
                        sayprint.Say(iLin,78,' R$ '+sValorImp+' )');
                      end;
                    //endi

                    iLin := iLin + 1;
                    if cds_vencto.Eof then
                       break;
                    //endi

                    iItens := iItens + 1;
                    if iItens >= 3 then
                       break;
                    //endi

                  end;
                //endi

              end;
            //endth











   {







            if frmdados.Cds_sVenda.FieldByName('parc').asInteger > 0 then
               begin
                 sayprint.Say(57,38,' Parc 1( '+frmdados.Cds_sVenda.fieldbyname('vctdup1').asString);
                 sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('vlrdup1').asfloat);
                 sValorImp := AlinNumD(10,frmdados.Cds_sVenda.fieldbyname('vlrdup1').asfloat);
                 sayprint.Say(57,53,' R$ '+sValorImp+' )');

                 if frmdados.Cds_sVenda.FieldByName('parc').asInteger > 1 then
                    begin
                      sayprint.Say(57,65,' Parc 2( '+frmdados.Cds_sVenda.fieldbyname('vctdup2').asString);
                      sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('vlrdup2').asfloat);
                      sValorImp := AlinNumD(10,frmdados.Cds_sVenda.fieldbyname('vlrdup2').asfloat);
                      sayprint.Say(57,78,' R$ '+sValorImp+' )');

                      if frmdados.Cds_sVenda.FieldByName('parc').asInteger > 2 then
                         begin
                           sayprint.Say(58,43,' Parc 3( '+frmdados.Cds_sVenda.fieldbyname('vctdup3').asString);
                           sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('vlrdup3').asfloat);
                           sValorImp := AlinNumD(10,frmdados.Cds_sVenda.fieldbyname('vlrdup3').asfloat);
                           sayprint.Say(58,58,' R$ '+sValorImp+' )');
                         end;
                      //endi


                    end;
                 //endi



               end;
            //endi


   }







            sayprint.Condensed(false);


            //sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('valdesc').asfloat);
            //sValorImp := AlinNumD(14,frmdados.Cds_sVenda.fieldbyname('valdesc').asfloat);

            //sayprint.Say(61,66,sValorImp);



            //sayprint.Say(62,60,'Liquido');

            //sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_sVenda.fieldbyname('liquido').asfloat);
            //sValorImp := AlinNumD(14,frmdados.Cds_sVenda.fieldbyname('liquido').asfloat);

            //sayprint.Say(62,66,sValorImp);

            sayprint.Bold(false);

            sayprint.Condensed(true);

            sayprint.Say(60,30,'Entrega _____/______/_________ Vencimentos _____/______/_________  Ass._______________________');

            sayprint.Condensed(false);

            {

            if cbxtipo.Text = 'Depósito' then
               begin
                 sayprint.Say(61,0,'Sr. Cliente, favor efetuar seu deposito na data acima e passar');
                 sayprint.Say(62,0,'o comprovante do mesmo. Qualque dúvida ligue para nos.');
               end
            else
               begin
                 if cbxtipo.Text = 'Cheque' then
                    begin
                      sayprint.Say(61,0,'Sr. Cliente, favor deixar seu Cheque na retirada da mercadoria');
                      sayprint.Say(62,0,'obedecendo a data do vencimento.');
                    end;
                 //endi
               end;
            //endi

            }

            if bReimp then
               begin
                 sayprint.Say(26,0,'Re-Impressão Pedido');
                 sayprint.Say(27,0,'Data Original '+sDataF);
               end;
            //endi

            sayprint.Condensed(true);


            sayprint.Say(63,0,sDelimitador);



         end
      else
         begin


            if bReimp then
               begin
                 sayprint.Say(26,0,'Re-Impressão Pedido');
                 sayprint.Say(27,0,'Data Original '+sDataF);
               end;
            //endi


           sayprint.Say(59,0,'Vide Próximo Romaneio');


           sayprint.Say(63,0,sDelimitador);





         end;
      //endi


      sayprint.Say(66,0,' ');


      sayprint.FreeCommand(chr(13));
      sayprint.EndPrn;



      if frmdados.Cds_dvenda.Eof then
         break;
      //endi




  end;
//endw


end;


procedure Tfrmimpnf.rgbimprimirClick(Sender: TObject);
begin
bloqueiot;
if rgbimprimir.ItemIndex = 0 then
  begin
    edincopias.Enabled := true;
    edincopias.Text := '1';
  end;
//endi

if rgbimprimir.ItemIndex = 1 then
  begin
    desbloqueiaf;
    edincopias.Enabled := false;
    edincopias.Text := '1';
  end;
//endi

if rgbimprimir.ItemIndex = 2 then
  begin
    edincopias.Enabled := false;
    edincopias.Text := '1';
  end;
//endi


limpart;

end;


procedure tfrmimpnf.bloqueiot;
begin
cbxnatureza.Enabled := false;
cbxcfop.Enabled := false;
edibasecalcicmssub.Enabled := false;
edivlricmssub.Enabled := false;
edivlrfrete.Enabled := false;
edivlrseguro.Enabled := false;
edioutdesp.Enabled := false;
ediplacavei.Enabled := false;
cbxntransp.Enabled := false;
ediufvei.Enabled := false;
ediquantidade.Enabled := false;
ediespecie.Enabled := false;
edimarca.Enabled := false;
edinumero.Enabled := false;
edipesob.Enabled := false;
edipesol.Enabled := false;
rgbtiponf.Enabled := false;
rgbfretep.Enabled := false;
end;

procedure tfrmimpnf.desbloqueiaf;
begin

cbxnatureza.Enabled := true;
cbxcfop.Enabled := true;
edibasecalcicmssub.Enabled := true;
edivlricmssub.Enabled := true;
edivlrfrete.Enabled := true;
edivlrseguro.Enabled := true;
edioutdesp.Enabled := true;
ediplacavei.Enabled := true;
cbxntransp.Enabled := true;
ediufvei.Enabled := true;
ediquantidade.Enabled := true;
ediespecie.Enabled := true;
edimarca.Enabled := true;
edinumero.Enabled := true;
edipesob.Enabled := true;
edipesol.Enabled := true;
rgbtiponf.Enabled := true;
rgbfretep.Enabled := true;
end;

procedure Tfrmimpnf.cbxtipoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimpnf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tabela := 'sVenda';
  if frmdados.Cds_svenda.State in [dsinsert, dsedit] then
     frmdados.Cds_svenda.Cancel;
  //endi
  Action:=caFree;
  frmimpnf:=nil;
end;

procedure tfrmimpnf.apagaparc;
begin
  with frmdados do
    begin

      if rgbimprimir.ItemIndex = 0 then
         begin

            dbx_vencto.Active := false;
            dbx_vencto.SQL.Clear;
            dbx_vencto.SQL.Add('delete from Vencimentos where (c_sVenda = '+cds_sVenda.fieldbyname('codigo').asString+')');
            dbx_vencto.ExecSQL;

           cds_vencto.Active := false;
           dbx_vencto.Active := false;
           dbx_vencto.SQL.Clear;
           dbx_vencto.SQL.Add('Select * from Vencimentos where (c_sVenda = '+cds_sVenda.fieldbyname('codigo').asString+')');
           dbx_vencto.Active := true;
           cds_vencto.Active := true;

         end;
      //endi

      if rgbimprimir.ItemIndex = 1 then
         begin

           dbx_vencto_NF.Active := false;
           dbx_vencto_NF.SQL.Clear;
           dbx_vencto_NF.SQL.Add('delete from Vencimentos_NF where (c_sVenda = '+cds_sVenda.fieldbyname('codigo').asString+')');
           dbx_vencto_NF.ExecSQL;

           cds_vencto_NF.Active := false;
           dbx_vencto_NF.Active := false;
           dbx_vencto_NF.SQL.Clear;
           dbx_vencto_NF.SQL.Add('Select * from Vencimentos_NF where (c_sVenda = '+cds_sVenda.fieldbyname('codigo').asString+')');
           dbx_vencto_NF.Active := true;
           cds_vencto_NF.Active := true;

         end;
      //endi


      if rgbimprimir.ItemIndex = 2 then
         begin

           dbx_vencto.Active := false;
           dbx_vencto.SQL.Clear;
           dbx_vencto.SQL.Add('delete from Vencimentos where (c_sVenda = '+cds_sVenda.fieldbyname('codigo').asString+')');
           dbx_vencto.ExecSQL;

           cds_vencto.Active := false;
           dbx_vencto.Active := false;
           dbx_vencto.SQL.Clear;
           dbx_vencto.SQL.Add('Select * from Vencimentos where (c_sVenda = '+cds_sVenda.fieldbyname('codigo').asString+')');
           dbx_vencto.Active := true;
           cds_vencto.Active := true;

         end;
      //endi




    end;
  //endth
end;



procedure Tfrmimpnf.dbgvenctoEnter(Sender: TObject);
begin
if rgbimprimir.ItemIndex = 0 then
   tabela := 'Vencimentos';
//endi
if rgbimprimir.ItemIndex = 1 then
   tabela := 'Vencimentos_NF';
//endi
if rgbimprimir.ItemIndex = 2 then
   tabela := 'Vencimentos';
//endi


end;

procedure Tfrmimpnf.dbgvenctoExit(Sender: TObject);
begin
if frmdados.Cds_Vencto.State in [dsinsert, dsedit] then
   frmdados.Cds_Vencto.Post;
//endi
tabela := 'sVenda';
end;

procedure Tfrmimpnf.dbgvenctoKeyPress(Sender: TObject; var Key: Char);
begin
if scoluna = 'n_tipo_pgto' then
   if ( key in['0'..'9',#8] ) then
      if frmdados.cds_Tipo_Pgto.Locate('codigo',key,[]) then
         begin
           if rgbimprimir.ItemIndex = 0 then
              begin
                frmdados.Cds_Vencto.Edit;
                frmdados.Cds_Vencto.FieldByName('c_tipo_pgto').AsString := key;
              end;
           //endi
           if rgbimprimir.ItemIndex = 1 then
              begin
                frmdados.Cds_Vencto_NF.Edit;
                frmdados.Cds_Vencto_NF.FieldByName('c_tipo_pgto').AsString := key;
              end;
           //endi
           if rgbimprimir.ItemIndex = 2 then
              begin
                frmdados.Cds_Vencto.Edit;
                frmdados.Cds_Vencto.FieldByName('c_tipo_pgto').AsString := key;
              end;
           //endi
         end;
      //endi
   //endi
//endi

if key = #13 then
   begin
     if rgbimprimir.ItemIndex = 0 then
        begin
          if frmdados.Cds_vencto.State in [dsinsert, dsedit] then
             frmdados.Cds_vencto.post;
           //endi
        end;
     //endi
     if rgbimprimir.ItemIndex = 1 then
        begin
          if frmdados.Cds_vencto_NF.State in [dsinsert, dsedit] then
             frmdados.Cds_vencto_NF.post;
           //endi
        end;
     //endi
     if rgbimprimir.ItemIndex = 2 then
        begin
          if frmdados.Cds_vencto.State in [dsinsert, dsedit] then
             frmdados.Cds_vencto.post;
           //endi
        end;
     //endi

   end;
//endi


//if key = #13 then
//   begin
//     key := #0;
//     SelectNext(ActiveControl,True,True);
//   end;
//endi

end;

procedure Tfrmimpnf.edincopiasExit(Sender: TObject);
begin
try
  strtoint(edincopias.Text);
except
  edincopias.SetFocus;
end;
end;

end.
