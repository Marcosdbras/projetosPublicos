unit ufectra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, SqlExpr, Db,
  SayPrint, Grids, DBGrids, ComCtrls, EditNum;

type
  Tfrmfectra = class(TForm)
    Label17: TLabel;
    edipdesc1: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    edivaldesc1: TDBEdit;
    edidin: TDBEdit;
    Label21: TLabel;
    ediliquido1: TDBEdit;
    Label20: TLabel;
    Label10: TLabel;
    ediparc1: TDBEdit;
    spdcancelar2310: TSpeedButton;
    spdlancar: TSpeedButton;
    Label1: TLabel;
    lblnnf: TLabel;
    SayPrint: TSayPrint;
    lblnos: TLabel;
    rchtipopgto: TRichEdit;
    mmoobs: TDBMemo;
    Label4: TLabel;
    Label2: TLabel;
    lbltotg: TLabel;
    rgblanca: TRadioGroup;
    Label3: TLabel;
    edincopias: TEdit;
    ckbemail: TCheckBox;
    ckbdescunit: TCheckBox;
    pctconta: TPageControl;
    tbsparcelas: TTabSheet;
    tbsliquidar: TTabSheet;
    dbgvencto: TDBGrid;
    edipdesc2: TEditNum;
    edivaldesc2: TEditNum;
    ediliquido2: TEditNum;
    ediparc: TEdit;
    edipdesc: TEdit;
    edivaldesc: TEdit;
    ediliquido: TEdit;
    btncriaparc: TBitBtn;
    Label5: TLabel;
    edicsit: TDBEdit;
    edinsit: TDBLookupComboBox;
    Label22: TLabel;
    edidtl: TDBEdit;
    Label26: TLabel;
    edidtb: TDBEdit;
    Label29: TLabel;
    edivalliq: TDBEdit;
    Label28: TLabel;
    cbxntipoop: TDBLookupComboBox;
    lblvlrreal: TLabel;
    spdsalvar: TBitBtn;
    Label6: TLabel;
    lblncli: TLabel;
    procedure spdcancelar2310Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edipdesc1KeyPress(Sender: TObject; var Key: Char);
    procedure edivaldesc1KeyPress(Sender: TObject; var Key: Char);
    procedure ediliquido1KeyPress(Sender: TObject; var Key: Char);
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
    procedure edipdesc1Exit(Sender: TObject);
    procedure edivaldesc1Exit(Sender: TObject);
    procedure ediliquido1Exit(Sender: TObject);
    procedure ler_linha_col_nf(icodconfnf:integer);
    procedure spdlancarClick(Sender: TObject);
    procedure ediparc1KeyPress(Sender: TObject; var Key: Char);
    procedure edidinExit(Sender: TObject);
    procedure limparT;
    procedure limparP;
    procedure ediparc1Exit(Sender: TObject);
    procedure edidinEnter(Sender: TObject);
    procedure ediprazo1KeyPress(Sender: TObject; var Key: Char);
    procedure ediprazo2KeyPress(Sender: TObject; var Key: Char);
    procedure ediprazo3KeyPress(Sender: TObject; var Key: Char);
    procedure ediparc1Enter(Sender: TObject);
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure imporc70b;
    procedure edipdesc2Exit(Sender: TObject);
    procedure edivaldesc2Exit(Sender: TObject);
    procedure ediliquido2Exit(Sender: TObject);
    function  AlinEdNumD(texto:TEdit):string;
    procedure edipdescExit(Sender: TObject);
    procedure edivaldescExit(Sender: TObject);
    procedure ediliquidoExit(Sender: TObject);
    procedure edipdescKeyPress(Sender: TObject; var Key: Char);
    procedure edivaldescKeyPress(Sender: TObject; var Key: Char);
    procedure ediliquidoKeyPress(Sender: TObject; var Key: Char);
    procedure ediparcKeyPress(Sender: TObject; var Key: Char);
    procedure btncriaparcClick(Sender: TObject);
    procedure spdsalvarClick(Sender: TObject);



  private
    { Private declarations }
    bAvista, bReimp:boolean;
    inorc, inos, iccli:integer;
    sNomeCli, sEnderecoent, sComplent, sBairroent, sCidadeent, sEstadoent,
    scepent, sTelefoneent, sContato, sVendedor, sDataF, sDataImp, sHoraImp, sCodCli,
    sFantasia, sTelefones, sid1, sid2, sdesc1, sdesc2, sdesc3, sdesc4, sdesc5, sdesc6,
    sdesc7, sdesc8, sdesc9, sdesc10, sdesc11, sdesc12, sdesc13, sdesc14, sdesc15, sdesc16,
    sdesc17, sdesc18, sdesc19, sdesc20, sdesc21, sdesc22, sdesc23, sdesc24, sdesc25, sdesc26,
    sdesc27, sdesc28, sdesc29, sdesc30, sdesc31, sdesc32, sdesc33, sdesc34, sdesc35, sdesc36,
    sdesc37, sdesc38, scustopecas:string;


    ftot, fpdesc, fvaldesc,  ftotpag:real;
    spdesc, svaldesc, sNumDup1, sNumDup2, sNumDup3, sNumDup4, sVlrDup1, sVlrDup2,
    sVlrDup3, sVlrDup4, sVctDup1, sVctDup2, sVctDup3, sVctDup4:string;
    iParcDup1, iParcDup2, iParcDup3, iParcDup4:integer;

    spdesc_PA, sValdesc_PA, sliquido_PA,
    spdesc_OA, sValdesc_OA, sliquido_OA,
    spdescA,   sValdescA,   sliquidoA    :String;

    ftvalliq, ftvaldesc, ftotg:real;


  public
    { Public declarations }
    scoluna:string;
  end;

var
  frmfectra: Tfrmfectra;

implementation
  uses ugeral, utra, uDados;
{$R *.dfm}

procedure Tfrmfectra.spdcancelar2310Click(Sender: TObject);
begin
if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
   frmdados.Cds_sVenda.cancel;
//endi

close;
end;

procedure Tfrmfectra.FormShow(Sender: TObject);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt, stipopgto : String;

begin

  scoluna := 'n_tipo_pgto';

  iultcod := 0;

  ediparc.Text := '1';

  frmdados.cds_exec.Active := false;
  frmdados.dbx_exec.Active := false;
  frmdados.dbx_exec.SQL.Clear;
  frmdados.dbx_exec.SQL.Add('Select sum(valorreal) as tvalor from vencimentos where (c_svenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger ) +')' );
  frmdados.cds_exec.Active := true;
  frmdados.dbx_exec.Active := true;

  ftvalliq := frmdados.cds_exec.fieldbyname('tvalor').asfloat;

  frmdados.cds_exec.Active := false;
  frmdados.dbx_exec.Active := false;
  frmdados.dbx_exec.SQL.Clear;
  frmdados.dbx_exec.SQL.Add('Select sum(valdesc) as tvalor from livrocaixa where (codsvenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger ) +')' );
  frmdados.cds_exec.Active := true;
  frmdados.dbx_exec.Active := true;

  ftvaldesc := frmdados.cds_exec.fieldbyname('tvalor').asfloat;

  //showmessage(floattostr(ftvalliq));

  SqlStMt := 'Select gen_id(Gen_nNf,0) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
  if Assigned(ResultSet) then
     lblnnf.Caption  := formatfloat('00000',ResultSet.fieldbyname('valor').asInteger+1);
  //endi

  SqlStMt := 'Select gen_id(Gen_nos,0) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
  if Assigned(ResultSet) then
     lblnos.Caption  := formatfloat('00000',ResultSet.fieldbyname('valor').asInteger+1);
  //endi

  if frmdados.Cds_sVenda.FieldByName('nos').asInteger <> 0 then
     begin
       lblnos.Caption := formatfloat('00000',frmdados.Cds_sVenda.FieldByName('nos').asfloat);
     end;
  //endi

  iccli := frmdados.cds_clientes.fieldbyname('codigo').asInteger;
  sNomeCli := frmdados.cds_clientes.fieldbyname('Nome').asString;
  sCodCli := formatfloat('00000',frmdados.cds_clientes.fieldbyname('Codigo').asfloat);
  sFantasia := frmdados.cds_clientes.fieldbyname('fantasia').asString;
  sTelefones :=  frmdados.cds_clientes.fieldbyname('dddfs').asString+' '+frmdados.cds_clientes.fieldbyname('Telefones').asString;

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
  sCepent := frmdados.cds_clientes.fieldbyname('cepent').asString;

  sid1 := frmdados.Cds_sVenda.fieldbyname('id1').asString;
  sid2 := frmdados.Cds_sVenda.fieldbyname('id2').asString;

  sdesc1 := frmdados.Cds_sVenda.fieldbyname('desc1').asString;
  sdesc2 := frmdados.Cds_sVenda.fieldbyname('desc2').asString;
  sdesc3 := frmdados.Cds_sVenda.fieldbyname('desc3').asString;
  sdesc4 := frmdados.Cds_sVenda.fieldbyname('desc4').asString;
  sdesc5 := frmdados.Cds_sVenda.fieldbyname('desc5').asString;
  sdesc6 := frmdados.Cds_sVenda.fieldbyname('desc6').asString;
  sdesc7 := frmdados.Cds_sVenda.fieldbyname('desc7').asString;
  sdesc8 := frmdados.Cds_sVenda.fieldbyname('desc8').asString;
  sdesc9 := frmdados.Cds_sVenda.fieldbyname('desc9').asString;
  sdesc10 := frmdados.Cds_sVenda.fieldbyname('desc10').asString;
  sdesc11 := frmdados.Cds_sVenda.fieldbyname('desc11').asString;
  sdesc12 := frmdados.Cds_sVenda.fieldbyname('desc12').asString;
  sdesc13 := frmdados.Cds_sVenda.fieldbyname('desc13').asString;
  sdesc14 := frmdados.Cds_sVenda.fieldbyname('desc14').asString;
  sdesc15 := frmdados.Cds_sVenda.fieldbyname('desc15').asString;
  sdesc16 := frmdados.Cds_sVenda.fieldbyname('desc16').asString;
  sdesc17 := frmdados.Cds_sVenda.fieldbyname('desc17').asString;
  sdesc18 := frmdados.Cds_sVenda.fieldbyname('desc18').asString;
  sdesc19 := frmdados.Cds_sVenda.fieldbyname('desc19').asString;
  sdesc20 := frmdados.Cds_sVenda.fieldbyname('desc20').asString;
  sdesc21 := frmdados.Cds_sVenda.fieldbyname('desc21').asString;
  sdesc22 := frmdados.Cds_sVenda.fieldbyname('desc22').asString;
  sdesc23 := frmdados.Cds_sVenda.fieldbyname('desc23').asString;
  sdesc24 := frmdados.Cds_sVenda.fieldbyname('desc24').asString;
  sdesc25 := frmdados.Cds_sVenda.fieldbyname('desc25').asString;
  sdesc26 := frmdados.Cds_sVenda.fieldbyname('desc26').asString;
  sdesc27 := frmdados.Cds_sVenda.fieldbyname('desc27').asString;
  sdesc28 := frmdados.Cds_sVenda.fieldbyname('desc28').asString;
  sdesc29 := frmdados.Cds_sVenda.fieldbyname('desc29').asString;
  sdesc30 := frmdados.Cds_sVenda.fieldbyname('desc30').asString;
  sdesc31 := frmdados.Cds_sVenda.fieldbyname('desc31').asString;
  sdesc32 := frmdados.Cds_sVenda.fieldbyname('desc32').asString;
  sdesc33 := frmdados.Cds_sVenda.fieldbyname('desc33').asString;
  sdesc34 := frmdados.Cds_sVenda.fieldbyname('desc34').asString;
  sdesc35 := frmdados.Cds_sVenda.fieldbyname('desc35').asString;
  sdesc36 := frmdados.Cds_sVenda.fieldbyname('desc36').asString;
  sdesc37 := frmdados.Cds_sVenda.fieldbyname('desc37').asString;
  sdesc38 := frmdados.Cds_sVenda.fieldbyname('desc38').asString;

  lbltotG.Caption :=  formatfloat('###,###,##0.00', strtofloat(tirapontos(frmtra.lbltotalt.Caption)) - ftvaldesc -  ftvalliq  );

  scustopecas := '0';

  mmoobs.Enabled := false;

  limpart;

  with frmdados do
     begin

       Cds_livrocaixa.Active := false;
       with  Dbx_livrocaixa do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('Select * from livrocaixa where codigo = 0');
            Active := true;
          end;
       //endth
       Cds_livrocaixa.Active := true;

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
           SQL.Add('Select * from Tipo_Pgto where (codigo <> '+  inttostr( cds_indice.fieldbyname('codavista').asInteger ) +') and ( mosvd = '+quotedstr('T')+')');
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

       cds_vencto.Active := false;
       cds_venctoc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
       cds_venctodescricao.DefaultExpression := QuotedStr('Parcela Ordem de Serviço');

       if cds_sVenda.fieldbyname('datacad').asString <> '' then
          cds_venctodte.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
       //endi

       with dbx_vencto do
         begin
           Active := false;
           SQL.Clear;
           SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger  ) +')');
           Active := true;
         end;
       //endi
       cds_vencto.EnableControls;
       cds_vencto.Active := true;


       cds_Vencto_NF.Active := false;
       cds_Vencto_NFc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
       cds_Vencto_NFdescricao.DefaultExpression := QuotedStr('Parcela Ordem de Serviço');
       with dbx_Vencto_NF do
         begin
           Active := false;
           SQL.Clear;
           SQL.Add('Select * from Vencimentos_NF where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger )+')');
           Active := true;
         end;
       //endth
       cds_Vencto_NF.Active := true;

    end;
  //endi

  rchtipopgto.Lines.Clear;
  rchtipopgto.Lines.Add('Forma Pgto: '+stipopgto);

  spdesc_PA := '0.00';
  sValdesc_PA := '0.00';
  sliquido_PA := '0.00';

  edipdesc.Text := '0.00';
  edivaldesc.Text := '0.00';
  ediliquido.Text := '0.00';

  //ediliquido.Text :=  formatfloat('###,###,##0.00', strtofloat(tirapontos(lbltotg.Caption)) - ftvaldesc - ftvalliq  );


  edipdesc.Text := AlinEdNumD(edipdesc);
  edivaldesc.Text := AlinEdNumD(edivaldesc);
  ediliquido.Text := AlinEdNumD(ediliquido);

  edincopias.Text := inttostr(frmdados.cds_indice.fieldbyname('ncopiaso').asInteger);

if rgblanca.ItemIndex = 0 then
   begin
     tabela := 'Vencimentos';
     with frmdados do
       begin

         cds_vencto.Active := false;
         cds_venctoc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
         cds_venctodescricao.DefaultExpression := QuotedStr('Parcela Ordem Tratamento');
         if cds_sVenda.fieldbyname('datacad').asString <> '' then
            cds_venctodte.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
         //endi
         dbx_vencto.Active := false;
         dbx_vencto.SQL.Clear;
         dbx_vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) +')');
         dbx_vencto.Active := true;
         cds_vencto.Active := true;

         cds_dMobra.Active := false;
         cds_dMobracodsvenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
         dbx_dMobra.Active := false;
         dbx_dMobra.SQL.Clear;
         dbx_dMobra.SQL.Add('Select * from dMobra where ( codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +')');
         dbx_dMobra.Active := true;
         cds_dMobra.Active := true;

       end;
     //endi

     dbgvencto.DataSource := frmDados.Dts_vencto;

   end;
//endi


if rgblanca.ItemIndex = 1 then
   begin
     tabela := 'Vencimentos_NF';

     with frmdados do
       begin
         dbx_exec.Active := false;
         dbx_exec.SQL.Clear;
         dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dVenda where (codsvenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger )+') and (EouS = '+quotedstr('S')+') and (IMPNF = '+QuotedStr('T')+')');
         dbx_exec.Active := true;
         lbltotg.Caption  := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totbruto').asfloat );

         cds_Vencto_NF.Active := false;
         cds_Vencto_NFc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
         cds_Vencto_NFdescricao.DefaultExpression := QuotedStr('Parcela Ordem de Serviço');
         dbx_Vencto_NF.Active := false;
         dbx_Vencto_NF.SQL.Clear;
         dbx_Vencto_NF.SQL.Add('Select * from Vencimentos_NF where (c_svenda = '+  inttostr(  cds_svenda.fieldbyname('codigo').asInteger )+')');
         dbx_Vencto_NF.Active := true;
         cds_Vencto_NF.Active := true;

       end;
     //endi

     dbgvencto.DataSource := frmDados.Dts_Vencto_NF;


   end;
//endi


if edipdesc.Enabled then
   begin
     //limpart;
     edipdesc.SetFocus;
   end;
//endi


lblncli.Caption := frmtra.cbxncli.Text;

ftotg := strtofloat(tirapontos(lbltotg.Caption));

if ftotg <= 0 then
   begin
     edipdesc.Enabled := false;
     edivaldesc.Enabled := false;
     ediliquido.Enabled := false;
     ediparc.Enabled := false;
     btncriaparc.Enabled := false;
     spdlancar.Enabled := false;
   end
else
   begin
     edipdesc.Enabled := true;
     edivaldesc.Enabled := true;
     ediliquido.Enabled := true;
     ediparc.Enabled := true;
     btncriaparc.Enabled := true;
     spdlancar.Enabled := true;
   end;
//endi



end;

procedure Tfrmfectra.edipdesc1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif


end;

procedure Tfrmfectra.edivaldesc1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.ediliquido1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.edidinKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.edinumdup1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.edinumdup2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.edinumdup3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.edivlrdup1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.edivlrdup2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.edivlrdup3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.edivctdup1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.edivctdup2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.edivctdup3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.cbxnaturezaKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.cbxcfopKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.ediBASECALCICMSSUBKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.ediVLRICMSSUBKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.edivlrfreteKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.edivlrseguroKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.edioutdespKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.ediplacaveiKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.cbxntranspKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.ediufveiKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.ediquantidadeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.ediespecieKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.edimarcaKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.edinumeroKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.edipesobKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.edipesolKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.edipdesc1Exit(Sender: TObject);
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
                 frmdados.Cds_sVenda.FieldByName('liquido_p').asString := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption)) - fvaldesc);

                 spDesc_PA :=  edipdesc.Text;
                 svaldesc_PA := formatfloat('0.00',fvaldesc);
                 sliquido_PA := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))  - fvaldesc);

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
                 frmdados.Cds_sVenda.FieldByName('liquido').asString := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))  - fvaldesc);

                 spDescA :=  edipdesc.Text;
                 svaldescA := formatfloat('0.00',fvaldesc);
                 sliquidoA := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))  - fvaldesc);
                 

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

procedure Tfrmfectra.edivaldesc1Exit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc:string;

begin
try
  ftot := strtofloat(tirapontos(lbltotG.Caption)) ;

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
                 frmdados.Cds_sVenda.FieldByName('liquido_p').asString := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))  - fvaldesc);

                 svaldesc_PA := edivaldesc.Text;
                 spdesc_PA := formatfloat('0.00',fpdesc);
                 sliquido_PA := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))  - fvaldesc);


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
                 frmdados.Cds_sVenda.FieldByName('liquido').asString := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))  - fvaldesc);

                 svaldescA := edivaldesc.Text;
                 spdescA := formatfloat('0.00',fpdesc);
                 sliquidoA := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))  - fvaldesc );

               end;
            //endi



          end;
       //endi

     end;
  //endi
except
end;

end;


procedure Tfrmfectra.ediliquido1Exit(Sender: TObject);
var fpdesc, fvaldesc, ftot:real;
begin
try
  ftot :=  strtofloat(tirapontos(lbltotG.Caption)) ;
  if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
     begin
       if rgblanca.ItemIndex = 0 then
          begin

            if ediliquido.Text <>  sliquido_PA then
               begin

                 frmdados.Cds_sVenda.FieldByName('valdesc_p').asfloat := strtofloat(tirapontos(lbltotg.Caption))-frmdados.Cds_sVenda.FieldByName('liquido_p').asfloat ;
                 fpdesc                                               := frmdados.Cds_sVenda.FieldByName('valdesc_p').asfloat / ftot * 100;
                 frmdados.Cds_sVenda.FieldByName('pdesc_p').asfloat   := fpdesc;

                 sliquido_PA := ediliquido.Text;
                 svaldesc_PA := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))-frmdados.Cds_sVenda.FieldByName('liquido_p').asfloat  );
                 spdesc_PA   := formatfloat('0.00',frmdados.Cds_sVenda.FieldByName('valdesc_p').asfloat / ftot * 100);


               end;
            //endi

          end;
       //endi

       if rgblanca.ItemIndex = 1 then
          begin
            if ediliquido.Text <>  sliquidoA then
               begin

                 frmdados.Cds_sVenda.FieldByName('valdesc').asfloat := strtofloat(tirapontos(lbltotg.Caption)) - frmdados.Cds_sVenda.FieldByName('liquido').asfloat ;
                 fpdesc                                             := frmdados.Cds_sVenda.FieldByName('valdesc').asfloat / ftot * 100;
                 frmdados.Cds_sVenda.FieldByName('pdesc').asfloat := fpdesc;

                 sliquidoA := ediliquido.Text;
                 svaldescA := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))-frmdados.Cds_sVenda.FieldByName('liquido').asfloat );
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

procedure tfrmfectra.ler_linha_col_nf(icodconfnf:integer);
begin
  frmdados.dbx_Conf_Nf.Active := false;
  frmdados.Dbx_Conf_NF.SQL.Clear;
  frmdados.Dbx_Conf_NF.SQL.Add('Select * from ConfNF where codigo = '+inttostr(icodconfnf));
  frmdados.Dbx_Conf_NF.Active := true;
end;




procedure Tfrmfectra.spdlancarClick(Sender: TObject);
var ftotal:currency;
    ftotalprazo:integer;
    ResultSet : tCustomSqlDataSet;
    SqlStMt : String;
    x, codigo:integer;
begin
if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
   frmdados.Cds_sVenda.post;
//endi


     if frmdados.Cds_sVenda.FieldByName('nos').asInteger = 0 then
        begin
          SqlStMt := 'Select gen_id(Gen_nos,1) as Valor from RDB$DATABASE;';
          ResultSet := nil;
          frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
          if Assigned(ResultSet) then
             inos := ResultSet.fieldbyname('valor').asInteger;
          //endi

          with frmdados do
            begin

              Cds_sVenda.Edit;
              Cds_sVenda.FieldByName('nos').asInteger := inos;
              Cds_sVenda.Post;

            end;
          //endi

        end
     else
        begin
          inos := frmdados.Cds_sVenda.FieldByName('nos').asInteger;
        end;
     //endi


          with frmdados do
            begin

              if iultcod  > 0 then
                 begin

                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update Vencimentos set ehvenda = '+quotedstr('T')+' where codlivrocaixa = '+ inttostr( iultcod ));
                   dbx_exec.ExecSQL;

                 end;
              //endi

              tabela := 'sVenda';
              Cds_sVenda.Edit;
              Cds_sVenda.FieldByName('originado').asString := '2'+Cds_sVenda.fieldbyname('tipoop').asString;
              Cds_sVenda.FieldByName('lancado').asString := 'T';
              Cds_sVenda.FieldByName('datafec').asString := datetostr(date);
              Cds_sVenda.FieldByName('hrfec').asString := copy(timetostr(time),1,5);
              Cds_sVenda.Post;

            end;
          //endth




     close;

end;

procedure Tfrmfectra.ediparc1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.edidinExit(Sender: TObject);
begin
limparp;

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
         end;
      //endi

   end;
//endi



end;

procedure Tfrmfectra.limparT;
begin
  if (frmdados.Cds_sVenda.State <> dsinsert) or (frmdados.Cds_sVenda.State <> dsedit) then
     frmdados.Cds_sVenda.Edit;
  //endi

  if rgblanca.ItemIndex = 0 then
     begin
       if frmdados.Cds_sVenda.FieldByName('lancado').AsString <> 'T' then
          begin

            if frmdados.Cds_sVenda.FieldByName('liquido_p').AsFloat = 0 then
               frmdados.Cds_sVenda.FieldByName('liquido_p').asfloat := strtofloat(tirapontos(lbltotg.Caption)) ;
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
            frmdados.Cds_sVenda.FieldByName('liquido').asfloat := strtofloat(tirapontos(lbltotg.Caption)) ;

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

procedure tfrmfectra.limparP;
begin
//
end;


procedure Tfrmfectra.ediparc1Exit(Sender: TObject);
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

     frmdados.cds_vencto.Active := false;
     frmdados.cds_venctoc_svenda.DefaultExpression := frmdados.cds_sVenda.fieldbyname('codigo').asString;
     frmdados.cds_venctodescricao.DefaultExpression := QuotedStr('Parcela Ordem de Serviço');
     if frmdados.cds_sVenda.fieldbyname('datacad').asString <> '' then
        frmdados.cds_venctodte.DefaultExpression := quotedstr(frmdados.cds_sVenda.fieldbyname('datacad').asString);
     //endi
     frmdados.dbx_vencto.Active := false;
     frmdados.dbx_vencto.SQL.Clear;
     frmdados.dbx_vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger)+')');
     frmdados.dbx_vencto.Active := true;
     frmdados.cds_vencto.Active := true;

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
     frmdados.cds_Vencto_NFdescricao.DefaultExpression := QuotedStr('Parcela Ordem de Serviço');
     frmdados.dbx_Vencto_NF.Active := false;
     frmdados.dbx_Vencto_NF.SQL.Clear;
     frmdados.dbx_Vencto_NF.SQL.Add('Select * from Vencimentos_NF where (c_svenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger)+')');
     frmdados.dbx_Vencto_NF.Active := true;
     frmdados.cds_Vencto_NF.Active := true;

   end;
//endi

criaparc;

end;

procedure Tfrmfectra.edidinEnter(Sender: TObject);
begin
if rgblanca.ItemIndex = 0 then
   frmdados.Cds_sVenda.FieldByName('parc_p').asInteger := 0;
//endi
if rgblanca.ItemIndex = 1 then
   frmdados.Cds_sVenda.FieldByName('parc').asInteger := 0;
//endi


end;

procedure Tfrmfectra.ediprazo1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.ediprazo2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.ediprazo3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.ediparc1Enter(Sender: TObject);
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

procedure Tfrmfectra.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure tfrmfectra.desbloqueiar;
begin
edipdesc.Enabled :=true;
edivaldesc.Enabled := true;
ediliquido.Enabled := true;
edidin.Enabled := true;
ediparc.Enabled := true;
end;


procedure tfrmfectra.desbloqueiaf;
begin
edipdesc.Enabled :=true;
edivaldesc.Enabled := true;
ediliquido.Enabled := true;
edidin.Enabled := true;
ediparc.Enabled := true;

end;

procedure Tfrmfectra.cbxtipoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfectra.dbgvenctoKeyPress(Sender: TObject; var Key: Char);

begin

if ftotg <= 0 then
   begin
     key := #0;
     exit;
   end;
//endi

if scoluna = 'n_tipo_pgto' then
   if ( key in['0'..'9',#8] ) then
      if frmdados.cds_Tipo_Pgto.Locate('codigo',key,[]) then
         begin
           if rgblanca.ItemIndex = 0 then
              begin
                frmdados.Cds_vencto.Edit;
                frmdados.Cds_vencto.FieldByName('c_tipo_pgto').AsString := key;
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


end;

procedure Tfrmfectra.dbgvenctoExit(Sender: TObject);
begin

if frmdados.Cds_vencto.State in [dsinsert, dsedit] then
   frmdados.Cds_vencto.Post;
//endi

tabela := 'sVenda';
end;

procedure tfrmfectra.criaparc;
var x, iparc, iaprazo:integer;
    fvlrparc:currency;
    fvalor:currency;
    sdata:string;
    fsobra, ftotal:real;
    icodlivrocaixa:integer;


begin
try

x := 0;
iparc := strtoint(ediparc.Text);
sdata := datetostr(date);


if strtofloat(ediparc.Text) > 0 then
   begin
     fvlrparc :=   (     strtofloat(tirapontos(ediliquido.Text))    -  strtofloat(tirapontos(edidin.Text))    ) / strtofloat(tirapontos(ediparc.Text));

     sMsg := 'Apagando Dados';

     tabela := 'livrocaixa';
     frmdados.Cds_livrocaixa.Append;
     frmdados.Cds_livrocaixa.FieldByName('codsvenda').asinteger := frmdados.Cds_sVenda.FieldByName('codigo').asinteger;
     frmdados.Cds_livrocaixa.FieldByName('pdesc').asfloat := strtofloat(tirapontos(edipdesc.Text));
     frmdados.Cds_livrocaixa.FieldByName('valdesc').asfloat := strtofloat(tirapontos(edivaldesc.Text));
     frmdados.Cds_livrocaixa.FieldByName('liquido').asfloat := strtofloat(tirapontos(ediliquido.Text));
     frmdados.Cds_livrocaixa.FieldByName('ccli').asinteger := iccli;

     frmdados.cds_livrocaixa.Post;

     tabela := 'Vencimentos';

     frmdados.Cds_Vencto.Active := false;
     frmdados.Dbx_Vencto.Active := false;
     frmdados.Dbx_Vencto.SQL.Clear;
     frmdados.Dbx_Vencto.SQL.Add('Select * from vencimentos where codigo = 0');
     frmdados.Cds_Vencto.Active := true;
     frmdados.Cds_Vencto.Active := true;


     ftotal := 0;

     sMsg := 'Criando parcelas em branco';
     for x := 1 to iparc do
         begin
           frmdados.Cds_vencto.Append;
           if (frmdados.Cds_Clientes.FieldByName('prazo').asInteger > 0) and (x = 1) then
              begin
                frmdados.Cds_vencto.FieldByName('prazo').asInteger := frmdados.Cds_Clientes.FieldByName('prazo').asInteger;
                frmdados.Cds_vencto.FieldByName('dtv').asString := calc_data(sdata,frmdados.Cds_Clientes.FieldByName('prazo').asInteger);
              end
           else
              begin
                if frmdados.Cds_indice.FieldByName('prazo').asInteger > 0 then
                   begin
                     frmdados.Cds_vencto.FieldByName('prazo').asInteger := frmdados.Cds_indice.FieldByName('prazo').asInteger + iaprazo;
                     frmdados.Cds_vencto.FieldByName('dtv').asString := calc_data(sdata,frmdados.Cds_vencto.FieldByName('prazo').asInteger);
                   end;
                //endi
             end;
           //endi

           frmdados.Cds_vencto.FieldByName('valorreal').asfloat := fvlrparc;
           frmdados.Cds_vencto.FieldByName('originado').asString := '2'+frmdados.Cds_sVenda.fieldbyname('tipoop').asString;
           frmdados.Cds_vencto.FieldByName('ccli').asInteger := frmdados.Cds_sVenda.fieldbyname('ccli').asInteger;
           frmdados.Cds_vencto.FieldByName('c_tipo_pgto').asInteger := frmdados.Cds_Indice.fieldbyname('parcpadrao').asInteger;
           frmdados.Cds_vencto.FieldByName('csit').asInteger := frmdados.Cds_Indice.fieldbyname('csitr').asInteger;
           frmdados.Cds_vencto.FieldByName('codlivrocaixa').asInteger := iultcod;

           frmdados.Cds_vencto.FieldByName('parc').asstring := formatfloat('00',x)+'/'+ formatfloat('00',frmdados.cds_svenda.fieldbyname('parc_p').asfloat);
           frmdados.Cds_vencto.FieldByName('doc').asstring := lblnos.Caption+'-'+chr(64+x);
           frmdados.Cds_vencto.FieldByName('parte').asstring := chr(64+x);
           frmdados.Cds_vencto.FieldByName('ehvenda').asstring := 'F';


           ftotal := ftotal + frmdados.Cds_vencto.FieldByName('valorreal').asfloat;
           iaprazo :=  frmdados.Cds_vencto.FieldByName('prazo').asInteger;

           frmdados.Cds_vencto.Post;
        end;
     //endw
     
     fsobra := strtofloat(tirapontos(ediliquido.Text)) - ftotal;
     if fsobra > 0 then
        begin
          frmdados.Cds_vencto.Edit;
          frmdados.Cds_vencto.FieldByName('valorreal').asfloat := frmdados.Cds_vencto.FieldByName('valorreal').asfloat + fsobra;
          frmdados.Cds_vencto.Post;
        end;
     //end

     frmdados.Cds_Vencto.Active := false;
     frmdados.cds_venctoc_svenda.DefaultExpression := frmdados.cds_sVenda.fieldbyname('codigo').asString;
     frmdados.cds_venctodescricao.DefaultExpression := QuotedStr('Parcela Ordem de Serviço');
     if frmdados.cds_sVenda.fieldbyname('datacad').asString <> '' then
          frmdados.cds_venctodte.DefaultExpression := quotedstr(frmdados.cds_sVenda.fieldbyname('datacad').asString);
     //endi
     frmdados.Dbx_Vencto.Active := false;
     frmdados.Dbx_Vencto.SQL.Clear;
     frmdados.Dbx_Vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger  ) +')');
     frmdados.Cds_Vencto.Active := true;
     frmdados.Cds_Vencto.Active := true;

     sMsg := 'Voltando para Inicio';
     frmdados.Cds_vencto.First;

     frmdados.cds_exec.Active := false;
     frmdados.dbx_exec.Active := false;
     frmdados.dbx_exec.SQL.Clear;
     frmdados.dbx_exec.SQL.Add('Select sum(valorreal) as tvalor from vencimentos where (c_svenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger ) +')' );
     frmdados.cds_exec.Active := true;
     frmdados.dbx_exec.Active := true;

     ftvalliq := frmdados.cds_exec.fieldbyname('tvalor').asfloat;

     frmdados.cds_exec.Active := false;
     frmdados.dbx_exec.Active := false;
     frmdados.dbx_exec.SQL.Clear;
     frmdados.dbx_exec.SQL.Add('Select sum(valdesc) as tvalor from livrocaixa where (codsvenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger ) +')' );
     frmdados.cds_exec.Active := true;
     frmdados.dbx_exec.Active := true;

     ftvaldesc := frmdados.cds_exec.fieldbyname('tvalor').asfloat;

     lbltotG.Caption :=  formatfloat('###,###,##0.00', strtofloat(tirapontos(frmtra.lbltotalt.Caption)) - ftvaldesc -  ftvalliq  );

     edipdesc.Text := '0.00';
     edivaldesc.Text := '0.00';
     ediliquido.Text := '0.00';

     edipdesc.Text := AlinEdNumD(edipdesc);
     edivaldesc.Text := AlinEdNumD(edivaldesc);
     ediliquido.Text := AlinEdNumD(ediliquido);


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



except
  sMsg := 'Excessão quando criou parcela em branco';
end;

end;


procedure tfrmfectra.apagaparc;
begin
  with frmdados do
    begin

      if rgblanca.ItemIndex = 0 then
         begin


           cds_vencto.Active := false;
           dbx_vencto.Active := false;
           dbx_vencto.SQL.Clear;
           dbx_vencto.SQL.Add('Select * from Vencimentos where (c_sVenda = '+cds_sVenda.fieldbyname('codigo').asString+')');
           dbx_vencto.Active := true;
           cds_vencto.Active := true;

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




procedure Tfrmfectra.dbgvenctoEnter(Sender: TObject);
begin
if rgblanca.ItemIndex = 0 then
   tabela := 'Vencimentos';
//endi
if rgblanca.ItemIndex = 1 then
   tabela := 'Vencimentos_NF';
//endi


end;

procedure Tfrmfectra.dbgvenctoColEnter(Sender: TObject);
begin
  sColuna := dbgvencto.SelectedField.FieldName;
end;

procedure Tfrmfectra.rgblancaClick(Sender: TObject);
begin
if rgblanca.ItemIndex = 0 then
   begin
     tabela := 'Vencimentos';
     with frmdados do
       begin
         dbx_exec.Active := false;
         dbx_exec.SQL.Clear;
         dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dVenda where (codsvenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger)+') and (EouS = '+quotedstr('S')+')');
         dbx_exec.Active := true;
         lbltotg.Caption  := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totbruto').asfloat );

         cds_vencto.Active := false;
         cds_venctoc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
         cds_venctodescricao.DefaultExpression := QuotedStr('Parcela Ordem de Serviço');
         if cds_sVenda.fieldbyname('datacad').asString <> '' then
            cds_venctodte.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
         //endi
         dbx_vencto.Active := false;
         dbx_vencto.SQL.Clear;
         dbx_vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger )+')');
         dbx_vencto.Active := true;
         cds_vencto.Active := true;

       end;
     //endi

     //edipdesc.DataField := 'pdesc_p';
     //edivaldesc.DataField := 'valdesc_p';
     //ediliquido.DataField := 'liquido_p';
     //edidin.DataField := 'din_p';
     //ediparc.DataField := 'parc_p';
     dbgvencto.DataSource := frmDados.Dts_vencto;



   end;
//endi


if rgblanca.ItemIndex = 1 then
   begin
     tabela := 'Vencimentos_NF';

     with frmdados do
       begin
         dbx_exec.Active := false;
         dbx_exec.SQL.Clear;
         dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dVenda where (codsvenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger )+') and (EouS = '+quotedstr('S')+') and (IMPNF = '+QuotedStr('T')+')');
         dbx_exec.Active := true;
         lbltotg.Caption  := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totbruto').asfloat);

         cds_Vencto_NF.Active := false;
         cds_Vencto_NFc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
         cds_Vencto_NFdescricao.DefaultExpression := QuotedStr('Parcela Ordem de Serviço');
         dbx_Vencto_NF.Active := false;
         dbx_Vencto_NF.SQL.Clear;
         dbx_Vencto_NF.SQL.Add('Select * from Vencimentos_NF where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger)+')');
         dbx_Vencto_NF.Active := true;
         cds_Vencto_NF.Active := true;

       end;
     //endi

     //edipdesc.DataField := 'pdesc';
     //edivaldesc.DataField := 'valdesc';
     //ediliquido.DataField := 'liquido';
     //edidin.DataField := 'din';
     //ediparc.DataField := 'parc';
     dbgvencto.DataSource := frmDados.Dts_Vencto_NF;


   end;
//endi


if edipdesc.Enabled then
   begin
     //limpart;
     edipdesc.SetFocus;
   end;
//endi

end;

procedure Tfrmfectra.dbgvenctoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if rgblanca.ItemIndex = 0 then
//   if frmdados.Cds_sVenda.FieldByName('lancado').asString = 'T' then
//      begin
//        key := 0;
//        exit;
//      end;
   //endi
//endi

end;

procedure Tfrmfectra.imporcrazao66x80;
var
  s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,sImp:string;
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
  Col, Centro,x, iLin, iItens:Integer;
  sDelimitador:string;
  sQtdeImp,sDescricaoImp,sCprodImp, sValorImp, sTotalImp, sUniImp:String;
  ftotG, ftotI, ftotE, ftotM:real;
  sCab1, sCab2, sCab3, sCab4:string;
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

    //if frmpesqost.rgbtipoop.ItemIndex = 0 then
    //   begin
    //     sayprint.Say(4,0,'Orcamento '+formatfloat('00000',iNorc));
    //   end
    //else
    //   begin
    //     sayprint.Say(4,0,'Pedido '+formatfloat('00000',frmdados.Cds_sVenda.fieldbyname('nos').asfloat));
    //   end;
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
                dbx_exec.SQL.Add('Select count(*) as totitens from dvenda where (codsvenda = '+ inttostr( frmdados.Cds_sVenda.fieldbyname('codigo').asInteger)+') and (EouS = '+quotedstr('S')+')');
                dbx_exec.Active := true;
                ftotI := dbx_exec.fieldbyname('totitens').asfloat;

                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dvenda where (codsvenda = '+ inttostr( frmdados.Cds_sVenda.fieldbyname('codigo').asInteger )+') and (EouS = '+quotedstr('S')+')');
                dbx_exec.Active := true;
                ftotG := dbx_exec.fieldbyname('totbruto').asfloat;

                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select sum(qtde*valor) as totbruto from dmobra where (codsvenda = '+ inttostr( frmdados.Cds_sVenda.fieldbyname('codigo').asInteger )+')');
                dbx_exec.Active := true;
                ftotM := dbx_exec.fieldbyname('totbruto').asfloat;

                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dvenda where (codsvenda = '+ inttostr( frmdados.Cds_sVenda.fieldbyname('codigo').asInteger )+') and (EouS = '+quotedstr('E')+')');
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

            sValorImp := formatfloat('###,###,##0.00',ftotG+ftotM);
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


procedure tfrmfectra.imporcrazao66x140;
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
//     SqlStMt := 'Select gen_id(Gen_nos,1) as Valor from RDB$DATABASE;';
//     ResultSet := nil;
//     frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
//     if Assigned(ResultSet) then
//        inos := ResultSet.fieldbyname('valor').asInteger;
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

    //if frmpesqost.rgbtipoop.ItemIndex = 0 then
    //   begin
    //     sayprint.Say(4,0,'Orcamento '+formatfloat('00000',iNorc));
    //   end
    //else
    //   begin
    //     sayprint.Say(4,0,'Pedido '+formatfloat('00000',frmdados.Cds_sVenda.fieldbyname('nos').asfloat));
    //   end;
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
                     Dbx_Exec.SQL.Add('Select * from Marca Where codigo = '+ inttostr( cds_dvenda.fieldbyname('cMar').asInteger ));
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
                dbx_exec.SQL.Add('Select count(*) as totitens from dvenda where (codsvenda = '+ inttostr( frmdados.Cds_sVenda.fieldbyname('codigo').asInteger )+') and (EouS = '+quotedstr('S')+')');
                dbx_exec.Active := true;
                ftotI := dbx_exec.fieldbyname('totitens').asfloat;

                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dvenda where (codsvenda = '+ inttostr( frmdados.Cds_sVenda.fieldbyname('codigo').asInteger )+') and (EouS = '+quotedstr('S')+')');
                dbx_exec.Active := true;
                //ftotG := dbx_exec.fieldbyname('totbruto').asfloat-(dbx_exec.fieldbyname('totbruto').asfloat*cds_sVenda.fieldbyname('pdesc').asfloat/100);
                ftotG := dbx_exec.fieldbyname('totbruto').asfloat;

                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dvenda where (codsvenda = '+ inttostr( frmdados.Cds_sVenda.fieldbyname('codigo').asInteger)+') and (EouS = '+quotedstr('E')+')');
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
                dbx_vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger )+')');
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
                             sVlrDup1 := floattostr(cds_vencto.fieldbyname('valorreal').asfloat);
                             sVctDup1 := cds_vencto.fieldbyname('dtv').asString;
                             iParcDup1 := strtoint( copy(cds_vencto.fieldbyname('Parc').asString,1,2) );
                           end;
                        //endi

                        if iCols = 2 then
                           begin
                             sNumDup2 := cds_vencto.fieldbyname('doc').asString;
                             sVlrDup2 := floattostr(cds_vencto.fieldbyname('valorreal').asfloat);
                             sVctDup2 := cds_vencto.fieldbyname('dtv').asString;
                             iParcDup2 := strtoint( copy(cds_vencto.fieldbyname('Parc').asString,1,2) );
                           end;
                        //endi

                        if iCols = 3 then
                           begin
                             sNumDup3 := cds_vencto.fieldbyname('doc').asString;
                             sVlrDup3 := floattostr(cds_vencto.fieldbyname('valorreal').asfloat);
                             sVctDup3 := cds_vencto.fieldbyname('dtv').asString;
                             iParcDup3 := strtoint( copy(cds_vencto.fieldbyname('Parc').asString,1,2) );
                           end;
                        //endi

                        if iCols = 4 then
                           begin
                             sNumDup4 := cds_vencto.fieldbyname('doc').asString;
                             sVlrDup4 := floattostr(cds_vencto.fieldbyname('valorreal').asfloat);
                             sVctDup4 := cds_vencto.fieldbyname('dtv').asString;
                             iParcDup4 := strtoint( copy(cds_vencto.fieldbyname('Parc').asString,1,2) );
                          end;
                        //endi

                        icols := icols + 1;
                        Cds_vencto.Next;
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



procedure Tfrmfectra.edincopiasExit(Sender: TObject);
begin
try
  strtoint(edincopias.Text);
except
  edincopias.Text := inttostr(frmdados.cds_indice.fieldbyname('ncopiaso').asInteger);
  edincopias.SetFocus;
end;
end;

procedure Tfrmfectra.ckbemailClick(Sender: TObject);
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

procedure Tfrmfectra.FormClose(Sender: TObject; var Action: TCloseAction);
begin



     with frmdados do
       begin

         if iultcod  > 0 then
            begin

              dbx_exec.Active := false;
              dbx_exec.SQL.Clear;
              dbx_exec.SQL.Add('Update Vencimentos set valor = valorreal where codlivrocaixa = '+ inttostr( iultcod ));
              dbx_exec.ExecSQL;

            end;
         //endi

       end;
     //endth


     Action:=caFree;
     frmfectra:=nil;
     form_ativo := '';




end;


procedure tfrmfectra.imporc70b;
var
  s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,sImp:string;
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
  Col, Centro,x, iLin, iItens, iCols, iParcDup3, iParcDup1, iParcDup2, iParcDup4:Integer;
  sDelimitador, sNumDup1, sVlrDup1, sVctDup1 , sNumDup2, sVlrDup2, sVctDup2,
  sNumDup3, sVlrDup3, sVctDup3 , sNumDup4, sVlrDup4, sVctDup4:string;
  sQtdeImp,sDescricaoImp,sCprodImp, sValorImp, sTotalImp, sUniImp:String;
  ftotG, ftotI, ftotE, ftotM:real;
  sCab1, sCab2, sCab3, sCab4:string;

begin

//sDataImp := datetostr(date);
//sHoraImp := copy(timetostr(time),1,5);

//if frmdados.Cds_sVenda.fieldbyname('datacad').asString <> '' then
sDataImp := frmdados.Cds_sVenda.fieldbyname('datacad').asString;
//else
//   sDataImp := datetostr(date);
//endi

//if frmdados.Cds_sVenda.fieldbyname('hrcad').asString <> '' then
sHoraImp := frmdados.Cds_sVenda.fieldbyname('hrcad').asString;
//else
//sHoraImp := copy(timetostr(time),1,5);
//endi

sDelimitador := replicar('-',60);

frmdados.Cds_dVenda.Active := false;
frmdados.Dbx_dVenda.Active := false;
frmdados.Dbx_dVenda.SQL.Clear;
frmdados.Dbx_dVenda.SQL.Add('Select * from dvenda where codsvenda = '+inttostr(frmdados.Cds_sVenda.fieldbyname('codigo').asInteger ));
frmdados.Dbx_dVenda.Active := true;
frmdados.Cds_dVenda.Active := true;

frmdados.Cds_dmobra.Active := false;
frmdados.Dbx_dmobra.Active := false;
frmdados.Dbx_dmobra.SQL.Clear;
frmdados.Dbx_dmobra.SQL.Add('Select * from dmobra where codsvenda = '+inttostr(frmdados.Cds_sVenda.fieldbyname('codigo').asInteger ));
frmdados.Dbx_dmobra.Active := true;
frmdados.Cds_dmobra.Active := true;

frmdados.Cds_vencto.Active := false;
frmdados.Dbx_vencto.Active := false;
frmdados.Dbx_vencto.SQL.Clear;
frmdados.Dbx_vencto.SQL.Add('Select * from Vencimentos where c_svenda = '+inttostr(frmdados.Cds_sVenda.fieldbyname('codigo').asInteger ));
frmdados.Dbx_vencto.Active := true;
frmdados.Cds_vencto.Active := true;

if (frmdados.Cds_dvenda.RecordCount = 0) and (frmdados.Cds_dmobra.RecordCount = 0) then
   exit;
//endi

s1 := '';
sayprint.BeginPrn;

sayprint.Condensed(false);
sayprint.Expand(True);
sayprint.Bold(True);
for x := 1 to (( 24  - length( frmdados.Cds_Config.fieldbyname('campo2').asString )) div 2) do
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
//for x := 1 to (( 48  - length( copy(frmdados.Cds_Config.fieldbyname('campo6').asString,1,48) )) div 2) do
//    begin
//      s1 := (s1 + ' ');
//    end;
//endfor
//sImp := s1+copy(frmdados.Cds_Config.fieldbyname('campo6').asString,1,48);

s1 := '';
for x := 1 to (( 48  - length( copy(sCab1,1,48) )) div 2) do
    begin
      s1 := (s1 + ' ');
    end;
//endfor
sImp := s1+copy(sCab1,1,48);
sayprint.Say(1,0,sImp);

sCab2 := frmdados.Cds_Config.fieldbyname('campo7').asString;

if frmdados.Cds_Config.fieldbyname('fone').asString <> '' then
   sCab2 := sCab2 + ' '+frmdados.Cds_Config.fieldbyname('fone').asString;
//endi

//s1 := '';
//for x := 1 to (( 48  - length( copy(frmdados.Cds_Config.fieldbyname('campo7').asString,1,48) )) div 2) do
//    begin
//      s1 := (s1 + ' ');
//    end;
//endfor
//sImp := s1+copy(frmdados.Cds_Config.fieldbyname('campo7').asString,1,48);

s1 := '';
for x := 1 to (( 48  - length( copy(sCab2,1,48) )) div 2) do
    begin
      s1 := (s1 + ' ');
    end;
//endfor
sImp := s1+copy(sCab2,1,48);

sayprint.Say(2,0,sImp);

sayprint.Condensed(true);
sayprint.Say(3,0,sDelimitador);
sayprint.Condensed(false);

if frmdados.Cds_sVenda.FieldByName('tipoop').asInteger = 0 then
   begin
     sayprint.Say(4,0,'Orcamento '+formatfloat('00000',iNorc));
   end
else
   begin
     sayprint.Say(4,0,'O.S. '+formatfloat('00000',iNos));
   end;
//endi
sayprint.Say(4,19,'Data '+sDataImp);
sayprint.Say(4,38,'Hora '+sHoraImp);

sayprint.Condensed(true);


sayprint.Say(5,0,sDelimitador);

if iccli > 0 then
   begin
     sayprint.Say(6,0,'CLIENTE.: '+copy(sNomeCli,1,38));
     sayprint.Say(7,0,'ENDERECO: '+copy(sEnderecoent,1,38));

     sayprint.Say(8, 0,'COMPL..: '+copy(sComplent,1,5));
     sayprint.Say(8,15,'BAIRRO.: '+copy(sBairroent,1,10));
     sayprint.Say(8,35,'CIDADE.: '+copy(sCidadeent,1,5));

     sayprint.Say(9, 0,'ESTADO.: '+sEstadoent);
     sayprint.Say(9,15,'CEP....: '+scepent);

     sayprint.Say(10, 0,'TEL...: '+copy(sTelefoneent,1,38));
     sayprint.Say(10,35,'CONT..: '+copy(sContato,1,5));

   end
else
   begin

     sayprint.Say(6,0,'CLIENTE.: Consumidor');
     sayprint.Say(7,0,'ENDERECO: ');

     sayprint.Say(8, 0,'COMPL..: ');
     sayprint.Say(8,15,'BAIRRO.: ');
     sayprint.Say(8,35,'CIDADE.: ');

     sayprint.Say(9, 0,'ESTADO.: ');
     sayprint.Say(9,15,'CEP....: ');

     sayprint.Say(10, 0,'TEL...: ');
     sayprint.Say(10,35,'CONT..: ');

   end;
//endi
sayprint.Say(11,0,sDelimitador);
iLin    := 12;
if frmdados.Cds_Indice.FieldByName('id1').asString  <> '' then
   begin
      sayprint.Say(iLin,0, frmdados.Cds_Indice.FieldByName('id1').asString+'.:');
      sayprint.Say(iLin,10, copy(sid1,1,10));
   end;
//endi
if frmdados.Cds_Indice.FieldByName('id2').asString  <> '' then
   begin
      sayprint.Say(iLin,25, frmdados.Cds_Indice.FieldByName('id2').asString+'.:');
      sayprint.Say(iLin,36, copy(sid2,1,25));
   end;
//endi

if frmdados.Cds_Indice.FieldByName('desc1').asString  <> '' then
   begin
      iLin := iLin + 1;
      sayprint.Say(iLin,0, frmdados.Cds_Indice.FieldByName('desc1').asString+'.:');
      sayprint.Say(iLin,10, copy(sdesc1,1,15));
   end
else
   begin
     if (frmdados.Cds_Indice.FieldByName('desc2').asString  <> '') or (frmdados.Cds_Indice.FieldByName('desc3').asString  <> '') then
        begin
          iLin := iLin + 1;
        end;
     //endi
   end;
//endi
if frmdados.Cds_Indice.FieldByName('desc2').asString  <> '' then
   begin
      sayprint.Say(iLin,25, frmdados.Cds_Indice.FieldByName('desc2').asString+'.:');
      sayprint.Say(iLin,36, copy(sdesc2,1,15));
   end;
//endi
if frmdados.Cds_Indice.FieldByName('desc3').asString  <> '' then
   begin
      sayprint.Say(iLin,45, frmdados.Cds_Indice.FieldByName('desc3').asString+'.:');
      sayprint.Say(iLin,51, copy(sdesc3,1,15));
   end;
//endi

if frmdados.Cds_Indice.FieldByName('desc4').asString  <> '' then
   begin
      iLin := iLin + 1;
      sayprint.Say(iLin,0, frmdados.Cds_Indice.FieldByName('desc4').asString+'.:');
      sayprint.Say(iLin,10, copy(sdesc4,1,15));
   end
else
   begin
     if (frmdados.Cds_Indice.FieldByName('desc5').asString  <> '') or (frmdados.Cds_Indice.FieldByName('desc6').asString  <> '') then
        begin
          iLin := iLin + 1;
        end;
     //endi
   end;
//endi
if frmdados.Cds_Indice.FieldByName('desc5').asString  <> '' then
   begin
      sayprint.Say(iLin,25, frmdados.Cds_Indice.FieldByName('desc5').asString+'.:');
      sayprint.Say(iLin,36, copy(sdesc5,1,15));
   end;
//endi
if frmdados.Cds_Indice.FieldByName('desc6').asString  <> '' then
   begin
      sayprint.Say(iLin,45, frmdados.Cds_Indice.FieldByName('desc6').asString+'.:');
      sayprint.Say(iLin,51, copy(sdesc6,1,3));
   end;
//endi


iLin := iLin + 1;
sayprint.Say(iLin,0,sDelimitador);

iLin := iLin + 1;
//sayprint.Say(iLin,0,'      Qtde Un. Descricao                                 TP.');
sayprint.Say(iLin,0,'      Qtde Un. Descricao                                    ');
//                 xx.xxx,xxx xxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx x

iLin := iLin + 1;
sayprint.Say(iLin,0,'Codigo                       Valor                     Total');
//                  xxxxx                  xxx,xxx.xx                xxx,xxx.xx

iLin := iLin + 1;
sayprint.Say(iLin,0,sDelimitador);

iItens  := 0;

with frmdados do
   begin

     while not cds_dvenda.Eof do
        begin

          sQtdeImp      := AlinNumD3(10,Cds_dvenda.fieldbyname('qtde').asfloat);
          sDescricaoImp := Cds_dvenda.fieldbyname('npro').asString;
          sCprodImp     := formatfloat('00000',Cds_dvenda.fieldbyname('cpro').asfloat);
          sValorImp     := AlinNumD(10,Cds_dvenda.fieldbyname('prve').asfloat);
          sTotalImp     := AlinNumD(10,Cds_dvenda.fieldbyname('subtotal').asfloat);
          sUniImp       := Cds_dvenda.fieldbyname('nUnid').asString;

          sayprint.Say(iLin,0,sQtdeImp);
          sayprint.Say(iLin,11,sUniImp);
          sayprint.Say(iLin,15,sDescricaoImp);

          iLin := iLin + 1;

          sayprint.Say(iLin,0,sCprodImp);
          sayprint.Say(iLin,24,sValorImp);
          sayprint.Say(iLin,50,sTotalImp);

          iLin := iLin + 1;
          Cds_dvenda.Next;

        end;
     //endw



     while not cds_dmobra.Eof do
        begin

          sQtdeImp      := AlinNumD3(10,Cds_dmobra.fieldbyname('qtde').asfloat);
          sDescricaoImp := Cds_dmobra.fieldbyname('ndesc').asString;
          sCprodImp     := formatfloat('00000',Cds_dmobra.fieldbyname('cdesc').asfloat);
          sValorImp     := AlinNumD(10,Cds_dmobra.fieldbyname('valor').asfloat);
          sTotalImp     := AlinNumD(10,Cds_dmobra.fieldbyname('subtotal').asfloat);

          sayprint.Say(iLin,0,sQtdeImp);
          sayprint.Say(iLin,11,sUniImp);
          sayprint.Say(iLin,15,sDescricaoImp);

          iLin := iLin + 1;

          sayprint.Say(iLin,0,sCprodImp);
          sayprint.Say(iLin,24,sValorImp);
          sayprint.Say(iLin,50,sTotalImp);

          iLin := iLin + 1;
          Cds_dmobra.Next;


        end;
     //endw


  end;
//endth

sayprint.Say(iLin,0,sDelimitador);

with frmdados do
     begin
       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Add('Select count(*) as totitens from dvenda where (codsvenda = '+inttostr(frmdados.Cds_sVenda.fieldbyname('codigo').asInteger)+') and (EouS = '+quotedstr('S')+')');
       dbx_exec.Active := true;
       ftotI := dbx_exec.fieldbyname('totitens').asfloat;

       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dvenda where (codsvenda = '+inttostr(frmdados.Cds_sVenda.fieldbyname('codigo').asInteger)+') and (EouS = '+quotedstr('S')+')');
       dbx_exec.Active := true;
       ftotG := dbx_exec.fieldbyname('totbruto').asfloat;

       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Add('Select sum(qtde*valor) as totbruto from dmobra where (codsvenda = '+ inttostr( frmdados.Cds_sVenda.fieldbyname('codigo').asInteger )+')');
       dbx_exec.Active := true;
       ftotM := dbx_exec.fieldbyname('totbruto').asfloat;

       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dvenda where (codsvenda = '+inttostr(frmdados.Cds_sVenda.fieldbyname('codigo').asInteger)+') and (EouS = '+quotedstr('E')+')');
       dbx_exec.Active := true;
       ftotE := dbx_exec.fieldbyname('totbruto').asfloat;

       dbx_exec.Active := false;

     end;
//endth

//sayprint.Condensed(false);

sayprint.Bold(true);

iLin := iLin + 1;
sayprint.Say(iLin,25,'Total');

sValorImp := formatfloat('###,###,##0.00',ftotG+ftotM);
sValorImp := AlinNumD(14,ftotG+ftotM);

sayprint.Say(iLin,46,sValorImp);

iLin := iLin + 1;
sayprint.Say(iLin,25,'Desconto');

sValorImp := formatfloat('#0.00',strtofloat(tirapontos( edipdesc.Text  )));
sValorImp := AlinNumD(6,strtofloat(tirapontos( edipdesc.Text  )));

sayprint.Say(iLin,34,sValorImp+'%');

sValorImp := formatfloat('###,###,##0.00', strtofloat(tirapontos( edivaldesc.Text  )) );
sValorImp := AlinNumD(14, strtofloat(tirapontos( edivaldesc.Text  ))  );

sayprint.Say(iLin,46,sValorImp);

iLin := iLin + 1;
sayprint.Say(iLin,25,'Liquido');

sValorImp := formatfloat('###,###,##0.00',strtofloat(tirapontos( ediliquido.Text    )) );
sValorImp := AlinNumD(14, strtofloat(tirapontos( ediliquido.Text    )) );

sayprint.Say(iLin,46,sValorImp);

sayprint.Bold(false);

iLin := iLin + 1;
sayprint.Say(iLin,0,'Forma de Pagto:');

if strtofloat(tirapontos(edidin.Text))  > 0 then
   begin
     iLin := iLin + 1;
     sayprint.Say(iLin,0,'A vista (');
     if strtofloat(tirapontos(edidin.Text)) > strtofloat(tirapontos(ediliquido.Text)) then
        begin
          sValorImp := formatfloat('###,##0.00',strtofloat(tirapontos(ediliquido.Text)));
          sValorImp := AlinNumD(10,strtofloat(tirapontos(ediliquido.Text)));
        end
     else
        begin
          sValorImp := formatfloat('###,##0.00',strtofloat(tirapontos(edidin.Text)));
          sValorImp := AlinNumD(10,strtofloat(tirapontos(edidin.Text )));
        end;
     //endi

     sayprint.Say(iLin,8,' R$ '+sValorImp+' )');

  end;
//endi



//imprime parcelas
iCols := 1;
iItens  := 0;
svlrdup1 := '0';
svlrdup2 := '0';
svlrdup3 := '0';

with frmdados do
    begin

      if strtofloat(tirapontos(edidin.Text)) < strtofloat(tirapontos(ediliquido.Text )) then
         begin

            cds_vencto.First;
            while true do
                 begin

                   sNumDup1 := '';
                   sVlrDup1 := '0';
                   sVctDup1 := '';
                   iParcDup1 := 0;

                   sNumDup1 := cds_vencto.fieldbyname('doc').asString;
                   sVlrDup1 := floattostr(cds_vencto.fieldbyname('valorreal').asfloat);
                   sVctDup1 := cds_vencto.fieldbyname('dtv').asString;
                   iParcDup1 := strtoint( copy(cds_vencto.fieldbyname('Parc').asString,1,2) );

                   iLin := iLin + 1;
                   sayprint.Say(iLin,0,'Parc '+inttostr(iParcDup1)+'( '+sVctDup1);
                   sValorImp := formatfloat('###,##0.00',strtofloat(tirapontos(sVlrDup1)) );
                   sValorImp := AlinNumD(10,strtofloat(tirapontos(sVlrDup1)));
                   sayprint.Say(iLin,8,' R$ '+sValorImp+' )');


                   cds_vencto.Next;
                   if cds_vencto.Eof then
                      break;
                   //endi

                 end;
            //endw

         end;
      //endi

    end;
//endth

//iLin := iLin + 1;
//sayprint.Say(iLin,0,   'Vendedor '+sVendedor);

iLin := iLin + 1;
sayprint.Say(iLin,0,   'Itens    '+formatfloat('00000',ftotI));

iLin := iLin + 1;
if ftote > 0 then
   sayprint.Say(iLin,0,'Troca    '+formatfloat('###,##0.00',ftotE));
//endi

if bReimp then
   begin
     iLin := iLin + 1;
     sayprint.Say(iLin,0,'Re-Impressão Pedido');
     iLin := iLin + 1;
     sayprint.Say(iLin,0,'Data Original '+sDataF);
   end;
//endi


for x := 1 to frmdados.Cds_Indice.fieldbyname('pulalinha').asInteger  do
  begin
     iLin := iLin + 1;
     sayprint.Say(iLin,0,'');
  end;
//endi

sayprint.FreeCommand(chr(13));
sayprint.EndPrn;

end;



procedure Tfrmfectra.edipdesc2Exit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc, svaldesc:string;


begin
try

  ftot :=  strtofloat(tirapontos(lbltotG.Caption));

  if edipdesc.Text <> spdesc_PA then
     begin

       fvaldesc :=  strtofloat(tirapontos(edipdesc.Text)) / 100 * ftot;
       svaldesc := floattostr(fvaldesc);

       edivaldesc.Text := formatfloat('0.00',fvaldesc);
       ediliquido.Text := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption)) - fvaldesc);

       spDesc_PA :=  edipdesc.Text;
       svaldesc_PA := formatfloat('0.00',fvaldesc);
       sliquido_PA := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption)) - fvaldesc);

     end;
  //endi




except
  if edipdesc.Enabled then
     edipdesc.SetFocus;
  //endi
end;
end;

procedure Tfrmfectra.edivaldesc2Exit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc:string;

begin
try
  ftot := strtofloat(tirapontos(lbltotG.Caption));

  if edivaldesc.Text <> svaldesc_PA then
     begin

       fvaldesc := strtofloat(tirapontos(edivaldesc.text));
       fpdesc := fvaldesc / ftot * 100;
       spdesc := floattostr(fpdesc);

       edipdesc.Text :=  floattostr(fpdesc);
       ediliquido.Text:= formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption)) - fvaldesc);

       svaldesc_PA := edivaldesc.Text;
       spdesc_PA := formatfloat('0.00',fpdesc);
       sliquido_PA := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption)) - fvaldesc);
       
     end;
  //endi






except

   edivaldesc.SetFocus;

end;

end;

procedure Tfrmfectra.ediliquido2Exit(Sender: TObject);
var fpdesc, fvaldesc, ftot:real;
begin
try
  ftot :=  strtofloat(tirapontos(lbltotG.Caption));

  if ediliquido.Text <>  sliquido_PA then
     begin

       edivaldesc.Text  :=  floattostr(  strtofloat(tirapontos(lbltotg.Caption))-strtofloat(tirapontos(ediliquido.Text)) );
       fpdesc                                               := strtofloat(tirapontos(edivaldesc.Text)) / ftot * 100;
       edipdesc.Text    := floattostr(fpdesc);

       sliquido_PA := ediliquido.Text;
       svaldesc_PA := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))-strtofloat(tirapontos(ediliquido.Text)) );
       spdesc_PA   := formatfloat('0.00',strtofloat(tirapontos(edivaldesc.Text)) / ftot * 100);


     end;
  //endi


except
  ediliquido.SetFocus;
end;

end;

function Tfrmfectra.AlinEdNumD(texto:TEdit):string;
var
  n: Integer;
  c: TCanvas;
  h: HWND;
  txt:string;
  // pode se usar Form1.Canvas se for a mesma fonte do Edit
begin
  texto.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(texto.Text)));
  c := TCanvas.Create;
  c.Handle := GetDeviceContext(h);
  c.Font := texto.Font;
  n := round((texto.Width - c.TextWidth(texto.Text) - 8) / c.TextWidth( ' '));
  texto.Text := stringofchar( ' ',n) + texto.Text;
  result := texto.Text;
end;




procedure Tfrmfectra.edipdescExit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc, svaldesc:string;


begin

try

  ftot :=  strtofloat(tirapontos(lbltotG.Caption));

  edipdesc.Text := AlinEdNumD(edipdesc);

  if ftot = 0 then
     begin
       exit;
     end;
  //endi

  if edipdesc.Text <> spdesc_PA then
     begin

       fvaldesc :=  strtofloat(tirapontos(edipdesc.Text)) / 100 * ftot;
       svaldesc := floattostr(fvaldesc);

       edivaldesc.Text := formatfloat('0.00',fvaldesc);
       ediliquido.Text := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption)) - fvaldesc);

       edivaldesc.Text := AlinEdNumD(edivaldesc);
       ediliquido.Text := AlinEdNumD(ediliquido);

       spDesc_PA   :=  edipdesc.Text;
       svaldesc_PA := formatfloat('0.00',fvaldesc);
       sliquido_PA := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption)) - fvaldesc);

     end;
  //endi




except
  if edipdesc.Enabled then
     edipdesc.SetFocus;
  //endi
end;


end;

procedure Tfrmfectra.edivaldescExit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc:string;

begin
try
  ftot := strtofloat(tirapontos(lbltotG.Caption));

  edivaldesc.Text := AlinEdNumD(edivaldesc);

  if ftot = 0 then
     begin
       exit;
     end;
  //endi

  if edivaldesc.Text <> svaldesc_PA then
     begin

       fvaldesc := strtofloat(tirapontos(edivaldesc.text));
       fpdesc := fvaldesc / ftot * 100;
       spdesc := floattostr(fpdesc);

       edipdesc.Text :=  floattostr(fpdesc);
       ediliquido.Text:= formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption)) - fvaldesc);

       edipdesc.Text := AlinEdNumD(edipdesc);
       ediliquido.Text := AlinEdNumD(ediliquido);

       svaldesc_PA := edivaldesc.Text;
       spdesc_PA := formatfloat('0.00',fpdesc);
       sliquido_PA := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption)) - fvaldesc);

     end;
  //endi
except
   if edivaldesc.Enabled then
      edivaldesc.SetFocus;
   //endi
end;

end;

procedure Tfrmfectra.ediliquidoExit(Sender: TObject);
var fpdesc, fvaldesc, ftot:real;
begin
try
  ftot :=  strtofloat(tirapontos(lbltotG.Caption));

  ediliquido.Text := AlinEdNumD(ediliquido);

  if ftot = 0 then
     begin
       exit;
     end;
  //endi

  if ediliquido.Text <>  sliquido_PA then
     begin

       edivaldesc.Text  :=  floattostr(  strtofloat(tirapontos(lbltotg.Caption))-strtofloat(tirapontos(ediliquido.Text)) );
       fpdesc           := strtofloat(tirapontos(edivaldesc.Text)) / ftot * 100;
       edipdesc.Text    := floattostr(fpdesc);

       edivaldesc.Text  := AlinEdNumD(edivaldesc);
       edipdesc.Text  := AlinEdNumD(edipdesc);

       sliquido_PA := ediliquido.Text;
       svaldesc_PA := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))-strtofloat(tirapontos(ediliquido.Text)) );
       spdesc_PA   := formatfloat('0.00',strtofloat(tirapontos(edivaldesc.Text)) / ftot * 100);


     end;
  //endi


except
  if ediliquido.Enabled then
     ediliquido.SetFocus;
  //endi
end;

end;

procedure Tfrmfectra.edipdescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif
if key = ',' then
   exit;
//endi
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure Tfrmfectra.edivaldescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif
if key = ',' then
   exit;
//endi
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure Tfrmfectra.ediliquidoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif
if key = ',' then
   exit;
//endi
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure Tfrmfectra.ediparcKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure Tfrmfectra.btncriaparcClick(Sender: TObject);
begin

ftot :=  strtofloat(tirapontos(lbltotG.Caption));

if ftot = 0 then
   begin
     exit;
   end;
//endi

criaparc;
end;

procedure Tfrmfectra.spdsalvarClick(Sender: TObject);
var

 CodigoNovo : Integer ;
 vardir, pIndex : String;
 sdescricao, sdte, sdoc, snumnf, sparte, sparc, sdtv, sdtl, sdtb, svalor, svalliq, sehvenda, svalorreal:string;
 iccli, iccla, inped, inos, ictipopgto, icodtipop, ic_svenda, icsit, iprazo, icodlivrocaixa:integer;
 fvalor, fvalliq, fvalorreal:real;


begin

  tabela := 'Vencimentos';

  if (frmdados.Cds_Vencto.State in [dsinsert, dsedit]) then
        begin

          //frmdados.Cds_Vencto.FieldByName('valorreal').AsFloat := frmdados.Cds_Vencto.FieldByName('valor').AsFloat;

          if (frmdados.Cds_Vencto.FieldByName('valor').asfloat   > strtofloat(tirapontos(edivalliq.Text)))
             and (strtoint(edicsit.Text) = 2)
             and (strtofloat(tirapontos(edivalliq.Text)) > 0 )
             and ((edidtl.Text <> '') or (edidtl.Text <> '  /  /    ') )
             and ((edidtb.Text <> '') or (edidtb.Text <> '  /  /    ') )
          then
             begin
               sdte       := frmdados.Cds_Vencto.fieldbyname('dte').asString;
               sdoc       := frmdados.Cds_Vencto.fieldbyname('doc').asString;
               snumnf     := frmdados.Cds_Vencto.fieldbyname('numnf').asString;
               sparte     := frmdados.Cds_Vencto.fieldbyname('parte').asString;
               sparc      := frmdados.Cds_Vencto.fieldbyname('parc').asString;
               sdtv       := frmdados.Cds_Vencto.fieldbyname('dtv').asString;
               iccli      := frmdados.Cds_Vencto.fieldbyname('ccli').asInteger;
               iccla      := frmdados.Cds_Vencto.fieldbyname('ccla').asInteger;
               inped      := frmdados.Cds_Vencto.fieldbyname('nped').asInteger;
               inos       := frmdados.Cds_Vencto.fieldbyname('nos').asInteger;
               ictipopgto := frmdados.Cds_Vencto.fieldbyname('c_tipo_pgto').asInteger;
               icodtipop  := frmdados.Cds_Vencto.fieldbyname('codtipop').asInteger;
               ic_svenda  := frmdados.Cds_Vencto.fieldbyname('c_svenda').asInteger;
               iprazo     := frmdados.Cds_Vencto.fieldbyname('prazo').asInteger;
               sehvenda   := frmdados.Cds_Vencto.fieldbyname('ehvenda').asString;
               icodlivrocaixa := frmdados.Cds_Vencto.fieldbyname('codlivrocaixa').asInteger;

               fvalorreal := frmdados.Cds_Vencto.FieldByName('valorreal').asfloat;
               fvalor     := frmdados.Cds_Vencto.FieldByName('valor').asfloat;
               fvalliq    := frmdados.Cds_Vencto.FieldByName('valliq').asfloat;
               svalor     := floattostr(frmdados.Cds_Vencto.fieldbyname('valor').asfloat);
               svalorreal := floattostr(frmdados.Cds_Vencto.fieldbyname('valorreal').asfloat);



               svalliq    := tirapontos(edivalliq.Text);

               sdtl       := edidtl.Text;
               sdtb       := edidtb.Text;
               sdescricao := frmdados.cds_vencto.fieldbyname('descricao').asString;
               icsit :=  strtoint( edicsit.Text );

               frmdados.Cds_Vencto.FieldByName('Valor').asfloat := frmdados.Cds_Vencto.FieldByName('Valor').asfloat - strtofloat(tirapontos(svalliq));
               frmdados.Cds_Vencto.FieldByName('Valliq').asfloat := 0;
               frmdados.Cds_Vencto.FieldByName('dtl').asString := '';
               frmdados.Cds_Vencto.FieldByName('dtb').asString := '';
               frmdados.Cds_Vencto.FieldByName('codtipop').asfloat := 0;
               frmdados.Cds_Vencto.FieldByName('csit').asInteger := 1;

               svalor :=  svalliq;


               with frmdados do
                 begin
                   dbx_Exec.Active := false;
                   dbx_Exec.SQL.Clear;
                   dbx_Exec.SQL.Add('Insert into Vencimentos(');

                   // 1
                   if (sdte <> '') or (sdte <> '  /  /    ') then
                      dbx_Exec.SQL.Add('dte, ');
                   //endi

                   // 2
                   if sdoc <> '' then
                      dbx_Exec.SQL.Add('doc, ');
                   //endi

                   // 3
                   if snumnf <> '' then
                      dbx_Exec.SQL.Add('numnf, ');
                   //endi

                   // 4
                   if sparte <> '' then
                      dbx_Exec.SQL.Add('parte, ');
                   //endi

                   // 5
                   if sParc <> '' then
                      dbx_Exec.SQL.Add('parc, ');
                   //endi

                   // 6
                   if sdtv <> '' then
                      dbx_Exec.SQL.Add('dtv, ');
                   //endi

                   // 7
                   if iccli > 0 then
                      dbx_Exec.SQL.Add('ccli, ');
                   //endi

                   // 8
                   if iccla > 0 then
                      dbx_Exec.SQL.Add('ccla, ');
                   //endi

                   // 9
                   if inped > 0 then
                      dbx_Exec.SQL.Add('nped, ');
                   //endi

                   // 10
                   if inos > 0 then
                      dbx_Exec.SQL.Add('nos, ');
                   //endi

                   // 11
                   if ictipopgto > 0 then
                      dbx_Exec.SQL.Add('c_tipo_pgto, ');
                   //endi

                   // 12
                   if icodtipop > 0 then
                      dbx_Exec.SQL.Add('codtipop, ');
                   //endi

                   // 13
                   //if ic_svenda > 0 then
                   //   dbx_Exec.SQL.Add('c_svenda, ');
                   //endi

                   // 14
                   if svalor <> '' then
                      dbx_Exec.SQL.Add('valor, ');
                   //endi

                   // 15
                   if svalliq <> '' then
                      dbx_Exec.SQL.Add('valliq, ');
                   //endi

                   // 16
                   dbx_Exec.SQL.Add('dtl, ');

                   // 17
                   dbx_Exec.SQL.Add('dtb, ');

                   // 18
                   dbx_Exec.SQL.Add('csit, ');

                   // 19
                   if iprazo > 0 then
                      dbx_Exec.SQL.Add('prazo, ');
                   //endi

                   // 20
                   if sehvenda <> '' then
                      dbx_Exec.SQL.Add('ehvenda, ');
                   //endi

                   // 21
                   if icodlivrocaixa > 0 then
                      dbx_Exec.SQL.Add('codlivrocaixa, ');
                   //endi

                   // 22
                   if svalorreal <> '' then
                      dbx_Exec.SQL.Add('valorreal, ');
                   //endi

                   // fechamento
                   dbx_Exec.SQL.Add('Descricao');

                   dbx_Exec.SQL.Add(')');

                   dbx_Exec.SQL.Add(' values (');

                   // 1
                   if (sdte <> '') or (sdte <> '  /  /    ') then
                      begin
                        sdte := bar_is_point(sdte);
                        dbx_Exec.SQL.Add( quotedstr(sdte)+',');
                      end;
                   //endi

                   // 2
                   if sdoc <> '' then
                      dbx_Exec.SQL.Add(quotedstr(sdoc)+',');
                   //endi

                   // 3
                   if snumnf <> '' then
                      dbx_Exec.SQL.Add(quotedstr(snumnf)+',');
                   //endi

                   // 4
                   if sparte <> ''then
                       dbx_Exec.SQL.Add(Quotedstr(sparte)+',');
                   //endi

                   // 5
                   if sparc <> '' then
                      dbx_Exec.SQL.Add(quotedstr(sparc)+',');
                   //endi

                   // 6
                   if (sDTV <> '') or (sDtv <> '  /  /    ') then
                      begin
                        sdtv := bar_is_point(sdtv);
                        dbx_Exec.SQL.Add(quotedstr(sdtv)+',');
                      end;
                   //endi

                   // 7
                   if iccli > 0 then
                      dbx_Exec.SQL.Add(inttostr(iccli)+',');
                   //endi

                   // 8
                   if iccla > 0 then
                      dbx_Exec.SQL.Add(inttostr(iccla)+',');
                   //endi

                   // 9
                   if inped > 0 then
                      dbx_Exec.SQL.Add(inttostr(inped)+',');
                   //endi

                   // 10
                   if inos > 0 then
                      dbx_Exec.SQL.Add(inttostr(inos)+',');
                   //endi

                   // 11
                   if ictipopgto > 0 then
                      dbx_Exec.SQL.Add(inttostr(ictipopgto)+',');
                   //endi

                   // 12
                   if icodtipop > 0 then
                      dbx_Exec.SQL.Add(inttostr(icodtipop)+',');
                   //endi

                   // 13
                   //if ic_svenda > 0 then
                   //   dbx_Exec.SQL.Add(inttostr(ic_svenda)+',');
                   //endi

                   // 14
                   if svalor <> '' then
                      begin
                        dbx_Exec.SQL.Add(decimal_is_point(svalor)+',');
                      end;
                   //endi

                   // 15
                   if svalliq <> '' then
                      dbx_Exec.SQL.Add(decimal_is_point(svalliq)+',');
                   //endi

                   // 16
                   sdtl := bar_is_point(sdtl);
                   dbx_Exec.SQL.Add(quotedstr(sdtl)+',');

                   // 17
                   sdtb := bar_is_point(sdtb);
                   dbx_Exec.SQL.Add(quotedstr(sdtb)+',');

                   // 18
                   dbx_Exec.SQL.Add(inttostr(icsit)+',');

                   // 19
                   if iprazo > 0 then
                      dbx_Exec.SQL.Add(inttostr(iprazo)+',');
                   //endi

                   // 20
                   if sehvenda <> '' then
                      begin
                        dbx_Exec.SQL.Add(quotedstr(sehvenda)+',');
                      end;
                   //endi

                   // 21
                   if icodlivrocaixa > 0 then
                      dbx_Exec.SQL.Add(inttostr(icodlivrocaixa)+',');
                   //endi

                   // 22
                   if svalorreal <> '' then
                      begin
                        dbx_Exec.SQL.Add(decimal_is_point(svalorreal)+',');
                      end;
                   //endi

                   // fechamento
                   dbx_Exec.SQL.Add(Quotedstr(sdescricao));

                   dbx_Exec.SQL.Add(')');

                   //showmessage(dbx_exec.SQL.Text);

                   dbx_Exec.ExecSQL;


                 end;
               //endi


             end;
          //endi

          frmdados.Cds_Vencto.Post;

          frmdados.Cds_Vencto.Refresh;
        end
     //endi
end;

end.
