unit ufecenf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, SqlExpr, Db,
  SayPrint, Grids, DBGrids, ComCtrls;

type
  Tfrmfecenf = class(TForm)
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
    Label7: TLabel;
    Label8: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label42: TLabel;
    Label40: TLabel;
    Label39: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    Label34: TLabel;
    Label33: TLabel;
    Label32: TLabel;
    Label31: TLabel;
    Label35: TLabel;
    Label44: TLabel;
    Label5: TLabel;
    lbltotfolhanf: TLabel;
    ediBASECALCICMSSUB: TDBEdit;
    ediVLRICMSSUB: TDBEdit;
    edivlrfrete: TDBEdit;
    ediplacavei: TDBEdit;
    edioutdesp: TDBEdit;
    edivlrseguro: TDBEdit;
    ediufvei: TDBEdit;
    edinumero: TDBEdit;
    edimarca: TDBEdit;
    ediespecie: TDBEdit;
    ediquantidade: TDBEdit;
    edipesob: TDBEdit;
    edipesol: TDBEdit;
    rgbtiponf: TDBRadioGroup;
    rgbfretep: TDBRadioGroup;
    rgbimprimir: TRadioGroup;
    Edit1: TEdit;
    cbxnomenatop: TDBLookupComboBox;
    cbxnomecfop: TDBLookupComboBox;
    cbxnometransp: TDBLookupComboBox;
    edida6: TDBEdit;
    Label6: TLabel;
    edinnf: TEdit;
    Label9: TLabel;
    edidatas: TDBEdit;
    Label11: TLabel;
    edihoras: TDBEdit;
    cbxnomenatopnf: TDBLookupComboBox;
    lblmensagem: TLabel;
    Label12: TLabel;
    lbltroco: TLabel;
    ckbdesconto: TCheckBox;
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
    procedure imporcrazao66x80;
    procedure imporcrazao66x140;
    procedure edincopiasExit(Sender: TObject);
    procedure ckbemailClick(Sender: TObject);
    procedure bloqueiacampos;
    procedure dbgvenctoCellClick(Column: TColumn);
    procedure cbxnomenatopKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnomecfopKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnometranspKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure impnf;
    procedure impnfe;
    procedure edida6KeyPress(Sender: TObject; var Key: Char);
    procedure edinnfKeyPress(Sender: TObject; var Key: Char);
    procedure edinnfExit(Sender: TObject);
    procedure cbxnomenatopnfKeyPress(Sender: TObject; var Key: Char);



  private
    { Private declarations }
    bAvista, bReimp:boolean;
    inorc, inped, iccli:integer;
    sNomeCli, sEnderecoent, sComplent, sBairroent, sCidadeent, sEstadoent,
    scepent, sTelefoneent, sContato, sVendedor, sDataF, sDataImp, sHoraImp, sCodCli,
    sFantasia, sTelefones, snroent:string;

    ftot, fpdesc, fvaldesc,  ftotpag:real;
    spdesc, svaldesc, sNumDup1, sNumDup2, sNumDup3, sNumDup4, sVlrDup1, sVlrDup2,
    sVlrDup3, sVlrDup4, sVctDup1, sVctDup2, sVctDup3, sVctDup4:string;
    iParcDup1, iParcDup2, iParcDup3, iParcDup4:integer;

    spdesc_PA, sValdesc_PA, sliquido_PA,
    spdesc_OA, sValdesc_OA, sliquido_OA,
    spdescA,   sValdescA,   sliquidoA    :String;

    iNNF:integer;

    

  public
    { Public declarations }
    scoluna:string;
  end;

var
  frmfecenf: Tfrmfecenf;

implementation
  uses ugeral, upesqnf, uDados, uimpnf, Uemailped;
{$R *.dfm}

procedure Tfrmfecenf.spdcancelar2310Click(Sender: TObject);
begin
if frmdados.Cds_nf.State in [dsinsert, dsedit] then
   frmdados.Cds_nf.cancel;
//endi

close;
end;

procedure Tfrmfecenf.FormShow(Sender: TObject);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt, stipopgto : String;
  il1, il2, itotp:integer;
  ftotalgeral:real;

begin

  lblmensagem.Caption := '';

  scoluna := 'n_tipo_pgto';

  if frmdados.Cds_nf.State in [dsinsert, dsedit] then
     frmdados.Cds_nf.Post;
  //endi

  SqlStMt := 'Select gen_id(Gen_nNf,0) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
  if Assigned(ResultSet) then
     edinnf.text  := formatfloat('00000',ResultSet.fieldbyname('valor').asInteger+1);
  //endi

  SqlStMt := 'Select gen_id(Gen_Nped,0) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
  if Assigned(ResultSet) then
     lblnped.Caption  := formatfloat('00000',ResultSet.fieldbyname('valor').asInteger+1);
  //endi

  if frmdados.Cds_nf.FieldByName('nped').asInteger <> 0 then
     begin
       lblnped.Caption := formatfloat('00000',frmdados.Cds_nf.FieldByName('nped').asfloat);
     end;
  //endi

  iccli := frmdados.cds_clientes.fieldbyname('codigo').asInteger;
  sNomeCli := frmdados.cds_clientes.fieldbyname('Nome').asString;
  sCodCli := formatfloat('00000',frmdados.cds_clientes.fieldbyname('Codigo').asfloat);
  sFantasia := frmdados.cds_clientes.fieldbyname('fantasia').asString;
  sTelefones := frmdados.cds_clientes.fieldbyname('dddfs').asString+' '+frmdados.cds_clientes.fieldbyname('Telefones').asString;

  sEnderecoent := frmdados.cds_clientes.fieldbyname('endent').asString;
  if frmdados.cds_clientes.fieldbyname('nroent').asString <> '' then
     sEnderecoent := sEnderecoent + 'N.o '+frmdados.cds_clientes.fieldbyname('nroent').asString;
  //endi


  sComplent := frmdados.cds_clientes.fieldbyname('Complent').asString;
  sBairroent := frmdados.cds_clientes.fieldbyname('Bairroent').asString;
  sCidadeent := frmdados.cds_clientes.fieldbyname('Cidadeent').asString;
  sEstadoent := frmdados.cds_clientes.fieldbyname('estadoent').asString;
  sTelefoneent := frmdados.cds_clientes.fieldbyname('dddeent').asString+' '+frmdados.cds_clientes.fieldbyname('telefoneent').asString;
  sContato := frmdados.cds_clientes.fieldbyname('contato').asString;
  sVendedor := frmdados.cds_Funcionarios.fieldbyname('nome').asString;

  with frmdados do
    begin

      cds_Vencto_NF.Active := false;
      cds_Vencto_NFcodnf.DefaultExpression := cds_nf.fieldbyname('codigo').asString;
      cds_Vencto_NFdescricao.DefaultExpression := QuotedStr('Parcela Pedido');
      dbx_Vencto_NF.Active := false;
      dbx_Vencto_NF.SQL.Clear;
      dbx_Vencto_NF.SQL.Add('Select * from Vencimentos_NF where (codnf = '+ inttostr( cds_nf.fieldbyname('codigo').asInteger )+')');
      dbx_Vencto_NF.Active := true;
      cds_Vencto_NF.Active := true;

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from nfp where (codnf = '+ inttostr( cds_nf.fieldbyname('codigo').asInteger)+') and (EouS = '+quotedstr('S')+') and (IMPNF = '+QuotedStr('T')+')');
      dbx_exec.Active := true;
      ftotalgeral := dbx_exec.fieldbyname('totbruto').asfloat;

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select count(*) as totreg from nfp where (codnf = '+ inttostr( cds_nf.fieldbyname('codigo').asInteger)+') and (EouS = '+quotedstr('S')+') and (IMPNF <> '+QuotedStr('T')+')');
      dbx_exec.Active := true;
      if dbx_exec.FieldByName('totreg').asInteger > 0 then
         begin
           lbltotG.Caption  := formatfloat('###,###,##0.00',ftotalgeral);

           dbx_exec.Active := false;
           dbx_exec.SQL.Clear;
           dbx_exec.SQL.Add('delete from Vencimentos_NF where (codnf = '+cds_nf.fieldbyname('codigo').asString+')');
           dbx_exec.ExecSQL;

           cds_Vencto_NF.Refresh;

         end
      else
         begin
           lbltotG.Caption := frmpesqnf.lbltotal.Caption;
         end;
      //endi

    end;
  //endi

  ediparc.Enabled := false;
  bloqueiaparcelas;

  mmoobs.Enabled := false;

  limpart;

  with frmdados do
     begin

       cds_NatOP.Active := false;
       with dbx_NatOP do
         begin
           Active := false;
           sql.Clear;
           sql.Add('Select * from NatOP order by descricao');
           Active := true;
         end;
       //endth
       cds_NatOP.Active := true;

       cds_NatOPNF.Active := false;
       with dbx_NatOPNF do
         begin
           Active := false;
           sql.Clear;
           sql.Add('Select * from NatOPNF order by descricao');
           Active := true;
         end;
       //endth
       cds_NatOPNF.Active := true;

       cds_transportadores.Active := false;
       with dbx_transportadores do
         begin
           Active := false;
           sql.Clear;
           sql.Add('Select * from transportador order by nome');
           Active := true;
         end;
       //endth
       cds_transportadores.Active := true;

       cds_tipo_pgto.Active := false;
       with dbx_tipo_pgto do
         begin
           Active := false;
           SQL.Clear;
           SQL.Add('Select * from Tipo_Pgto where (codigo <> '+ inttostr( cds_indice.fieldbyname('codavista').asInteger )+') and ( mosvd = '+quotedstr('T')+')');
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

       cds_vencto_NF.Active := false;
       cds_Vencto_NFcodnf.DefaultExpression := cds_nf.fieldbyname('codigo').asString;
       cds_Vencto_NFdescricao.DefaultExpression := Quotedstr('Parcela Pedido');
       with dbx_Vencto_NF do
         begin
           Active := false;
           SQL.Clear;
           SQL.Add('Select * from Vencimentos_NF where (codnf = '+ inttostr( cds_nf.fieldbyname('codigo').asInteger )+')');
           Active := true;
         end;
       //endth
       cds_Vencto_NF.Active := true;

       dbx_nfp.Active := false;
       dbx_nfp.SQL.Clear;
       dbx_nfp.SQL.Add('select * from nfp where codnf = '+ inttostr( cds_nf.fieldbyname('codigo').asInteger ));
       dbx_nfp.Active := true;

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
       ftotpag := dbx_nfp.RecordCount  div (itotp-2);
       ftotpag := ftotpag + 1;
       lbltotfolhanf.Caption := formatfloat('0000',int(ftotpag));


    end;
  //endi

  rchtipopgto.Lines.Clear;
  rchtipopgto.Lines.Add('Forma Pgto: '+stipopgto);


  tabela := 'Vencimentos_NF';


  edipdesc.DataField := 'pdesc';
  edivaldesc.DataField := 'valdesc';
  ediliquido.DataField := 'liquido';
  edidin.DataField := 'din';
  ediparc.DataField := 'parc';
  dbgvencto.DataSource := frmDados.Dts_Vencto_nf;

  spdescA := formatfloat('0.00',frmdados.Cds_nf.fieldbyname('pdesc').asfloat);
  sValdescA := formatfloat('0.00',frmdados.Cds_nf.fieldbyname('valdesc').asfloat);
  sliquidoA := formatfloat('0.00',frmdados.Cds_nf.fieldbyname('liquido').asfloat);

  edincopias.Text := inttostr(frmdados.cds_indice.fieldbyname('ncopiaso').asInteger);

  if edipdesc.Enabled then
     begin
       //limpart;
       //edipdesc.SetFocus;
       edinnf.SetFocus;
     end;
  //endi


end;

procedure Tfrmfecenf.edipdescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif


end;

procedure Tfrmfecenf.edivaldescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.ediliquidoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edidinKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edinumdup1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edinumdup2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edinumdup3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edivlrdup1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edivlrdup2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edivlrdup3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edivctdup1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edivctdup2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edivctdup3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.cbxnaturezaKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.cbxcfopKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.ediBASECALCICMSSUBKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.ediVLRICMSSUBKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edivlrfreteKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edivlrseguroKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edioutdespKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.ediplacaveiKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.cbxntranspKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.ediufveiKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.ediquantidadeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.ediespecieKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edimarcaKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edinumeroKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edipesobKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edipesolKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edipdescExit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc, svaldesc:string;


begin
try
  if (frmdados.Cds_nf.State <> dsinsert) or (frmdados.Cds_nf.State <> dsedit) then
     frmdados.Cds_nf.Edit;
  //endi

  ftot :=  strtofloat(tirapontos(lbltotG.Caption));

  if frmdados.Cds_nf.State in [dsinsert, dsedit] then
     begin
       
       if rgblanca.ItemIndex = 1 then
          begin

            if edipdesc.Text <> spdescA then
               begin

                 fvaldesc := frmdados.Cds_nf.FieldByName('pdesc').asfloat / 100 * ftot;
                 svaldesc := floattostr(fvaldesc);

                 frmdados.Cds_nf.FieldByName('valdesc').asString := formatfloat('0.00',fvaldesc);
                 frmdados.Cds_nf.FieldByName('liquido').asString := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))-fvaldesc);

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

procedure Tfrmfecenf.edivaldescExit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc:string;

begin
try
  ftot := strtofloat(tirapontos(lbltotG.Caption));

  if frmdados.Cds_nf.State in [dsinsert, dsedit] then
     begin
       
       if rgblanca.ItemIndex = 1 then
          begin

            if edivaldesc.Text <> svaldescA then
               begin

                 fvaldesc := frmdados.Cds_nf.FieldByName('valdesc').asfloat;
                 fpdesc := fvaldesc / ftot * 100;
                 spdesc := floattostr(fpdesc);

                 frmdados.Cds_nf.FieldByName('pdesc').asfloat := fpdesc;
                 frmdados.Cds_nf.FieldByName('liquido').asString := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))-fvaldesc);

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


procedure Tfrmfecenf.ediliquidoExit(Sender: TObject);
var fpdesc, fvaldesc, ftot:real;
begin
try
  ftot :=  strtofloat(tirapontos(lbltotG.Caption));
  if frmdados.Cds_nf.State in [dsinsert, dsedit] then
     begin
       

       if rgblanca.ItemIndex = 1 then
          begin
            if ediliquido.Text <>  sliquidoA then
               begin

                 frmdados.Cds_nf.FieldByName('valdesc').asfloat := strtofloat(tirapontos(lbltotg.Caption))-frmdados.Cds_nf.FieldByName('liquido').asfloat;
                 fpdesc                                             := frmdados.Cds_nf.FieldByName('valdesc').asfloat / ftot * 100;
                 frmdados.Cds_nf.FieldByName('pdesc').asfloat := fpdesc;

                 sliquidoA := ediliquido.Text;
                 svaldescA := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))-frmdados.Cds_nf.FieldByName('liquido').asfloat);
                 spdescA   := formatfloat('0.00',frmdados.Cds_nf.FieldByName('valdesc').asfloat / ftot * 100);


               end;
            //endi



          end;
       //endi

     end;
  //endi
except
end;

end;

procedure Tfrmfecenf.spdlancarClick(Sender: TObject);
var ftotal:currency;
    ftotalprazo:integer;
    ResultSet : tCustomSqlDataSet;
    SqlStMt : String;
    x, codigo:integer;
begin

iNNF     :=   0;
innf := strtoint(edinnf.text);

if frmdados.Cds_nf.State in [dsinsert, dsedit] then
   frmdados.Cds_nf.post;
//endi

frmdados.cds_nfp.Active := false;
frmdados.cds_nfpcodnf.DefaultExpression := frmdados.cds_nf.fieldbyname('codigo').asString;
frmdados.cds_nfpImpNf.DefaultExpression := 'T';

frmdados.dbx_nfp.Active := false;
frmdados.dbx_nfp.SQL.Clear;
frmdados.dbx_nfp.SQL.Add('Select * from nfp where codnf = '+ inttostr( frmdados.cds_nf.fieldbyname('codigo').asInteger )+' order by npro');
frmdados.dbx_nfp.Active := true;
frmdados.cds_nfp.Active := true;

frmdados.dbx_exec.Active := false;
frmdados.dbx_exec.SQL.Clear;
frmdados.dbx_exec.SQL.Add('update Vencimentos_nf set nnf = '+inttostr(innf)+' where (codnf = '+ inttostr( frmdados.cds_nf.fieldbyname('codigo').asInteger)+')'  );
frmdados.dbx_exec.ExecSQL;

if frmdados.Cds_Indice.FieldByName('tipoimpnf').asInteger = 1 then
   impnf;
//endi
if frmdados.Cds_Indice.FieldByName('tipoimpnf').asInteger = 2 then
   impnfe;
//endi


tabela := 'NF';
frmdados.Cds_NF.Edit;
frmdados.Cds_NF.FieldByName('troco').asfloat := strtofloat(tirapontos(lbltroco.Caption));
frmdados.Cds_NF.Post;


frmdados.cds_nfp.Active := false;
frmdados.cds_nfpcodnf.DefaultExpression := frmdados.cds_nf.fieldbyname('codigo').asString;
frmdados.cds_nfpImpNf.DefaultExpression := 'T';

frmdados.dbx_nfp.Active := false;
frmdados.dbx_nfp.SQL.Clear;
frmdados.dbx_nfp.SQL.Add('Select * from nfp where codnf = '+ inttostr( frmdados.cds_nf.fieldbyname('codigo').asInteger));
frmdados.dbx_nfp.Active := true;
frmdados.cds_nfp.Active := true;


close;
end;

procedure Tfrmfecenf.ediparcKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure tfrmfecenf.bloqueiaparcelas;
begin
  //
end;

procedure Tfrmfecenf.edidinExit(Sender: TObject);
begin
limparp;
bloqueiaparcelas;


if rgblanca.ItemIndex = 1 then
   begin
      if frmdados.Cds_nf.FieldByName('din').asfloat < frmdados.Cds_nf.FieldByName('liquido').asfloat  then
         begin
           ediparc.Enabled := true;
           if frmdados.Cds_Clientes.FieldByName('prazo').asInteger > 0 then
              begin
                if (frmdados.Cds_nf.State <> dsinsert) or (frmdados.Cds_nf.State <> dsedit) then
                    frmdados.Cds_nf.Edit;
                //endi
                frmdados.Cds_nf.FieldByName('parc').asInteger := 1;
              end;
           //endi
           if ediparc.Enabled then
              ediparc.SetFocus;
           //endi   
           if frmdados.Cds_nf.FieldByName('din').asfloat > 0 then
              bAvista := true
           else
              bAvista := false;
           //endi
         end
      else
         begin
           lbltroco.Caption := FormatFloat('###,##0.00',StrToFloat(tirapontos(edidin.Text)) - StrToFloat(tirapontos(ediliquido.text)));


           ediparc.Enabled := false;
           bAvista := true;
           bloqueiaparcelas;
         end;
      //endi

   end;
//endi



end;

procedure Tfrmfecenf.limparT;
begin
  if (frmdados.Cds_nf.State <> dsinsert) or (frmdados.Cds_nf.State <> dsedit) then
     frmdados.Cds_nf.Edit;
  //endi

  frmdados.Cds_nf.FieldByName('liquido').asfloat := strtofloat(tirapontos(lbltotg.Caption));

  lbltroco.Caption := '0,00';

end;

procedure tfrmfecenf.limparP;
begin
  //

end;


procedure Tfrmfecenf.ediparcExit(Sender: TObject);
begin


if rgblanca.ItemIndex = 1 then
   begin
     if frmdados.Cds_nf.FieldByName('parc').asInteger>frmdados.Cds_Indice.FieldByName('maxparc').asInteger then
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
     frmdados.cds_Vencto_NFcodnf.DefaultExpression := frmdados.cds_nf.fieldbyname('codigo').asString;
     frmdados.cds_Vencto_NFdescricao.DefaultExpression := QuotedStr('Parcela Pedido');
     frmdados.dbx_Vencto_NF.Active := false;
     frmdados.dbx_Vencto_NF.SQL.Clear;
     frmdados.dbx_Vencto_NF.SQL.Add('Select * from Vencimentos_NF where (codnf = '+ inttostr( frmdados.cds_nf.fieldbyname('codigo').asInteger )+')');
     frmdados.dbx_Vencto_NF.Active := true;
     frmdados.cds_Vencto_NF.Active := true;

   end;
//endi

criaparc;

end;

procedure Tfrmfecenf.edidinEnter(Sender: TObject);
begin
lbltroco.Caption := '0,00';

if rgblanca.ItemIndex = 1 then
   frmdados.Cds_nf.FieldByName('parc').asInteger := 0;
//endi


end;

procedure Tfrmfecenf.ediprazo1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.ediprazo2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.ediprazo3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.ediparcEnter(Sender: TObject);
begin
  if frmdados.Cds_Clientes.FieldByName('prazo').asInteger > 0 then
     begin
       if rgblanca.ItemIndex = 1 then
          frmdados.Cds_nf.FieldByName('parc').asInteger := 1;
       //endi
     end;
  //endi

end;

procedure Tfrmfecenf.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure tfrmfecenf.desbloqueiar;
begin
edipdesc.Enabled :=true;
edivaldesc.Enabled := true;
ediliquido.Enabled := true;
edidin.Enabled := true;
ediparc.Enabled := true;
end;


procedure tfrmfecenf.desbloqueiaf;
begin
edipdesc.Enabled :=true;
edivaldesc.Enabled := true;
ediliquido.Enabled := true;
edidin.Enabled := true;
ediparc.Enabled := true;

end;

procedure Tfrmfecenf.cbxtipoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.dbgvenctoKeyPress(Sender: TObject; var Key: Char);
begin

if scoluna = 'n_tipo_pgto' then
   if ( key in['0'..'9',#8] ) then
      if frmdados.cds_Tipo_Pgto.Locate('codigo',key,[]) then
         begin
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

procedure Tfrmfecenf.dbgvenctoExit(Sender: TObject);
begin

if frmdados.Cds_Vencto_nf.State in [dsinsert, dsedit] then
   frmdados.Cds_Vencto_nf.Post;
//endi

tabela := 'nf';
end;

procedure tfrmfecenf.criaparc;
var x, iparc, iaprazo:integer;
    fvlrparc:currency;
    fvalor:currency;
    sdata:string;

    fsobra, ftotal:real;

begin
try

x := 0;
iparc := strtoint(ediparc.Text);
sdata := datetostr(date);

if rgblanca.ItemIndex = 1 then
   begin

     if frmdados.Cds_nf.FieldByName('parc').asInteger > 0 then
        begin
          //fvlrparc :=  ArredondarMaior( (     strtofloat(tirapontos(ediliquido.Text))    -  strtofloat(tirapontos(edidin.Text))    ) / strtofloat(tirapontos(ediparc.Text)) ,2);
          fvlrparc :=   (     strtofloat(tirapontos(ediliquido.Text))    -  strtofloat(tirapontos(edidin.Text))    ) / strtofloat(tirapontos(ediparc.Text));


          tabela := 'Vencimentos_NF';

          frmdados.dbx_exec.Active := false;
          frmdados.dbx_exec.SQL.Clear;
          frmdados.dbx_exec.SQL.Add('delete from Vencimentos_NF where (codnf = '+frmdados.cds_nf.fieldbyname('codigo').asString+')');
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
                   end
                else
                   begin
                     if frmdados.Cds_indice.FieldByName('prazo').asInteger > 0 then
                        begin
                          frmdados.Cds_vencto_NF.FieldByName('prazo').asInteger := frmdados.Cds_indice.FieldByName('prazo').asInteger + iaprazo;
                          frmdados.Cds_vencto_NF.FieldByName('dtv').asString := calc_data(sdata,frmdados.Cds_vencto_NF.FieldByName('prazo').asInteger);
                        end;
                     //endi
                   end;
                //endi
                frmdados.Cds_Vencto_NF.FieldByName('valor').asfloat := fvlrparc;
                frmdados.Cds_Vencto_NF.FieldByName('originado').asString := '2'+frmdados.Cds_nf.fieldbyname('tipoop').asString;
                frmdados.Cds_Vencto_NF.FieldByName('ccli').asInteger := frmdados.Cds_nf.fieldbyname('ccli').asInteger;
                frmdados.Cds_Vencto_NF.FieldByName('c_tipo_pgto').asInteger := frmdados.Cds_Indice.fieldbyname('parcpadrao').asInteger;
                frmdados.Cds_Vencto_NF.FieldByName('csit').asInteger := frmdados.Cds_Indice.fieldbyname('csitr').asInteger;
                frmdados.Cds_Vencto_NF.FieldByName('parc').asstring := formatfloat('00',x)+'/'+ formatfloat('00',frmdados.cds_nf.fieldbyname('parc').asfloat);
                if strtoint(ediparc.Text) > 1 then
                   begin
                     frmdados.Cds_Vencto_NF.FieldByName('doc').asstring := edinnf.text+'-'+chr(64+x);
                     frmdados.Cds_Vencto_NF.FieldByName('parte').asstring := chr(64+x);
                   end
                else
                   begin
                     frmdados.Cds_Vencto_NF.FieldByName('doc').asstring := edinnf.text;
                   end;
                //endi

                iaprazo :=  frmdados.Cds_vencto_NF.FieldByName('prazo').asInteger;

                ftotal := ftotal + frmdados.Cds_vencto_NF.FieldByName('valorreal').asfloat;

                frmdados.Cds_Vencto_NF.Post;
              end;
          //endf


          fsobra := strtofloat(tirapontos(ediliquido.Text)) - ftotal;
          if fsobra > 0 then
             begin
               frmdados.Cds_vencto_NF.Edit;
               frmdados.Cds_vencto_NF.FieldByName('valorreal').asfloat := frmdados.Cds_vencto_NF.FieldByName('valorreal').asfloat + fsobra;
               frmdados.Cds_vencto_NF.Post;
             end;
          //end

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


procedure tfrmfecenf.apagaparc;
begin
  with frmdados do
    begin



      if rgblanca.ItemIndex = 1 then
         begin


           //cds_vencto_NF.Active := false;
           //dbx_vencto_NF.Active := false;
           //dbx_vencto_NF.SQL.Clear;
           //dbx_vencto_NF.SQL.Add('Select * from Vencimentos_NF where (codnf = '+cds_nf.fieldbyname('codigo').asString+')');
           //dbx_vencto_NF.Active := true;
           //cds_vencto_NF.Active := true;

         end;
      //endi




    end;
  //endth
end;




procedure Tfrmfecenf.dbgvenctoEnter(Sender: TObject);
begin
if rgblanca.ItemIndex = 1 then
   tabela := 'Vencimentos_NF';
//endi


end;

procedure Tfrmfecenf.dbgvenctoColEnter(Sender: TObject);
begin
  sColuna := dbgvencto.SelectedField.FieldName;
end;

procedure Tfrmfecenf.rgblancaClick(Sender: TObject);
begin


if rgblanca.ItemIndex = 1 then
   begin
     tabela := 'Vencimentos_NF';

     with frmdados do
       begin
         dbx_exec.Active := false;
         dbx_exec.SQL.Clear;
         dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from nfp where (codnf = '+ inttostr( cds_nf.fieldbyname('codigo').asInteger )+') and (EouS = '+quotedstr('S')+') and (IMPNF = '+QuotedStr('T')+')');
         dbx_exec.Active := true;
         //lbltotg.Caption  := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totbruto').asfloat);

         cds_Vencto_NF.Active := false;
         cds_Vencto_NFcodnf.DefaultExpression := cds_nf.fieldbyname('codigo').asString;
         cds_Vencto_NFdescricao.DefaultExpression := QuotedStr('Parcela Pedido');
         dbx_Vencto_NF.Active := false;
         dbx_Vencto_NF.SQL.Clear;
         dbx_Vencto_NF.SQL.Add('Select * from Vencimentos_NF where (codnf = '+ inttostr( cds_nf.fieldbyname('codigo').asInteger)+')');
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

     if frmdados.Cds_nf.FieldByName('lancado').asString = 'T' then
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
     //edipdesc.SetFocus;
     edinnf.SetFocus;
   end;
//endi

end;

procedure Tfrmfecenf.imporcrazao66x80;
var
  s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,sImp:string;
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
  Col, Centro,x, iLin, iItens:Integer;
  sDelimitador:string;
  sQtdeImp,sDescricaoImp,sCprodImp, sValorImp, sTotalImp, sUniImp:String;
  ftotG, ftotI, ftotE:real;
  sCab1, sCab2, sCab3, sCab4:string;
  sncm, sindtot:string;
  bindtot:boolean;
begin

sDataImp := datetostr(date);
sHoraImp := copy(timetostr(time),1,5);
sDelimitador := replicar('-',80);

frmdados.Cds_nfp.First;
if frmdados.Cds_nfp.RecordCount = 0 then
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

    sCab1 := frmdados.Cds_Config.fieldbyname('campo6').asString;

    if frmdados.Cds_Config.fieldbyname('nro').asString <> '' then
       sCab1 := sCab1 + ' N.o '+frmdados.Cds_Config.fieldbyname('nro').asString;
    //endi

    if frmdados.Cds_Config.fieldbyname('bairro').asString <> '' then
       sCab1 := sCab1 + ' - '+frmdados.Cds_Config.fieldbyname('bairro').asString;
    //endi

    if frmdados.Cds_Config.fieldbyname('campo5').asString <> '' then
       sCab1 := sCab1 + ' - '+frmdados.Cds_Config.fieldbyname('campo5').asString;
    //endi

    if frmdados.Cds_Config.fieldbyname('campo15').asString <> '' then
       sCab1 := sCab1 + ' - '+frmdados.Cds_Config.fieldbyname('campo15').asString;
    //endi

    if frmdados.Cds_Config.fieldbyname('campo16').asString <> '' then
       sCab1 := sCab1 + ' - '+frmdados.Cds_Config.fieldbyname('campo16').asString;
    //endi

    //s1 := '';
    //for x := 1 to (( 80  - length( frmdados.Cds_Config.fieldbyname('campo6').asString )) div 2) do
    //    begin
    //      s1 := (s1 + ' ');
    //    end;
    //endfor
    //sImp := s1+frmdados.Cds_Config.fieldbyname('campo6').asString;

    s1 := '';
    for x := 1 to (( 80  - length( sCab1 )) div 2) do
        begin
          s1 := (s1 + ' ');
        end;
    //endfor
    sImp := s1+sCab1;

    sayprint.Say(1,0,sImp);

    sCab2 := frmdados.Cds_Config.fieldbyname('campo7').asString;

    if frmdados.Cds_Config.fieldbyname('fone').asString <> '' then
       sCab2 := sCab2 + ' '+frmdados.Cds_Config.fieldbyname('fone').asString;
    //endi

    //s1 := '';
    //for x := 1 to (( 80  - length( frmdados.Cds_Config.fieldbyname('campo7').asString )) div 2) do
    //    begin
    //      s1 := (s1 + ' ');
    //    end;
    //endfor
    //sImp := s1+frmdados.Cds_Config.fieldbyname('campo7').asString;

    s1 := '';
    for x := 1 to (( 80  - length( sCab2 )) div 2) do
        begin
          s1 := (s1 + ' ');
        end;
    //endfor
    sImp := s1+sCab2;

    sayprint.Say(2,0,sImp);
    sayprint.Say(3,0,sDelimitador);

    sayprint.Say(4,0,'Pedido '+formatfloat('00000',frmdados.Cds_nf.fieldbyname('nped').asfloat));

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

         sayprint.Say(10, 0,'Telefone....: '+sTelefones+'  '+sTelefoneent);
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

    //frmDados.Dbx_nfp.First;

      with frmdados do
         begin


           while true do
              begin

                //sQtdeImp      := AlinNumD3(10,Cds_nfp.fieldbyname('qtde').asfloat);

                sQtdeImp      := AlinNumD0(10,Cds_nfp.fieldbyname('qtde').asfloat);
                sDescricaoImp := Cds_nfp.fieldbyname('npro').asString;
                sCprodImp     := formatfloat('00000',Cds_nfp.fieldbyname('cpro').asfloat);

                if ckbdesconto.Checked then
                   begin
                     sValorImp     := AlinNumD(10,Cds_nfp.fieldbyname('prve').asfloat-(Cds_nfp.fieldbyname('prve').asfloat*cds_nf.fieldbyname('pdesc').asfloat/100));
                     sTotalImp     := AlinNumD(12,Cds_nfp.fieldbyname('subtotal').asfloat-(Cds_nfp.fieldbyname('subtotal').asfloat*cds_nf.fieldbyname('pdesc').asfloat/100));
                   end
                else
                   begin
                     sValorImp     := AlinNumD(10,Cds_nfp.fieldbyname('prve').asfloat);
                     sTotalImp     := AlinNumD(12,Cds_nfp.fieldbyname('subtotal').asfloat);
                   end;
                //endi

                sUniImp       := Cds_nfp.fieldbyname('nUnid').asString;

                sayprint.Say(iLin,0,sQtdeImp);
                sayprint.Say(iLin,11,sUniImp);
                sayprint.Say(iLin,15,copy(sDescricaoImp,1,40));
                sayprint.Say(iLin,51,sCprodImp);
                sayprint.Say(iLin,58,sValorImp);
                sayprint.Say(iLin,68,sTotalImp);
                
                iLin := iLin + 1;
                Cds_nfp.Next;
                if Cds_nfp.Eof then
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

      if frmdados.Cds_nfp.Eof then
         begin

            with frmdados do
              begin
                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select count(*) as totitens from nfp where (codnf = '+ inttostr( frmdados.Cds_nf.fieldbyname('codigo').asInteger )+') and (EouS = '+quotedstr('S')+')');
                dbx_exec.Active := true;
                ftotI := dbx_exec.fieldbyname('totitens').asfloat;

                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from nfp where (codnf = '+ inttostr( frmdados.Cds_nf.fieldbyname('codigo').asInteger)+') and (EouS = '+quotedstr('S')+')');
                dbx_exec.Active := true;
                //ftotG := dbx_exec.fieldbyname('totbruto').asfloat-(dbx_exec.fieldbyname('totbruto').asfloat*cds_nf.fieldbyname('pdesc').asfloat/100);
                ftotG := dbx_exec.fieldbyname('totbruto').asfloat;

                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from nfp where (codnf = '+ inttostr( frmdados.Cds_nf.fieldbyname('codigo').asInteger )+') and (EouS = '+quotedstr('E')+')');
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



      if frmdados.Cds_nfp.Eof then
         break;
      //endi




  end;
//endw

end;


procedure tfrmfecenf.imporcrazao66x140;
var
  s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,sImp:string;
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
  Col, Centro,x, iLin, iItens, iCols, iParc:Integer;
  sDelimitador, sParc:string;
  sQtdeImp,sDescricaoImp,sCprodImp, sValorImp, sTotalImp, sUniImp, sDescMar:String;
  ftotG, ftotI, ftotE:real;
  sCab1, sCab2, sCab3, sCab4:string;
begin

sDataImp := datetostr(date);
sHoraImp := copy(timetostr(time),1,5);
sDelimitador := replicar('-',137);
frmdados.Cds_nfp.First;
if frmdados.Cds_nfp.RecordCount = 0 then
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

    sCab1 := frmdados.Cds_Config.fieldbyname('campo6').asString;

    if frmdados.Cds_Config.fieldbyname('nro').asString <> '' then
       sCab1 := sCab1 + ' N.o '+frmdados.Cds_Config.fieldbyname('nro').asString;
    //endi

    if frmdados.Cds_Config.fieldbyname('bairro').asString <> '' then
       sCab1 := sCab1 + ' - '+frmdados.Cds_Config.fieldbyname('bairro').asString;
    //endi

    if frmdados.Cds_Config.fieldbyname('campo5').asString <> '' then
       sCab1 := sCab1 + ' - '+frmdados.Cds_Config.fieldbyname('campo5').asString;
    //endi

    if frmdados.Cds_Config.fieldbyname('campo15').asString <> '' then
       sCab1 := sCab1 + ' - '+frmdados.Cds_Config.fieldbyname('campo15').asString;
    //endi

    if frmdados.Cds_Config.fieldbyname('campo16').asString <> '' then
       sCab1 := sCab1 + ' - '+frmdados.Cds_Config.fieldbyname('campo16').asString;
    //endi

    //s1 := '';
    //for x := 1 to (( 80  - length( frmdados.Cds_Config.fieldbyname('campo6').asString )) div 2) do
    //    begin
    //      s1 := (s1 + ' ');
    //    end;
    //endfor
    //sImp := s1+frmdados.Cds_Config.fieldbyname('campo6').asString;

    s1 := '';
    for x := 1 to (( 80  - length( sCab1 )) div 2) do
        begin
          s1 := (s1 + ' ');
        end;
    //endfor
    sImp := s1+sCab1;
    sayprint.Say(1,0,sImp);

    sCab2 := frmdados.Cds_Config.fieldbyname('campo7').asString;

    if frmdados.Cds_Config.fieldbyname('fone').asString <> '' then
       sCab2 := sCab2 + ' '+frmdados.Cds_Config.fieldbyname('fone').asString;
    //endi

    //s1 := '';
    //for x := 1 to (( 80  - length( frmdados.Cds_Config.fieldbyname('campo7').asString )) div 2) do
    //    begin
    //      s1 := (s1 + ' ');
    //    end;
    //endfor
    //sImp := s1+frmdados.Cds_Config.fieldbyname('campo7').asString;

    s1 := '';
    for x := 1 to (( 80  - length( sCab2 )) div 2) do
        begin
          s1 := (s1 + ' ');
        end;
    //endfor
    sImp := s1+sCab2;

    sayprint.Say(2,0,sImp);

    sayprint.Condensed(true);
    sayprint.Say(3,0,sDelimitador);
    sayprint.Condensed(false);

    sayprint.Say(4,0,'Pedido '+formatfloat('00000',frmdados.Cds_nf.fieldbyname('nped').asfloat));

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

    //frmDados.Dbx_nfp.First;



      with frmdados do
         begin


           while true do
              begin

                if cds_nfp.fieldbyname('cmar').asInteger > 0 then
                   begin
                     Dbx_Exec.Active := false;
                     Dbx_Exec.SQL.Clear;
                     Dbx_Exec.SQL.Add('Select * from Marca Where codigo = '+ inttostr( cds_nfp.fieldbyname('cMar').asInteger ));
                     Dbx_Exec.Active := true;
                     sDescMar := copy(Dbx_Exec.fieldbyname('Descricao').asString,1,20);
                   end;
                //endi

                //sQtdeImp      := AlinNumD3(10,Cds_nfp.fieldbyname('qtde').asfloat);
                sQtdeImp      := AlinNumD0(10,Cds_nfp.fieldbyname('qtde').asfloat);

                sDescricaoImp := Cds_nfp.fieldbyname('npro').asString;
                sCprodImp     := formatfloat('00000',Cds_nfp.fieldbyname('cpro').asfloat);

                if ckbdesconto.Checked then
                   begin
                     sValorImp     := AlinNumD(10,Cds_nfp.fieldbyname('prve').asfloat-(Cds_nfp.fieldbyname('prve').asfloat*cds_nf.fieldbyname('pdesc').asfloat/100));
                     sTotalImp     := AlinNumD(10,Cds_nfp.fieldbyname('subtotal').asfloat-(Cds_nfp.fieldbyname('subtotal').asfloat*cds_nf.fieldbyname('pdesc').asfloat/100));
                   end
                else
                   begin
                     sValorImp     := AlinNumD(10,Cds_nfp.fieldbyname('prve').asfloat);
                     sTotalImp     := AlinNumD(10,Cds_nfp.fieldbyname('subtotal').asfloat);
                   end;
                //endi

                sUniImp       := Cds_nfp.fieldbyname('nUnid').asString;

                sayprint.Say(iLin,0,sQtdeImp);
                sayprint.Say(iLin,11,sUniImp);
                sayprint.Say(iLin,15,copy(sDescricaoImp,1,40));
                sayprint.Say(iLin,86,sDescMar);
                sayprint.Say(iLin,108,sCprodImp);
                sayprint.Say(iLin,115,sValorImp);
                sayprint.Say(iLin,127,sTotalImp);

                iLin := iLin + 1;
                Cds_nfp.Next;
                if Cds_nfp.Eof then
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

      if frmdados.Cds_nfp.Eof then
         begin

            with frmdados do
              begin
                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select count(*) as totitens from nfp where (codnf = '+ inttostr( frmdados.Cds_nf.fieldbyname('codigo').asInteger ) +') and (EouS = '+quotedstr('S')+')');
                dbx_exec.Active := true;
                ftotI := dbx_exec.fieldbyname('totitens').asfloat;

                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from nfp where (codnf = '+ inttostr( frmdados.Cds_nf.fieldbyname('codigo').asInteger )+') and (EouS = '+quotedstr('S')+')');
                dbx_exec.Active := true;
                //ftotG := dbx_exec.fieldbyname('totbruto').asfloat-(dbx_exec.fieldbyname('totbruto').asfloat*cds_nf.fieldbyname('pdesc').asfloat/100);
                ftotG := dbx_exec.fieldbyname('totbruto').asfloat;

                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from nfp where (codnf = '+ inttostr( frmdados.Cds_nf.fieldbyname('codigo').asInteger )+') and (EouS = '+quotedstr('E')+')');
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

            sValorImp := formatfloat('##0.00',frmdados.Cds_nf.fieldbyname('pdesc_p').asfloat);
            sValorImp := AlinNumD(6,frmdados.Cds_nf.fieldbyname('pdesc_p').asfloat);

            sayprint.Say(55,60,sValorImp+'% R$');

            sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_nf.fieldbyname('valdesc_p').asfloat);
            sValorImp := AlinNumD(10,frmdados.Cds_nf.fieldbyname('valdesc_p').asfloat);

            sayprint.Say(55,66,sValorImp);


            sayprint.Say(56,55,'Liquido');

            sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_nf.fieldbyname('liquido_p').asfloat);
            sValorImp := AlinNumD(14,frmdados.Cds_nf.fieldbyname('liquido_p').asfloat);

            sayprint.Say(56,66,sValorImp);


            sayprint.Condensed(true);

            sayprint.Say(57,0,'Forma de Pagto:');

            if frmdados.Cds_nf.fieldbyname('Din_p').asfloat > 0 then
               begin
                 sayprint.Say(57,18,'A vista (');

                 if frmdados.Cds_nf.fieldbyname('Din_p').asfloat > frmdados.Cds_nf.fieldbyname('liquido_p').asfloat then
                    begin
                      sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_nf.fieldbyname('liquido_p').asfloat);
                      sValorImp := AlinNumD(10,frmdados.Cds_nf.fieldbyname('liquido_p').asfloat);
                    end
                 else
                    begin
                      sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_nf.fieldbyname('din_p').asfloat);
                      sValorImp := AlinNumD(10,frmdados.Cds_nf.fieldbyname('din_p').asfloat);
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
                dbx_vencto.SQL.Add('Select * from Vencimentos where (codnf = '+ inttostr( cds_nf.fieldbyname('codigo').asInteger)+')');
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







            if frmdados.Cds_nf.FieldByName('parc').asInteger > 0 then
               begin
                 sayprint.Say(57,38,' Parc 1( '+frmdados.Cds_nf.fieldbyname('vctdup1').asString);
                 sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_nf.fieldbyname('vlrdup1').asfloat);
                 sValorImp := AlinNumD(10,frmdados.Cds_nf.fieldbyname('vlrdup1').asfloat);
                 sayprint.Say(57,53,' R$ '+sValorImp+' )');

                 if frmdados.Cds_nf.FieldByName('parc').asInteger > 1 then
                    begin
                      sayprint.Say(57,65,' Parc 2( '+frmdados.Cds_nf.fieldbyname('vctdup2').asString);
                      sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_nf.fieldbyname('vlrdup2').asfloat);
                      sValorImp := AlinNumD(10,frmdados.Cds_nf.fieldbyname('vlrdup2').asfloat);
                      sayprint.Say(57,78,' R$ '+sValorImp+' )');

                      if frmdados.Cds_nf.FieldByName('parc').asInteger > 2 then
                         begin
                           sayprint.Say(58,43,' Parc 3( '+frmdados.Cds_nf.fieldbyname('vctdup3').asString);
                           sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_nf.fieldbyname('vlrdup3').asfloat);
                           sValorImp := AlinNumD(10,frmdados.Cds_nf.fieldbyname('vlrdup3').asfloat);
                           sayprint.Say(58,58,' R$ '+sValorImp+' )');
                         end;
                      //endi


                    end;
                 //endi



               end;
            //endi


   }







            sayprint.Condensed(false);


            //sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_nf.fieldbyname('valdesc').asfloat);
            //sValorImp := AlinNumD(14,frmdados.Cds_nf.fieldbyname('valdesc').asfloat);

            //sayprint.Say(61,66,sValorImp);



            //sayprint.Say(62,60,'Liquido');

            //sValorImp := formatfloat('###,###,##0.00',frmdados.Cds_nf.fieldbyname('liquido').asfloat);
            //sValorImp := AlinNumD(14,frmdados.Cds_nf.fieldbyname('liquido').asfloat);

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



      if frmdados.Cds_nfp.Eof then
         break;
      //endi




  end;
//endw


end;



procedure Tfrmfecenf.edincopiasExit(Sender: TObject);
begin
try
  strtoint(edincopias.Text);
except
  edincopias.Text := inttostr(frmdados.cds_indice.fieldbyname('ncopiaso').asInteger);
  edincopias.SetFocus;
end;
end;

procedure Tfrmfecenf.ckbemailClick(Sender: TObject);
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

procedure Tfrmfecenf.bloqueiacampos;
begin

  if frmdados.Cds_nf.FieldByName('lancado').asString = 'T' then
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

procedure Tfrmfecenf.dbgvenctoCellClick(Column: TColumn);
begin
//if frmdados.Cds_nf.FieldByName('lancado').AsString = 'T' then

end;

procedure Tfrmfecenf.cbxnomenatopKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.cbxnomecfopKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.cbxnometranspKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmfecenf:=nil;
end;

procedure Tfrmfecenf.impnf;
var
  s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,sImp:string;
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
  Col, Centro,x, iLin, iItens, iCodSITB, iCodSITA:Integer;
  sDelimitador:string;
  sQtdeImp,sDescricaoImp,sCprodImp, sValorImp, sTotalImp, sUniImp, sImpcom:String;
  ftotG, ftotI, ftotE, fAliqICMS, fAliqIPI, fVlrIPI, fVlrICMS, ftotICMS,ftotIPI, ftotbcalcicms, ftotnf:real;
  sDescICMS, sDescIPI, sDescSITA, sDescSITB, sDescCF, sDescCFOP, sDescPis, sDescCofins, sDescModbc, sDescIrii, sDescVii, sDescOimp, sDescModBcSt:string;
  iColuna, iLinha, itotp, il1, il2, ic280, ic290, ic300, ic310, ic311,
  ic320, ic330, ic340, ic350, ic360, ic370, ic371, iL620, iL630, iEspaco, itotf, icols, ifolha:Integer;
  bImpRecAnt:boolean;
  aBaseAliqVal: array of string;
  sAliqReducao, sAliqIcms:string;
begin

  iColuna  := 0;
  iLinha   := 0;
  itotp    := 0;
  itotf    := 0;
  il1      := 0;
  il2      := 0;
  ic280    := 0;
  ic290    := 0;
  ic300    := 0;
  ic310    := 0;
  ic311    := 0;
  ic320    := 0;
  ic330    := 0;
  ic340    := 0;
  ic350    := 0;
  ic360    := 0;
  ic370    := 0;
  ic371    := 0;
  iEspaco  := 0;

sDataImp := datetostr(date);
sHoraImp := copy(timetostr(time),1,5);

frmdados.Cds_nfp.Active := false;
frmdados.dbx_nfp.Active := false;
frmdados.dbx_nfp.SQL.Clear;
frmdados.dbx_nfp.SQL.Add('Select * from nfp where ( codnf = '+ inttostr( frmdados.cds_nf.fieldbyname('codigo').asInteger )+') and (impnf = '+Quotedstr('T')+')');
frmdados.dbx_nfp.Active := true;
frmdados.cds_nfp.Active := true;

if frmdados.Cds_nfp.RecordCount = 0 then
   begin
     frmdados.cds_nfp.Active := false;
     frmdados.dbx_nfp.Active := false;
     frmdados.dbx_nfp.SQL.Clear;
     frmdados.dbx_nfp.SQL.Add('Select * from nfp where codnf = '+ inttostr( frmdados.cds_nf.fieldbyname('codigo').asInteger ));
     frmdados.dbx_nfp.Active := true;
     frmdados.cds_nfp.Active := true;
     exit;
   end;
//endi


bImpRecAnt := false;

frmdados.Cds_nfp.First;

//sayprint.BeginPrn;

//if frmdados.Cds_Indice.FieldByName('Linhas_NF').asInteger = 0 then
//   begin
//     sayprint.Say(0,0,chr(27)+'50')
//   end
//else
//   begin
//     sayprint.Say(0,0,chr(27)+'48');
//   end;
//endi
//sayprint.EndPrn;

ifolha := 1;

while true do
  begin

    ftotbcalcicms := 0;
    ftotICMS := 0;
    ftotIPI := 0;
    ftotG := 0;

    //SqlStMt := 'Select gen_id(Gen_nNf,1) as Valor from RDB$DATABASE;';
    //ResultSet := nil;
    //frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    //if Assigned(ResultSet) then
    //   iNNf := ResultSet.fieldbyname('valor').asInteger;
    //endi

    s1 := '';
    sayprint.BeginPrn;

    if frmdados.Cds_Indice.FieldByName('compactar_Linhas_NF').asInteger = 0 then
       sayprint.Condensed(false)
    else
       sayprint.Condensed(true);
    //endi

    frmdados.dbx_Conf_Nf.Active := false;
    frmdados.Dbx_Conf_NF.SQL.Clear;
    frmdados.Dbx_Conf_NF.SQL.Add('Select * from ConfNF where codigo = 400');
    frmdados.Dbx_Conf_NF.Active := true;
    il1 := frmdados.Dbx_Conf_NF.fieldbyname('linha').asInteger;
    frmdados.Dbx_Conf_NF.Active := false;

    frmdados.dbx_Conf_Nf.Active := false;
    frmdados.Dbx_Conf_NF.SQL.Clear;
    frmdados.Dbx_Conf_NF.SQL.Add('Select * from ConfNF where codigo = 280');
    frmdados.Dbx_Conf_NF.Active := true;
    il2 := frmdados.Dbx_Conf_NF.fieldbyname('linha').asInteger;
    frmdados.Dbx_Conf_NF.Active := false;

    itotp := il1 - il2;

    frmdados.dbx_Conf_Nf.Active := false;
    frmdados.Dbx_Conf_NF.SQL.Clear;
    frmdados.Dbx_Conf_NF.SQL.Add('Select * from ConfNF where codigo = 280');
    frmdados.Dbx_Conf_NF.Active := true;
    il1 := frmdados.Dbx_Conf_NF.fieldbyname('linha').asInteger;
    frmdados.Dbx_Conf_NF.Active := false;

    frmdados.dbx_Conf_Nf.Active := false;
    frmdados.Dbx_Conf_NF.SQL.Clear;
    frmdados.Dbx_Conf_NF.SQL.Add('Select * from ConfNF where codigo = 189');
    frmdados.Dbx_Conf_NF.Active := true;
    il2 := frmdados.Dbx_Conf_NF.fieldbyname('linha').asInteger;
    frmdados.Dbx_Conf_NF.Active := false;

    itotf := il1 - il2;

    frmdados.dbx_Conf_Nf.Active := false;
    frmdados.Dbx_Conf_NF.SQL.Clear;
    frmdados.Dbx_Conf_NF.SQL.Add('Select * from ConfNF where codigo >= 280 and codigo <= 371');
    frmdados.Dbx_Conf_NF.Active := true;

    while not frmdados.Dbx_Conf_NF.Eof do
      begin
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 280 then
           begin
             ic280 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
           end;
        //endi
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 290 then
           begin
             ic290 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
           end;
        //endi
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 300 then
           begin
             ic300 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
           end;
        //endi
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 310 then
           begin
             ic310 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
           end;
        //endi
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 311 then
           begin
             ic311 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
           end;
        //endi
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 320 then
           begin
             ic320 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
           end;
        //endi
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 330 then
           begin
             ic330 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
           end;
        //endi
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 340 then
           begin
             ic340 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
           end;
        //endi
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 350 then
           begin
             ic350 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
           end;
        //endi
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 360 then
           begin
             ic360 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
           end;
        //endi
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 370 then
           begin
             ic370 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
           end;
        //endi
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 371 then
           begin
             ic371 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
           end;
        //endi
        frmdados.Dbx_Conf_NF.Next;
      end;
    //endi

    ler_linha_col_nf(10);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 10 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            sayprint.Say(iLinha,iColuna,'');
          end;
       //end
    //endi

    ler_linha_col_nf(20);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 20 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            sayprint.Say(iLinha,iColuna,'');
          end;
       //end
    //endi

    ler_linha_col_nf(30);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 30 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            sayprint.Say(iLinha,iColuna,'');
          end;
       //end
    //endi

    ler_linha_col_nf(40);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 40 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            sayprint.Say(iLinha,iColuna,'');
          end;
       //end
    //endi

    ler_linha_col_nf(50);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 50 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            sayprint.Say(iLinha,iColuna,'');
          end;
       //end
    //endi

    ler_linha_col_nf(60);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 60 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          if rgbtiponf.ItemIndex = 0 then
             begin
               iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
               iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
               iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
               sayprint.Say(iLinha,iColuna,'X');
             end;
          //endi
       //end
    //endi

    ler_linha_col_nf(70);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 70 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          if rgbtiponf.ItemIndex = 1 then
             begin
               iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
               iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
               iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
               sayprint.Say(iLinha,iColuna,'X');
             end;
          //endi
       //end
    //endi

    ler_linha_col_nf(80);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 80 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            sayprint.Say(iLinha,iColuna,formatfloat('00000',iNNF));
          end;
       //end
    //endi

    ler_linha_col_nf(90);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 90 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            sayprint.Say(iLinha,iColuna,frmdados.cds_natopnf.fieldbyname('descricao').asString);
          end;
       //end
    //endi

    ler_linha_col_nf(91);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 91 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            sayprint.Say(iLinha,iColuna,frmdados.cds_natop.fieldbyname('cfop').asString);
          end;
       //end
    //endi

    ler_linha_col_nf(100);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 100 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            //substituiçao tributária
            sayprint.Say(iLinha,iColuna,'');
          end;
       //end
    //endi

    ler_linha_col_nf(101);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 101 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            sayprint.Say(iLinha,iColuna,frmdados.cds_clientes.fieldbyname('nome').asString);
          end;
       //end
    //endi

    ler_linha_col_nf(102);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 102 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            sayprint.Say(iLinha,iColuna,frmdados.cds_clientes.fieldbyname('cpf').asString);
          end;
       //end
    //endi

    ler_linha_col_nf(103);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 103 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            sayprint.Say(iLinha,iColuna,sDataImp);
          end;
       //end
    //endi

    ler_linha_col_nf(110);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 110 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            sayprint.Say(iLinha,iColuna,frmdados.cds_clientes.fieldbyname('Endent').asString);
          end;
       //end
    //endi

    ler_linha_col_nf(120);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 120 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            sayprint.Say(iLinha,iColuna,frmdados.cds_clientes.fieldbyname('Bairroent').asString);
          end;
       //end
    //endi

    ler_linha_col_nf(130);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 130 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            sayprint.Say(iLinha,iColuna,frmdados.cds_clientes.fieldbyname('Cepent').asString);
          end;
       //end
    //endi

    ler_linha_col_nf(140);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 140 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            //data da saída ou entrada
            sayprint.Say(iLinha,iColuna,frmdados.Cds_NF.fieldbyname('datas').asString);
          end;
       //end
    //endi

    ler_linha_col_nf(150);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 150 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            sayprint.Say(iLinha,iColuna,frmdados.cds_clientes.fieldbyname('Cidadeent').asString);
          end;
       //end
    //endi

    ler_linha_col_nf(160);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 160 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            sayprint.Say(iLinha,iColuna,frmdados.cds_clientes.fieldbyname('dddeent').asString+' '+
                                        frmdados.cds_clientes.fieldbyname('telefoneent').asString+' '+
                                        frmdados.cds_clientes.fieldbyname('dddfs').asString+' '+
                                        copy(frmdados.cds_clientes.fieldbyname('telefones').asString,1,10) );
          end;
       //end
    //endi

    ler_linha_col_nf(170);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 170 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            sayprint.Say(iLinha,iColuna,frmdados.cds_clientes.fieldbyname('Estadoent').asString);
          end;
       //end
    //endi

    ler_linha_col_nf(180);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 180 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            sayprint.Say(iLinha,iColuna,frmdados.cds_clientes.fieldbyname('ie').asString);
          end;
       //end
    //endi

    ler_linha_col_nf(181);;
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 181 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            //hora da saída ou entrada
            sayprint.Say(iLinha,iColuna,frmdados.Cds_NF.fieldbyname('horas').asString);
          end;
       //end
    //endi



    //imprime parcelas
    iCols := 1;
    iItens  := 1;
    svlrdup1 := '0';
    svlrdup2 := '0';
    svlrdup3 := '0';


    ler_linha_col_nf(189);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 189 then
       begin

         iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;;
         iLin    := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;;
         iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
         iItens  := 1;

      end;
    //end

    with frmdados do
      begin


        if ( ifolha >= strtoint( lbltotfolhanf.Caption )   ) then
           begin


             cds_vencto_NF.Active := false;
             dbx_vencto_NF.Active := false;
             dbx_vencto_NF.SQL.Clear;
             dbx_vencto_NF.SQL.Add('Select * from Vencimentos_NF where (codnf = '+ inttostr( cds_nf.fieldbyname('codigo').asInteger )+')');
             dbx_vencto_NF.Active := true;
             cds_vencto_NF.Active := true;


             while true do
               begin

                 icols := 1;

                 sNumDup1 := '';
                 sVlrDup1 := '0';
                 sVctDup1 := '';

                 sNumDup2 := '';
                 sVlrDup2 := '0';
                 sVctDup2 := '';

                 sNumDup3 := '';
                 sVlrDup3 := '0';
                 sVctDup3 := '';

                 sNumDup4 := '';
                 sVlrDup4 := '0';
                 sVctDup4 := '';

                 while (icols <= 3)do
                   begin

                     if icols = 1 then
                        begin
                          sNumDup1 := cds_vencto_NF.fieldbyname('doc').asString;
                          sVlrDup1 := floattostr(cds_vencto_nf.fieldbyname('valor').asfloat);
                          sVctDup1 := cds_vencto_NF.fieldbyname('dtv').asString;
                        end;
                     //endi

                     if iCols = 2 then
                        begin
                          sNumDup2 := cds_vencto_NF.fieldbyname('doc').asString;
                          sVlrDup2 := floattostr(cds_vencto_nf.fieldbyname('valor').asfloat);
                          sVctDup2 := cds_vencto_NF.fieldbyname('dtv').asString;
                        end;
                     //endi

                     if iCols = 3 then
                        begin
                          sNumDup3 := cds_vencto_NF.fieldbyname('doc').asString;
                          sVlrDup3 := floattostr(cds_vencto_nf.fieldbyname('valor').asfloat);
                          sVctDup3 := cds_vencto_NF.fieldbyname('dtv').asString;
                        end;
                     //endi

                     if iCols = 4 then
                        begin
                          sNumDup4 := cds_vencto_NF.fieldbyname('doc').asString;
                          sVlrDup4 := floattostr(cds_vencto_nf.fieldbyname('valor').asfloat);
                          sVctDup4 := cds_vencto_NF.fieldbyname('dtv').asString;
                        end;
                     //endi

                     icols := icols + 1;
                     Cds_Vencto_NF.Next;
                     if cds_vencto_NF.Eof then
                        break;
                     //endi


                   end;
                 //endi



                 ler_linha_col_nf(189);
                 if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 189 then
                    if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                       begin
                         iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                         iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                         sayprint.Say(iLin,iColuna,sNumDup1);
                       end;
                    //end
                 //endi

                 ler_linha_col_nf(200);
                 if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 200 then
                    if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                       begin
                         iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                         iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                         if strtofloat(tirapontos(sVlrDup1)) > 0 then
                            sayprint.Say(iLin,iColuna,AlinNumD(12,   strtofloat(tirapontos(sVlrDup1))  ));
                         //endi
                       end;
                    //end
                 //endi

                 ler_linha_col_nf(190);
                 if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 190 then
                    if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                       begin
                         iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                         iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                         sayprint.Say(iLin,iColuna, sVctDup1 );
                       end;
                    //end
                 //endi

                 ler_linha_col_nf(209);
                 if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 209 then
                    if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                       begin
                         iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                         iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                         sayprint.Say(iLin,iColuna,sNumDup2);
                       end;
                    //end
                 //endi

                 ler_linha_col_nf(220);
                 if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 220 then
                    if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                       begin
                         iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                         iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                         if strtofloat(tirapontos(sVlrDup2)) > 0 then
                            sayprint.Say(iLin,iColuna,AlinNumD(12, strtofloat(tirapontos(sVlrDup2))  ));
                         //endi
                       end;
                    //end
                 //endi

                 ler_linha_col_nf(210);
                 if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 210 then
                    if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                       begin
                         iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                         iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                         sayprint.Say(iLin,iColuna,sVctDup2);
                       end;
                    //end
                 //endi

                 ler_linha_col_nf(229);
                 if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 229 then
                    if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                       begin
                         iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                         iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                         sayprint.Say(iLin,iColuna,sNumDup3);
                       end;
                    //end
                 //endi

                ler_linha_col_nf(240);
                if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 240 then
                   if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                      begin
                        iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                        iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                        if strtofloat(tirapontos(sVlrDup3)) > 0 then
                           sayprint.Say(iLin,iColuna,AlinNumD(12,  strtofloat(tirapontos(sVlrDup3))  ));
                         //endi
                       end;
                    //end
                 //endi

                 ler_linha_col_nf(230);
                 if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 230 then
                    if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                       begin
                         iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                         iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                         sayprint.Say(iLin,iColuna,sVctDup3);
                       end;
                    //end
                 //endi

                 ler_linha_col_nf(249);
                 if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 249 then
                    if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                       begin
                         iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                         iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                         sayprint.Say(iLin,iColuna,sNumDup4);
                       end;
                    //end
                 //endi

                 ler_linha_col_nf(260);
                 if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 260 then
                    if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                       begin
                         iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                         iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                         if strtofloat(tirapontos(sVlrDup4)) > 0 then
                            sayprint.Say(iLin,iColuna,AlinNumD(12, strtofloat(tirapontos(sVlrDup4)) ));
                         //endi
                       end;
                   //end
                 //endi

                ler_linha_col_nf(250);
                if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 250 then
                   if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                      begin
                        iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                        iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                        sayprint.Say(iLin,iColuna,sVctDup4);
                      end;
                   //end
                //endi

               iLin := iLin + 1;
               if cds_vencto_NF.Eof then
                  break;
               //endi

               iItens := iItens + 1;
               if iItens >= itotf then
                  break;
               //endi

             end;
           //endw



          end
        else
          begin

            ler_linha_col_nf(189);
            if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 189 then
               if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                  begin
                    iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                    iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                    sayprint.Say(iLin,iColuna,'vide proxima nota...');
                  end;
               //end
            //endi





          end;
        //endi









      end;
    //endth











    {



    if not bavista then
       begin

         ler_linha_col_nf(189);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 189 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 sayprint.Say(iLinha,iColuna,sNumDup1);
               end;
            //end
         //endi

         ler_linha_col_nf(200);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 200 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 if strtofloat(tirapontos(sVlrDup1)) > 0 then
                    sayprint.Say(iLinha,iColuna,AlinNumD(12,   strtofloat(tirapontos(sVlrDup1))  ));
                 //endi
               end;
            //end
         //endi

         ler_linha_col_nf(190);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 190 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 sayprint.Say(iLinha,iColuna, strtofloat(tirapontos(sVctDup1)) );
               end;
            //end
         //endi

        ler_linha_col_nf(209);
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 209 then
           if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
              begin
                iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                sayprint.Say(iLinha,iColuna,sNumDup2);
              end;
           //end
        //endi

        ler_linha_col_nf(220);
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 220 then
           if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
              begin
                iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                if strtofloat(tirapontos(sVlrDup2)) > 0 then
                   sayprint.Say(iLinha,iColuna,AlinNumD(12, strtofloat(tirapontos(sVlrDup2))  ));
                //endi
              end;
           //end
        //endi

        ler_linha_col_nf(210);
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 210 then
           if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
              begin
                iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                sayprint.Say(iLinha,iColuna,sVctDup2);
              end;
           //end
        //endi

        ler_linha_col_nf(229);
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 229 then
           if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
              begin
                iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                sayprint.Say(iLinha,iColuna,sNumDup3);
              end;
           //end
        //endi

        ler_linha_col_nf(240);
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 240 then
           if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
              begin
                iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                if strtofloat(tirapontos(VlrDup3)) > 0 then
                   sayprint.Say(iLinha,iColuna,AlinNumD(12,  strtofloat(tirapontos(VlrDup3))  ));
                //endi
              end;
           //end
        //endi

        ler_linha_col_nf(230);
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 230 then
           if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
              begin
                iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                sayprint.Say(iLinha,iColuna,sVctDup3);
              end;
           //end
        //endi

        ler_linha_col_nf(249);
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 249 then
           if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
              begin
                iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                sayprint.Say(iLinha,iColuna,sNumDup4);
              end;
           //end
        //endi

        ler_linha_col_nf(260);
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 260 then
           if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
              begin
                iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                if strtofloat(tirapontos(sVlrDup4)) > 0 then
                   sayprint.Say(iLinha,iColuna,AlinNumD(12, strtofloat(tirapontos(sVlrDup4)) ));
                //endi
              end;
           //end
        //endi

        ler_linha_col_nf(250);
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 250 then
           if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
              begin
                iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                sayprint.Say(iLinha,iColuna,sVctDup4);
              end;
           //end
        //endi

       end
    else
       begin

         ler_linha_col_nf(189);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 189 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 sayprint.Say(iLinha,iColuna,'A Vista');
               end;
            //end
         //endi

         ler_linha_col_nf(200);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 200 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 if frmdados.Cds_nf.fieldbyname('din').asfloat >= frmdados.Cds_nf.fieldbyname('liquido').asfloat then
                    sayprint.Say(iLinha,iColuna,AlinNumD(12,frmdados.Cds_nf.fieldbyname('liquido').asfloat))
                 else
                    sayprint.Say(iLinha,iColuna,AlinNumD(12,frmdados.Cds_nf.fieldbyname('din').asfloat));
                 //endi
               end;
            //end
         //endi

         ler_linha_col_nf(190);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 190 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 sayprint.Say(iLinha,iColuna,'');
               end;
            //end
         //endi

        ler_linha_col_nf(209);
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 209 then
           if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
              begin
                iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                sayprint.Say(iLinha,iColuna,sNumDup1);
              end;
           //end
        //endi

        ler_linha_col_nf(220);
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 220 then
           if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
              begin
                iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                if strtofloat(tirapontos(sVlrDup1)) > 0 then
                   sayprint.Say(iLinha,iColuna,AlinNumD(12, strtofloat(tirapontos(sVlrDup1)) ));
                //endi
              end;
           //end
        //endi

        ler_linha_col_nf(210);
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 210 then
           if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
              begin
                iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                sayprint.Say(iLinha,iColuna,sVctDup1);
              end;
           //end
        //endi

        ler_linha_col_nf(229);
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 229 then
           if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
              begin
                iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                sayprint.Say(iLinha,iColuna,sNumDup2);
              end;
           //end
        //endi

        ler_linha_col_nf(240);
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 240 then
           if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
              begin
                iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                if strtofloat(tirapontos(sVlrDup2)) > 0 then
                   sayprint.Say(iLinha,iColuna,AlinNumD(12, strtofloat(tirapontos(sVlrDup2)) ));
                //endi
              end;
           //end
        //endi

        ler_linha_col_nf(230);
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 230 then
           if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
              begin
                iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                sayprint.Say(iLinha,iColuna,sVctDup2);
              end;
           //end
        //endi

        ler_linha_col_nf(249);
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 249 then
           if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
              begin
                iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                sayprint.Say(iLinha,iColuna,sNumDup3);
              end;
           //end
        //endi

        ler_linha_col_nf(260);
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 260 then
           if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
              begin
                iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                if strtofloat(tirapontos(sVlrDup3)) > 0 then
                   sayprint.Say(iLinha,iColuna,AlinNumD(12, strtofloat(tirapontos(sVlrDup3)) ));
                //endi
              end;
           //end
        //endi

        ler_linha_col_nf(250);
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 250 then
           if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
              begin
                iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                sayprint.Say(iLinha,iColuna,sVctDup3);
              end;
           //end
        //endi

       end;
    //endi

    ler_linha_col_nf(270);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 270 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            sayprint.Say(iLinha,iColuna,'');
          end;
       //end
    //endi


    //finaliza impressão de parcelas

    //provisório
    //sayprint.EndPrn;
    //exit;

    }


    ler_linha_col_nf(280);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 280 then
       begin

         iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;;
         iLin    := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;;
         iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
         iItens  := 2;

      end;
    //end



         with frmdados do
            begin
              while true do
                 begin

                   sDescCf := '';
                   sDescSITA := '';
                   sDescSITB :=  '';
                   sDescICMS := '';
                   fAliqICMS := 0;
                   sDescIPI := '';
                   fAliqIPI := 0;
                   fVlrIPI := 0;
                   sDescCfop := '';

                   sDescPis := '';
                   sDescCofins := '';
                   sDescModbc := '';
                   sDescIrii := '';
                   sDescVii := '';
                   sDescOimp := '';
                   sDescModBcSt := '';

                   //sQtdeImp      := AlinNumD3(10,Cds_nfp.fieldbyname('qtde').asfloat);
                   sQtdeImp      := AlinNumD0(10,Cds_nfp.fieldbyname('qtde').asfloat);

                   sDescricaoImp := Cds_nfp.fieldbyname('npro').asString;
                   sCprodImp     := formatfloat('00000',Cds_nfp.fieldbyname('cpro').asfloat);

                   if ckbdesconto.Checked then
                      begin
                       sValorImp     := AlinNumD(10, Cds_nfp.fieldbyname('prve').asfloat-(Cds_nfp.fieldbyname('prve').asfloat*cds_nf.fieldbyname('pdesc').asfloat/100));
                       sTotalImp     := AlinNumD(12, Cds_nfp.fieldbyname('subtotal').asfloat-(Cds_nfp.fieldbyname('subtotal').asfloat*cds_nf.fieldbyname('pdesc').asfloat/100));
                      end
                   else
                      begin
                        sValorImp     := AlinNumD(10, Cds_nfp.fieldbyname('prve').asfloat);
                        sTotalImp     := AlinNumD(12, Cds_nfp.fieldbyname('subtotal').asfloat);
                      end;
                   //endi

                   sUniImp  := Cds_nfp.fieldbyname('nUnid').asString;

                   //ftotg := ftotg + Cds_nfp.fieldbyname('subtotal').asfloat;

                   ftotg := ftotg + strtofloat(tirapontos(sTotalImp));

                   if cds_nfp.fieldbyname('codCF').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from CF Where codigo = '+ inttostr( cds_nfp.fieldbyname('codcf').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescCf := Dbx_Exec.fieldbyname('sigla').asString;

                      end;
                   //endi

                   if cds_nfp.fieldbyname('codSITA').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from SITA Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codSITA').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescSITA := Dbx_Exec.fieldbyname('sigla').asString;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codSITB').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from SITB Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codSITB').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescSITB := Dbx_Exec.fieldbyname('sigla').asString;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codICMS').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from AliqImpFis Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codICMS').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescICMS := Dbx_Exec.fieldbyname('Sigla').asString;
                        fAliqICMS := Dbx_Exec.fieldbyname('Aliquota').asfloat;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codIPI').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from IPI Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codIPI').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescIPI := Dbx_Exec.fieldbyname('sigla').asString;
                        fAliqIPI := Dbx_Exec.fieldbyname('Aliq').asfloat;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codcfop').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from NatOp Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codcfop').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescCFOP := Dbx_Exec.fieldbyname('cfop').asString;
                      end;
                   //endi

                   // 14.04.2010

                   if cds_nfp.fieldbyname('codpis').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from pis Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codpis').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescPIS := Dbx_Exec.fieldbyname('sigla').asString;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codcofins').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from Cofins Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codcofins').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescCofins := Dbx_Exec.fieldbyname('sigla').asString;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codmodbc').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from Modbc Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codmodbc').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescModbc := Dbx_Exec.fieldbyname('sigla').asString;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codIrii').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from IRII Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codIrii').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescIrii := Dbx_Exec.fieldbyname('sigla').asString;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codvii').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from VII Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codVii').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescVii := Dbx_Exec.fieldbyname('sigla').asString;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codoimp').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from oimp Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codoimp').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescOimp := Dbx_Exec.fieldbyname('sigla').asString;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codmodbcst').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from ModBcSt Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codmodbcst').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescModBcSt := Dbx_Exec.fieldbyname('sigla').asString;
                      end;
                   //endi


                   Dbx_Exec.Active := false;

                   fVlrIPI := strtofloat(tirapontos(stotalimp)) * fAliqIPI / 100;
                   if Cds_Clientes.FieldByName('reducaoicms').AsString = 'T' then
                      fVlrICMS :=  (  strtofloat(tirapontos(stotalimp)) -  strtofloat(tirapontos(stotalimp)) * cds_indice.fieldbyname('reducaoicms').asfloat / 100 )   * fAliqICMS / 100
                   else
                      fVlrICMS := strtofloat(tirapontos(stotalimp)) * fAliqICMS / 100;
                   //endi
                   if fVlrICMS > 0 then
                      begin
                        if Cds_Clientes.FieldByName('reducaoicms').AsString = 'T' then
                           ftotbcalcicms := ftotbcalcicms + (  strtofloat(tirapontos(stotalimp)) -  strtofloat(tirapontos(stotalimp)) * cds_indice.fieldbyname('reducaoicms').asfloat / 100 )
                        else
                           ftotbcalcicms := ftotbcalcicms + strtofloat(tirapontos(stotalimp));
                        //endi
                      end
                   else
                      begin

                       if cds_nfp.fieldbyname('codSITA').asInteger > 0 then
                          begin

                            Dbx_ImpRecAnt.Active := false;
                            Dbx_ImpRecAnt.SQL.Clear;
                            Dbx_ImpRecAnt.SQL.Add('Select * from ImpRecAnt where csita = '+  inttostr(  cds_nfp.fieldbyname('codSITA').asInteger ));
                            Dbx_ImpRecAnt.Active := true;
                            if Dbx_ImpRecAnt.RecordCount > 0 then
                               begin

                                 while not Dbx_ImpRecAnt.Eof do
                                    begin
                                      if Dbx_ImpRecAnt.FieldByName('csitb').asInteger = cds_nfp.fieldbyname('codSITb').asInteger then
                                         bImpRecAnt := true;
                                      //endi
                                      Dbx_ImpRecAnt.Next;
                                    end;
                                 //endw

                               end;
                            //endi

                          end;
                       //endi


                      end;
                   //endi

                   ftotICMS := ftotICMS + fVlrICMS;
                   ftotIPI := ftotIPI + fVlrIPI;

                   ler_linha_col_nf(280);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 280 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           sayprint.Say(iLin,iColuna,sCprodImp);
                         end;
                      //endi
                   //endi

                   ler_linha_col_nf(290);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 290 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           sayprint.Say(iLin,iColuna,copy(sDescricaoImp,1,iEspaco));
                         end;
                      //end
                   //endi

                   ler_linha_col_nf(300);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 300 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           //classificação fiscal
                           sayprint.Say(iLin,iColuna,sDescCf);
                         end;
                      //end
                   //endi

                   ler_linha_col_nf(310);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 310 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           //Sit Trib A
                           sayprint.Say(iLin,iColuna,sDescSITA);
                         end;
                      //end
                   //endi

                   ler_linha_col_nf(311);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 311 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           //Sit Trib B
                           sayprint.Say(iLin,iColuna,sDescSITB);
                         end;
                      //end
                   //endi

                   ler_linha_col_nf(320);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 320 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           sayprint.Say(iLin,iColuna,sUniImp);
                         end;
                      //end
                   //endi

                   ler_linha_col_nf(330);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 330 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           sayprint.Say(iLin,iColuna,sQtdeImp);
                         end;
                      //end
                   //endi

                   ler_linha_col_nf(340);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 340 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           sayprint.Say(iLin,iColuna,sValorImp);
                         end;
                      //end
                   //endi

                   ler_linha_col_nf(370);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 370 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           sayprint.Say(iLin,iColuna,sTotalImp);
                         end;
                      //end
                   //endi

                   ler_linha_col_nf(350);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 350 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           //aliq. icms
                           sayprint.Say(iLin,iColuna,sDescICMS);
                         end;
                      //end
                   //endi

                   ler_linha_col_nf(360);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 360 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           //aliq ipi
                           sayprint.Say(iLin,iColuna,sDescIPI);
                         end;
                      //end
                   //endi

                   ler_linha_col_nf(371);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 371 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           //Valor ipi
                           if fVlrIPI > 0 then
                              sayprint.Say(iLin,iColuna,AlinNumD(10,fVlrIPI))
                           else
                              sayprint.Say(iLin,iColuna,'');
                           //endi
                         end;
                      //end
                   //endi

                   iLin := iLin + 1;
                   Cds_nfp.Next;
                   if Cds_nfp.Eof then
                      break;
                   //endi

                   iItens := iItens + 1;
                   if iItens >= itotp then
                      break;
                   //endi


                 end;
              //endw


           end;
         //endth

      x:=0;

      with frmdados do
        begin

          Dbx_AliqImpFis.Active := false;
          Dbx_AliqImpFis.SQL.Clear;
          Dbx_AliqImpFis.SQL.Add('Select * from AliqImpFis where acumula = '+quotedstr('T'));
          Dbx_AliqImpFis.Active := true;

          sAliqReducao := floattostr(1-(cds_indice.fieldbyname('reducaoicms').asfloat/100));
          sAliqReducao := decimal_is_pointf(sAliqReducao);

          setlength(aBaseAliqVal,Dbx_AliqImpFis.RecordCount);
          while not Dbx_AliqImpFis.Eof do
            begin

              sAliqIcms := floattostr(Dbx_AliqImpFis.fieldbyname('Aliquota').asfloat/100);
              sAliqIcms := decimal_is_pointf(sAliqIcms);

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              if Cds_Clientes.FieldByName('reducaoicms').AsString = 'T' then
                Dbx_Exec.SQL.Add('Select sum(qtde*prve)*'+sAliqReducao+' as base, sum(qtde*prve)*'+sAliqIcms+'*'+sAliqReducao+' as vAliquota from nfp where (codicms = '+dbx_AliqImpFis.fieldbyname('codigo').asString+') and (impnf = '+quotedstr('T')+') and ( codnf = '+ inttostr( cds_nf.fieldbyname('codigo').asInteger )+')')
              else
                Dbx_Exec.SQL.Add('Select sum(qtde*prve) as base, sum(qtde*prve)*'+sAliqIcms+' as vAliquota from nfp where (codicms = '+ inttostr( dbx_AliqImpFis.fieldbyname('codigo').asInteger ) +') and (impnf = '+quotedstr('T')+') and (codnf = '+  inttostr(  cds_nf.fieldbyname('codigo').asInteger ) +')');
              //endi
              Dbx_Exec.Active := true;

              aBaseAliqVal[x] := '';
              if Dbx_Exec.fieldbyname('base').AsFloat > 0 then
                 aBaseAliqVal[x] := 'Aliq/Base/Val : '+Dbx_AliqImpFis.fieldbyname('sigla').asString+' - '+ AlinNumD(12,   Dbx_Exec.fieldbyname('base').AsFloat  )+' '+ AlinNumD(12,   Dbx_Exec.fieldbyname('vAliquota').AsFloat  );
              //endi

              x := x + 1;
              Dbx_AliqImpFis.Next;


            end;
          //endw

          if Dbx_AliqImpFis.RecordCount = 0 then
             begin
               setlength(aBaseAliqVal,2);
               aBaseAliqVal[0] := '';
               aBaseAliqVal[1] := '';
             end;
          //endi



        end;
      //endth




    if (frmdados.Cds_nfp.Eof) then
       begin

          with frmdados do
            begin
              dbx_exec.Active := false;
              dbx_exec.SQL.Clear;
              dbx_exec.SQL.Add('Select count(*) as totitens from nfp where (codnf = '+  inttostr(  cds_nf.fieldbyname('codigo').asInteger ) +') and (EouS = '+quotedstr('S')+') and (IMPNF = '+QuotedStr('T')+')');
              dbx_exec.Active := true;
              ftotI := dbx_exec.fieldbyname('totitens').asfloat;

              dbx_exec.Active := false;
              dbx_exec.SQL.Clear;
              dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from nfp where (codnf = '+  inttostr(  cds_nf.fieldbyname('codigo').asInteger ) +') and (EouS = '+quotedstr('S')+') and (IMPNF = '+QuotedStr('T')+')');
              dbx_exec.Active := true;
              //ftotG := dbx_exec.fieldbyname('totbruto').asfloat-(dbx_exec.fieldbyname('totbruto').asfloat*cds_nf.fieldbyname('pdesc').asfloat/100);
              //ftotG := dbx_exec.fieldbyname('totbruto').asfloat;


              dbx_exec.Active := false;
              dbx_exec.SQL.Clear;
              dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from nfp where (codnf = '+ inttostr( cds_nf.fieldbyname('codigo').asInteger )+') and (EouS = '+quotedstr('E')+') and (IMPNF = '+QuotedStr('T')+')');
              dbx_exec.Active := true;
              ftotE := dbx_exec.fieldbyname('totbruto').asfloat;

              dbx_exec.Active := false;

            end;
          //endw

          ftotnf := ftotipi+ftotg+frmdados.Cds_nf.fieldbyname('vlrfrete').asfloat+frmdados.Cds_nf.fieldbyname('vlrseguro').asfloat+frmdados.Cds_nf.fieldbyname('outdesp').asfloat;

          ler_linha_col_nf(400);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 400 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //base de cálculo icms com redução ou não
                  sayprint.Say(iLinha,iColuna,AlinNumD(10,ftotbcalcicms));
                end;
             //end
          //endi

          ler_linha_col_nf(410);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 410 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //valor do icms
                  sayprint.Say(iLinha,iColuna, AlinNumD(10,ftotICMS));
                end;
             //end
          //endi

          ler_linha_col_nf(411);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 411 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //base de cálculo icms subst.
                  sayprint.Say(iLinha,iColuna,  AlinNumD(10,frmdados.Cds_nf.fieldbyname('basecalcicmssub').asfloat)  );
                end;
             //end
          //endi

          ler_linha_col_nf(412);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 412 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //valor do icms subst.
                  if frmdados.Cds_nf.fieldbyname('vlricmssub').asfloat > 0 then
                     sayprint.Say(iLinha,iColuna,AlinNumD(10,frmdados.Cds_nf.fieldbyname('vlricmssub').asfloat))
                  else
                     sayprint.Say(iLinha,iColuna,'');
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(420);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 420 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  sayprint.Say(iLinha,iColuna,AlinNumD(10,ftotg));
                end;
             //end
          //endi

          ler_linha_col_nf(430);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 430 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //valor do Frete
                  if frmdados.Cds_nf.fieldbyname('vlrfrete').asfloat > 0 then
                     sayprint.Say(iLinha,iColuna, AlinNumD(10,frmdados.Cds_nf.fieldbyname('vlrfrete').asfloat))
                  else
                     sayprint.Say(iLinha,iColuna, '');
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(431);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 431 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //valor do Seguro
                  if frmdados.Cds_nf.fieldbyname('vlrseguro').asfloat > 0 then
                     sayprint.Say(iLinha,iColuna,AlinNumD(10,frmdados.Cds_nf.fieldbyname('vlrseguro').asfloat))
                  else
                     sayprint.Say(iLinha,iColuna,'');
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(432);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 432 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Outras despesa acessórias
                  if frmdados.Cds_nf.fieldbyname('outdesp').asfloat > 0 then
                     sayprint.Say(iLinha,iColuna, AlinNumD(10,frmdados.Cds_nf.fieldbyname('outdesp').asfloat))
                  else
                     sayprint.Say(iLinha,iColuna, '');
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(440);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 440 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Valor total do IPI
                  if ftotIPI > 0 then
                     sayprint.Say(iLinha,iColuna,AlinNumD(10,ftotIPI))
                  else
                     sayprint.Say(iLinha,iColuna,'');
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(450);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 450 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Valor total da nota fiscal
                  sayprint.Say(iLinha,iColuna,AlinNumD(10,ftotNF));
                end;
             //end
          //endi

          ler_linha_col_nf(460);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 460 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Nome do Transportador
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('ntransp').asString);
                end;
             //end
          //endi

          ler_linha_col_nf(470);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 470 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Frete por conta
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('fretep').asString);
                end;
             //end
          //endi

          ler_linha_col_nf(480);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 480 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Placa do Veículo
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('placavei').asString);
                end;
             //end
          //endi

          ler_linha_col_nf(490);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 490 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //UF Veículo
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('ufvei').asString);
                end;
             //end
          //endi

          ler_linha_col_nf(500);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 500 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //CNPJ do transportador
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_Transportadores.fieldbyname('CNPJ').asString);
                end;
             //end
          //endi

          ler_linha_col_nf(510);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 510 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Endereço transportador
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_Transportadores.fieldbyname('endereco').asString);
                end;
             //end
          //endi

          ler_linha_col_nf(520);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 520 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Municipio transportador
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_Transportadores.fieldbyname('cidade').asString );
                end;
             //end
          //endi

          ler_linha_col_nf(530);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 530 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //UF transportador
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_Transportadores.fieldbyname('estado').asString);
                end;
             //end
          //endi

          ler_linha_col_nf(540);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 540 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //IE transportador
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_Transportadores.fieldbyname('IE').asString);
                end;
             //end
          //endi

          ler_linha_col_nf(550);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 550 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Quantidade transportador
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('Quantidade').asString );
                end;
             //end
          //endi

          ler_linha_col_nf(560);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 560 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Espécie transportador
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('especie').asString );
                end;
             //end
          //endi

          ler_linha_col_nf(570);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 570 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Marca transportador
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('Marca').asString );
                end;
             //end
          //endi

          ler_linha_col_nf(580);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 580 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Número transportador
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('Numero').asString );
                end;
             //end
          //endi

          ler_linha_col_nf(590);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 590 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;

                  //Peso Bruto transportador
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('Pesob').asString );
                end;
             //end
          //endi

          ler_linha_col_nf(600);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 600 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Peso Líquido transportador
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('Pesol').asString );
                end;
             //end
          //endi

          ler_linha_col_nf(610);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 610 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Dados Adicionais
                  if frmdados.Cds_Indice.FieldByName('impdestda1').asInteger = 0 then
                     if frmdados.Cds_nf.fieldbyname('DA1').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA1').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA1').asString)
                     //endi
                  else
                     if aBaseAliqVal[0] <> '' then
                        sayprint.Say(iLinha,iColuna,aBaseAliqVal[0]);
                     //endif
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(611);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 611 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Dados Adicionais
                  if frmdados.Cds_Indice.FieldByName('impdestda2').asInteger = 0 then
                     if frmdados.Cds_nf.fieldbyname('DA2').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA2').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA2').asString)
                     //endi
                  else
                     if aBaseAliqVal[1] <> '' then
                        sayprint.Say(iLinha,iColuna,aBaseAliqVal[1]);
                     //endi
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(612);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 612 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Dados Adicionais
                  if frmdados.Cds_Indice.FieldByName('impdestda3').asInteger = 0 then
                     if frmdados.Cds_nf.fieldbyname('DA3').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA3').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA3').asString)
                     //endi
                  else
                     if frmdados.Cds_Clientes.FieldByName('reducaoicms').AsString = 'T' then
                         sayprint.Say(iLinha,iColuna,'Base de calculo reduzida conf. D.L. 48959/04');
                     //endi
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(613);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 613 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Dados Adicionais
                  if frmdados.Cds_Indice.FieldByName('impdestda4').asInteger = 0 then
                     if frmdados.Cds_nf.fieldbyname('DA4').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA4').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA4').asString)
                     //endi
                  else
                     if bImpRecAnt then
                        sayprint.Say(iLinha,iColuna,'Imposto recolhido antecipadamente conf. ART. 426 A,');
                     //endi
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(614);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 614 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Dados Adicionais
                  if frmdados.Cds_Indice.FieldByName('impdestda5').asInteger = 0 then
                     if frmdados.Cds_nf.fieldbyname('DA5').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA5').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA5').asString)
                     //endi
                  else
                     if bImpRecAnt then
                        sayprint.Say(iLinha,iColuna,'e sujeito a subst. tributaria conf. ART. 313E, 313G.');
                     //endi
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(615);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 615 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Dados Adicionais
                  if frmdados.Cds_Indice.FieldByName('impdestda6').asInteger = 0 then
                     if frmdados.Cds_nf.fieldbyname('DA6').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA6').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA6').asString)
                     //endi
                  else
                     sayprint.Say(iLinha,iColuna,'');
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(616);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 616 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Dados Adicionais
                  if frmdados.Cds_Indice.FieldByName('impdestda7').asInteger = 0 then
                     if frmdados.Cds_nf.fieldbyname('DA7').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA7').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA7').asString)
                     //endi
                  else
                     sayprint.Say(iLinha,iColuna,'');
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(617);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 617 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Dados Adicionais
                  if frmdados.Cds_Indice.FieldByName('impdestda8').asInteger = 0 then
                     if frmdados.Cds_nf.fieldbyname('DA8').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA8').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA8').asString)
                     //endi
                  else
                     sayprint.Say(iLinha,iColuna,'');
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(618);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 618 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  sayprint.Say(iLinha,iColuna,formatfloat('00000',iNNF));
                end;
             //end
          //endi



          with frmdados do
            begin
              tabela := 'NFE';
              cds_nfe.Append;
              cds_nfe.FieldByName('codnf').asInteger := cds_nf.fieldbyname('codigo').asInteger;
              cds_nfe.FieldByName('TOTALBSCALCICMS').asfloat := ftotbcalcicms;
              cds_nfe.FieldByName('TOTVLRICMS').asfloat := ftotICMS;
              cds_nfe.FieldByName('TOTBSCALCBSICMS').asfloat := frmdados.Cds_nf.fieldbyname('basecalcicmssub').asfloat;
              cds_nfe.FieldByName('TOTVLRBSICMS').asfloat := frmdados.Cds_nf.fieldbyname('vlricmssub').asfloat;
              cds_nfe.FieldByName('TOTVLRTOTPROD').asfloat := ftotg;
              cds_nfe.FieldByName('TOTVLRFRETE').asfloat := frmdados.Cds_nf.fieldbyname('vlrfrete').asfloat;
              cds_nfe.FieldByName('TOTVLRSEG').asfloat := frmdados.Cds_nf.fieldbyname('vlrseguro').asfloat;
              cds_nfe.FieldByName('TOTVLROUTDESP').asfloat := frmdados.Cds_nf.fieldbyname('outdesp').asfloat;
              cds_nfe.FieldByName('TOTVLRIPI').asfloat := ftotIPI;
              cds_nfe.FieldByName('TOTVLRTOTNF').asfloat := ftotNF;
              cds_nfe.FieldByName('csitnfe').asInteger := 1;
              cds_nfe.FieldByName('NNF').asInteger := iNNF;
              cds_nfe.Post;
              tabela := 'nf';
            end;
          //endi





       end
    else
       begin

          ftotnf := ftotipi+ftotg;

          ler_linha_col_nf(400);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 400 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //base de cálculo icms com redução ou não
                  sayprint.Say(iLinha,iColuna,AlinNumD(10,ftotbcalcicms));
                end;
             //end
          //endi

          ler_linha_col_nf(410);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 410 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //valor do icms
                  sayprint.Say(iLinha,iColuna, AlinNumD(10,ftotICMS));
                end;
             //end
          //endi

          ler_linha_col_nf(411);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 411 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //base de cálculo icms subst.
                  sayprint.Say(iLinha,iColuna,  ''  );
                end;
             //end
          //endi

          ler_linha_col_nf(412);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 412 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //valor do icms subst.
                  if frmdados.Cds_nf.fieldbyname('vlricmssub').asfloat > 0 then
                     sayprint.Say(iLinha,iColuna,'')
                  else
                     sayprint.Say(iLinha,iColuna,'');
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(420);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 420 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  sayprint.Say(iLinha,iColuna,AlinNumD(10,ftotg));
                end;
             //end
          //endi

          ler_linha_col_nf(430);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 430 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //valor do Frete
                  if frmdados.Cds_nf.fieldbyname('vlrfrete').asfloat > 0 then
                     sayprint.Say(iLinha,iColuna, '')
                  else
                     sayprint.Say(iLinha,iColuna, '');
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(431);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 431 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //valor do Seguro
                  if frmdados.Cds_nf.fieldbyname('vlrseguro').asfloat > 0 then
                     sayprint.Say(iLinha,iColuna,'')
                  else
                     sayprint.Say(iLinha,iColuna,'');
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(432);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 432 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Outras despesa acessórias
                  if frmdados.Cds_nf.fieldbyname('outdesp').asfloat > 0 then
                     sayprint.Say(iLinha,iColuna, '')
                  else
                     sayprint.Say(iLinha,iColuna, '');
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(440);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 440 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Valor total do IPI
                  if ftotIPI > 0 then
                     sayprint.Say(iLinha,iColuna,AlinNumD(10,ftotIPI))
                  else
                     sayprint.Say(iLinha,iColuna,'');
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(450);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 450 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Valor total da nota fiscal
                  sayprint.Say(iLinha,iColuna,AlinNumD(10,ftotNF));
                end;
             //end
          //endi

          ler_linha_col_nf(460);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 460 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Nome do Transportador
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('ntransp').asString);
                end;
             //end
          //endi

          ler_linha_col_nf(470);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 470 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Frete por conta
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('fretep').asString);
                end;
             //end
          //endi

          ler_linha_col_nf(480);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 480 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Placa do Veículo
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('placavei').asString);
                end;
             //end
          //endi

          ler_linha_col_nf(490);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 490 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //UF Veículo
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('ufvei').asString);
                end;
             //end
          //endi

          ler_linha_col_nf(500);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 500 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //CNPJ do transportador
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_Transportadores.fieldbyname('CNPJ').asString);
                end;
             //end
          //endi

          ler_linha_col_nf(510);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 510 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Endereço transportador
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_Transportadores.fieldbyname('endereco').asString);
                end;
             //end
          //endi

          ler_linha_col_nf(520);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 520 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Municipio transportador
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_Transportadores.fieldbyname('cidade').asString );
                end;
             //end
          //endi

          ler_linha_col_nf(530);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 530 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //UF transportador
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_Transportadores.fieldbyname('estado').asString);
                end;
             //end
          //endi

          ler_linha_col_nf(540);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 540 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //IE transportador
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_Transportadores.fieldbyname('IE').asString);
                end;
             //end
          //endi

          ler_linha_col_nf(550);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 550 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Quantidade transportador
                  sayprint.Say(iLinha,iColuna,'Vide Próxima Nota Fiscal...' );
                end;
             //end
          //endi

          ler_linha_col_nf(560);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 560 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Espécie transportador
                  sayprint.Say(iLinha,iColuna,'' );
                end;
             //end
          //endi

          ler_linha_col_nf(570);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 570 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Marca transportador
                  sayprint.Say(iLinha,iColuna,'' );
                end;
             //end
          //endi

          ler_linha_col_nf(580);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 580 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Número transportador
                  sayprint.Say(iLinha,iColuna,'' );
                end;
             //end
          //endi



          ler_linha_col_nf(590);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 590 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;

                  //Peso Bruto transportador
                  sayprint.Say(iLinha,iColuna,'' );
                end;
             //end
          //endi



          ler_linha_col_nf(600);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 600 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Peso Líquido transportador
                  sayprint.Say(iLinha,iColuna,'' );
                end;
             //end
          //endi




          ler_linha_col_nf(610);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 610 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Dados Adicionais
                  if frmdados.Cds_Indice.FieldByName('impdestda1').asInteger = 0 then
                     if frmdados.Cds_nf.fieldbyname('DA1').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA1').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA1').asString)
                     //endi
                  else
                     if aBaseAliqVal[0] <> '' then
                        sayprint.Say(iLinha,iColuna,aBaseAliqVal[0]);
                     //endif
                  //endi
                end;
             //end
          //endi





          ler_linha_col_nf(611);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 611 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Dados Adicionais
                  if frmdados.Cds_Indice.FieldByName('impdestda2').asInteger = 0 then
                     if frmdados.Cds_nf.fieldbyname('DA2').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA2').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA2').asString)
                     //endi
                  else
                     if aBaseAliqVal[1] <> '' then
                        sayprint.Say(iLinha,iColuna,aBaseAliqVal[1]);
                     //endi
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(612);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 612 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Dados Adicionais
                  if frmdados.Cds_Indice.FieldByName('impdestda3').asInteger = 0 then
                     if frmdados.Cds_nf.fieldbyname('DA3').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA3').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA3').asString)
                     //endi
                  else
                     if frmdados.Cds_Clientes.FieldByName('reducaoicms').AsString = 'T' then
                         sayprint.Say(iLinha,iColuna,'Base de calculo reduzida conf. D.L. 48959/04');
                     //endi
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(613);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 613 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Dados Adicionais
                  if frmdados.Cds_Indice.FieldByName('impdestda4').asInteger = 0 then
                     if frmdados.Cds_nf.fieldbyname('DA4').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA4').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA4').asString)
                     //endi
                  else
                     if bImpRecAnt then
                        sayprint.Say(iLinha,iColuna,'Imposto recolhido antecipadamente conf. ART. 426 A,');
                     //endi
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(614);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 614 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Dados Adicionais
                  if frmdados.Cds_Indice.FieldByName('impdestda5').asInteger = 0 then
                     if frmdados.Cds_nf.fieldbyname('DA5').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA5').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA5').asString)
                     //endi
                  else
                     if bImpRecAnt then
                        sayprint.Say(iLinha,iColuna,'e sujeito a subst. tributaria conf. ART. 313E, 313G.');
                     //endi
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(615);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 615 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Dados Adicionais
                  if frmdados.Cds_Indice.FieldByName('impdestda6').asInteger = 0 then
                     if frmdados.Cds_nf.fieldbyname('DA6').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA6').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA6').asString)
                     //endi
                  else
                     sayprint.Say(iLinha,iColuna,'');
                  //endi
                end;
             //end
          //endi


          ler_linha_col_nf(616);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 616 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Dados Adicionais
                  if frmdados.Cds_Indice.FieldByName('impdestda7').asInteger = 0 then
                     if frmdados.Cds_nf.fieldbyname('DA7').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA7').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA7').asString)
                     //endi
                  else
                     sayprint.Say(iLinha,iColuna,'');
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(617);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 617 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  //Dados Adicionais
                  if frmdados.Cds_Indice.FieldByName('impdestda8').asInteger = 0 then
                     if frmdados.Cds_nf.fieldbyname('DA8').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA8').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA8').asString)
                     //endi
                  else
                     sayprint.Say(iLinha,iColuna,'');
                  //endi
                end;
             //end
          //endi

          ler_linha_col_nf(618);
          if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 618 then
             if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                begin
                  iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                  iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                  iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                  sayprint.Say(iLinha,iColuna,formatfloat('00000',iNNF));
                end;
             //end
          //endi

          with frmdados do
            begin
              tabela := 'NFE';
              cds_nfe.Append;
              cds_nfe.FieldByName('codnf').asInteger := cds_nf.fieldbyname('codigo').asInteger;
              cds_nfe.FieldByName('TOTALBSCALCICMS').asfloat := ftotbcalcicms;
              cds_nfe.FieldByName('TOTVLRICMS').asfloat := ftotICMS;
              cds_nfe.FieldByName('TOTBSCALCBSICMS').asfloat := 0;
              cds_nfe.FieldByName('TOTVLRBSICMS').asfloat := 0;
              cds_nfe.FieldByName('TOTVLRTOTPROD').asfloat := ftotg;
              cds_nfe.FieldByName('TOTVLRFRETE').asfloat := 0;
              cds_nfe.FieldByName('TOTVLRSEG').asfloat := 0;
              cds_nfe.FieldByName('TOTVLROUTDESP').asfloat := 0;
              cds_nfe.FieldByName('TOTVLRIPI').asfloat := ftotIPI;
              cds_nfe.FieldByName('TOTVLRTOTNF').asfloat := ftotNF;
              cds_nfe.FieldByName('csitnfe').asInteger := 1;
              cds_nfe.FieldByName('NNF').asInteger := iNNF;
              cds_nfe.Post;
              tabela := 'nf';
            end;
          //endi


       end;
    //endi

    ler_linha_col_nf(620);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 620 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iL620 := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
          end;
       //end
    //endi

    ler_linha_col_nf(630);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 630 then
       if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
          begin
            iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
            iL630 := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
            iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
          end;
       //end
    //endi

    if frmdados.Cds_Indice.FieldByName('Linhas_NF').asInteger = 0 then
       begin
         sayprint.Say(iL620,iColuna,'');
       end
    else
       begin
         sayprint.Say(iL630,iColuna,'');
       end;
    //endi

    sayprint.EndPrn;

    if frmdados.Cds_nfp.Eof then
       break;
    //endi

    innf := innf + 1;
    ifolha := ifolha + 1;


  end;
//endw


//showmessage(inttostr(ifolha));

//SqlStMt := 'Select gen_id(Gen_nNf,'+ inttostr( ifolha ) +') as Valor from RDB$DATABASE;';
//ResultSet := nil;
//frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
//if Assigned(ResultSet) then
//   iNNf := ResultSet.fieldbyname('valor').asInteger;
//endi

try
  frmdados.Sql_Dados.Execute('SET GENERATOR GEN_nNf TO '+inttostr(innf) ,nil,@ResultSet);
except
  resultset.Free;
end;

frmdados.cds_nfp.Active := false;
frmdados.dbx_nfp.Active := false;
frmdados.dbx_nfp.SQL.Clear;
frmdados.dbx_nfp.SQL.Add('Select * from nfp where codnf = '+ inttostr( frmdados.cds_nf.fieldbyname('codigo').asInteger ));
frmdados.dbx_nfp.Active := true;
frmdados.cds_nfp.Active := true;

frmdados.Dbx_Conf_NF.Active := false;

end;


procedure tfrmfecenf.ler_linha_col_nf(icodconfnf:integer);
begin
  frmdados.dbx_Conf_Nf.Active := false;
  frmdados.Dbx_Conf_NF.SQL.Clear;
  frmdados.Dbx_Conf_NF.SQL.Add('Select * from ConfNF where codigo = '+inttostr(icodconfnf));
  frmdados.Dbx_Conf_NF.Active := true;
end;


procedure Tfrmfecenf.edida6KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edinnfKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecenf.edinnfExit(Sender: TObject);
begin
try
  strtoint(edinnf.Text);
except
  edinnf.SetFocus;
end;
end;




procedure Tfrmfecenf.impnfe;
var
log: textfile;

var
  s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,sImp:string;
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
  Col, Centro,x, iLin, iItens, iCodSITB, iCodSITA, iCodcf, iCodIcms, iCodIpi, iCodCfop, iCodPis, iCodCofins, iCodModbc, iCodIrii, iCodVii, iCodOimp, iCodModBcSt, y:Integer;
  sDelimitador:string;
  sQtdeImp,sDescricaoImp,sCprodImp, sValorImp, sTotalImp, sUniImp, sImpcom:String;
  ftotG, ftotI, ftotE, fAliqICMS, fAliqIPI, fVlrIPI, fVlrICMS, ftotICMS,ftotIPI, ftotbcalcicms, ftotnf:real;
  sDescICMS, sDescIPI, sDescSITA, sDescSITB, sDescCF, sDescCFOP, sDescPis, sDescCofins, sDescModbc, sDescIrii, sDescVii, sDescOimp, sDescModBcSt:string;
  iColuna, iLinha, itotp, il1, il2, ic280, ic290, ic300, ic310, ic311,
  ic320, ic330, ic340, ic350, ic360, ic370, ic371, iL620, iL630, iEspaco, itotf, icols, ifolha:Integer;
  bImpRecAnt:boolean;
  aBaseAliqVal: array of string;
  sAliqReducao, sAliqIcms, sVlr:string;
  iano, imes, idia:word;

  scuf, snatop, sindpag, smod, sserie, snnf, sdemi, sdsaient, stpnf, scnumfg, stpimp, semit, sfinnfe, scnpje,
  sxnomee, sxfante, senderEmit, sxlgre, snroe, sxbairroe, scmune, sxmune, sufe, scepe, scpaise, sxpaise, sfonee,
  siee, sdest, scnpjd, sxnomed, senderDest, sxlgrd, snrod, sxbairrod, scmund, sxmund, sufd, scepd,
  scpaisd, sxpaisd, sied, snitem, scprod, sxprod, scfop, sucom, sqcom, svuncom, svprodunit, sceantrib,
  sutrib, sqtrib, svuntrib, svdescunit, snlote, sqlote, sdfab, sdval, svpmc, sorigi, scsti, smodbci,
  svbci, spicmsi, svicmsi, scstp, scstc, svbc, svicms, svbcst, svst, svprod, svfrete, svseg, svdesctnf,
  svii, svipi, svpis, svcofins, svoutro, svnf, smofrete, snfat, svorig, svdescdup, svlig, sndup,
  sdvenc, svdup, scmunfg, smed, svdesc, sprod, sCST1, sCST2, sCST3, sorig, smodbc, spicms, svicmsp,
  sicms00, sicms, sPISNT, spis, sCOFINSNT, sCOFINS, simposto, sdet, sBCST, sICMSTot, stotal,
  stransp, smodfrete, svliq, sfat, sdup, scobr, snomemunicipio, ssiglauf, snomepaise, sfoned,
  scfopp, stagicms, sData, sdadosadic, sinfadfisco, sinfcpl, sinfadic, svol, sqvol, sesp, smarca,
  snvol, spesol, spesob, scrt:string;

  side, scampos, sfiltro, scampo, stabela:string;

  icufnfe, icmnfe, itotregvcnf, icpais, icufnfed, icmnfed, icpaisd, icodI, icod, iIndex, icontador:integer;

  vardir, sretorno, sarqtemp, sdestnfe:string;

  aNumDup :array of string;
  aVlrDup :array of real;
  aVctDup :array of string;
  annfDup:array of integer;
  aparteDup:array of string;


  fbc:real;


  f:TextFile; Linha:String;
  bAut :boolean;

  sncm, sindtot:string;
  bindtot:boolean;



begin

  vardir := extractfilepath(application.ExeName);

  lblmensagem.caption := 'Montando leioute NFE';
  frmfecenf.Update;

  iColuna  := 0;
  iLinha   := 0;
  itotp    := 0;
  itotf    := 0;
  il1      := 0;
  il2      := 0;
  ic280    := 0;
  ic290    := 0;
  ic300    := 0;
  ic310    := 0;
  ic311    := 0;
  ic320    := 0;
  ic330    := 0;
  ic340    := 0;
  ic350    := 0;
  ic360    := 0;
  ic370    := 0;
  ic371    := 0;
  iEspaco  := 0;

decodedate(date,iano,imes,idia);

//sDataImp := datetostr(date);
sDataImp :=  formatfloat('0000',iano)+'-'+formatfloat('00',imes)+'-'+formatfloat('00',idia);
sHoraImp := copy(timetostr(time),1,5);


frmdados.Cds_nfp.Active := false;
frmdados.dbx_nfp.Active := false;
frmdados.dbx_nfp.SQL.Clear;
frmdados.dbx_nfp.SQL.Add('Select * from nfp where ( codnf = '+ inttostr( frmdados.cds_nf.fieldbyname('codigo').asInteger )+') and (impnf = '+Quotedstr('T')+')');
frmdados.dbx_nfp.Active := true;
frmdados.cds_nfp.Active := true;

if frmdados.Cds_nfp.RecordCount = 0 then
   begin
     frmdados.cds_nfp.Active := false;
     frmdados.dbx_nfp.Active := false;
     frmdados.dbx_nfp.SQL.Clear;
     frmdados.dbx_nfp.SQL.Add('Select * from nfp where codnf = '+ inttostr( frmdados.cds_nf.fieldbyname('codigo').asInteger ));
     frmdados.dbx_nfp.Active := true;
     frmdados.cds_nfp.Active := true;
     exit;
   end;
//endi


bImpRecAnt := false;

frmdados.Cds_nfp.First;

//sayprint.BeginPrn;

//if frmdados.Cds_Indice.FieldByName('Linhas_NF').asInteger = 0 then
//   begin
//     sayprint.Say(0,0,chr(27)+'50')
//   end
//else
//   begin
//     sayprint.Say(0,0,chr(27)+'48');
//   end;
//endi
//sayprint.EndPrn;

ifolha := 1;

x := 0;

with frmdados do
    begin
      cds_vencto_NF.Active := false;
      dbx_vencto_NF.Active := false;
      dbx_vencto_NF.SQL.Clear;
      dbx_vencto_NF.SQL.Add('Select * from Vencimentos_NF where (codnf = '+ inttostr( cds_nf.fieldbyname('codigo').asInteger )+')');
      dbx_vencto_NF.Active := true;
      cds_vencto_NF.Active := true;

      itotregvcnf := cds_vencto_NF.RecordCount;

      setlength(aNumDup,cds_vencto_NF.RecordCount);
      setlength(aVlrDup,cds_vencto_NF.RecordCount);
      setlength(aVctDup,cds_vencto_NF.RecordCount);
      setlength(annfDup,cds_vencto_NF.RecordCount);
      setlength(aparteDup,cds_vencto_NF.RecordCount);

      aNumDup[x] := '';
      aVlrDup[x] := 0;
      aVctDup[x] := '';
      annfDup[x] := 0;
      aparteDup[x]:= '';

      while not cds_vencto_NF.eof do
        begin


          ler_linha_col_nf(189);
          if (frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 189) and
             (frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T')
          then
             begin
               iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
               iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
               aNumDup[x] := cds_vencto_NF.fieldbyname('doc').asString;
               annfDup[x] := cds_vencto_NF.fieldbyname('nnf').asInteger;
               aparteDup[x]:= cds_vencto_NF.fieldbyname('parte').asString;
             end
          else
             begin
               aNumDup[x] := '';
               annfDup[x] := 0;
               aparteDup[x]:= '';
             end;
          //end

          ler_linha_col_nf(200);
          if (frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 200) and
             (frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T')
          then
             begin
               iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
               iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
               aVlrDup[x] := cds_vencto_nf.fieldbyname('valor').asfloat;
             end
          else
             begin
               aVlrDup[x] := 0;
             end;
          //end


         ler_linha_col_nf(190);
         if (frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 190) and
            (frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T')
         then
            begin
              iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
              iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
              aVctDup[x] := cds_vencto_NF.fieldbyname('dtv').asString;
            end
         else
            begin
              aVctDup[x] := '';
            end;
         //end

         cds_vencto_NF.Next;

         x := x + 1;

       end;
     //endi

   end;
//endth

while true do
  begin

    ftotbcalcicms := 0;
    ftotICMS := 0;
    ftotIPI := 0;
    ftotG := 0;

    s1 := '';

    // variáveis TAG cabeçalho
    side := '';
    scuf := '';
    scmunfg := '';
    scnumfg := '';
    semit := '';
    snatop := '';
    snomemunicipio := '';
    ssiglauf := '';
    scpaise := '';
    sxpaise := '';


    with frmdados do
      begin
        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        dbx_exec.SQL.Add('Select * from config');
        dbx_exec.Active := true;

        icufnfe := dbx_exec.fieldbyname('cufnfe').asInteger;
        icmnfe := dbx_exec.fieldbyname('cmnfe').asInteger;
        icpais := dbx_exec.fieldbyname('cpais').asInteger;

        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        dbx_exec.SQL.Add('Select * from estados where codigo = '+inttostr(icufnfe));
        dbx_exec.Active := true;

        scuf := dbx_exec.fieldbyname('codufibge').asString;
        ssiglauf := dbx_exec.fieldbyname('sigla').asString;

        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        dbx_exec.SQL.Add('Select * from munic where codigo = '+inttostr(icmnfe));
        dbx_exec.Active := true;

        scmunfg := dbx_exec.fieldbyname('codmibge').asString;
        snomemunicipio := dbx_exec.fieldbyname('nome').asString ;

        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        dbx_exec.SQL.Add('Select * from pais where codigo = '+inttostr(icpais));
        dbx_exec.Active := true;

        scpaise := dbx_exec.fieldbyname('codpibge').asString;
        sxpaise := dbx_exec.fieldbyname('nome').asString;

      end;
    //endi

    if itotregvcnf > 0 then
       begin
         sindpag := '1';
       end
    else
       begin
         sindpag := '0';
       end;
    //endi

    smod := frmdados.cds_indice.fieldbyname('model').asString;
    sserie := frmdados.cds_indice.fieldbyname('serie').asString;;
    snnf := inttostr(innf);
    sdemi := sDataImp;

    try
      if  frmdados.Cds_NF.fieldbyname('datas').asString <> '' then
          begin
            decodedate(frmdados.Cds_NF.fieldbyname('datas').asDateTime,iano,imes,idia);
            sdsaient :=  formatfloat('0000',iano)+'-'+formatfloat('00',imes)+'-'+formatfloat('00',idia);
          end;
      //endi
    except
      sdsaient := '';
    end;

    stpnf := frmdados.Cds_NF.fieldbyname('tpnf').asString;
    stpimp := frmdados.Cds_Indice.fieldbyname('tpimp').asString;
    sfinnfe := frmdados.Cds_Indice.fieldbyname('finnfe').asString;;

    scnpje := frmdados.Cds_Config.fieldbyname('campo3').asString;
    scnpje := tirapontos(scnpje);
    scnpje := tiratracos(scnpje);
    scnpje := tirabarras(scnpje);

    sxnomee := frmdados.Cds_Config.fieldbyname('campo1').asString;
    sxfante := frmdados.Cds_Config.fieldbyname('campo2').asString;
    senderEmit := '';
    sxlgre := frmdados.Cds_Config.fieldbyname('campo6').asString;
    snroe := frmdados.Cds_Config.fieldbyname('nro').asString;
    sxbairroe := frmdados.Cds_Config.fieldbyname('bairro').asString;

    // qdo for operação com exterior informar 9999999
    scmune := scmunfg;

    // qdo for operação exterior infomar EXTERIOR
    sxmune := snomemunicipio;
    sufe := ssiglauf;

    scepe := frmdados.Cds_Config.fieldbyname('cep').asString;
    scepe := tirapontos(scepe);
    scepe := tiratracos(scepe);
    scepe := tirabarras(scepe);

    sfonee := frmdados.Cds_Config.fieldbyname('fone').asString;
    sfonee := tirapontos(sfonee);
    sfonee := tiratracos(sfonee);
    sfonee := tirabarras(sfonee);

    siee := frmdados.Cds_Config.fieldbyname('campo4').asString;
    siee := tirapontos(siee);
    siee := tiratracos(siee);
    siee := tirabarras(siee);

    scrt := inttostr(frmdados.Cds_Config.fieldbyname('crt').asInteger);

    sdest := '';
    scnpjd := '';
    sxnomed := '';
    senderDest := '';
    sxlgrd := '';
    snrod := '';
    sxbairrod := '';

    scmund := '';
    sxmund := '';

    sufd := '';

    scpaisd := '';
    sxpaisd := '';

    scepd := '';
    sied := '';
    sfoned := '';
    scfop := '';

    with frmdados do
      begin

        icufnfed := cds_clientes.fieldbyname('codufibge').asInteger;
        icmnfed := cds_clientes.fieldbyname('codmibge').asInteger;
        icpaisd := cds_clientes.fieldbyname('codpais').asInteger;

        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        dbx_exec.SQL.Add('Select * from estados where codigo = '+inttostr(icufnfed));
        dbx_exec.Active := true;

        sufd := dbx_exec.fieldbyname('sigla').asString;

        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        dbx_exec.SQL.Add('Select * from munic where codigo = '+inttostr(icmnfed));
        dbx_exec.Active := true;

        scmund := dbx_exec.fieldbyname('codmibge').asString;
        sxmund := dbx_exec.fieldbyname('nome').asString ;

        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        dbx_exec.SQL.Add('Select * from pais where codigo = '+inttostr(icpaisd));
        dbx_exec.Active := true;

        scpaisd := dbx_exec.fieldbyname('codpibge').asString;
        sxpaisd := dbx_exec.fieldbyname('nome').asString;

      end;
    //endi

    //if not FileExists(frmdados.Cds_Indice.fieldbyname('dirnfe').asString+'lote-'+formatfloat('00000',innf)+inttostr(ifolha)+'.xml') then
    //   begin

         sarqtemp := vardir+'lote-'+inttostr(innf)+inttostr(ifolha)+'.xml';
         sdestnfe :=  frmdados.Cds_Indice.fieldbyname('dirnfe').asString;

         AssignFile(log, sarqtemp);
         Rewrite(log, sarqtemp);
         Append(log);
         WriteLn(log, '<?xml version="1.0" encoding="UTF-8"?>');
         WriteLn(log, '<enviNFe versao="2.00" xmlns="http://www.oobj.com.br/nfe"><idLote>'+ inttostr(innf)+inttostr(ifolha) +'</idLote><NFe><infNFe>');

         frmdados.dbx_Conf_Nf.Active := false;
         frmdados.Dbx_Conf_NF.SQL.Clear;
         frmdados.Dbx_Conf_NF.SQL.Add('Select * from ConfNF where codigo = 400');
         frmdados.Dbx_Conf_NF.Active := true;
         il1 := frmdados.Dbx_Conf_NF.fieldbyname('linha').asInteger;
         frmdados.Dbx_Conf_NF.Active := false;

         frmdados.dbx_Conf_Nf.Active := false;
         frmdados.Dbx_Conf_NF.SQL.Clear;
         frmdados.Dbx_Conf_NF.SQL.Add('Select * from ConfNF where codigo = 280');
         frmdados.Dbx_Conf_NF.Active := true;
         il2 := frmdados.Dbx_Conf_NF.fieldbyname('linha').asInteger;
         frmdados.Dbx_Conf_NF.Active := false;

         itotp := il1 - il2;

         frmdados.dbx_Conf_Nf.Active := false;
         frmdados.Dbx_Conf_NF.SQL.Clear;
         frmdados.Dbx_Conf_NF.SQL.Add('Select * from ConfNF where codigo = 280');
         frmdados.Dbx_Conf_NF.Active := true;
         il1 := frmdados.Dbx_Conf_NF.fieldbyname('linha').asInteger;
         frmdados.Dbx_Conf_NF.Active := false;

         frmdados.dbx_Conf_Nf.Active := false;
         frmdados.Dbx_Conf_NF.SQL.Clear;
         frmdados.Dbx_Conf_NF.SQL.Add('Select * from ConfNF where codigo = 189');
         frmdados.Dbx_Conf_NF.Active := true;
         il2 := frmdados.Dbx_Conf_NF.fieldbyname('linha').asInteger;
         frmdados.Dbx_Conf_NF.Active := false;

         itotf := il1 - il2;

         frmdados.dbx_Conf_Nf.Active := false;
         frmdados.Dbx_Conf_NF.SQL.Clear;
         frmdados.Dbx_Conf_NF.SQL.Add('Select * from ConfNF where codigo >= 280 and codigo <= 371');
         frmdados.Dbx_Conf_NF.Active := true;

         while not frmdados.Dbx_Conf_NF.Eof do
           begin
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 280 then
                begin
                  ic280 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                end;
             //endi
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 290 then
                begin
                  ic290 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                end;
             //endi
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 300 then
                begin
                  ic300 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                end;
             //endi
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 310 then
                begin
                  ic310 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                end;
             //endi
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 311 then
                begin
                  ic311 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                end;
             //endi
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 320 then
                begin
                  ic320 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                end;
             //endi
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 330 then
                begin
                  ic330 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                end;
             //endi
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 340 then
                begin
                  ic340 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                end;
             //endi
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 350 then
                begin
                  ic350 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                end;
             //endi
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 360 then
                begin
                  ic360 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                end;
             //endi
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 370 then
                begin
                  ic370 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                end;
             //endi
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 371 then
                begin
                  ic371 := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                end;
             //endi
             frmdados.Dbx_Conf_NF.Next;
           end;
         //endi

         ler_linha_col_nf(10);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 10 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 //sayprint.Say(iLinha,iColuna,'');
               end;
            //end
         //endi

         ler_linha_col_nf(20);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 20 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 //sayprint.Say(iLinha,iColuna,'');
               end;
            //end
         //endi

         ler_linha_col_nf(30);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 30 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 //sayprint.Say(iLinha,iColuna,'');
               end;
            //end
         //endi

         ler_linha_col_nf(40);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 40 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 //sayprint.Say(iLinha,iColuna,'');
               end;
            //end
         //endi

         ler_linha_col_nf(50);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 50 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 //sayprint.Say(iLinha,iColuna,'');
               end;
            //end
         //endi

         ler_linha_col_nf(60);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 60 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               if rgbtiponf.ItemIndex = 0 then
                  begin
                    iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                    iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                    iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                    //sayprint.Say(iLinha,iColuna,'X');
                  end;
               //endi
            //end
         //endi

         ler_linha_col_nf(70);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 70 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               if rgbtiponf.ItemIndex = 1 then
                  begin
                    iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                    iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                    iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                    //sayprint.Say(iLinha,iColuna,'X');
                  end;
               //endi
            //end
         //endi

         ler_linha_col_nf(80);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 80 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 snnf := inttostr(iNNF);
               end;
            //end
         //endi

         ler_linha_col_nf(90);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 90 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 snatop := frmdados.cds_natopNF.fieldbyname('descricao').asString;
               end;
            //end
         //endi

         ler_linha_col_nf(91);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 91 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 scfop := frmdados.cds_natop.fieldbyname('cfop').asString;
                 scfop := tirapontos(scfop);
                 scfop := tiratracos(scfop);
                 scfop := tirabarras(scfop);

               end;
            //end
         //endi

         ler_linha_col_nf(100);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 100 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 //substituiçao tributária
                 //sayprint.Say(iLinha,iColuna,'');
               end;
            //end
         //endi

         ler_linha_col_nf(101);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 101 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 //sayprint.Say(iLinha,iColuna,frmdados.cds_clientes.fieldbyname('nome').asString);
                 sxnomed := frmdados.Cds_Clientes.fieldbyname('nome').asString;
               end;
            //end
         //endi

         ler_linha_col_nf(102);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 102 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 //sayprint.Say(iLinha,iColuna,frmdados.cds_clientes.fieldbyname('cpf').asString);
                 scnpjd := frmdados.Cds_Clientes.fieldbyname('cpf').asString;
                 scnpjd := tirapontos(scnpjd);
                 scnpjd := tiratracos(scnpjd);
                 scnpjd := tirabarras(scnpjd);
               end;
            //end
         //endi

         ler_linha_col_nf(103);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 103 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 //sayprint.Say(iLinha,iColuna,sDataImp);
               end;
            //end
         //endi

         ler_linha_col_nf(110);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 110 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 //sayprint.Say(iLinha,iColuna,frmdados.cds_clientes.fieldbyname('Endent').asString);
                 sxlgrd := frmdados.Cds_Clientes.fieldbyname('endent').asString;
                 snrod := frmdados.Cds_Clientes.fieldbyname('nroent').asString;
               end;
            //end
         //endi

         ler_linha_col_nf(120);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 120 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 //sayprint.Say(iLinha,iColuna,frmdados.cds_clientes.fieldbyname('Bairroent').asString);
                 sxbairrod := frmdados.Cds_Clientes.fieldbyname('bairroent').asString;
               end;
            //end
         //endi

         ler_linha_col_nf(130);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 130 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 //sayprint.Say(iLinha,iColuna,frmdados.cds_clientes.fieldbyname('Cepent').asString);
                 scepd := frmdados.cds_clientes.fieldbyname('Cepent').asString;
                 scepd := tirapontos(scepd);
                 scepd := tiratracos(scepd);
                 scepd := tirabarras(scepd);

               end;
            //end
         //endi

         ler_linha_col_nf(140);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 140 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 //data da saída ou entrada
                 //sayprint.Say(iLinha,iColuna,'');
               end;
            //end
         //endi

         ler_linha_col_nf(150);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 150 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 //sayprint.Say(iLinha,iColuna,frmdados.cds_clientes.fieldbyname('Cidadeent').asString);
               end;
            //end
         //endi

         ler_linha_col_nf(160);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 160 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 //sayprint.Say(iLinha,iColuna,frmdados.cds_clientes.fieldbyname('dddeent').asString+' '+
                 //                            frmdados.cds_clientes.fieldbyname('telefoneent').asString+' '+
                 //                            frmdados.cds_clientes.fieldbyname('dddfs').asString+' '+
                 //                            copy(frmdados.cds_clientes.fieldbyname('telefones').asString,1,10) );


                 sfoned := frmdados.cds_clientes.fieldbyname('dddeent').asString+
                           frmdados.cds_clientes.fieldbyname('telefoneent').asString;
                 sfoned := tirapontos(sfoned);
                 sfoned := tiratracos(sfoned);
                 sfoned := tirabarras(sfoned);
               end;
            //end
         //endi

         ler_linha_col_nf(170);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 170 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 //sayprint.Say(iLinha,iColuna,frmdados.cds_clientes.fieldbyname('Estadoent').asString);
               end;
            //end
         //endi

         ler_linha_col_nf(180);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 180 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 //sayprint.Say(iLinha,iColuna,frmdados.cds_clientes.fieldbyname('ie').asString);
                 sied := frmdados.cds_clientes.fieldbyname('ie').asString;
                 sied := tirapontos(sied);
                 sied := tiratracos(sied);
                 sied := tirabarras(sied);
               end;
            //end
         //endi

         ler_linha_col_nf(181);;
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 181 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 //hora da saída ou entrada
                 //sayprint.Say(iLinha,iColuna,'');
               end;
            //end
         //endi

         //imprime parcelas
         iCols := 1;
         iItens  := 1;
         svlrdup1 := '0';
         svlrdup2 := '0';
         svlrdup3 := '0';


         ler_linha_col_nf(189);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 189 then
            begin

              iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;;
              iLin    := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;;
              iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
              iItens  := 1;

           end;
         //end


        ler_linha_col_nf(280);
        if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 280 then
           begin

             iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;;
             iLin    := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;;
             iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
             iItens  := 2;

          end;
        //end

         // Inicia TAG ide
         if ( scuf     <> '' ) or (scmunfg <> '') or (snatop <> '') or (sindpag <> '') or
            ( smod     <> '' ) or (sserie  <> '') or (snnf   <> '') or (sdemi   <> '') or
            ( sdsaient <> '')  or (stpnf   <> '') or (stpimp <> '') or (sfinnfe <> '')
         then
            begin
              side :=  '<ide>'
            end;
         //endi

         if side <> '' then
            begin
              if scuf <> '' then
                 side := side + '<cUF>'+trim(scuf)+'</cUF>';
              //endi
              if scuf <> '' then
                 side := side + '<natOp>'+trim(snatop)+'</natOp>';
              //endi
              if sindPag <> '' then
                 side := side + '<indPag>'+trim(sindPag)+'</indPag>';
              //endi
              if smod <> '' then
                 side := side + '<mod>'+trim(smod)+'</mod>';
              //endi
              if sserie <> '' then
                 side := side + '<serie>'+trim(sserie)+'</serie>';
              //endi
              if snNF <> '' then
                 side := side + '<nNF>'+trim(snNF)+'</nNF>';
              //endi
              if sdEmi <> '' then
                 side := side + '<dEmi>'+trim(sdEmi)+'</dEmi>';
              //endi
              if sdSaiEnt <> '' then
                 side := side + '<dSaiEnt>'+trim(sdSaiEnt)+'</dSaiEnt>';
              //endi
              if stpNF <> '' then
                 side := side + '<tpNF>'+trim(stpNF)+'</tpNF>';
              //endi
              if scMunFG <> '' then
                 side := side + '<cMunFG>'+trim(scMunFG)+'</cMunFG>';
              //endi
              if stpImp <> '' then
                 side := side + '<tpImp>'+trim(stpImp)+'</tpImp>';
              //endi
              if sfinNFe <> '' then
                 side := side + '<finNFe>'+trim(stpImp)+'</finNFe>';
              //endi
            end;
         //endi



         //Finaliza TAG
         if side <> '' then
            begin
              side := side + '</ide>';
            end;
         //endi

         WriteLn(log, UTF8Encode( side ) );

         // Inicia TAG enderEmit
         if ( sxLgre     <> '' ) or (sNroe <> '') or (sxBairroe <> '') or (scMune <> '') or
            ( sxMune     <> '' ) or (sUFe  <> '') or (sCEPe   <> '') or (scPaise   <> '') or
            ( sxPaise <> '')  or (sFonee   <> '')
         then
            begin
              sEnderEmit :=  '<enderEmit>'
            end;
         //endi

         if sEnderEmit <> '' then
            begin
              if sxLgre <> '' then
                 sEnderEmit := sEnderEmit + '<xLgr>'+trim(sxLgre)+'</xLgr>';
              //endi
              if snroe <> '' then
                 sEnderEmit := sEnderEmit + '<nro>'+trim(snroe)+'</nro>';
              //endi
              if sxBairroe <> '' then
                 sEnderEmit := sEnderEmit + '<xBairro>'+trim(sxBairroe)+'</xBairro>';
              //endi
              if scMune <> '' then
                 sEnderEmit := sEnderEmit + '<cMun>'+trim(scMUne)+'</cMun>';
              //endi
              if sxMune <> '' then
                 sEnderEmit := sEnderEmit + '<xMun>'+trim(sxMune)+'</xMun>';
              //endi
              if sUFe <> '' then
                 sEnderEmit := sEnderEmit + '<UF>'+trim(sUFe)+'</UF>';
              //endi
              if sCEPe <> '' then
                 sEnderEmit := sEnderEmit + '<CEP>'+trim(sCEPe)+'</CEP>';
              //endi
              if scPaise <> '' then
                 sEnderEmit := sEnderEmit + '<cPais>'+trim(scPaise)+'</cPais>';
              //endi
              if sxPaise <> '' then
                 sEnderEmit := sEnderEmit + '<xPais>'+trim(sxPaise)+'</xPais>';
              //endi
              if sFonee <> '' then
                 sEnderEmit := sEnderEmit + '<fone>'+trim(sFonee)+'</fone>';
              //endi
            end;
         //endi

         //Finaliza TAG enderEmit
         if sEnderEmit <> '' then
            begin
              sEnderEmit := sEnderEmit + '</enderEmit>';
            end;
         //endi

         //Inicia TAG emit
         if ( scnpje     <> '' ) or (sxnomee <> '') or (sxfante <> '') or (senderemit <> '') or
          (sIEe <> '')
         then
            begin
              semit :=  '<emit>'
            end;
         //endi

         if semit <> '' then
            begin
              if scnpje <> '' then
                 semit := semit + '<CNPJ>'+trim(scnpje)+'</CNPJ>';
              //endi
              if sxNomee <> '' then
                 semit := semit + '<xNome>'+trim(sxNomee)+'</xNome>';
              //endi
              if sxFante <> '' then
                 semit := semit + '<xFant>'+trim(sxFante)+'</xFant>';
              //endi
              if senderEmit <> '' then
                 semit := semit + senderEmit;
              //endi
              if sIEe <> '' then
                 semit := semit + '<IE>'+trim(sIEe)+'</IE>';
              //endi

              //semit := semit + '<IEST>'+'147819503117'+'</IEST>';
              //semit := semit + '<IEST/>';

              if sCrt <> '' then
                 semit := semit + '<CRT>'+trim(sCrt)+'</CRT>';
              //endi
            end;
         //endi
         
         //Finaliza TAG
         if semit <> '' then
            begin
              semit := semit + '</emit>';
            end;
         //endi

         WriteLn(log, UTF8Encode( semit ) );


         // Inicia TAG enderDest
         if ( sxLgrd     <> '' ) or (sNrod <> '') or (sxBairrod <> '') or (scMund <> '') or
            ( sxMund     <> '' ) or (sUFd  <> '') or (sCEPd   <> '') or (scPaisd   <> '') or
            ( sxPaisd <> '')
         then
            begin
              sEnderDest :=  '<enderDest>'
            end;
         //endi

         if sEnderDest <> '' then
            begin
              if sxLgrd <> '' then
                 sEnderDest := sEnderdest + '<xLgr>'+trim(sxLgrd)+'</xLgr>';
              //endi
              if snrod <> '' then
                 sEnderDest := sEnderDest + '<nro>'+trim(snrod)+'</nro>';
              //endi
              if sxBairrod <> '' then
                 sEnderDest := sEnderDest + '<xBairro>'+trim(sxBairrod)+'</xBairro>';
              //endi
              if scMund <> '' then
                 sEnderDest := sEnderDest + '<cMun>'+trim(scMUnd)+'</cMun>';
              //endi
              if sxMund <> '' then
                 sEnderDest := sEnderDest + '<xMun>'+trim(sxMund)+'</xMun>';
              //endi
              if sUFd <> '' then
                 sEnderDest := sEnderDest + '<UF>'+trim(sUFd)+'</UF>';
              //endi
              if sCEPd <> '' then
                 sEnderDest := sEnderDest + '<CEP>'+trim(sCEPd)+'</CEP>';
              //endi
              if scPaisd <> '' then
                 sEnderDest := sEnderDest + '<cPais>'+trim(scPaisd)+'</cPais>';
              //endi
              if sxPaisd <> '' then
                 sEnderDest := sEnderDest + '<xPais>'+trim(sxPaisd)+'</xPais>';
              //endi
              if sfoned <> '' then
                 sEnderDest := sEnderDest + '<fone>'+trim(sfoned)+'</fone>';
              //endi

            end;
         //endi



         //Finaliza TAG enderEmit
         if sEnderDest <> '' then
            begin
              sEnderDest := sEnderDest + '</enderDest>';
            end;
         //endi

         //Inicia TAG dest
         if ( scnpjd      <> '' )  or
            ( sxnomed     <> '' )  or
            ( senderemit  <> '' )  or
            ( sIEd        <> '' )
         then
            begin
              sdest :=  '<dest>'
            end;
         //endi

         if sdest <> '' then
            begin
              if scnpjd <> '' then
                 sdest := sdest + '<CNPJ>'+trim(scnpjd)+'</CNPJ>';
              //endi
              if sxNomed <> '' then
                 sdest := sdest + '<xNome>'+trim(sxNomed)+'</xNome>';
              //endi
              if senderDest <> '' then
                 sdest := sdest + senderdest;
              //endi
              if sIEd <> '' then
                 sdest := sdest + '<IE>'+trim(sIEd)+'</IE>';
              //endi
            end;
         //endi

         //Finaliza TAG
         if sdest <> '' then
            begin
              sdest := sdest + '</dest>';
            end;
         //endi

         WriteLn(log, UTF8Encode( sdest ) );

         y := 1;

         with frmdados do
            begin
              while true do
                 begin


                   // variáveis TAG detalhe
                   sprod := '';
                   snitem := '';
                   scprod := '';
                   sxprod := '';
                   svicmsp := '';
                   sncm := '';
                   sindtot := '';

                   sucom := '';
                   sqcom := '';
                   svuncom := '';
                   svprodunit := '';
                   sceantrib := '';
                   sutrib := '';
                   sqtrib := '';
                   svuntrib := '';

                   svdescunit := '';
                   smed := '';
                   snlote := '';
                   sqlote := '';
                   sdfab := '';
                   sdval := '';
                   svpmc := '';
                   sorigi := '';
                   scsti := '';
                   sorig := '';
                   smodbc := '';
                   spicms := '';
                   svicmsp := '';
                   sicms00 := '';
                   stagicms := '';
                   sicms := '';
                   sPISNT := '';
                   spis := '';
                   sCOFINSNT := '';
                   sCOFINS := '';
                   simposto := '';
                   sdet := '';

                   smodbci := '';
                   svbci := '';
                   spicmsi := '';
                   svicmsi := '';
                   scstp := '';
                   scstc := '';

                   sCST1 := '';
                   sCST2 := '';
                   sCST3 := '';

                   sDescCf := '';
                   sDescSITA := '';
                   sDescSITB :=  '';
                   sDescICMS := '';
                   fAliqICMS := 0;
                   sDescIPI := '';
                   fAliqIPI := 0;
                   fVlrIPI := 0;
                   sDescCFOP := '';
                   sCFOPP := '';

                   sDescPis := '';
                   sDescCofins := '';
                   sDescModbc := '';
                   sDescIrii := '';
                   sDescVii := '';
                   sDescOimp := '';
                   sDescModBcSt := '';

                   //smodbc := cds_indice.fieldbyname('modbc').asString;
                   //scst3 := cds_indice.fieldbyname('cofinsnt').asString;
                   //scst2 := cds_indice.fieldbyname('pisnt').asString;

                   //sQtdeImp      := AlinNumD3(10,Cds_nfp.fieldbyname('qtde').asfloat);
                   sQtdeImp      := AlinNumD0(10,Cds_nfp.fieldbyname('qtde').asfloat);

                   sDescricaoImp := Cds_nfp.fieldbyname('npro').asString;
                   sCprodImp     := formatfloat('00000',Cds_nfp.fieldbyname('cpro').asfloat);

                   if ckbdesconto.Checked then
                      begin
                        sValorImp     := AlinNumD(10, Cds_nfp.fieldbyname('prve').asfloat-(Cds_nfp.fieldbyname('prve').asfloat*cds_nf.fieldbyname('pdesc').asfloat/100));
                        sTotalImp     := AlinNumD(12, Cds_nfp.fieldbyname('subtotal').asfloat-(Cds_nfp.fieldbyname('subtotal').asfloat*cds_nf.fieldbyname('pdesc').asfloat/100));
                      end
                   else
                      begin
                        sValorImp     := AlinNumD(10, Cds_nfp.fieldbyname('prve').asfloat);
                        sTotalImp     := AlinNumD(12, Cds_nfp.fieldbyname('subtotal').asfloat);
                      end;
                   //endi

                   sUniImp       := Cds_nfp.fieldbyname('nUnid').asString;

                   //ftotg := ftotg + Cds_nfp.fieldbyname('subtotal').asfloat;

                   ftotg := ftotg +  strtofloat( tirapontos( stotalimp ) );

                   sncm := Cds_nfp.fieldbyname('ncm').asString;

                   if Cds_nfp.fieldbyname('indtot').asString = 'T' then
                      sindtot := '1'
                   else
                      sindtot := '0';
                   //endi
                   
                   if cds_nfp.fieldbyname('codCF').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from CF Where codigo = '+ inttostr( cds_nfp.fieldbyname('codcf').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescCf := Dbx_Exec.fieldbyname('sigla').asString;
                        iCodCf := Dbx_Exec.fieldbyname('codigo').asInteger;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codSITA').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from SITA Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codSITA').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescSITA := Dbx_Exec.fieldbyname('sigla').asString;
                        iCodSITA := Dbx_Exec.fieldbyname('codigo').asInteger;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codSITB').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from SITB Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codSITB').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescSITB := Dbx_Exec.fieldbyname('sigla').asString;
                        iCodSITB := Dbx_Exec.fieldbyname('codigo').asInteger;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codICMS').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from AliqImpFis Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codICMS').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescICMS := Dbx_Exec.fieldbyname('Sigla').asString;
                        fAliqICMS := Dbx_Exec.fieldbyname('Aliquota').asfloat;
                        spicms    :=  formatfloat('0.00',  Dbx_Exec.fieldbyname('Aliquota').asfloat);
                        spicms    :=  decimal_is_point(spicms);
                        iCodIcms  := Dbx_Exec.fieldbyname('codigo').asInteger;

                      end;
                   //endi

                   if cds_nfp.fieldbyname('codIPI').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from IPI Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codIPI').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescIPI := Dbx_Exec.fieldbyname('Descricao').asString;
                        fAliqIPI := Dbx_Exec.fieldbyname('Aliq').asfloat;
                        iCodIPI := Dbx_Exec.fieldbyname('codigo').asInteger;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codcfop').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from NatOp Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codcfop').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescCFOP := Dbx_Exec.fieldbyname('cfop').asString;
                        iCodCFOP := Dbx_Exec.fieldbyname('codigo').asInteger;
                      end;
                   //endi

                   //14.04.2010

                   if cds_nfp.fieldbyname('codpis').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from pis Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codpis').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescPIS := Dbx_Exec.fieldbyname('sigla').asString;
                        iCodPIS := Dbx_Exec.fieldbyname('codigo').asInteger;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codcofins').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from Cofins Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codCofins').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescCofins := Dbx_Exec.fieldbyname('sigla').asString;
                        iCodCofins := Dbx_Exec.fieldbyname('codigo').asInteger;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codModBc').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from ModBc Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codmodbc').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescModBc := Dbx_Exec.fieldbyname('sigla').asString;
                        iCodModBc := Dbx_Exec.fieldbyname('codigo').asInteger;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codirii').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from Irii Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codIrii').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescIrii := Dbx_Exec.fieldbyname('sigla').asString;
                        iCodIrii := Dbx_Exec.fieldbyname('codigo').asInteger;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codvii').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from VII Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codvii').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescVii := Dbx_Exec.fieldbyname('sigla').asString;
                        iCodVii := Dbx_Exec.fieldbyname('codigo').asInteger;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codoimp').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from oimp Where codigo = '+  inttostr(  cds_nfp.fieldbyname('codoimp').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescOimp := Dbx_Exec.fieldbyname('sigla').asString;
                        iCodOimp := Dbx_Exec.fieldbyname('codigo').asInteger;
                      end;
                   //endi

                   if cds_nfp.fieldbyname('codmodbcst').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from MODBCST Where codigo = ' + inttostr(  cds_nfp.fieldbyname('CODMODBCST').asInteger ));
                        Dbx_Exec.Active := true;
                        sDescModBcSt := Dbx_Exec.fieldbyname('sigla').asString;
                        iCodModBcSt := Dbx_Exec.fieldbyname('codigo').asInteger;
                      end;
                   //endi


                   Dbx_Exec.Active := false;

                   scst3 := sDescCofins;
                   scst2 := sDescPis;

                   fVlrIPI := strtofloat(tirapontos(stotalimp)) * fAliqIPI / 100;
                   if Cds_Clientes.FieldByName('reducaoicms').AsString = 'T' then
                      begin
                        fVlrICMS :=  (  strtofloat(tirapontos(stotalimp)) -  strtofloat(tirapontos(stotalimp)) * cds_indice.fieldbyname('reducaoicms').asfloat / 100 )   * fAliqICMS / 100;
                        svICMSp := formatfloat('0.00',fVlrICMS);
                        svICMSp := decimal_is_point(svicmsp);
                      end
                   else
                      begin
                        fVlrICMS := strtofloat(tirapontos(stotalimp)) * fAliqICMS / 100;
                        svICMSp := formatfloat('0.00',fVlrICMS);
                        svICMSp := decimal_is_point(svicmsp);
                      end;
                   //endi
                   if fVlrICMS > 0 then
                      begin
                        if Cds_Clientes.FieldByName('reducaoicms').AsString = 'T' then
                           begin
                             fbc :=  (  strtofloat(tirapontos(stotalimp)) -  strtofloat(tirapontos(stotalimp)) * cds_indice.fieldbyname('reducaoicms').asfloat / 100 );
                             ftotbcalcicms := ftotbcalcicms +  fbc;
                             sVbc := formatfloat('0.00',fbc);
                             sVbc := decimal_is_point(sVbc);
                           end
                        else
                           begin
                             fbc := strtofloat(tirapontos(stotalimp));
                             ftotbcalcicms := ftotbcalcicms + fbc;
                             sVbc := formatfloat('0.00',fbc);
                             sVbc := decimal_is_point(sVbc);
                           end;
                        //endi
                      end
                   else
                      begin

                       if cds_nfp.fieldbyname('codSITA').asInteger > 0 then
                          begin

                            Dbx_ImpRecAnt.Active := false;
                            Dbx_ImpRecAnt.SQL.Clear;
                            Dbx_ImpRecAnt.SQL.Add('Select * from ImpRecAnt where csita = '+  inttostr(  cds_nfp.fieldbyname('codSITA').asInteger ));
                            Dbx_ImpRecAnt.Active := true;
                            if Dbx_ImpRecAnt.RecordCount > 0 then
                               begin

                                 while not Dbx_ImpRecAnt.Eof do
                                    begin
                                      if Dbx_ImpRecAnt.FieldByName('csitb').asInteger = cds_nfp.fieldbyname('codSITb').asInteger then
                                         bImpRecAnt := true;
                                      //endi
                                      Dbx_ImpRecAnt.Next;
                                    end;
                                 //endw

                               end;
                            //endi

                          end;
                       //endi


                      end;
                   //endi

                   ftotICMS := ftotICMS + fVlrICMS;
                   ftotIPI := ftotIPI + fVlrIPI;

                   ler_linha_col_nf(280);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 280 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           //sayprint.Say(iLin,iColuna,sCprodImp);
                           sCprod := sCprodImp;
                         end;
                      //endi
                   //endi

                   ler_linha_col_nf(290);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 290 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           //sayprint.Say(iLin,iColuna,copy(sDescricaoImp,1,iEspaco));
                           sxprod := copy(sDescricaoImp,1,iEspaco);

                           scfopp :=  sDescCFOP;
                           scfopp :=  tirapontos(scfopp);
                           scfopp :=  tiratracos(scfopp);
                           scfopp :=  tirabarras(scfopp);

                         end;
                      //end
                   //endi

                   ler_linha_col_nf(300);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 300 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           //classificação fiscal
                           //sayprint.Say(iLin,iColuna,sDescCf);
                         end;
                      //end
                   //endi

                   ler_linha_col_nf(310);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 310 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           //Sit Trib A
                           //sayprint.Say(iLin,iColuna,sDescSITA);
                           sorig := sDescSITA;
                         end;
                      //end
                   //endi

                   ler_linha_col_nf(311);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 311 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           //Sit Trib B
                           //sayprint.Say(iLin,iColuna,sDescSITB);
                           sCST1 := sDescSITB;
                         end;
                      //end
                   //endi

                   ler_linha_col_nf(320);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 320 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           //sayprint.Say(iLin,iColuna,sUniImp);
                           sUcom := sUniImp;
                           sUtrib := sUniImp;
                         end;
                      //end
                   //endi

                   ler_linha_col_nf(330);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 330 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           //sayprint.Say(iLin,iColuna,sQtdeImp);
                           sQcom := tirapontos(sQtdeImp);
                           sQcom := decimal_is_point(sQcom);

                           sQtrib := tirapontos(sQtdeImp);
                           sQtrib := decimal_is_point(sQtrib);
                         end;
                      //end
                   //endi

                   ler_linha_col_nf(340);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 340 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           //sayprint.Say(iLin,iColuna,sValorImp);
                           svUnCom := tirapontos(sValorImp);
                           svUnCom := decimal_is_point(svUnCom);

                           svUnTrib := tirapontos(sValorImp);
                           svUnTrib := decimal_is_point(svUnTrib);
                         end;
                      //end
                   //endi

                   ler_linha_col_nf(370);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 370 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           //sayprint.Say(iLin,iColuna,sTotalImp);
                           svProdunit := tirapontos(sTotalImp);
                           svProdunit := decimal_is_point(svProdunit);
                         end;
                      //end
                   //endi

                   ler_linha_col_nf(350);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 350 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           //aliq. icms
                           //sayprint.Say(iLin,iColuna,sDescICMS);

                         end;
                      //end
                   //endi

                   ler_linha_col_nf(360);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 360 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           //aliq ipi
                           //sayprint.Say(iLin,iColuna,sDescIPI);
                         end;
                      //end
                   //endi

                   ler_linha_col_nf(371);
                   if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 371 then
                      if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                         begin
                           iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                           iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                           //Valor ipi
                           if fVlrIPI > 0 then
                              begin
                                //sayprint.Say(iLin,iColuna,AlinNumD(10,fVlrIPI));
                              end
                           else
                              begin
                                //sayprint.Say(iLin,iColuna,'');
                              end;
                           //endi
                         end;
                      //end
                   //endi

                   // Inicia TAG MED
                   if ( snLote     <> '' ) or (sqLote <> '') or (sdFab <> '') or (sdVal <> '') or
                      ( svPMC     <> '' )
                   then
                      begin
                        smed :=  '<med>'
                      end;
                   //endi

                   if smed <> '' then
                      begin
                        if snLote <> '' then
                           smed := smed + '<nLote>'+trim(snLote)+'</nLote>';
                        //endi
                        if sqLote <> '' then
                           smed := smed + '<qLote>'+trim(sqLote)+'</qLote>';
                        //endi
                        if sdFab <> '' then
                           smed := smed + '<dFab>'+trim(sdFab)+'</dFab>';
                        //endi
                        if sdVal <> '' then
                           smed := smed + '<dVal>'+trim(sdVal)+'</dVal>';
                        //endi
                        if svPMC <> '' then
                           smed := smed + '<vPMC>'+trim(svPMC)+'</vPMC>';
                        //endi
                      end;
                   //endi

                   //Finaliza TAG MED
                   if smed <> '' then
                      begin
                        smed := smed + '</med>';
                      end;
                   //endi


                   //Inicia TAG PROD
                   if ( scProd     <> '' ) or
                      ( sxProd     <> '' ) or
                      ( sCFOPP     <> '' ) or
                      ( suCom      <> '' ) or
                      ( sqCom      <> '' ) or
                      ( svUnCom    <> '' ) or
                      ( svProdunit <> '' ) or
                      ( suTrib     <> '' ) or
                      ( sqTrib     <> '' ) or
                      ( svUnTrib   <> '' ) or
                      ( svDescunit <> '' ) or
                      ( smed       <> '' )
                   then
                        begin
                          sprod :=  '<prod>'
                        end;
                   //endi

                   if sprod <> '' then
                      begin
                        if scProd <> '' then
                           sprod := sprod + '<cProd>'+trim(scProd)+'</cProd>';
                        //endi

                        sprod := sprod + '<cEAN/>';

                        if sxProd <> '' then
                           sprod := sprod + '<xProd>'+trim(sxProd)+'</xProd>';
                        //endi


                        if sNcm <> '' then
                           sprod := sprod + '<NCM>'+trim(sNcm)+'</NCM>';
                        //endi
                        if sCFOPP <> '' then
                           sprod := sprod + '<CFOP>'+trim(sCFOPP)+'</CFOP>';
                        //endi
                        if suCom <> '' then
                           sprod := sprod + '<uCom>'+trim(suCom)+'</uCom>';
                        //endi
                        if sqCom <> '' then
                           sprod := sprod + '<qCom>'+trim(sqCom)+'</qCom>';
                        //endi
                        if svUnCom <> '' then
                           sprod := sprod + '<vUnCom>'+trim(svUnCom)+'</vUnCom>';
                        //endi
                        if svProdunit <> '' then
                           sprod := sprod + '<vProd>'+trim(svProdunit)+'</vProd>';
                        //endi

                        sprod := sprod + '<cEANTrib/>';

                        if suTrib <> '' then
                           sprod := sprod + '<uTrib>'+trim(suTrib)+'</uTrib>';
                        //endi
                        if sqTrib <> '' then
                           sprod := sprod + '<qTrib>'+trim(sqTrib)+'</qTrib>';
                        //endi
                        if svUnTrib <> '' then
                           sprod := sprod + '<vUnTrib>'+trim(svUnTrib)+'</vUnTrib>';
                        //endi
                        if svDescunit <> '' then
                           sprod := sprod + '<vDesc>'+trim(svDescunit)+'</vDesc>';
                        //endi

                        // informar no banco de dados
                        if sindtot <> '' then
                           sprod := sprod + '<indTot>'+trim(sindtot)+'</indTot>';
                        //endi

                        if smed <> '' then
                           sprod := sprod + smed;
                        //endi

                      end;
                   //endi

                   //Finaliza TAG
                   if sprod <> '' then
                      begin
                        sprod := sprod + '</prod>';
                      end;
                   //endi

                   // Inicia TAG ICMS00
                   //if ( sorig     <> '' ) or
                   //   ( sCST1     <> '' ) or
                   //   ( smodBC    <> '' ) or
                   //   ( svBC      <> '' ) or
                   //   ( spICMS    <> '' ) or
                   //   ( svICMSp    <> '' )
                   //then
                   //   begin
                   //     sICMS00 :=  '<ICMS00>'
                   //   end;
                   //endi

                   //if sICMS00 <> '' then
                   //   begin
                   //     if sorig <> '' then
                   //        sICMS00 := sICMS00 + '<orig>'+sorig+'</orig>';
                        //endi
                   //     if sCST1 <> '' then
                   //        sICMS00 := sICMS00 + '<CST>'+sCST1+'</CST>';
                        //endi
                   //     if smodBC <> '' then
                   //        sICMS00 := sICMS00 + '<modBC>'+smodBC+'</modBC>';
                        //endi
                   //     if svBC <> '' then
                   //        sICMS00 := sICMS00 + '<vBC>'+svBC+'</vBC>';
                        //endi
                   //     if spICMS <> '' then
                   //        sICMS00 := sICMS00 + '<pICMS>'+spICMS+'</pICMS>';
                        //endi
                   //     if svICMSp <> '' then
                   //        sICMS00 := sICMS00 + '<vICMS>'+svICMSp+'</vICMS>';
                        //endi
                   //   end;
                   //endi

                   //Finaliza TAG ICMS00
                   //if sICMS00 <> '' then
                   //   begin
                   //     sICMS00 := sICMS00 + '</ICMS00>';
                   //     sICMS :=  '<ICMS>' + sICMS00 + '</ICMS>';
                   //   end;
                   //endi

                   stagicms :=  '<ICMS'+sDescSITB+'>';

                   with frmdados do
                     begin
                       cds_tgicms.Active := false;
                       dbx_tgicms.Active := false;
                       dbx_tgicms.SQL.Clear;
                       dbx_tgicms.SQL.Add('Select * from tgicms where csitb = '+inttostr(iCodSITB)+' order by codigo' );
                       dbx_tgicms.Active := true;
                       cds_tgicms.Active := true;
                       while not cds_tgicms.Eof do
                         begin

                           stabela := cds_tgicms.fieldbyname('tabref').asString;
                           scampo := cds_tgicms.fieldbyname('camporef').asString;


                           if stabela = 'sita' then
                              begin
                                sfiltro :=  'codigo = '+inttostr(iCodSita)  ;
                                iIndex := 1;
                              end;
                           //endi
                           if stabela = 'sitb' then
                              begin
                                sfiltro :=  'codigo = '+inttostr(iCodSitb)  ;
                                iIndex := 2;
                              end;
                           //endi
                           if stabela = 'cf' then
                              begin
                                sfiltro :=  'codigo = '+inttostr(iCodcf)  ;
                                iIndex := 3;
                              end;
                           //endi
                           if stabela = 'aliqimpfis' then
                              begin
                                sfiltro :=  'codigo = '+inttostr(iCodIcms)  ;
                                iIndex := 4;
                              end;
                           //endi
                           if stabela = 'ipi' then
                              begin
                                sfiltro :=  'codigo = '+inttostr(iCodIPI)  ;
                                iIndex := 5;
                              end;
                           //endi
                           if stabela = 'natopnf' then
                              begin
                                sfiltro :=  'codigo = '+inttostr(iCodcfop)  ;
                                iIndex := 6;
                              end;
                           //endi
                           if stabela = 'pis' then
                              begin
                                sfiltro :=  'codigo = '+inttostr(iCodpis)  ;
                                iIndex := 7;
                              end;
                           //endi
                           if stabela = 'cofins' then
                              begin
                                sfiltro :=  'codigo = '+inttostr(iCodcofins)  ;
                                iIndex := 8;
                              end;
                           //endi
                           if stabela = 'modbc' then
                              begin
                                sfiltro :=  'codigo = '+inttostr(iCodmodbc)  ;
                                iIndex := 9;
                              end;
                           //endi
                           if stabela = 'irii' then
                              begin
                                sfiltro :=  'codigo = '+inttostr(iCodirii)  ;
                                iIndex := 10;
                              end;
                           //endi
                           if stabela = 'vii' then
                              begin
                                sfiltro :=  'codigo = '+inttostr(iCodvii)  ;
                                iIndex := 11;
                              end;
                           //endi
                           if stabela = 'oimp' then
                              begin
                                sfiltro :=  'codigo = '+inttostr(iCodoimp)  ;
                                iIndex := 12;
                              end;
                           //endi
                           if stabela = 'modbcst' then
                              begin
                                sfiltro :=  'codigo = '+inttostr(iCodmodbcst)  ;
                                iIndex := 13;
                              end;
                           //endi
                           if stabela = 'vbc' then
                              begin
                                stabela :=  'nfp';
                                scampo :=   'subtotal';
                                sfiltro :=  'codigo = ' + inttostr(  cds_nfp.fieldbyname('codigo').asInteger );
                                iIndex := 14;
                              end;
                           //endi
                           if stabela = 'vicms' then
                              begin
                                stabela := 'nfp p, aliqimpfis a';
                                scampo := 'p.subtotal * a.aliquota / 100';
                                sfiltro := '(p.codigo = '+  inttostr(  cds_nfp.fieldbyname('codigo').asInteger )  +') and (a.codigo = '+  inttostr(  cds_nfp.fieldbyname('codICMS').asInteger )  +')';
                                iIndex := 15;
                              end;
                           //endi
                           if stabela = 'vprodutos' then
                              begin
                                sfiltro :=  'codigo = '+inttostr(Cds_nfp.fieldbyname('cpro').asInteger);
                                iIndex := 16;
                              end;
                           //endi

                           if stabela <> '' then
                              begin

                                dbx_exec.Active := false;
                                dbx_exec.SQL.Clear;
                                dbx_exec.SQL.Add('Select '+scampo+' as vlr from '+stabela+' where ' + sfiltro   );
                                dbx_exec.Active := true;

                                sVlr := dbx_exec.fieldbyname('vlr').asString;

                                if sVlr = '' then
                                   begin
                                     sVlr := '0';
                                   end;
                                //endi


                                if ((iIndex = 4) or
                                   (iIndex = 14 ) or
                                   (iIndex = 15) or
                                   (iIndex = 16))
                                then
                                   begin
                                     sVlr := tirapontos(sVlr);
                                     sVlr := decimal_is_point(sVlr);
                                   end;
                                //endi

                                stagicms := stagicms + '<'+cds_tgicms.fieldbyname('descricao').asString+'>'+trim(sVlr)+'</'+cds_tgicms.fieldbyname('descricao').asString+'>' ;

                              end;
                           //endi



                           cds_tgicms.Next;

                         end;
                       //endw


                     end;
                   //endth

                   stagicms := stagicms +  '</ICMS'+sDescSITB+'>';

                   sICMS := '<ICMS>' + stagicms + '</ICMS>';

                   // Inicia TAG PISNT
                   if ( sCST2     <> '' ) then
                      begin
                        sPISNT :=  '<PISNT>'
                      end;
                   //endi

                   if sPISNT <> '' then
                      begin
                        sPISNT := sPISNT + '<CST>'+trim(sCST2)+'</CST>';
                      end;
                   //endi

                   //Finaliza TAG PISNT
                   if sPISNT <> '' then
                      begin
                        sPISNT := sPISNT + '</PISNT>';
                        sPIS :=  '<PIS>' + sPISNT + '</PIS>';
                      end;
                   //endi




                   // Inicia TAG COFINSNT
                   if ( sCST3     <> '' ) then
                      begin
                        sCOFINSNT :=  '<COFINSNT>'
                      end;
                   //endi

                   if sCOFINSNT <> '' then
                      begin
                        sCOFINSNT := sCOFINSNT + '<CST>'+trim(sCST3)+'</CST>';
                      end;
                   //endi

                   //Finaliza TAG COFINSNT
                   if sCOFINSNT <> '' then
                      begin
                        sCOFINSNT := sCOFINSNT + '</COFINSNT>';
                        sCOFINS :=  '<COFINS>' + sCOFINSNT + '</COFINS>';
                      end;
                   //endi

                   //Inicia TAG imposto
                   if ( sCOFINS     <> '' ) or
                      ( sPIS        <> '' ) or
                      ( sICMS       <> '' )
                   then
                        begin
                          simposto :=  '<imposto>'
                        end;
                   //endi

                   if simposto <> '' then
                      begin
                        if sICMS <> '' then
                           simposto := simposto + sICMS;
                        //endi
                        if sPIS <> '' then
                           simposto := simposto + sPis;
                        //endi
                        if sCOFINS <> '' then
                           simposto := simposto + sCOFINS;
                        //endi
                      end;
                   //endi

                   //Finaliza TAG imposto
                   if simposto <> '' then
                      begin
                        simposto := simposto + '</imposto>';
                      end;
                   //endi


                   //Inicia TAG det
                   if ( sprod     <> '' ) or
                      ( simposto  <> '' )
                   then
                        begin
                          sdet :=  '<det nItem='+ quotedstr( inttostr(y) ) +'>'
                        end;
                   //endi

                   if sdet <> '' then
                      begin
                        if sProd <> '' then
                           sdet := sdet + sProd;
                        //endi
                        if simposto <> '' then
                           sdet := sdet + simposto;
                        //endi
                      end;
                   //endi

                   //Finaliza TAG det
                   if sdet <> '' then
                      begin
                        sdet := sdet + '</det>';
                      end;
                   //endi


                   WriteLn(log, UTF8Encode( sdet ) );

                   y := y + 1;
                   iLin := iLin + 1;
                   Cds_nfp.Next;
                   if Cds_nfp.Eof then
                      break;
                   //endi

                   iItens := iItens + 1;
                   if iItens >= itotp then
                      break;
                   //endi


                 end;
              //endw


           end;
         //endth

         x:=0;

         with frmdados do
           begin

             Dbx_AliqImpFis.Active := false;
             Dbx_AliqImpFis.SQL.Clear;
             Dbx_AliqImpFis.SQL.Add('Select * from AliqImpFis where acumula = '+quotedstr('T'));
             Dbx_AliqImpFis.Active := true;

             sAliqReducao := floattostr(1-(cds_indice.fieldbyname('reducaoicms').asfloat/100));
             sAliqReducao := decimal_is_pointf(sAliqReducao);

             setlength(aBaseAliqVal,Dbx_AliqImpFis.RecordCount);
             while not Dbx_AliqImpFis.Eof do
               begin

                 sAliqIcms := floattostr(Dbx_AliqImpFis.fieldbyname('Aliquota').asfloat/100);
                 sAliqIcms := decimal_is_pointf(sAliqIcms);

                 Dbx_Exec.Active := false;
                 Dbx_Exec.SQL.Clear;
                 if Cds_Clientes.FieldByName('reducaoicms').AsString = 'T' then
                   Dbx_Exec.SQL.Add('Select sum(qtde*prve)*'+sAliqReducao+' as base, sum(qtde*prve)*'+sAliqIcms+'*'+sAliqReducao+' as vAliquota from nfp where (codicms = '+dbx_AliqImpFis.fieldbyname('codigo').asString+') and (impnf = '+quotedstr('T')+') and ( codnf = '+ inttostr( cds_nf.fieldbyname('codigo').asInteger )+')')
                 else
                   Dbx_Exec.SQL.Add('Select sum(qtde*prve) as base, sum(qtde*prve)*'+sAliqIcms+' as vAliquota from nfp where (codicms = '+ inttostr( dbx_AliqImpFis.fieldbyname('codigo').asInteger ) +') and (impnf = '+quotedstr('T')+') and (codnf = '+  inttostr(  cds_nf.fieldbyname('codigo').asInteger ) +')');
                 //endi
                 Dbx_Exec.Active := true;

                 aBaseAliqVal[x] := '';
                 if Dbx_Exec.fieldbyname('base').AsFloat > 0 then
                    begin
                      aBaseAliqVal[x] := 'Aliq/Base/Val : '+Dbx_AliqImpFis.fieldbyname('sigla').asString+' - '+ AlinNumD(12,   Dbx_Exec.fieldbyname('base').AsFloat  )+' '+ AlinNumD(12,   Dbx_Exec.fieldbyname('vAliquota').AsFloat  );
                    end;
                 //endi

                 x := x + 1;
                 Dbx_AliqImpFis.Next;


               end;
             //endw

             if Dbx_AliqImpFis.RecordCount = 0 then
                begin
                  setlength(aBaseAliqVal,2);
                  aBaseAliqVal[0] := '';
                  aBaseAliqVal[1] := '';
                end;
             //endi



           end;
         //endth


         // variáveis TAG rodapé
         svdesc := '';
         svbc := '';
         svicms := '';
         svbcst := '0.00';
         svst := '0.00';
         svprod := '';
         svfrete := '0.00';
         svseg := '0.00';
         svdesctnf := '0.00';
         svii := '0.00';
         svipi := '0.00';
         svpis := '0.00';
         svcofins := '0.00';
         svoutro := '0.00';
         svnf := '';
         smofrete := '';
         sICMSTot := '';
         stotal := '';
         smodfrete := '';

         svol := '';
         sqvol := '';
         sesp := '';
         smarca := '';
         snvol := '';
         spesol := '';
         spesob := '';



       {if (frmdados.Cds_nfp.Eof) then
          begin}

             with frmdados do
               begin
                 dbx_exec.Active := false;
                 dbx_exec.SQL.Clear;
                 dbx_exec.SQL.Add('Select count(*) as totitens from nfp where (codnf = '+  inttostr(  cds_nf.fieldbyname('codigo').asInteger ) +') and (EouS = '+quotedstr('S')+') and (IMPNF = '+QuotedStr('T')+')');
                 dbx_exec.Active := true;
                 ftotI := dbx_exec.fieldbyname('totitens').asfloat;

                 dbx_exec.Active := false;
                 dbx_exec.SQL.Clear;
                 dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from nfp where (codnf = '+  inttostr(  cds_nf.fieldbyname('codigo').asInteger ) +') and (EouS = '+quotedstr('S')+') and (IMPNF = '+QuotedStr('T')+')');
                 dbx_exec.Active := true;
                 //ftotG := dbx_exec.fieldbyname('totbruto').asfloat-(dbx_exec.fieldbyname('totbruto').asfloat*cds_nf.fieldbyname('pdesc').asfloat/100);
                 //ftotG := dbx_exec.fieldbyname('totbruto').asfloat;


                 dbx_exec.Active := false;
                 dbx_exec.SQL.Clear;
                 dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from nfp where (codnf = '+ inttostr( cds_nf.fieldbyname('codigo').asInteger )+') and (EouS = '+quotedstr('E')+') and (IMPNF = '+QuotedStr('T')+')');
                 dbx_exec.Active := true;
                 ftotE := dbx_exec.fieldbyname('totbruto').asfloat;

                 dbx_exec.Active := false;

               end;
             //endw

             ftotnf := ftotipi+ftotg+frmdados.Cds_nf.fieldbyname('vlrfrete').asfloat+frmdados.Cds_nf.fieldbyname('vlrseguro').asfloat+frmdados.Cds_nf.fieldbyname('outdesp').asfloat;

             ler_linha_col_nf(400);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 400 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //base de cálculo icms com redução ou não
                     //sayprint.Say(iLinha,iColuna,AlinNumD(10,ftotbcalcicms));
                     sVbc :=  formatfloat('0.00',ftotbcalcicms);
                     sVbc := decimal_is_point(sVbc);
                   end;
                //end
             //endi

             ler_linha_col_nf(410);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 410 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //valor do icms
                     //sayprint.Say(iLinha,iColuna, AlinNumD(10,ftotICMS));
                     sVicms :=  formatfloat('0.00',ftotICMS);
                     sVicms := decimal_is_point(sVicms);
                   end;
                //end
             //endi

             ler_linha_col_nf(411);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 411 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //base de cálculo icms subst.
                     //sayprint.Say(iLinha,iColuna,  AlinNumD(10,frmdados.Cds_nf.fieldbyname('basecalcicmssub').asfloat)  );
                     svBcst :=  formatfloat('0.00',frmdados.Cds_nf.fieldbyname('basecalcicmssub').asfloat);
                     svBcst := decimal_is_point(svBcst);
                   end;
                //end
             //endi

             ler_linha_col_nf(412);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 412 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //valor do icms subst.
                     if frmdados.Cds_nf.fieldbyname('vlricmssub').asfloat > 0 then
                        begin
                          //sayprint.Say(iLinha,iColuna,AlinNumD(10,frmdados.Cds_nf.fieldbyname('vlricmssub').asfloat));
                          sVst :=  formatfloat('0.00',frmdados.Cds_nf.fieldbyname('vlricmssub').asfloat);
                          sVst := decimal_is_point(sVst);
                        end
                     else
                        begin
                          //sayprint.Say(iLinha,iColuna,'');
                        end;
                     //endi
                   end;
                //end
             //endi

             ler_linha_col_nf(420);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 420 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //sayprint.Say(iLinha,iColuna,AlinNumD(10,ftotg));
                     sVprod :=  formatfloat('0.00',ftotg);
                     sVprod := decimal_is_point(sVprod);
                   end;
                //end
             //endi

             ler_linha_col_nf(430);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 430 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //valor do Frete
                     if frmdados.Cds_nf.fieldbyname('vlrfrete').asfloat > 0 then
                        begin
                          //sayprint.Say(iLinha,iColuna, AlinNumD(10,frmdados.Cds_nf.fieldbyname('vlrfrete').asfloat));
                          sVfrete :=  formatfloat('0.00',frmdados.Cds_nf.fieldbyname('vlrfrete').asfloat);
                          sVfrete := decimal_is_point(sVfrete);
                        end
                     else
                        begin
                          //sayprint.Say(iLinha,iColuna, '');
                        end;
                     //endi
                   end;
                //end
             //endi

             ler_linha_col_nf(431);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 431 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //valor do Seguro
                     if frmdados.Cds_nf.fieldbyname('vlrseguro').asfloat > 0 then
                        begin
                          //sayprint.Say(iLinha,iColuna,AlinNumD(10,frmdados.Cds_nf.fieldbyname('vlrseguro').asfloat));
                          sVseg :=  formatfloat('0.00',frmdados.Cds_nf.fieldbyname('vlrseguro').asfloat);
                          sVseg := decimal_is_point(sVseg);
                        end
                     else
                        begin
                          //sayprint.Say(iLinha,iColuna,'');
                        end;
                     //endi
                   end;
                //end
             //endi

             ler_linha_col_nf(432);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 432 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Outras despesa acessórias
                     if frmdados.Cds_nf.fieldbyname('outdesp').asfloat > 0 then
                        begin
                          //sayprint.Say(iLinha,iColuna, AlinNumD(10,frmdados.Cds_nf.fieldbyname('outdesp').asfloat));
                          sVoutro :=  formatfloat('0.00',frmdados.Cds_nf.fieldbyname('outdesp').asfloat);
                          sVoutro := decimal_is_point(sVoutro);
                        end
                     else
                        begin
                          //sayprint.Say(iLinha,iColuna, '');
                        end;
                     //endi
                   end;
                //end
             //endi

             ler_linha_col_nf(440);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 440 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Valor total do IPI
                     if ftotIPI > 0 then
                        begin
                          //sayprint.Say(iLinha,iColuna,AlinNumD(10,ftotIPI));
                          sVIPI :=  formatfloat('0.00',ftotIPI);
                          sVipi := decimal_is_point(sVipi);
                        end
                     else
                        begin
                          //sayprint.Say(iLinha,iColuna,'');
                        end;
                     //endi
                   end;
                //end
             //endi

             ler_linha_col_nf(450);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 450 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Valor total da nota fiscal
                     //sayprint.Say(iLinha,iColuna,AlinNumD(10,ftotNF));
                     sVNF :=  formatfloat('0.00',ftotNF);
                     sVNF := decimal_is_point(sVNF);
                   end;
                //end
             //endi

             ler_linha_col_nf(460);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 460 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Nome do Transportador
                     //sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('ntransp').asString);
                   end;
                //end
             //endi

             ler_linha_col_nf(470);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 470 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Frete por conta
                     //sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('fretep').asString);
                     if frmdados.Cds_nf.fieldbyname('fretep').asInteger = 1 then
                        sModFrete := '0';
                     //endi
                     if frmdados.Cds_nf.fieldbyname('fretep').asInteger = 2 then
                        sModFrete := '1';
                     //endi

                   end;
                //end
             //endi

             ler_linha_col_nf(480);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 480 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Placa do Veículo
                     //sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('placavei').asString);
                   end;
                //end
             //endi

             ler_linha_col_nf(490);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 490 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //UF Veículo
                     //sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('ufvei').asString);
                   end;
                //end
             //endi

             ler_linha_col_nf(500);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 500 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //CNPJ do transportador
                     //sayprint.Say(iLinha,iColuna,frmdados.Cds_Transportadores.fieldbyname('CNPJ').asString);
                   end;
                //end
             //endi

             ler_linha_col_nf(510);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 510 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Endereço transportador
                     //sayprint.Say(iLinha,iColuna,frmdados.Cds_Transportadores.fieldbyname('endereco').asString);
                   end;
                //end
             //endi

             ler_linha_col_nf(520);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 520 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Municipio transportador
                     //sayprint.Say(iLinha,iColuna,frmdados.Cds_Transportadores.fieldbyname('cidade').asString );
                   end;
                //end
             //endi

             ler_linha_col_nf(530);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 530 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //UF transportador
                     //sayprint.Say(iLinha,iColuna,frmdados.Cds_Transportadores.fieldbyname('estado').asString);
                   end;
                //end
             //endi

             ler_linha_col_nf(540);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 540 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //IE transportador
                     //sayprint.Say(iLinha,iColuna,frmdados.Cds_Transportadores.fieldbyname('IE').asString);
                   end;
                //end
             //endi

             ler_linha_col_nf(550);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 550 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Quantidade transportador
                     //sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('Quantidade').asString );
                     sqvol := frmdados.Cds_nf.fieldbyname('Quantidade').asString;

                   end;
                //end
             //endi

             ler_linha_col_nf(560);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 560 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Espécie transportador
                     //sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('especie').asString );
                     sesp := frmdados.Cds_nf.fieldbyname('especie').asString;

                   end;
                //end
             //endi

             ler_linha_col_nf(570);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 570 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Marca transportador
                     //sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('Marca').asString );
                     smarca := frmdados.Cds_nf.fieldbyname('Marca').asString ;

                   end;
                //end
             //endi

             ler_linha_col_nf(580);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 580 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Número transportador
                     //sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('Numero').asString );
                     snvol := frmdados.Cds_nf.fieldbyname('Numero').asString;

                   end;
                //end
             //endi

             ler_linha_col_nf(590);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 590 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;

                     //Peso Bruto transportador
                     //sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('Pesob').asString );

                     spesob := frmdados.Cds_nf.fieldbyname('Pesob').asString ;

                   end;
                //end
             //endi

             ler_linha_col_nf(600);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 600 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Peso Líquido transportador
                     //sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('Pesol').asString );
                     spesol := frmdados.Cds_nf.fieldbyname('Pesol').asString ;


                   end;
                //end
             //endi

             sDadosAdic := '';


             ler_linha_col_nf(610);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 610 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Dados Adicionais
                     if frmdados.Cds_Indice.FieldByName('impdestda1').asInteger = 0 then
                        if frmdados.Cds_nf.fieldbyname('DA1').asString <> '' then
                           begin
                             //sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA1').asString)
                             sDadosAdic := sDadosAdic + frmdados.Cds_nf.fieldbyname('DA1').asString;
                           end
                        else
                           begin
                             //sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA1').asString)
                             sDadosAdic := sDadosAdic + frmdados.Cds_Indice.fieldbyname('DA1').asString;
                           end
                        //endi
                     else
                        if aBaseAliqVal[0] <> '' then
                           begin
                             //sayprint.Say(iLinha,iColuna,aBaseAliqVal[0]);
                             sDadosAdic := sDadosAdic + aBaseAliqVal[0];
                           end
                        //endif
                     //endi
                   end;
                //end
             //endi

             ler_linha_col_nf(611);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 611 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Dados Adicionais
                     if frmdados.Cds_Indice.FieldByName('impdestda2').asInteger = 0 then
                        if frmdados.Cds_nf.fieldbyname('DA2').asString <> '' then
                           begin
                             //sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA2').asString);
                             sDadosAdic := sDadosAdic + ' '+frmdados.Cds_nf.fieldbyname('DA2').asString;
                           end
                        else
                           begin
                             //sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA2').asString);
                             sDadosAdic := sDadosAdic + ' '+ frmdados.Cds_Indice.fieldbyname('DA2').asString;
                           end
                        //endi
                     else
                        if aBaseAliqVal[1] <> '' then
                           begin
                             //sayprint.Say(iLinha,iColuna,aBaseAliqVal[1]);
                             sDadosAdic := sDadosAdic + ' '+ aBaseAliqVal[1];
                           end
                        //endi
                     //endi
                   end;
                //end
             //endi

             ler_linha_col_nf(612);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 612 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Dados Adicionais
                     if frmdados.Cds_Indice.FieldByName('impdestda3').asInteger = 0 then
                        if frmdados.Cds_nf.fieldbyname('DA3').asString <> '' then
                           begin
                             //sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA3').asString)
                             sDadosAdic := sDadosAdic + ' '+ frmdados.Cds_nf.fieldbyname('DA3').asString;
                           end
                        else
                          begin
                            //sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA3').asString)
                            sDadosAdic := sDadosAdic + ' '+ frmdados.Cds_Indice.fieldbyname('DA3').asString;
                          end
                        //endi
                     else
                        if frmdados.Cds_Clientes.FieldByName('reducaoicms').AsString = 'T' then
                           begin
                             //sayprint.Say(iLinha,iColuna,'Base de calculo reduzida conf. D.L. 48959/04');
                             sDadosAdic := sDadosAdic + ' Base de calculo reduzida conf. D.L. 48959/04';
                           end
                        //endi
                     //endi
                   end;
                //end
             //endi

             ler_linha_col_nf(613);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 613 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Dados Adicionais
                     if frmdados.Cds_Indice.FieldByName('impdestda4').asInteger = 0 then
                        if frmdados.Cds_nf.fieldbyname('DA4').asString <> '' then
                           begin
                             //sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA4').asString)
                             sDadosAdic := sDadosAdic + ' '+ frmdados.Cds_nf.fieldbyname('DA4').asString;
                           end
                        else
                           begin
                             //sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA4').asString)
                             sDadosAdic := sDadosAdic + ' '+ frmdados.Cds_Indice.fieldbyname('DA4').asString;
                           end
                        //endi
                     else
                        if bImpRecAnt then
                           begin
                             //sayprint.Say(iLinha,iColuna,'Imposto recolhido antecipadamente conf. ART. 426 A,');
                             sDadosAdic := sDadosAdic + ' Imposto recolhido antecipadamente conf. ART. 426 A,';
                           end
                        //endi
                     //endi
                   end;
               //end
             //endi

             ler_linha_col_nf(614);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 614 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Dados Adicionais
                     if frmdados.Cds_Indice.FieldByName('impdestda5').asInteger = 0 then
                        if frmdados.Cds_nf.fieldbyname('DA5').asString <> '' then
                           begin
                             //sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA5').asString);
                             sDadosAdic := sDadosAdic + ' '+ frmdados.Cds_nf.fieldbyname('DA5').asString;
                           end
                        else
                           begin
                             //sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA5').asString)
                             sDadosAdic := sDadosAdic + ' '+ frmdados.Cds_Indice.fieldbyname('DA5').asString;
                           end
                        //endi
                     else
                        if bImpRecAnt then
                           begin
                             //sayprint.Say(iLinha,iColuna,'e sujeito a subst. tributaria conf. ART. 313E, 313G.');
                             sDadosAdic := sDadosAdic + ' e sujeito a subst. tributaria conf. ART. 313E, 313G.';
                           end;
                        //endi
                     //endi
                   end;
                //end
             //endi

             ler_linha_col_nf(615);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 615 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Dados Adicionais
                     if frmdados.Cds_Indice.FieldByName('impdestda6').asInteger = 0 then
                        if frmdados.Cds_nf.fieldbyname('DA6').asString <> '' then
                           begin
                             //sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA6').asString)
                             sDadosAdic := sDadosAdic + ' '+ frmdados.Cds_nf.fieldbyname('DA6').asString;
                           end
                        else
                           begin
                             //sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA6').asString)
                             sDadosAdic := sDadosAdic + ' '+ frmdados.Cds_Indice.fieldbyname('DA6').asString;
                           end
                        //endi
                     else
                        begin
                          //sayprint.Say(iLinha,iColuna,'');
                          //sDadosAdic := sDadosAdic +
                        end;
                     //endi
                   end;
                //end
             //endi

             ler_linha_col_nf(616);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 616 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Dados Adicionais
                     if frmdados.Cds_Indice.FieldByName('impdestda7').asInteger = 0 then
                        if frmdados.Cds_nf.fieldbyname('DA7').asString <> '' then
                           begin
                             //sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA7').asString)
                             sDadosAdic := sDadosAdic + ' '+ frmdados.Cds_nf.fieldbyname('DA7').asString;
                           end
                        else
                           begin
                             //sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA7').asString)
                             sDadosAdic := sDadosAdic + ' '+ frmdados.Cds_Indice.fieldbyname('DA7').asString;
                           end
                        //endi
                     else
                        begin
                          //sayprint.Say(iLinha,iColuna,'');
                          //sDadosAdic := sDadosAdic +
                        end;
                     //endi
                   end;
                //end
             //endi

             ler_linha_col_nf(617);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 617 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //Dados Adicionais
                     if frmdados.Cds_Indice.FieldByName('impdestda8').asInteger = 0 then
                        if frmdados.Cds_nf.fieldbyname('DA8').asString <> '' then
                           begin
                             //sayprint.Say(iLinha,iColuna,frmdados.Cds_nf.fieldbyname('DA8').asString)
                             sDadosAdic := sDadosAdic + ' '+ frmdados.Cds_nf.fieldbyname('DA8').asString;
                           end
                        else
                           begin
                             //sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA8').asString)
                             sDadosAdic := sDadosAdic + ' '+ frmdados.Cds_Indice.fieldbyname('DA8').asString;
                           end
                        //endi
                     else
                        begin
                          //sayprint.Say(iLinha,iColuna,'');
                          //sDadosAdic := sDadosAdic +
                        end;
                     //endi
                   end;
                //end
             //endi

             ler_linha_col_nf(618);
             if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 618 then
                if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
                   begin
                     iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                     iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                     iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                     //sayprint.Say(iLinha,iColuna,formatfloat('00000',iNNF));
                   end;
                //end
             //endi



             with frmdados do
               begin

                 cds_nfe.Active := false;
                 dbx_nfe.Active := false;
                 dbx_nfe.SQL.Clear;
                 dbx_nfe.SQL.Add('Select * from nfe where nnf = '+inttostr(iNNF)  );
                 dbx_nfe.Active := true;
                 cds_nfe.Active := true;

                 if cds_nfe.RecordCount > 0 then
                    begin

                      if (Cds_Indice.fieldbyname('rdirnfe').asString <> '') and
                         (fileexists(Cds_Indice.fieldbyname('rdirnfe').asString+'respLote-'+Cds_NFE.fieldbyname('lotenfe').asString+'.xml') )
                      then
                         begin
                           WinExec(pchar('copy '+Cds_Indice.fieldbyname('rdirnfe').asString+'respLote-'+Cds_NFE.fieldbyname('lotenfe').asString+'*.xml '+vardir+'retornos'), SW_Hide);
                           WinExec(pchar('del '+Cds_Indice.fieldbyname('rdirnfe').asString+'respLote-'+Cds_NFE.fieldbyname('lotenfe').asString+'*.xml'), SW_Hide);
                         end;
                      //endi

                    end;
                 //endi

                 tabela := 'NFE';
                 cds_nfe.Append;
                 cds_nfe.FieldByName('codnf').asInteger := cds_nf.fieldbyname('codigo').asInteger;
                 cds_nfe.FieldByName('TOTALBSCALCICMS').asfloat := ftotbcalcicms;
                 cds_nfe.FieldByName('TOTVLRICMS').asfloat := ftotICMS;
                 cds_nfe.FieldByName('TOTBSCALCBSICMS').asfloat := frmdados.Cds_nf.fieldbyname('basecalcicmssub').asfloat;
                 cds_nfe.FieldByName('TOTVLRBSICMS').asfloat := frmdados.Cds_nf.fieldbyname('vlricmssub').asfloat;
                 cds_nfe.FieldByName('TOTVLRTOTPROD').asfloat := ftotg;
                 cds_nfe.FieldByName('TOTVLRFRETE').asfloat := frmdados.Cds_nf.fieldbyname('vlrfrete').asfloat;
                 cds_nfe.FieldByName('TOTVLRSEG').asfloat := frmdados.Cds_nf.fieldbyname('vlrseguro').asfloat;
                 cds_nfe.FieldByName('TOTVLROUTDESP').asfloat := frmdados.Cds_nf.fieldbyname('outdesp').asfloat;
                 cds_nfe.FieldByName('TOTVLRIPI').asfloat := ftotIPI;
                 cds_nfe.FieldByName('TOTVLRTOTNF').asfloat := ftotNF;
                 cds_nfe.FieldByName('csitnfe').asInteger := 1;
                 cds_nfe.FieldByName('NNF').asInteger := iNNF;
                 cds_nfe.FieldByName('lotenfe').asString := inttostr(innf)+inttostr(ifolha);
                 cds_nfe.Post;
                 tabela := 'nf';
               end;
             //endth










       // Inicia TAG ICMStot
       if ( svBC       <> '' ) or
          ( svICMS     <> '' ) or
          ( sBCST      <> '' ) or
          ( svST       <> '' ) or
          ( svProd     <> '' ) or
          ( svFrete    <> '' ) or
          ( svSeg      <> '' ) or
          ( svdesctnf  <> '' ) or
          ( svII       <> '' ) or
          ( svIPI      <> '' ) or
          ( svPIS      <> '' ) or
          ( svCOFINS   <> '' ) or
          ( svOutro    <> '' ) or
          ( svNF       <> '' )
       then
          begin
            sICMSTot :=  '<ICMSTot>'
          end;
       //endi

       if sICMSTot <> '' then
          begin
            if svBC <> '' then
               sICMSTot := sICMSTot + '<vBC>'+trim(svBC)+'</vBC>';
            //endi
            if svICMS <> '' then
               sICMSTot := sICMSTot + '<vICMS>'+trim(svICMS)+'</vICMS>';
            //endi
            if svBCST <> '' then
               sICMSTot := sICMSTot + '<vBCST>'+trim(svBCST)+'</vBCST>';
            //endi
            if svST <> '' then
               sICMSTot := sICMSTot + '<vST>'+trim(svST)+'</vST>';
            //endi
            if svProd <> '' then
               sICMSTot := sICMSTot + '<vProd>'+trim(svProd)+'</vProd>';
            //endi
            if svFrete <> '' then
               sICMSTot := sICMSTot + '<vFrete>'+trim(svFrete)+'</vFrete>';
            //endi
            if svSeg <> '' then
               sICMSTot := sICMSTot + '<vSeg>'+trim(svSeg)+'</vSeg>';
            //endi
            if svdesctnf <> '' then
               sICMSTot := sICMSTot + '<vDesc>'+trim(svdesctnf)+'</vDesc>';
            //endi
            if svII <> '' then
               sICMSTot := sICMSTot + '<vII>'+trim(svII)+'</vII>';
            //endi
            if svIPI <> '' then
               sICMSTot := sICMSTot + '<vIPI>'+trim(svIPI)+'</vIPI>';
            //endi
            if svPIS <> '' then
               sICMSTot := sICMSTot + '<vPIS>'+trim(svPIS)+'</vPIS>';
            //endi
            if svCOFINS <> '' then
               sICMSTot := sICMSTot + '<vCOFINS>'+trim(svCOFINS)+'</vCOFINS>';
            //endi
            if svOutro <> '' then
               sICMSTot := sICMSTot + '<vOutro>'+trim(svOutro)+'</vOutro>';
            //endi
            if svNF <> '' then
               sICMSTot := sICMSTot + '<vNF>'+trim(svNF)+'</vNF>';
            //endi
         end;
       //endi

       //Finaliza TAG ICMStot
       if sICMSTot <> '' then
          begin
            sICMSTot := sICMSTot + '</ICMSTot>';
            stotal := '<total>' + trim(sICMSTot) + '</total>';
          end;
       //endi

       WriteLn(log, UTF8Encode( stotal ) );

       // Inicia TAG vol
       if ( sqvol    <> '' ) or
          ( sesp     <> '' ) or
          ( smarca   <> '' ) or
          ( snvol    <> '' ) or
          ( spesol   <> '' ) or
          ( spesob   <> '' )
       then
          begin
            svol :=  '<vol>'
          end;
       //endi

       if svol <> '' then
          begin
            if sqvol <> '' then
               svol := svol + '<qVol>'+trim(sqVol)+'</qVol>';
            //endi
            if sesp <> '' then
               svol := svol + '<esp>'+trim(sesp)+'</esp>';
            //endi
            if smarca <> '' then
               svol := svol + '<marca>'+trim(smarca)+'</marca>';
            //endi
            if snVol <> '' then
               svol := svol + '<nVol>'+trim(snVol)+'</nVol>';
            //endi
            if spesoL <> '' then
               svol := svol + '<pesoL>'+trim(spesoL)+'</pesoL>';
            //endi
            if spesoB <> '' then
               svol := svol + '<pesoB>'+trim(spesoB)+'</pesoB>';
            //endi
         end;
       //endi

       //Finaliza TAG vol
       if svol <> '' then
          begin
            svol := svol + '</vol>';
          end;
       //endi


       if ( smodFrete <> '' ) or
          ( svol      <> '' )
       then
          begin

            // Inicia TAG transp
            stransp :=  '<transp>';

            // Corpo TAG transp
            if smodfrete <> '' then
               stransp := stransp + '<modFrete>'+trim(smodFrete)+'</modFrete>';
            //endi
            if svol <> '' then
               stransp := stransp + svol;
            //endi

            //Finaliza TAG transp
            stransp := stransp + '</transp>';

          end;
       //endi

       WriteLn(log, UTF8Encode( stransp ) );



       // variáveis TAG rodapé
       sfat := '';
       svorig := '';
       svdescdup := '';
       svliq := '';

       sdup := '';
       snfat := '';
       sndup := '';
       sdvenc := '';
       svdup := '';

       scobr := '';

       // Inicia TAG fat
       if ( snFat       <> '' ) or
          ( svOrig     <> '' ) or
          ( svdescdup  <> '' ) or
          ( svLiq       <> '' )
       then
          begin
            sfat :=  '<fat>'
          end;
       //endi

       if sfat <> '' then
          begin
            if snFat <> '' then
               sfat := sfat + '<nFat>'+trim(snFat)+'</nFat>';
            //endi
            if svOrig <> '' then
               sfat := sfat + '<vOrig>'+trim(svOrig)+'</vOrig>';
            //endi
            if svdescdup <> '' then
               sfat := sfat + '<vDesc>'+trim(svdescdup)+'</vDesc>';
            //endi
            if svLiq <> '' then
               sfat := sfat + '<vLiq>'+trim(svLiq)+'</vLiq>';
            //endi
          end;
       //endi

       //Finaliza TAG fat
       if sfat <> '' then
          begin
            sfat := sfat + '</fat>';
          end;
       //endi

       for x := 0 to high(aNumdup) do
         begin

           sndup := inttostr(annfdup[x])+'-'+apartedup[x];

           sData := avctdup[x];

           decodedate(strtodate(sData),iano,imes,idia);
           sData :=  formatfloat('0000',iano)+'-'+formatfloat('00',imes)+'-'+formatfloat('00',idia);
           sdvenc := sData;

           svdup := formatfloat('0.00',avlrdup[x]);
           svdup := decimal_is_point(svdup);

           // Inicia TAG dup
           if ( snDup       <> '' ) or
              ( sdVenc     <> '' ) or
              ( svDup      <> '' )
           then
              begin
                sdup :=  sdup + '<dup>'
              end;
           //endi

           if sdup <> '' then
              begin

                //showmessage(avctdup[x]);
                //showmessage(sdVenc);

                if snDup <> '' then
                   sdup := sdup + '<nDup>'+trim(snDup)+'</nDup>';
                //endi
                if sdVenc <> '' then
                   sdup := sdup + '<dVenc>'+trim(sdVenc)+'</dVenc>';
                //endi
                if svDup <> '' then
                   sdup := sdup + '<vDup>'+trim(svDup)+'</vDup>';
                //endi


             end;
           //endi

           //Finaliza TAG dup
           if sdup <> '' then
              begin
                sdup := sdup + '</dup>';
              end;
           //endi


         end;
       //endf

      //Inicia TAG cobr
      if ( sdup  <> '' ) or
         ( sfat  <> '' )
      then
          begin
            scobr :=  '<cobr>'
          end;
      //endi

      if scobr <> '' then
         begin
           if sfat <> '' then
              scobr := scobr + sfat;
           //endi
           if sdup <> '' then
              scobr := scobr + sdup;
           //endi
         end;
      //endi

      //Finaliza TAG cobr
      if scobr <> '' then
         begin
           scobr := scobr + '</cobr>';
         end;
      //endi

      WriteLn(log, UTF8Encode( sCobr ) );

      // variáveis TAG rodapé
      sinfAdFisco := '';
      sinfCpl := '';


      sinfcpl := sdadosadic;


      // Inicia TAG informarção
      if ( sinfAdFisco       <> '' ) or
         ( sinfCpl           <> '' )
      then
         begin
           sinfAdic :=  '<infAdic>'
         end;
      //endi

      if sinfAdic <> '' then
         begin
           if sinfAdFisco <> '' then
              sinfAdic := sinfAdic + '<infAdFisco>'+trim(sinfAdFisco)+'</infAdFisco>';
           //endi
           if sinfCpl <> '' then
              sinfAdic := sinfAdic + '<infCpl>'+trim(sinfCpl)+'</infCpl>';
           //endi
         end;
      //endi

      //Finaliza TAG informação adicional
      if sinfAdic <> '' then
         begin
           sinfAdic := sinfAdic + '</infAdic>';
         end;
      //endi

      WriteLn(log, UTF8Encode( sinfAdic ) );

      WriteLn(log, '</infNFe>');
      WriteLn(log, '</NFe>');
      WriteLn(log, '</enviNFe>');


       ler_linha_col_nf(620);
       if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 620 then
          if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
             begin
               iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
               iL620 := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
               iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
            end;
          //end
       //endi

       ler_linha_col_nf(630);
       if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 630 then
          if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
             begin
               iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
               iL630 := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
               iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
             end;
          //end
       //endi

       if frmdados.Cds_Indice.FieldByName('Linhas_NF').asInteger = 0 then
          begin
            //sayprint.Say(iL620,iColuna,'');
          end
       else
          begin
            //sayprint.Say(iL630,iColuna,'');
          end;
       //endi

       //sayprint.EndPrn;

       CloseFile(log);

       AssignFile(f,vardir+'copiar.bat');
       Rewrite(f); //abre o arquivo para escrita
       Writeln(f,'copy '+sarqtemp+' '+sdestnfe);
       Writeln(f,'del '+sarqtemp);
       Closefile(f); //fecha o handle de arquivo
       WinExec(pchar(vardir+'copiar.bat'), SW_HIDE);


       if frmdados.Cds_nfp.Eof then
          break;
       //endi

       innf := innf + 1;
       ifolha := ifolha + 1;




     //  end;
    //endi




  end;
//endw

bAut := false;
icontador := 0;
while true do
  begin

    icontador := icontador + 1;
    lblmensagem.Caption := 'Aguardando retorno do emissor NFE - Pressione <<ESC>> para desistir da impressão';
    frmfecenf.Update;

    if (frmdados.Cds_Indice.fieldbyname('rdirnfe').asString <> '') and
       (fileexists(frmdados.Cds_Indice.fieldbyname('rdirnfe').asString+'respLote-'+frmdados.Cds_NFE.fieldbyname('lotenfe').asString+'.xml') )
    then
       begin
         AssignFile(f,  frmdados.Cds_Indice.fieldbyname('rdirnfe').asString+'respLote-'+frmdados.Cds_NFE.fieldbyname('lotenfe').asString+'.xml');
         Reset(f);

         While not Eof(f) do
           begin

             Readln(f, Linha);

             if pos('Autorizado',linha) > 0 then
                begin
                  bAut := true;
                  break;
                end;
             //endi

           end;
         //endw

         CloseFile(f);

         if (bAut) then
            begin
              lblmensagem.Caption := 'Autorizado...';
              frmfecenf.Update;
            end
         else
            begin
              lblmensagem.Caption := 'Não Autorizado pelo Sefaz...';
              frmfecenf.Update;
            end;
         //endi
         sleep(5000);

         break;

       end
    else
       begin

         //sleep(1000);

         Application.ProcessMessages; {ESC key stops the loop}
         if GetKeyState(VK_Escape) AND 128 = 128 then
            break ;
         //endi

         //frmfecenf.Update;



       end;
    //endi


  end;
//endw

if (bAut) then
   begin
     try
       frmdados.Sql_Dados.Execute('SET GENERATOR GEN_nNf TO '+inttostr(innf) ,nil,@ResultSet);
     except
       resultset.Free;
     end;
   end;
//endi

frmdados.cds_nfp.Active := false;
frmdados.dbx_nfp.Active := false;
frmdados.dbx_nfp.SQL.Clear;
frmdados.dbx_nfp.SQL.Add('Select * from nfp where codnf = '+ inttostr( frmdados.cds_nf.fieldbyname('codigo').asInteger ));
frmdados.dbx_nfp.Active := true;
frmdados.cds_nfp.Active := true;

frmdados.Dbx_Conf_NF.Active := false;

end;

procedure Tfrmfecenf.cbxnomenatopnfKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

end.
