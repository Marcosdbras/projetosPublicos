unit upesqenf;
                
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, SqlExpr, Db,
  SayPrint, Grids, DBGrids, ComCtrls;

type
  Tfrm = class(TForm)
    Label17: TLabel;
    edipdesc: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    edivaldesc: TDBEdit;
    edidin: TDBEdit;
    Label21: TLabel;
    ediliquido: TDBEdit;
    Label20: TLabel;
    Label10: TLabel;
    ediparc: TDBEdit;
    spdcancelar2310: TSpeedButton;
    spdlancar: TSpeedButton;
    Label1: TLabel;
    lblnnf: TLabel;
    SayPrint: TSayPrint;
    lblnped: TLabel;
    dbgvencto: TDBGrid;
    rchtipopgto: TRichEdit;
    mmoobs: TDBMemo;
    Label4: TLabel;
    Label2: TLabel;
    lbltotg: TLabel;
    rgblanca: TRadioGroup;
    Label3: TLabel;
    edincopias: TEdit;
    ckbemail: TCheckBox;
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
    procedure edipdescExit(Sender: TObject);
    procedure edivaldescExit(Sender: TObject);
    procedure ediliquidoExit(Sender: TObject);
    procedure ler_linha_col_nf(icodconfnf:integer);
    procedure spdlancarClick(Sender: TObject);
    procedure ediparcKeyPress(Sender: TObject; var Key: Char);
    procedure bloqueiaparcelas;
    procedure edidinExit(Sender: TObject);
    procedure limparT;
    procedure limparP;
    procedure ediparcExit(Sender: TObject);
    procedure edidinEnter(Sender: TObject);
    procedure ediprazo1KeyPress(Sender: TObject; var Key: Char);
    procedure ediprazo2KeyPress(Sender: TObject; var Key: Char);
    procedure ediprazo3KeyPress(Sender: TObject; var Key: Char);
    procedure ediparcEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure desbloqueiar;
    procedure desbloqueiaf;
    procedure cbxtipoKeyPress(Sender: TObject; var Key: Char);
    procedure dbgvenctoKeyPress(Sender: TObject; var Key: Char);
    procedure dbgvenctoExit(Sender: TObject);
    procedure criaparc;
    procedure apagaparc;
    procedure dbgvenctoEnter(Sender: TObject);
    procedure dbgvenctoColEnter(Sender: TObject);
    procedure rgblancaClick(Sender: TObject);
    procedure dbgvenctoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure imporcrazao66x80;
    procedure imporcrazao66x140;
    procedure edincopiasExit(Sender: TObject);
    procedure ckbemailClick(Sender: TObject);
    procedure bloqueiacampos;
    procedure dbgvenctoCellClick(Column: TColumn);


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

    spdesc_PA, sValdesc_PA, sliquido_PA,
    spdesc_OA, sValdesc_OA, sliquido_OA,
    spdescA,   sValdescA,   sliquidoA    :String;


  public
    { Public declarations }
    scoluna:string;
  end;

var
  frm: Tfrm;

implementation
  uses ugeral, upesqvd, uDados, uimpnf, Uemailped;
{$R *.dfm}

procedure Tfrm.spdcancelar2310Click(Sender: TObject);
begin
if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
   frmdados.Cds_sVenda.cancel;
//endi

close;
end;

procedure Tfrm.FormShow(Sender: TObject);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt, stipopgto : String;

begin

  scoluna := 'n_tipo_pgto';

  if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
     frmdados.Cds_sVenda.Post;
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
  sContato := frmdados.cds_clientes.fieldbyname('contato').asString;
  sVendedor := frmdados.cds_Funcionarios.fieldbyname('nome').asString;


  lbltotG.Caption := frmpesqvd.lbltotal.Caption;

  ediparc.Enabled := false;
  bloqueiaparcelas;


  mmoobs.Enabled := false;

  limpart;


  with frmdados do
     begin

       Cds_NF.Active := false;
       with  Dbx_NF do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('Select * from NF where codigo = 0');
            Active := true;
          end;
       //endth
       Cds_NF.Active := true;

       Cds_NFP.Active := false;
       with  Dbx_NFP do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('Select * from NFP where codigo = 0');
            Active := true;
          end;
       //endth
       Cds_NFP.Active := true;

       Cds_NFM.Active := false;
       with  Dbx_NFM do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('Select * from NFM where codigo = 0');
            Active := true;
          end;
       //endth
       Cds_NFM.Active := true;

       Cds_comissao.Active := false;
       with  Dbx_Comissao do
           begin
             Active := false;
             SQL.Clear;
             SQL.Add('Select * from Comissao where codigo = 0');
             Active := true;
          end;
       //endth
       Cds_Comissao.Active := true;


       Cds_comissaor.Active := false;
       with  Dbx_Comissaor do
           begin
             Active := false;
             SQL.Clear;
             SQL.Add('Select * from Comissaor where codigo = 0');
             Active := true;
          end;
       //endth
       Cds_Comissaor.Active := true;

       cds_tipo_pgto.Active := false;
       with dbx_tipo_pgto do
         begin
           Active := false;
           SQL.Clear;
           SQL.Add('Select * from Tipo_Pgto where (codigo <> '+cds_indice.fieldbyname('codavista').asString+')');
           Active := true;
         end;
       //endth
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
       if cds_sVenda.fieldbyname('datacad').asString <> '' then
          cds_Venctodte.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
       //endi

       with dbx_Vencto do
         begin
           Active := false;
           SQL.Clear;
           SQL.Add('Select * from Vencimentos where (c_svenda = '+cds_svenda.fieldbyname('codigo').asString+')');
           Active := true;
         end;
       //endi
       cds_vencto.EnableControls;
       cds_Vencto.Active := true;


       cds_Vencto_NF.Active := false;
       cds_Vencto_NFc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
       with dbx_Vencto_NF do
         begin
           Active := false;
           SQL.Clear;
           SQL.Add('Select * from Vencimentos_NF where (c_svenda = '+cds_svenda.fieldbyname('codigo').asString+')');
           Active := true;
         end;
       //endth
       cds_Vencto_NF.Active := true;

    end;
  //endi

  rchtipopgto.Lines.Clear;
  rchtipopgto.Lines.Add('Forma Pgto: '+stipopgto);


  if frmdados.Cds_sVenda.FieldByName('lancado').asString = 'T' then
     begin
       edipdesc.Enabled := false;
       edivaldesc.Enabled := false;
       ediliquido.Enabled := false;
       edidin.Enabled := false;
       ediparc.Enabled := false;
       //dbgvencto.Enabled := false;
     end
  else
     begin

       if rgblanca.ItemIndex = 0 then
          begin

            frmdados.dbx_exec.Active := false;
            frmdados.dbx_exec.SQL.Clear;
            frmdados.dbx_exec.SQL.Add('delete from Vencimentos where (c_sVenda = '+frmdados.cds_sVenda.fieldbyname('codigo').asString+')');
            frmdados.dbx_exec.ExecSQL;

            frmdados.cds_vencto.Refresh;

          end;
       //endi

     end;
  //endi

  spdesc_PA := formatfloat('0.00',frmdados.Cds_sVenda.fieldbyname('pdesc_p').asfloat);
  sValdesc_PA := formatfloat('0.00',frmdados.Cds_sVenda.fieldbyname('valdesc_p').asfloat);
  sliquido_PA := formatfloat('0.00',frmdados.Cds_sVenda.fieldbyname('liquido_p').asfloat);

  spdesc_OA := formatfloat('0.00',frmdados.Cds_sVenda.fieldbyname('pdesc_O').asfloat);
  sValdesc_OA := formatfloat('0.00',frmdados.Cds_sVenda.fieldbyname('valdesc_O').asfloat);
  sliquido_OA := formatfloat('0.00',frmdados.Cds_sVenda.fieldbyname('liquido_O').asfloat);

  spdescA := formatfloat('0.00',frmdados.Cds_sVenda.fieldbyname('pdesc').asfloat);
  sValdescA := formatfloat('0.00',frmdados.Cds_sVenda.fieldbyname('valdesc').asfloat);
  sliquidoA := formatfloat('0.00',frmdados.Cds_sVenda.fieldbyname('liquido').asfloat);

  edincopias.Text := inttostr(frmdados.cds_indice.fieldbyname('ncopiaso').asInteger);

if rgblanca.ItemIndex = 0 then
   begin
     tabela := 'Vencimentos';
     with frmdados do
       begin
         dbx_exec.Active := false;
         dbx_exec.SQL.Clear;
         dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dVenda where (codsvenda = '+cds_svenda.fieldbyname('codigo').asString+') and (EouS = '+quotedstr('S')+')');
         dbx_exec.Active := true;
         lbltotg.Caption  := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totbruto').asfloat);

         cds_Vencto.Active := false;
         cds_Venctoc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
         if cds_sVenda.fieldbyname('datacad').asString <> '' then
            cds_Venctodte.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
         //endi
         dbx_Vencto.Active := false;
         dbx_Vencto.SQL.Clear;
         dbx_Vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+cds_svenda.fieldbyname('codigo').asString+')');
         dbx_Vencto.Active := true;
         cds_Vencto.Active := true;

       end;
     //endi

     edipdesc.DataField := 'pdesc_p';
     edivaldesc.DataField := 'valdesc_p';
     ediliquido.DataField := 'liquido_p';
     edidin.DataField := 'din_p';
     ediparc.DataField := 'parc_p';
     dbgvencto.DataSource := frmDados.Dts_Vencto;

     if frmdados.Cds_sVenda.FieldByName('lancado').asString = 'T' then
        begin
          edipdesc.Enabled := false;
          edivaldesc.Enabled := false;
          ediliquido.Enabled := false;
          edidin.Enabled := false;
          ediparc.Enabled := false;
        end;
     //endi


   end;
//endi


if rgblanca.ItemIndex = 1 then
   begin
     tabela := 'Vencimentos_NF';

     with frmdados do
       begin
         dbx_exec.Active := false;
         dbx_exec.SQL.Clear;
         dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dVenda where (codsvenda = '+cds_svenda.fieldbyname('codigo').asString+') and (EouS = '+quotedstr('S')+') and (IMPNF = '+QuotedStr('T')+')');
         dbx_exec.Active := true;
         lbltotg.Caption  := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totbruto').asfloat);

         cds_Vencto_NF.Active := false;
         cds_Vencto_NFc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
         dbx_Vencto_NF.Active := false;
         dbx_Vencto_NF.SQL.Clear;
         dbx_Vencto_NF.SQL.Add('Select * from Vencimentos_NF where (c_svenda = '+cds_svenda.fieldbyname('codigo').asString+')');
         dbx_Vencto_NF.Active := true;
         cds_Vencto_NF.Active := true;

       end;
     //endi

     edipdesc.DataField := 'pdesc';
     edivaldesc.DataField := 'valdesc';
     ediliquido.DataField := 'liquido';
     edidin.DataField := 'din';
     ediparc.DataField := 'parc';
     dbgvencto.DataSource := frmDados.Dts_Vencto_NF;

     if frmdados.Cds_sVenda.FieldByName('lancado').asString = 'T' then
        begin
          edipdesc.Enabled := true;
          edivaldesc.Enabled := true;
          ediliquido.Enabled := true;
          edidin.Enabled := true;
          ediparc.Enabled := true;
        end;
     //endi

   end;
//endi

if edipdesc.Enabled then
   begin
     //limpart;
     edipdesc.SetFocus;
   end;
//endi


end;

procedure Tfrm.edipdescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif


end;

procedure Tfrm.edivaldescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.ediliquidoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.edidinKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.edinumdup1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.edinumdup2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.edinumdup3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.edivlrdup1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.edivlrdup2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.edivlrdup3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.edivctdup1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.edivctdup2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.edivctdup3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.cbxnaturezaKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.cbxcfopKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.ediBASECALCICMSSUBKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.ediVLRICMSSUBKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.edivlrfreteKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.edivlrseguroKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.edioutdespKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.ediplacaveiKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.cbxntranspKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.ediufveiKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.ediquantidadeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.ediespecieKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.edimarcaKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.edinumeroKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.edipesobKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.edipesolKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.edipdescExit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc, svaldesc:string;


begin
try
  if (frmdados.Cds_sVenda.State <> dsinsert) or (frmdados.Cds_sVenda.State <> dsedit) then
     frmdados.Cds_sVenda.Edit;
  //endi

  ftot :=  strtofloat(tirapontos(lbltotG.Caption));

  if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
     begin


       if rgblanca.ItemIndex = 0 then
          begin

            if edipdesc.Text <> spdesc_PA then
               begin

                 fvaldesc := frmdados.Cds_sVenda.FieldByName('pdesc_p').asfloat / 100 * ftot;
                 svaldesc := floattostr(fvaldesc);

                 frmdados.Cds_sVenda.FieldByName('valdesc_p').asString := formatfloat('0.00',fvaldesc);
                 frmdados.Cds_sVenda.FieldByName('liquido_p').asString := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))-fvaldesc);

                 spDesc_PA :=  edipdesc.Text;
                 svaldesc_PA := formatfloat('0.00',fvaldesc);
                 sliquido_PA := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))-fvaldesc);

               end;
            //endi

          end;
       //endi
       if rgblanca.ItemIndex = 1 then
          begin

            if edipdesc.Text <> spdescA then
               begin

                 fvaldesc := frmdados.Cds_sVenda.FieldByName('pdesc').asfloat / 100 * ftot;
                 svaldesc := floattostr(fvaldesc);

                 frmdados.Cds_sVenda.FieldByName('valdesc').asString := formatfloat('0.00',fvaldesc);
                 frmdados.Cds_sVenda.FieldByName('liquido').asString := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))-fvaldesc);

                 spDescA :=  edipdesc.Text;
                 svaldescA := formatfloat('0.00',fvaldesc);
                 sliquidoA := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))-fvaldesc);
                 

               end;
            //endi

          end;
       //endi



     end;
  //endi
except
  if edipdesc.Enabled then
     edipdesc.SetFocus;
  //endi
end;
end;

procedure Tfrm.edivaldescExit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc:string;

begin
try
  ftot := strtofloat(tirapontos(lbltotG.Caption));

  if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
     begin

       if rgblanca.ItemIndex = 0 then
          begin

            if edivaldesc.Text <> svaldesc_PA then
               begin

                 fvaldesc := frmdados.Cds_sVenda.FieldByName('valdesc_p').asfloat;
                 fpdesc := fvaldesc / ftot * 100;
                 spdesc := floattostr(fpdesc);

                 frmdados.Cds_sVenda.FieldByName('pdesc_p').asfloat := fpdesc;
                 frmdados.Cds_sVenda.FieldByName('liquido_p').asString := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))-fvaldesc);

                 svaldesc_PA := edivaldesc.Text;
                 spdesc_PA := formatfloat('0.00',fpdesc);
                 sliquido_PA := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))-fvaldesc);


               end;
            //endi

          end;
       //endi

       if rgblanca.ItemIndex = 1 then
          begin

            if edivaldesc.Text <> svaldescA then
               begin

                 fvaldesc := frmdados.Cds_sVenda.FieldByName('valdesc').asfloat;
                 fpdesc := fvaldesc / ftot * 100;
                 spdesc := floattostr(fpdesc);

                 frmdados.Cds_sVenda.FieldByName('pdesc').asfloat := fpdesc;
                 frmdados.Cds_sVenda.FieldByName('liquido').asString := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))-fvaldesc);

                 svaldescA := edivaldesc.Text;
                 spdescA := formatfloat('0.00',fpdesc);
                 sliquidoA := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))-fvaldesc);

               end;
            //endi



          end;
       //endi

     end;
  //endi
except
end;

end;


procedure Tfrm.ediliquidoExit(Sender: TObject);
var fpdesc, fvaldesc, ftot:real;
begin
try
  ftot :=  strtofloat(tirapontos(lbltotG.Caption));
  if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
     begin
       if rgblanca.ItemIndex = 0 then
          begin

            if ediliquido.Text <>  sliquido_PA then
               begin

                 frmdados.Cds_sVenda.FieldByName('valdesc_p').asfloat := strtofloat(tirapontos(lbltotg.Caption))-frmdados.Cds_sVenda.FieldByName('liquido_p').asfloat;
                 fpdesc                                               := frmdados.Cds_sVenda.FieldByName('valdesc_p').asfloat / ftot * 100;
                 frmdados.Cds_sVenda.FieldByName('pdesc_p').asfloat   := fpdesc;

                 sliquido_PA := ediliquido.Text;
                 svaldesc_PA := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))-frmdados.Cds_sVenda.FieldByName('liquido_p').asfloat);
                 spdesc_PA   := formatfloat('0.00',frmdados.Cds_sVenda.FieldByName('valdesc_p').asfloat / ftot * 100);


               end;
            //endi

          end;
       //endi

       if rgblanca.ItemIndex = 1 then
          begin
            if ediliquido.Text <>  sliquidoA then
               begin

                 frmdados.Cds_sVenda.FieldByName('valdesc').asfloat := strtofloat(tirapontos(lbltotg.Caption))-frmdados.Cds_sVenda.FieldByName('liquido').asfloat;
                 fpdesc                                             := frmdados.Cds_sVenda.FieldByName('valdesc').asfloat / ftot * 100;
                 frmdados.Cds_sVenda.FieldByName('pdesc').asfloat := fpdesc;

                 sliquidoA := ediliquido.Text;
                 svaldescA := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))-frmdados.Cds_sVenda.FieldByName('liquido').asfloat);
                 spdescA   := formatfloat('0.00',frmdados.Cds_sVenda.FieldByName('valdesc').asfloat / ftot * 100);


               end;
            //endi



          end;
       //endi

     end;
  //endi
except
end;

end;

procedure tfrm.ler_linha_col_nf(icodconfnf:integer);
begin
  frmdados.dbx_Conf_Nf.Active := false;
  frmdados.Dbx_Conf_NF.SQL.Clear;
  frmdados.Dbx_Conf_NF.SQL.Add('Select * from ConfNF where codigo = '+inttostr(icodconfnf));
  frmdados.Dbx_Conf_NF.Active := true;
end;




procedure Tfrm.spdlancarClick(Sender: TObject);
var ftotal:currency;
    ftotalprazo:integer;
    ResultSet : tCustomSqlDataSet;
    SqlStMt : String;
    x, codigo:integer;
begin
if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
   frmdados.Cds_sVenda.post;
//endi

frmdados.cds_dVenda.Active := false;
frmdados.cds_dVendacodsvenda.DefaultExpression := frmdados.cds_sVenda.fieldbyname('codigo').asString;
frmdados.cds_dVendaImpNf.DefaultExpression := 'T';

frmdados.dbx_dVenda.Active := false;
frmdados.dbx_dVenda.SQL.Clear;
frmdados.dbx_dVenda.SQL.Add('Select * from dVenda where codsvenda = '+frmdados.cds_sVenda.fieldbyname('codigo').asString+' order by npro');
frmdados.dbx_dVenda.Active := true;
frmdados.cds_dVenda.Active := true;

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
            dbx_exec.SQL.Add('update vencimentos set nped = '+inttostr(frmdados.Cds_sVenda.FieldByName('nped').asInteger)+' where (c_svenda = '+cds_svenda.fieldbyname('codigo').asString+')'  );
            dbx_exec.ExecSQL;

            if Cds_sVenda.FieldByName('lancado').asString = 'F' then
               begin
                 tabela := 'NF';
                 cds_nf.Append;
                 cds_nf.FieldByName('codsvenda').AsInteger := cds_svenda.fieldbyname('codigo').asInteger;
                 cds_nf.FieldByName('ccli').AsInteger := cds_svenda.fieldbyname('ccli').asInteger;
                 cds_nf.FieldByName('pdesc').Asfloat := cds_svenda.fieldbyname('pdesc_p').asfloat;
                 cds_nf.FieldByName('valdesc').Asfloat := cds_svenda.fieldbyname('valdesc_p').asfloat;
                 cds_nf.FieldByName('liquido').Asfloat := cds_svenda.fieldbyname('liquido_p').asfloat;
                 cds_nf.FieldByName('total').Asfloat := cds_svenda.fieldbyname('total').asfloat;
                 cds_nf.FieldByName('frete').Asfloat := cds_svenda.fieldbyname('frete').asfloat;
                 cds_nf.FieldByName('din').Asfloat := cds_svenda.fieldbyname('din_p').asfloat;
                 cds_nf.FieldByName('crep').AsInteger := cds_svenda.fieldbyname('crep').asInteger;
                 cds_nf.FieldByName('troco').Asfloat := cds_svenda.fieldbyname('troco').asfloat;
                 cds_nf.FieldByName('totbruto').Asfloat := cds_svenda.fieldbyname('totbruto').asfloat;
                 cds_nf.FieldByName('outroavist').Asfloat := cds_svenda.fieldbyname('outroavist').asfloat;
                 cds_nf.FieldByName('parc').AsInteger := cds_svenda.fieldbyname('parc_p').asInteger;
                 cds_nf.FieldByName('nped').AsInteger := cds_svenda.fieldbyname('nped').asInteger;
                 cds_nf.FieldByName('priparc').AsString := cds_svenda.fieldbyname('priparc').asString;
                 cds_nf.FieldByName('tote').Asfloat := cds_svenda.fieldbyname('tote').asfloat;
                 cds_nf.FieldByName('em_caixa').Asfloat := cds_svenda.fieldbyname('em_caixa').asfloat;
                 cds_nf.FieldByName('custopecas').Asfloat := cds_svenda.fieldbyname('custopecas').asfloat;
                 cds_nf.FieldByName('custopecae').Asfloat := cds_svenda.fieldbyname('custopecae').asfloat;
                 cds_nf.FieldByName('cfun').AsInteger := cds_svenda.fieldbyname('cfun').asInteger;
                 cds_nf.FieldByName('tipoop').AsInteger := cds_svenda.fieldbyname('tipoop').asInteger;
                 cds_nf.FieldByName('absdesc').Asfloat := cds_svenda.fieldbyname('absdesc').asfloat;
                 cds_nf.FieldByName('totpagar').Asfloat := cds_svenda.fieldbyname('totpagar').asfloat;
                 cds_nf.FieldByName('totgpagar').Asfloat := cds_svenda.fieldbyname('totgpagar').asfloat;
                 cds_nf.FieldByName('totgprodd').Asfloat := cds_svenda.fieldbyname('totgprodd').asfloat;
                 cds_nf.FieldByName('tpnf').AsInteger := cds_svenda.fieldbyname('tpnf').asInteger;
                 cds_nf.FieldByName('cnat').AsInteger := cds_svenda.fieldbyname('cnat').asInteger;
                 cds_nf.FieldByName('baseicms').Asfloat := cds_svenda.fieldbyname('baseicms').asfloat;
                 cds_nf.FieldByName('valoricms').Asfloat := cds_svenda.fieldbyname('valoricms').asfloat;
                 cds_nf.FieldByName('basecalcicmssub').Asfloat := cds_svenda.fieldbyname('basecalcicmssub').asfloat;
                 cds_nf.FieldByName('vlricmssub').Asfloat := cds_svenda.fieldbyname('vlricmssub').asfloat;
                 cds_nf.FieldByName('vlrfrete').Asfloat := cds_svenda.fieldbyname('vlrfrete').asfloat;
                 cds_nf.FieldByName('vlrseguro').Asfloat := cds_svenda.fieldbyname('vlrseguro').asfloat;
                 cds_nf.FieldByName('outdesp').Asfloat := cds_svenda.fieldbyname('outdesp').asfloat;
                 cds_nf.FieldByName('vlripi').Asfloat := cds_svenda.fieldbyname('vlripi').asfloat;
                 cds_nf.FieldByName('vlrtotnf').Asfloat := cds_svenda.fieldbyname('vlrtotnf').asfloat;
                 cds_nf.FieldByName('quantidade').AsString := cds_svenda.fieldbyname('quantidade').asString;
                 cds_nf.FieldByName('especie').AsString := cds_svenda.fieldbyname('especie').asString;
                 cds_nf.FieldByName('marca').AsString := cds_svenda.fieldbyname('marca').asString;
                 cds_nf.FieldByName('numero').AsString := cds_svenda.fieldbyname('numero').asString;
                 cds_nf.FieldByName('pesob').AsString := cds_svenda.fieldbyname('pesob').asString;
                 cds_nf.FieldByName('pesol').AsString := cds_svenda.fieldbyname('pesol').asString;
                 cds_nf.FieldByName('fretepor').AsString := cds_svenda.fieldbyname('fretepor').asString;
                 cds_nf.FieldByName('placavei').AsString := cds_svenda.fieldbyname('placavei').asString;
                 cds_nf.FieldByName('ufvei').AsString := cds_svenda.fieldbyname('ufvei').asString;
                 cds_nf.FieldByName('fretep').AsInteger := cds_svenda.fieldbyname('fretep').asInteger;
                 cds_nf.FieldByName('DA1').AsString := cds_svenda.fieldbyname('DA1').asString;
                 cds_nf.FieldByName('DA2').AsString := cds_svenda.fieldbyname('DA2').asString;
                 cds_nf.FieldByName('DA3').AsString := cds_svenda.fieldbyname('DA3').asString;
                 cds_nf.FieldByName('DA4').AsString := cds_svenda.fieldbyname('DA4').asString;
                 cds_nf.FieldByName('DA5').AsString := cds_svenda.fieldbyname('DA5').asString;
                 cds_nf.FieldByName('DA6').AsString := cds_svenda.fieldbyname('DA6').asString;
                 cds_nf.FieldByName('DA7').AsString := cds_svenda.fieldbyname('DA7').asString;
                 cds_nf.FieldByName('DA8').AsString := cds_svenda.fieldbyname('DA8').asString;
                 cds_nf.FieldByName('ctransp').AsString := cds_svenda.fieldbyname('ctransp').asString;
                 cds_nf.FieldByName('impdestqcont').AsString := cds_svenda.fieldbyname('impdestqcont').asString;
                 cds_nf.FieldByName('originado').AsInteger := cds_svenda.fieldbyname('originado').asInteger;
                 cds_nf.Post;

                 cds_dvenda.First;
                 while not cds_dvenda.Eof do
                   begin
                     dbx_exec.Active := false;
                     dbx_exec.SQL.Clear;
                     dbx_exec.SQL.Add('select count(*) as treg from NFP where coddvenda = '+cds_dvenda.fieldbyname('codigo').asString );
                     dbx_exec.Active := true;

                     if dbx_exec.FieldByName('treg').AsInteger = 0 then
                        begin

                          tabela := 'NFP';

                          cds_nfp.Append;
                          cds_nfp.FieldByName('coddvenda').asInteger := cds_dvenda.fieldbyname('codigo').asInteger;
                          cds_nfp.FieldByName('codnf').asInteger := cds_nf.FieldByName('codigo').AsInteger;
                          cds_nfp.FieldByName('cpro').asInteger := cds_dvenda.fieldbyname('cpro').asInteger;
                          cds_nfp.FieldByName('prve').asfloat := cds_dvenda.fieldbyname('prve').asfloat;
                          cds_nfp.FieldByName('qtde').asfloat := cds_dvenda.fieldbyname('qtde').asfloat;
                          cds_nfp.FieldByName('eous').asString := cds_dvenda.fieldbyname('eous').asString;
                          cds_nfp.FieldByName('prcu').asfloat := cds_dvenda.fieldbyname('prcu').asfloat;
                          cds_nfp.FieldByName('cuni').asInteger := cds_dvenda.fieldbyname('cuni').asInteger;
                          cds_nfp.FieldByName('crep').asInteger := cds_dvenda.fieldbyname('crep').asInteger;
                          cds_nfp.FieldByName('cgru').asInteger := cds_dvenda.fieldbyname('cgru').asInteger;
                          cds_nfp.FieldByName('cmar').asInteger := cds_dvenda.fieldbyname('cmar').asInteger;
                          cds_nfp.FieldByName('pcom').asfloat := cds_dvenda.fieldbyname('pcom').asfloat;
                          cds_nfp.FieldByName('cven').asInteger := cds_dvenda.fieldbyname('cven').asInteger;
                          cds_nfp.FieldByName('ccli').asInteger := cds_dvenda.fieldbyname('ccli').asInteger;
                          cds_nfp.FieldByName('nserie').asString := cds_dvenda.fieldbyname('nserie').asString;
                          cds_nfp.FieldByName('obs').asString := cds_dvenda.fieldbyname('obs').asString;
                          cds_nfp.FieldByName('baixa').asString := cds_dvenda.fieldbyname('baixa').asString;
                          cds_nfp.FieldByName('subtotal').asfloat := cds_dvenda.fieldbyname('subtotal').asfloat;
                          cds_nfp.FieldByName('referencia').asString := cds_dvenda.fieldbyname('referencia').asString;
                          cds_nfp.FieldByName('data_op').asDateTime := cds_dvenda.fieldbyname('data_op').asDateTime;
                          cds_nfp.FieldByName('comissao').asfloat := cds_dvenda.fieldbyname('comissao').asfloat;
                          cds_nfp.FieldByName('identst').asString := cds_dvenda.fieldbyname('identst').asString;
                          cds_nfp.FieldByName('tipost').asString := cds_dvenda.fieldbyname('tipost').asString;
                          cds_nfp.FieldByName('pdesc').asfloat := cds_dvenda.fieldbyname('pdesc').asfloat;
                          cds_nfp.FieldByName('cupom').asInteger := cds_dvenda.fieldbyname('cupom').asInteger;
                          cds_nfp.FieldByName('descricaost').asString := cds_dvenda.fieldbyname('descricaost').asString;
                          cds_nfp.FieldByName('undst').asString := cds_dvenda.fieldbyname('undst').asString;
                          cds_nfp.FieldByName('clientest').asString := cds_dvenda.fieldbyname('clientest').asString;
                          cds_nfp.FieldByName('vendedorst').asString := cds_dvenda.fieldbyname('vendedorst').asString;
                          cds_nfp.FieldByName('pgst').asString := cds_dvenda.fieldbyname('pgst').asString;
                          cds_nfp.FieldByName('cfun').asInteger := cds_dvenda.fieldbyname('cfun').asInteger;
                          cds_nfp.FieldByName('maxi').asInteger := cds_dvenda.fieldbyname('maxi').asInteger;
                          cds_nfp.FieldByName('vdesc').asfloat := cds_dvenda.fieldbyname('vdesc').asfloat;
                          cds_nfp.FieldByName('icm').asfloat := cds_dvenda.fieldbyname('icm').asfloat;
                          cds_nfp.FieldByName('iss').asfloat := cds_dvenda.fieldbyname('iss').asfloat;
                          cds_nfp.FieldByName('metragem').asfloat := cds_dvenda.fieldbyname('metragem').asfloat;
                          cds_nfp.FieldByName('metragem2').asfloat := cds_dvenda.fieldbyname('metragem2').asfloat;
                          cds_nfp.FieldByName('ehvenda').asString := cds_dvenda.fieldbyname('ehvenda').asString;
                          cds_nfp.FieldByName('tipov').asInteger := cds_dvenda.fieldbyname('tipov').asInteger;
                          cds_nfp.FieldByName('npro').asString := cds_dvenda.fieldbyname('npro').asString;
                          cds_nfp.FieldByName('controle').asInteger := cds_dvenda.fieldbyname('controle').asInteger;
                          cds_nfp.FieldByName('vcom').asfloat := cds_dvenda.fieldbyname('vcom').asfloat;
                          cds_nfp.FieldByName('especificacao').asString := cds_dvenda.fieldbyname('especificacao').asString;
                          cds_nfp.FieldByName('subtotalc').asfloat := cds_dvenda.fieldbyname('subtotalc').asfloat;
                          cds_nfp.FieldByName('actdesc').asString := cds_dvenda.fieldbyname('actdesc').asString;
                          cds_nfp.FieldByName('impnf').asString := cds_dvenda.fieldbyname('impnf').asString;
                          cds_nfp.FieldByName('codcf').asInteger := cds_dvenda.fieldbyname('codcf').asInteger;
                          cds_nfp.FieldByName('codsita').asInteger := cds_dvenda.fieldbyname('codsita').asInteger;
                          cds_nfp.FieldByName('codsitb').asInteger := cds_dvenda.fieldbyname('codsitb').asInteger;
                          cds_nfp.FieldByName('codipi').asInteger := cds_dvenda.fieldbyname('codipi').asInteger;
                          cds_nfp.FieldByName('codicms').asInteger := cds_dvenda.fieldbyname('codicms').asInteger;
                          cds_nfp.FieldByName('vlripi').asfloat := cds_dvenda.fieldbyname('vlripi').asfloat;
                          cds_nfp.Post;

                        end;
                     //endi

                     tabela := 'Comissao';

                     cds_Comissao.Append;
                     cds_Comissao.FieldByName('codsvenda').asInteger := cds_svenda.fieldbyname('codigo').asInteger;
                     cds_Comissao.FieldByName('cfun').asInteger := cds_svenda.fieldbyname('cfun').asInteger;
                     cds_Comissao.FieldByName('Descricao').asString := 'Pedido Faturado';
                     cds_Comissao.FieldByName('Servico').asString := cds_dvenda.fieldbyname('npro').asString;
                     cds_Comissao.FieldByName('DTE').asDatetime := date;
                     cds_Comissao.FieldByName('DataFec').asDatetime := date;
                     cds_comissao.FieldByName('valor').asfloat := cds_dvenda.fieldbyname('Subtotal').asfloat - (   cds_dvenda.fieldbyname('Subtotal').asfloat * cds_svenda.fieldbyname('pdesc_p').asfloat / 100 ) ;

                     dbx_exec.Active := false;
                     dbx_exec.SQL.Clear;
                     dbx_exec.SQL.Add('Select pcom from Funcionarios where codigo = '+cds_svenda.fieldbyname('cfun').asString);
                     dbx_exec.Active := true;

                     cds_comissao.FieldByName('pcomf').asfloat := dbx_exec.fieldbyname('pcom').asfloat;
                     cds_comissao.FieldByName('vcomf').asfloat := ( dbx_exec.fieldbyname('pcom').asfloat / 100 ) * (   cds_dvenda.fieldbyname('Subtotal').asfloat  - (   cds_dvenda.fieldbyname('Subtotal').asfloat * cds_svenda.fieldbyname('pdesc_p').asfloat / 100 ) );
                     cds_comissao.Post;

                     tabela := 'Comissaor';

                     cds_Comissaor.Append;
                     cds_Comissaor.FieldByName('codsvenda').asInteger := cds_svenda.fieldbyname('codigo').asInteger;
                     cds_Comissaor.FieldByName('crep').asInteger := cds_svenda.fieldbyname('crep').asInteger;
                     cds_Comissaor.FieldByName('Descricao').asString := 'Pedido Faturado';
                     cds_Comissaor.FieldByName('Servico').asString := cds_dvenda.fieldbyname('npro').asString;
                     cds_Comissaor.FieldByName('DTE').asDatetime := date;
                     cds_Comissaor.FieldByName('DataFec').asDatetime := date;
                     cds_comissaor.FieldByName('valor').asfloat := cds_dvenda.fieldbyname('Subtotal').asfloat - (   cds_dvenda.fieldbyname('Subtotal').asfloat * cds_svenda.fieldbyname('pdesc_p').asfloat / 100 ) ;

                     dbx_exec.Active := false;
                     dbx_exec.SQL.Clear;
                     dbx_exec.SQL.Add('Select comissao from Representantes where codigo = '+cds_svenda.fieldbyname('crep').asString);
                     dbx_exec.Active := true;

                     cds_comissaor.FieldByName('pcomr').asfloat := dbx_exec.fieldbyname('comissao').asfloat;
                     cds_comissaor.FieldByName('vcomr').asfloat := ( dbx_exec.fieldbyname('comissao').asfloat / 100 ) * (   cds_dvenda.fieldbyname('Subtotal').asfloat  - (   cds_dvenda.fieldbyname('Subtotal').asfloat * cds_svenda.fieldbyname('pdesc_p').asfloat / 100 ) );
                     cds_comissaor.Post;

                     cds_dvenda.Next;
                   end;
                 //endi


                 tabela := 'NFM';
                 cds_dMobra.First;
                 while not cds_dMobra.Eof do
                   begin
                     dbx_exec.Active := false;
                     dbx_exec.SQL.Clear;
                     dbx_exec.SQL.Add('select count(*) as treg from NFM where coddmobra = '+cds_dmobra.fieldbyname('codigo').asString );
                     dbx_exec.Active := true;

                     if dbx_exec.FieldByName('treg').AsInteger = 0 then
                        begin

                          cds_nfm.Append;
                          cds_nfm.FieldByName('coddmobra').asInteger := cds_dMobra.fieldbyname('codigo').asInteger;
                          cds_nfm.FieldByName('codnf').asInteger := cds_nf.FieldByName('codigo').AsInteger;
                          cds_nfm.FieldByName('cmod').asInteger := cds_dMobra.fieldbyname('cmod').asInteger;
                          cds_nfm.FieldByName('cdesc').asInteger := cds_dMobra.fieldbyname('cdesc').asInteger;
                          cds_nfm.FieldByName('ndesc').asString := cds_dMobra.fieldbyname('ndesc').asString;
                          cds_nfm.FieldByName('qtde').asfloat := cds_dMobra.fieldbyname('qtde').asfloat;
                          cds_nfm.FieldByName('valor').asfloat := cds_dMobra.fieldbyname('valor').asfloat;
                          cds_nfm.FieldByName('subtotal').asfloat := cds_dMobra.fieldbyname('subtotal').asfloat;
                          cds_nfm.FieldByName('piss').asfloat := cds_dMobra.fieldbyname('piss').asfloat;
                          cds_nfm.FieldByName('viss').asfloat := cds_dMobra.fieldbyname('viss').asfloat;
                          cds_nfm.FieldByName('cfun').asInteger := cds_dMobra.fieldbyname('cfun').asInteger;
                          cds_nfm.FieldByName('pcom').asfloat := cds_dMobra.fieldbyname('pcom').asfloat;
                          cds_nfm.FieldByName('vcom').asfloat := cds_dMobra.fieldbyname('vcom').asfloat;
                          cds_nfm.Post;

                        end;
                     //endi
                     cds_dMobra.Next;
                   end;
                 //endi


               end;
            //endi


            cds_vencto.DisableControls; 

            dbx_exec.Active := false;
            dbx_exec.SQL.Clear;
            dbx_exec.SQL.Add('Select codigo from nf where codsvenda = '+cds_svenda.fieldbyname('codigo').asString);
            dbx_exec.Active := true;
            codigo :=  dbx_exec.fieldbyname('codigo').asInteger;

            tabela := 'Vencimentos_NF';

            Cds_Vencto_NF.Active := false;
            with  Dbx_Vencto_NF do
                begin
                  Active := false;
                  SQL.Clear;
                  SQL.Add('Select * from Vencimentos_NF where codigo = 0');
                  Active := true;
               end;
            //endth
            Cds_Vencto_NF.Active := true;

            Cds_Vencto.Active := false;
            with  Dbx_Vencto do
                begin
                  Active := false;
                  SQL.Clear;
                  SQL.Add('Select * from Vencimentos where c_svenda = '+cds_svenda.fieldbyname('codigo').asString);
                  Active := true;
               end;
            //endth
            Cds_Vencto.Active := true;

            cds_vencto.First;
            while not cds_vencto.Eof do
              begin
                
                cds_vencto_nf.Append;
                cds_vencto_nf.FieldByName('codnf').asInteger := codigo;
                cds_vencto_nf.FieldByName('c_tipo_pgto').asInteger := cds_vencto.fieldbyname('c_tipo_pgto').asInteger;
                cds_vencto_nf.FieldByName('ccli').asInteger := cds_vencto.fieldbyname('ccli').asInteger;
                cds_vencto_nf.FieldByName('csit').asInteger := cds_vencto.fieldbyname('csit').asInteger;
                cds_vencto_nf.FieldByName('c_svenda').asInteger := cds_vencto.fieldbyname('c_svenda').asInteger;
                cds_vencto_nf.FieldByName('Dtl').asString := cds_vencto.fieldbyname('Dtl').asString;
                cds_vencto_nf.FieldByName('Dtv').asString := cds_vencto.fieldbyname('Dtv').asString;
                cds_vencto_nf.FieldByName('Valor').asfloat := cds_vencto.fieldbyname('Valor').asfloat;
                cds_vencto_nf.FieldByName('Valliq').asfloat := cds_vencto.fieldbyname('Valliq').asfloat;
                cds_vencto_nf.FieldByName('descricao').asString := cds_vencto.fieldbyname('descricao').asString;
                cds_vencto_nf.FieldByName('doc').asString := cds_vencto.fieldbyname('doc').asString;
                cds_vencto_nf.FieldByName('crec').asInteger := cds_vencto.fieldbyname('crec').asInteger;
                cds_vencto_nf.FieldByName('obs').asString := cds_vencto.fieldbyname('obs').asString;
                cds_vencto_nf.FieldByName('juros').asfloat := cds_vencto.fieldbyname('juros').asfloat;
                cds_vencto_nf.FieldByName('codtipop').asInteger := cds_vencto.fieldbyname('codtipop').asInteger;
                cds_vencto_nf.FieldByName('vparcsemj').asfloat := cds_vencto.fieldbyname('vparcsemj').asfloat;
                cds_vencto_nf.FieldByName('nco').asInteger := cds_vencto.fieldbyname('nco').asInteger;
                cds_vencto_nf.FieldByName('crt').asInteger := cds_vencto.fieldbyname('crt').asInteger;
                cds_vencto_nf.FieldByName('parc').asString := cds_vencto.fieldbyname('parc').asString;
                cds_vencto_nf.FieldByName('ehvenda').asString := cds_vencto.fieldbyname('ehvenda').asString;
                cds_vencto_nf.FieldByName('originado').asInteger := cds_vencto.fieldbyname('originado').asInteger;
                cds_vencto_nf.FieldByName('prazo').asInteger := cds_vencto.fieldbyname('prazo').asInteger;
                cds_vencto_nf.FieldByName('Dte').asString := cds_vencto.fieldbyname('Dte').asString;

                cds_vencto_nf.Post;
                cds_vencto.Next;

              end;
            //endi

            dbx_exec.Active := false;
            dbx_exec.SQL.Clear;
            dbx_exec.SQL.Add('Select * from Vencimentos where c_svenda = '+cds_svenda.fieldbyname('codigo').asString);
            dbx_exec.Active := true;
            //if dbx_exec.RecordCount = 0 then
            //   begin
            //     Showmessage('Valores não foram digitados para posterior lançamento');
            //     exit;
            //   end;
            //endi

            dbx_exec.Active := false;
            dbx_exec.SQL.Clear;
            dbx_exec.SQL.Add('Update Vencimentos set ehvenda = '+quotedstr('T')+' where c_svenda = '+cds_svenda.fieldbyname('codigo').asString);
            dbx_exec.ExecSQL;

            tabela := 'sVenda';
            Cds_sVenda.Edit;
            Cds_sVenda.FieldByName('originado').asString := '2'+Cds_sVenda.fieldbyname('tipoop').asString;
            Cds_sVenda.FieldByName('lancado').asString := 'T';
            Cds_sVenda.Post;

          end;
     //endi








   end;
//endi

if not ckbemail.Checked then
   begin

     for x := 1 to strtoint(edincopias.Text) do
       begin
         imporcrazao66x140;
       end;
     //endi

     close;
   end

else
   begin

     frmemailped := tfrmemailped.Create(self);
     frmemailped.ShowModal;
     frmemailped.Free;
     bloqueiacampos;

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

end;

procedure Tfrm.ediparcKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure tfrm.bloqueiaparcelas;
begin
  //
end;

procedure Tfrm.edidinExit(Sender: TObject);
begin
limparp;
bloqueiaparcelas;

if rgblanca.ItemIndex = 0 then
   begin
      if frmdados.Cds_sVenda.FieldByName('din_p').asfloat < frmdados.Cds_sVenda.FieldByName('liquido_p').asfloat  then
         begin
           ediparc.Enabled := true;
           if frmdados.Cds_Clientes.FieldByName('prazo').asInteger > 0 then
              begin
                if (frmdados.Cds_sVenda.State <> dsinsert) or (frmdados.Cds_sVenda.State <> dsedit) then
                    frmdados.Cds_sVenda.Edit;
                //endi
                frmdados.Cds_sVenda.FieldByName('parc_p').asInteger := 1;
              end;
           //endi
           if ediparc.Enabled then
              ediparc.SetFocus;
           //endi
           if frmdados.Cds_sVenda.FieldByName('din_p').asfloat > 0 then
              bAvista := true
           else
              bAvista := false;
           //endi
         end
      else
         begin
           ediparc.Enabled := false;
           bAvista := true;
           bloqueiaparcelas;
         end;
      //endi

   end;
//endi

if rgblanca.ItemIndex = 1 then
   begin
      if frmdados.Cds_sVenda.FieldByName('din').asfloat < frmdados.Cds_sVenda.FieldByName('liquido').asfloat  then
         begin
           ediparc.Enabled := true;
           if frmdados.Cds_Clientes.FieldByName('prazo').asInteger > 0 then
              begin
                if (frmdados.Cds_sVenda.State <> dsinsert) or (frmdados.Cds_sVenda.State <> dsedit) then
                    frmdados.Cds_sVenda.Edit;
                //endi
                frmdados.Cds_sVenda.FieldByName('parc').asInteger := 1;
              end;
           //endi
           if ediparc.Enabled then
              ediparc.SetFocus;
           //endi   
           if frmdados.Cds_sVenda.FieldByName('din').asfloat > 0 then
              bAvista := true
           else
              bAvista := false;
           //endi
         end
      else
         begin
           ediparc.Enabled := false;
           bAvista := true;
           bloqueiaparcelas;
         end;
      //endi

   end;
//endi



end;

procedure Tfrm.limparT;
begin
  if (frmdados.Cds_sVenda.State <> dsinsert) or (frmdados.Cds_sVenda.State <> dsedit) then
     frmdados.Cds_sVenda.Edit;
  //endi

  if rgblanca.ItemIndex = 0 then
     begin
       if frmdados.Cds_sVenda.FieldByName('lancado').AsString <> 'T' then
          begin

            //if frmdados.Cds_sVenda.FieldByName('liquido_p').AsFloat = 0 then
            frmdados.Cds_sVenda.FieldByName('liquido_p').asfloat := strtofloat(tirapontos(frmpesqvd.lbltotal.Caption));
            //endi
            if frmdados.Cds_sVenda.FieldByName('pdesc_p').AsFloat = 0 then
               frmdados.Cds_sVenda.FieldByName('pdesc_p').asfloat := 0;
            //endi
            if frmdados.Cds_sVenda.FieldByName('valdesc_p').AsFloat = 0 then
               frmdados.Cds_sVenda.FieldByName('valdesc_p').asfloat := 0;
            //endi
            if frmdados.Cds_sVenda.FieldByName('din_p').AsFloat = 0 then
               frmdados.Cds_sVenda.FieldByName('din_p').asfloat := 0;
            //endi
            if frmdados.Cds_sVenda.FieldByName('parc_p').AsFloat = 0 then
               frmdados.Cds_sVenda.FieldByName('parc_p').asfloat := 0;
            //endi

          end;
       //endi

     end;
  //endi

  if rgblanca.ItemIndex = 1 then
     begin

       if frmdados.Cds_sVenda.FieldByName('lancado').AsString <> 'T' then
          begin
            frmdados.Cds_sVenda.FieldByName('liquido').asfloat := strtofloat(tirapontos(lbltotg.Caption));
            //if frmdados.Cds_sVenda.FieldByName('pdesc').AsFloat = 0 then
            frmdados.Cds_sVenda.FieldByName('pdesc').asfloat := 0;
            //endi
            //if frmdados.Cds_sVenda.FieldByName('valdesc').AsFloat = 0 then
            frmdados.Cds_sVenda.FieldByName('valdesc').asfloat := 0;
            //endi
            //if frmdados.Cds_sVenda.FieldByName('din').AsFloat = 0 then
            frmdados.Cds_sVenda.FieldByName('din').asfloat := 0;
            //endi
            //if frmdados.Cds_sVenda.FieldByName('parc').AsFloat = 0 then
            frmdados.Cds_sVenda.FieldByName('parc').asfloat := 0;
            //endi
          end;
       //endi


     end;
  //endi

end;

procedure tfrm.limparP;
begin
//
end;


procedure Tfrm.ediparcExit(Sender: TObject);
begin
if rgblanca.ItemIndex = 0 then
   begin
     if frmdados.Cds_sVenda.FieldByName('parc_p').asInteger>frmdados.Cds_Indice.FieldByName('maxparc').asInteger then
        begin
          showmessage('Parcela Receber fora do parâmetro');
          if ediparc.Enabled then
             ediparc.SetFocus;
          //endi
          exit;
        end;
     //endif

     tabela := 'Vencimentos';

     frmdados.cds_Vencto.Active := false;
     frmdados.cds_Venctoc_svenda.DefaultExpression := frmdados.cds_sVenda.fieldbyname('codigo').asString;
     if frmdados.cds_sVenda.fieldbyname('datacad').asString <> '' then
        frmdados.cds_Venctodte.DefaultExpression := quotedstr(frmdados.cds_sVenda.fieldbyname('datacad').asString);
     //endi
     frmdados.dbx_Vencto.Active := false;
     frmdados.dbx_Vencto.SQL.Clear;
     frmdados.dbx_Vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+frmdados.cds_svenda.fieldbyname('codigo').asString+')');
     frmdados.dbx_Vencto.Active := true;
     frmdados.cds_Vencto.Active := true;

   end;
//endi


if rgblanca.ItemIndex = 1 then
   begin
     if frmdados.Cds_sVenda.FieldByName('parc').asInteger>frmdados.Cds_Indice.FieldByName('maxparc').asInteger then
        begin
          showmessage('Parcela Nota Fiscal fora do parâmetro');
          if ediparc.Enabled then
             ediparc.SetFocus;
          //endi
          exit;
        end;
     //endif

     tabela := 'Vencimentos_NF';
     frmdados.cds_Vencto_NF.Active := false;
     frmdados.cds_Vencto_NFc_svenda.DefaultExpression := frmdados.cds_sVenda.fieldbyname('codigo').asString;
     frmdados.dbx_Vencto_NF.Active := false;
     frmdados.dbx_Vencto_NF.SQL.Clear;
     frmdados.dbx_Vencto_NF.SQL.Add('Select * from Vencimentos_NF where (c_svenda = '+frmdados.cds_svenda.fieldbyname('codigo').asString+')');
     frmdados.dbx_Vencto_NF.Active := true;
     frmdados.cds_Vencto_NF.Active := true;

   end;
//endi

criaparc;

end;

procedure Tfrm.edidinEnter(Sender: TObject);
begin
if rgblanca.ItemIndex = 0 then
   frmdados.Cds_sVenda.FieldByName('parc_p').asInteger := 0;
//endi
if rgblanca.ItemIndex = 1 then
   frmdados.Cds_sVenda.FieldByName('parc').asInteger := 0;
//endi


end;

procedure Tfrm.ediprazo1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.ediprazo2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.ediprazo3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.ediparcEnter(Sender: TObject);
begin
  if frmdados.Cds_Clientes.FieldByName('prazo').asInteger > 0 then
     begin
       if rgblanca.ItemIndex = 0 then
          frmdados.Cds_sVenda.FieldByName('parc_p').asInteger := 1;
       //endi
       if rgblanca.ItemIndex = 1 then
          frmdados.Cds_sVenda.FieldByName('parc').asInteger := 1;
       //endi
     end;
  //endi

end;

procedure Tfrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (chr(Key) in ['L', 'l']) then
     begin
       spdlancar.Click;
     end;
  //endi
  if (ssCtrl in Shift) and (chr(Key) in ['A', 'a']) then
     begin
       spdcancelar2310.Click;
     end;
  //endi

end;

procedure tfrm.desbloqueiar;
begin
edipdesc.Enabled :=true;
edivaldesc.Enabled := true;
ediliquido.Enabled := true;
edidin.Enabled := true;
ediparc.Enabled := true;
end;


procedure tfrm.desbloqueiaf;
begin
edipdesc.Enabled :=true;
edivaldesc.Enabled := true;
ediliquido.Enabled := true;
edidin.Enabled := true;
ediparc.Enabled := true;

end;

procedure Tfrm.cbxtipoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrm.dbgvenctoKeyPress(Sender: TObject; var Key: Char);
begin
if rgblanca.ItemIndex = 0 then
   if frmdados.Cds_sVenda.FieldByName('lancado').asString = 'T' then
      begin
        key := #0;
        exit;
      end;
   //endi
//endi

if scoluna = 'n_tipo_pgto' then
   if ( key in['0'..'9',#8] ) then
      if frmdados.cds_Tipo_Pgto.Locate('codigo',key,[]) then
         begin
           if rgblanca.ItemIndex = 0 then
              begin
                frmdados.Cds_Vencto.Edit;
                frmdados.Cds_Vencto.FieldByName('c_tipo_pgto').AsString := key;
              end;
           //endi
           if rgblanca.ItemIndex = 1 then
              begin
                frmdados.Cds_Vencto_NF.Edit;
                frmdados.Cds_Vencto_NF.FieldByName('c_tipo_pgto').AsString := key;
              end;
           //endi
         end;
      //endi
   //endi
//endi

if key = #13 then
   begin
     if rgblanca.ItemIndex = 0 then
        begin
          if frmdados.Cds_vencto.State in [dsinsert, dsedit] then
             begin
               frmdados.Cds_vencto.post
             end
          else
             begin
               key := #0;
               SelectNext(ActiveControl,True,True);
             end;
          //endif
        end;
     //endi
     if rgblanca.ItemIndex = 1 then
        begin
          if frmdados.Cds_vencto_NF.State in [dsinsert, dsedit] then
             begin
               frmdados.Cds_vencto_NF.post;
             end
          else
             begin
               key := #0;
               SelectNext(ActiveControl,True,True);
             end;
          //endif
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

procedure Tfrm.dbgvenctoExit(Sender: TObject);
begin

if frmdados.Cds_Vencto.State in [dsinsert, dsedit] then
   frmdados.Cds_Vencto.Post;
//endi

tabela := 'sVenda';
end;

procedure tfrm.criaparc;
var x, iparc:integer;
    fvlrparc:currency;
    fvalor:currency;
    sdata:string;

begin
try

x := 0;
iparc := strtoint(ediparc.Text);
sdata := datetostr(date);

if rgblanca.ItemIndex = 0 then
   begin

     if frmdados.Cds_sVenda.FieldByName('parc_p').asInteger > 0 then
        begin
          //fvlrparc :=  ArredondarMaior( (frmdados.Cds_sVenda.FieldByName('liquido_p').asfloat - frmdados.Cds_sVenda.FieldByName('din_p').asfloat) / frmdados.Cds_sVenda.FieldByName('parc_p').asInteger ,2);
          //fvlrparc :=  ArredondarMaior( (     strtofloat(tirapontos(ediliquido.Text))    -  strtofloat(tirapontos(edidin.Text))    ) / strtofloat(tirapontos(ediparc.Text)) ,2);
          fvlrparc :=   (     strtofloat(tirapontos(ediliquido.Text))    -  strtofloat(tirapontos(edidin.Text))    ) / strtofloat(tirapontos(ediparc.Text));

          sMsg := 'Apagando Dados';

          tabela := 'Vencimentos';

           frmdados.dbx_exec.Active := false;
           frmdados.dbx_exec.SQL.Clear;
           frmdados.dbx_exec.SQL.Add('delete from Vencimentos where (c_sVenda = '+frmdados.cds_sVenda.fieldbyname('codigo').asString+')');
           frmdados.dbx_exec.ExecSQL;

           frmdados.cds_vencto.Refresh;

          //apagaparc;

          sMsg := 'Criando parcelas em branco';
          for x := 1 to iparc do
              begin
                frmdados.Cds_Vencto.Append;
                if (frmdados.Cds_Clientes.FieldByName('prazo').asInteger > 0) and (x = 1) then
                   begin
                     frmdados.Cds_Vencto.FieldByName('prazo').asInteger := frmdados.Cds_Clientes.FieldByName('prazo').asInteger;
                     frmdados.Cds_Vencto.FieldByName('dtv').asString := calc_data(sdata,frmdados.Cds_Clientes.FieldByName('prazo').asInteger);
                   end;
                //endi
                frmdados.Cds_Vencto.FieldByName('valor').asfloat := fvlrparc;
                frmdados.Cds_Vencto.FieldByName('originado').asString := '2'+frmdados.Cds_sVenda.fieldbyname('tipoop').asString;
                frmdados.Cds_Vencto.FieldByName('ccli').asInteger := frmdados.Cds_sVenda.fieldbyname('ccli').asInteger;
                frmdados.Cds_Vencto.FieldByName('c_tipo_pgto').asInteger := frmdados.Cds_Indice.fieldbyname('parcpadrao').asInteger;
                frmdados.Cds_Vencto.FieldByName('csit').asInteger := 1;
                frmdados.Cds_Vencto.FieldByName('parc').asstring := formatfloat('00',x)+'/'+ formatfloat('00',frmdados.cds_svenda.fieldbyname('parc_p').asfloat);
                frmdados.Cds_Vencto.FieldByName('doc').asstring := lblnped.Caption+'-'+chr(64+x);
                frmdados.Cds_Vencto.FieldByName('parte').asstring := chr(64+x);
                frmdados.Cds_Vencto.Post;
              end;
          //endf


          sMsg := 'Voltando para Inicio';
          frmdados.Cds_Vencto.First;
          if dbgvencto.Enabled then
             dbgvencto.SetFocus;
          //endi


        end
     else
        begin
          if ediparc.Enabled then
             ediparc.SetFocus;
          //endi
        end;
     //endi

   end;
//endif


if rgblanca.ItemIndex = 1 then
   begin

     if frmdados.Cds_sVenda.FieldByName('parc').asInteger > 0 then
        begin
          //fvlrparc :=  ArredondarMaior( (     strtofloat(tirapontos(ediliquido.Text))    -  strtofloat(tirapontos(edidin.Text))    ) / strtofloat(tirapontos(ediparc.Text)) ,2);
          fvlrparc :=   (     strtofloat(tirapontos(ediliquido.Text))    -  strtofloat(tirapontos(edidin.Text))    ) / strtofloat(tirapontos(ediparc.Text));


          tabela := 'Vencimentos_NF';

          frmdados.dbx_exec.Active := false;
          frmdados.dbx_exec.SQL.Clear;
          frmdados.dbx_exec.SQL.Add('delete from Vencimentos_NF where (c_sVenda = '+frmdados.cds_sVenda.fieldbyname('codigo').asString+')');
          frmdados.dbx_exec.ExecSQL;

          frmdados.cds_vencto_NF.Refresh;

          //apagaparc;

          for x := 1 to strtoint(ediparc.Text) do
              begin
                frmdados.Cds_Vencto_NF.Append;
                if (frmdados.Cds_Clientes.FieldByName('prazo').asInteger > 0) and (x = 1) then
                   begin
                     frmdados.Cds_Vencto_NF.FieldByName('prazo').asInteger := frmdados.Cds_Clientes.FieldByName('prazo').asInteger;
                     frmdados.Cds_Vencto_NF.FieldByName('dtv').asString := calc_data(sdata,frmdados.Cds_Clientes.FieldByName('prazo').asInteger);
                   end;
                //endi
                frmdados.Cds_Vencto_NF.FieldByName('valor').asfloat := fvlrparc;
                frmdados.Cds_Vencto_NF.FieldByName('originado').asString := '2'+frmdados.Cds_sVenda.fieldbyname('tipoop').asString;
                frmdados.Cds_Vencto_NF.FieldByName('ccli').asInteger := frmdados.Cds_sVenda.fieldbyname('ccli').asInteger;
                frmdados.Cds_Vencto_NF.FieldByName('c_tipo_pgto').asInteger := frmdados.Cds_Indice.fieldbyname('parcpadrao').asInteger;
                frmdados.Cds_Vencto_NF.FieldByName('csit').asInteger := 1;
                frmdados.Cds_Vencto_NF.FieldByName('parc').asstring := formatfloat('00',x)+'/'+ formatfloat('00',frmdados.cds_svenda.fieldbyname('parc_p').asfloat);
                frmdados.Cds_Vencto_NF.FieldByName('doc').asstring := lblnnf.Caption+'-'+chr(64+x);
                frmdados.Cds_Vencto_NF.FieldByName('parte').asstring := chr(64+x);
                frmdados.Cds_Vencto_NF.Post;
              end;
          //endf
          frmdados.Cds_Vencto_NF.First;
          if dbgvencto.Enabled then
             dbgvencto.SetFocus;
          //endi


        end
     else
        begin
          if ediparc.Enabled then
             ediparc.SetFocus;
          //endi
        end;
     //endi

   end;
//endif


except
  sMsg := 'Excessão quando criou parcela em branco';
end;

end;


procedure tfrm.apagaparc;
begin
  with frmdados do
    begin

      if rgblanca.ItemIndex = 0 then
         begin


           //cds_vencto.Active := false;
           //dbx_vencto.Active := false;
           //dbx_vencto.SQL.Clear;
           //dbx_vencto.SQL.Add('Select * from Vencimentos where (c_sVenda = '+cds_sVenda.fieldbyname('codigo').asString+')');
           //dbx_vencto.Active := true;
           //cds_vencto.Active := true;

         end;
      //endi


      if rgblanca.ItemIndex = 1 then
         begin


           //cds_vencto_NF.Active := false;
           //dbx_vencto_NF.Active := false;
           //dbx_vencto_NF.SQL.Clear;
           //dbx_vencto_NF.SQL.Add('Select * from Vencimentos_NF where (c_sVenda = '+cds_sVenda.fieldbyname('codigo').asString+')');
           //dbx_vencto_NF.Active := true;
           //cds_vencto_NF.Active := true;

         end;
      //endi




    end;
  //endth
end;




procedure Tfrm.dbgvenctoEnter(Sender: TObject);
begin
if rgblanca.ItemIndex = 0 then
   tabela := 'Vencimentos';
//endi
if rgblanca.ItemIndex = 1 then
   tabela := 'Vencimentos_NF';
//endi


end;

procedure Tfrm.dbgvenctoColEnter(Sender: TObject);
begin
  sColuna := dbgvencto.SelectedField.FieldName;
end;

procedure Tfrm.rgblancaClick(Sender: TObject);
begin
if rgblanca.ItemIndex = 0 then
   begin
     tabela := 'Vencimentos';
     with frmdados do
       begin
         dbx_exec.Active := false;
         dbx_exec.SQL.Clear;
         dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dVenda where (codsvenda = '+cds_svenda.fieldbyname('codigo').asString+') and (EouS = '+quotedstr('S')+')');
         dbx_exec.Active := true;
         lbltotg.Caption  := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totbruto').asfloat);

         cds_Vencto.Active := false;
         cds_Venctoc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
         if cds_sVenda.fieldbyname('datacad').asString <> '' then
            cds_Venctodte.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
         //endi
         dbx_Vencto.Active := false;
         dbx_Vencto.SQL.Clear;
         dbx_Vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+cds_svenda.fieldbyname('codigo').asString+')');
         dbx_Vencto.Active := true;
         cds_Vencto.Active := true;

       end;
     //endi

     edipdesc.DataField := 'pdesc_p';
     edivaldesc.DataField := 'valdesc_p';
     ediliquido.DataField := 'liquido_p';
     edidin.DataField := 'din_p';
     ediparc.DataField := 'parc_p';
     dbgvencto.DataSource := frmDados.Dts_Vencto;

     if frmdados.Cds_sVenda.FieldByName('lancado').asString = 'T' then
        begin
          edipdesc.Enabled := false;
          edivaldesc.Enabled := false;
          ediliquido.Enabled := false;
          edidin.Enabled := false;
          ediparc.Enabled := false;
        end;
     //endi


   end;
//endi


if rgblanca.ItemIndex = 1 then
   begin
     tabela := 'Vencimentos_NF';

     with frmdados do
       begin
         dbx_exec.Active := false;
         dbx_exec.SQL.Clear;
         dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dVenda where (codsvenda = '+cds_svenda.fieldbyname('codigo').asString+') and (EouS = '+quotedstr('S')+') and (IMPNF = '+QuotedStr('T')+')');
         dbx_exec.Active := true;
         lbltotg.Caption  := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totbruto').asfloat);

         cds_Vencto_NF.Active := false;
         cds_Vencto_NFc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
         dbx_Vencto_NF.Active := false;
         dbx_Vencto_NF.SQL.Clear;
         dbx_Vencto_NF.SQL.Add('Select * from Vencimentos_NF where (c_svenda = '+cds_svenda.fieldbyname('codigo').asString+')');
         dbx_Vencto_NF.Active := true;
         cds_Vencto_NF.Active := true;

       end;
     //endi

     edipdesc.DataField := 'pdesc';
     edivaldesc.DataField := 'valdesc';
     ediliquido.DataField := 'liquido';
     edidin.DataField := 'din';
     ediparc.DataField := 'parc';
     dbgvencto.DataSource := frmDados.Dts_Vencto_NF;

     if frmdados.Cds_sVenda.FieldByName('lancado').asString = 'T' then
        begin
          edipdesc.Enabled := true;
          edivaldesc.Enabled := true;
          ediliquido.Enabled := true;
          edidin.Enabled := true;
          ediparc.Enabled := true;
        end;
     //endi

   end;
//endi


if edipdesc.Enabled then
   begin
     //limpart;
     edipdesc.SetFocus;
   end;
//endi

end;

procedure Tfrm.dbgvenctoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if rgblanca.ItemIndex = 0 then
   if frmdados.Cds_sVenda.FieldByName('lancado').asString = 'T' then
      begin
        key := 0;
        exit;
      end;
   //endi
//endi

end;

procedure Tfrm.imporcrazao66x80;
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


procedure tfrm.imporcrazao66x140;
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



procedure Tfrm.edincopiasExit(Sender: TObject);
begin
try
  strtoint(edincopias.Text);
except
  edincopias.Text := inttostr(frmdados.cds_indice.fieldbyname('ncopiaso').asInteger);
  edincopias.SetFocus;
end;
end;

procedure Tfrm.ckbemailClick(Sender: TObject);
begin
if ckbemail.Checked then
   begin
     edincopias.Enabled := false;
     ckbemail.SetFocus;
   end
else
   begin
     edincopias.Enabled := true;
     edincopias.SetFocus;
   end;
//endi
end;

procedure Tfrm.bloqueiacampos;
begin

  if frmdados.Cds_sVenda.FieldByName('lancado').asString = 'T' then
     begin
       edipdesc.Enabled := false;
       edivaldesc.Enabled := false;
       ediliquido.Enabled := false;
       edidin.Enabled := false;
       ediparc.Enabled := false;
       //dbgvencto.Enabled := false;
     end;
  //endi


end;

procedure Tfrm.dbgvenctoCellClick(Column: TColumn);
begin
//if frmdados.Cds_sVenda.FieldByName('lancado').AsString = 'T' then

end;

end.
