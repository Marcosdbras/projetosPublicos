unit uimped;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, SqlExpr, Db,
  SayPrint;

type
  Tfrmimped = class(TForm)
    Label45: TLabel;
    lbltotG: TLabel;
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
    Label15: TLabel;
    edinumdup1: TDBEdit;
    edinumdup2: TDBEdit;
    edinumdup3: TDBEdit;
    edivlrdup3: TDBEdit;
    edivlrdup2: TDBEdit;
    edivlrdup1: TDBEdit;
    Label22: TLabel;
    Label30: TLabel;
    edivctdup1: TDBEdit;
    edivctdup2: TDBEdit;
    edivctdup3: TDBEdit;
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
    ediprazo1: TDBEdit;
    ediprazo2: TDBEdit;
    ediprazo3: TDBEdit;
    Label2: TLabel;
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
    procedure impnf;
    procedure ler_linha_col_nf(icodconfnf:integer);
    procedure spdimprimirClick(Sender: TObject);
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
    procedure ediprazo1Exit(Sender: TObject);
    procedure ediprazo2Exit(Sender: TObject);
    procedure ediprazo3Exit(Sender: TObject);
    procedure edivctdup1Exit(Sender: TObject);
    procedure edivctdup2Exit(Sender: TObject);
    procedure edivctdup3Exit(Sender: TObject);
    procedure ediparcEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    bAvista:boolean;
  public
    { Public declarations }
  end;

var
  frmimped: Tfrmimped;

implementation
  uses ugeral, upesqvd, uDados;
{$R *.dfm}

procedure Tfrmimped.spdcancelar2310Click(Sender: TObject);
begin
if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
   frmdados.Cds_sVenda.cancel;
//endi

close;
end;

procedure Tfrmimped.FormShow(Sender: TObject);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;

begin
  SqlStMt := 'Select gen_id(Gen_nNf,0) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
  if Assigned(ResultSet) then
     lblnnf.Caption  := formatfloat('00000',ResultSet.fieldbyname('valor').asInteger+1);
  //endi


  lbltotG.Caption := frmpesqvd.lbltotal.Caption;




  ediparc.Enabled := false;
  bloqueiaparcelas;

  limpart;

end;

procedure Tfrmimped.edipdescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif


end;

procedure Tfrmimped.edivaldescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.ediliquidoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.edidinKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.edinumdup1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.edinumdup2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.edinumdup3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.edivlrdup1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.edivlrdup2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.edivlrdup3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.edivctdup1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.edivctdup2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.edivctdup3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.cbxnaturezaKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.cbxcfopKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.ediBASECALCICMSSUBKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.ediVLRICMSSUBKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.edivlrfreteKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.edivlrseguroKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.edioutdespKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.ediplacaveiKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.cbxntranspKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.ediufveiKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.ediquantidadeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.ediespecieKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.edimarcaKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.edinumeroKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.edipesobKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.edipesolKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.edipdescExit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc, svaldesc:string;


begin
ftot :=  strtofloat(tirapontos(lbltotG.Caption));
fvaldesc := frmdados.Cds_sVenda.FieldByName('pdesc').asfloat / 100 * ftot;
svaldesc := floattostr(fvaldesc);
if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
   begin
     frmdados.Cds_sVenda.FieldByName('valdesc').asString := formatfloat('0.00',fvaldesc);
     frmdados.Cds_sVenda.FieldByName('liquido').asString := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))-fvaldesc);
   end;
//endi
end;

procedure Tfrmimped.edivaldescExit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc:string;

begin
ftot := strtofloat(tirapontos(lbltotG.Caption));
fvaldesc := frmdados.Cds_sVenda.FieldByName('valdesc').asfloat;

fpdesc := fvaldesc / ftot * 100;
spdesc := floattostr(fpdesc);

if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
   begin
     frmdados.Cds_sVenda.FieldByName('pdesc').asString := formatfloat('0',fpdesc);
     frmdados.Cds_sVenda.FieldByName('liquido').asString := formatfloat('0.00',strtofloat(tirapontos(lbltotg.Caption))-fvaldesc);
   end;
//endi

end;


procedure Tfrmimped.ediliquidoExit(Sender: TObject);
var fpdesc, fvaldesc, ftot:real;
begin
ftot :=  strtofloat(tirapontos(lbltotG.Caption));
if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
   begin
     frmdados.Cds_sVenda.FieldByName('valdesc').asfloat := strtofloat(tirapontos(lbltotg.Caption))-frmdados.Cds_sVenda.FieldByName('liquido').asfloat;
     fpdesc := frmdados.Cds_sVenda.FieldByName('valdesc').asfloat / ftot * 100;
     frmdados.Cds_sVenda.FieldByName('pdesc').asString := formatfloat('0',fpdesc);

   end;
//endi

end;
procedure tfrmimped.impnf;
var
  s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,sImp:string;
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
  Col, Centro,x, iLin, iItens:Integer;
  sDelimitador:string;
  sQtdeImp,sDescricaoImp,sCprodImp, sValorImp, sTotalImp, sUniImp, sImpcom:String;
  ftotG, ftotI, ftotE, fAliqICMS, fAliqIPI, fVlrIPI, fVlrICMS, ftotICMS,ftotIPI, ftotbcalcicms, ftotnf:real;
  sDataImp, sHoraImp, sDescICMS, sDescIPI, sDescSITA, sDescSITB, sDescCF:string;
  iColuna, iLinha, iNNF, itotp, il1, il2, ic280, ic290, ic300, ic310, ic311,
  ic320, ic330, ic340, ic350, ic360, ic370, ic371, iL620, iL630, iEspaco:Integer;
  bImpRecAnt:boolean;
begin

  iColuna := 0;
  iLinha  := 0;
  iNNF    := 0;
  itotp   := 0;
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

frmdados.Cds_dVenda.Active := false;
frmdados.dbx_dVenda.Active := false;
frmdados.dbx_dVenda.SQL.Clear;
frmdados.dbx_dVenda.SQL.Add('Select * from dVenda where ( codsvenda = '+frmdados.cds_sVenda.fieldbyname('codigo').asString+') and (impnf = '+Quotedstr('T')+')');
frmdados.dbx_dVenda.Active := true;
frmdados.cds_dVenda.Active := true;

if frmdados.Cds_dVenda.RecordCount = 0 then
   begin
     frmdados.cds_dVenda.Active := false;
     frmdados.dbx_dVenda.Active := false;
     frmdados.dbx_dVenda.SQL.Clear;
     frmdados.dbx_dVenda.SQL.Add('Select * from dVenda where codsvenda = '+frmdados.cds_sVenda.fieldbyname('codigo').asString);
     frmdados.dbx_dVenda.Active := true;
     frmdados.cds_dVenda.Active := true;
     exit;
   end;
//endi


bImpRecAnt := false;

frmdados.Cds_dVenda.First;

sayprint.BeginPrn;

if frmdados.Cds_Indice.FieldByName('Linhas_NF').asInteger = 0 then
   begin
     sayprint.Say(0,0,chr(27)+'50')
   end
else
   begin
     sayprint.Say(0,0,chr(27)+'48');
   end;
//endi
sayprint.EndPrn;


while true do
  begin

    ftotbcalcicms := 0;
    ftotICMS := 0;
    ftotIPI := 0;



    SqlStMt := 'Select gen_id(Gen_nNf,1) as Valor from RDB$DATABASE;';
    ResultSet := nil;
    frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       iNNf := ResultSet.fieldbyname('valor').asInteger;
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
            sayprint.Say(iLinha,iColuna,frmdados.cds_natop.fieldbyname('descricao').asString);
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
            sayprint.Say(iLinha,iColuna,'');
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
            sayprint.Say(iLinha,iColuna,frmdados.cds_clientes.fieldbyname('telefoneent').asString);
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
            sayprint.Say(iLinha,iColuna,'');
          end;
       //end
    //endi



    if not bavista then
       begin

         ler_linha_col_nf(189);
         if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 189 then
            if frmdados.Dbx_Conf_NF.FieldByName('imprime').asString = 'T' then
               begin
                 iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;
                 iLinha := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;
                 iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
                 sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('NumDup1').asString);
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
                 if frmdados.Cds_sVenda.fieldbyname('VlrDup1').asfloat > 0 then
                    sayprint.Say(iLinha,iColuna,AlinNumD(12,frmdados.Cds_sVenda.fieldbyname('VlrDup1').asfloat));
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
                 sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('VctDup1').asString);
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
                sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('NumDup2').asString);
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
                if frmdados.Cds_sVenda.fieldbyname('VlrDup2').asfloat > 0 then
                   sayprint.Say(iLinha,iColuna,AlinNumD(12,frmdados.Cds_sVenda.fieldbyname('VlrDup2').asfloat));
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
                sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('VctDup2').asString);
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
                sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('NumDup3').asString);
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
                if frmdados.Cds_sVenda.fieldbyname('VlrDup3').asfloat > 0 then
                   sayprint.Say(iLinha,iColuna,AlinNumD(12,frmdados.Cds_sVenda.fieldbyname('VlrDup3').asfloat));
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
                sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('VctDup3').asString);
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
                sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('NumDup4').asString);
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
                if frmdados.Cds_sVenda.fieldbyname('VlrDup4').asfloat > 0 then
                   sayprint.Say(iLinha,iColuna,AlinNumD(12,frmdados.Cds_sVenda.fieldbyname('VlrDup4').asfloat));
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
                sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('VctDup4').asString);
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
                 if frmdados.Cds_sVenda.fieldbyname('din').asfloat >= frmdados.Cds_sVenda.fieldbyname('liquido').asfloat then
                    sayprint.Say(iLinha,iColuna,AlinNumD(12,frmdados.Cds_sVenda.fieldbyname('liquido').asfloat))
                 else
                    sayprint.Say(iLinha,iColuna,AlinNumD(12,frmdados.Cds_sVenda.fieldbyname('din').asfloat));
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
                sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('NumDup1').asString);
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
                if frmdados.Cds_sVenda.fieldbyname('VlrDup1').asfloat > 0 then
                   sayprint.Say(iLinha,iColuna,AlinNumD(12,frmdados.Cds_sVenda.fieldbyname('VlrDup1').asfloat));
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
                sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('VctDup1').asString);
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
                sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('NumDup2').asString);
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
                if frmdados.Cds_sVenda.fieldbyname('VlrDup2').asfloat > 0 then
                   sayprint.Say(iLinha,iColuna,AlinNumD(12,frmdados.Cds_sVenda.fieldbyname('VlrDup2').asfloat));
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
                sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('VctDup2').asString);
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
                sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('NumDup3').asString);
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
                if frmdados.Cds_sVenda.fieldbyname('VlrDup3').asfloat > 0 then
                   sayprint.Say(iLinha,iColuna,AlinNumD(12,frmdados.Cds_sVenda.fieldbyname('VlrDup3').asfloat));
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
                sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('VctDup3').asString);
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

    //provisório
    //sayprint.EndPrn;
    //exit;

    ler_linha_col_nf(280);
    if frmdados.Dbx_Conf_NF.FieldByName('codigo').AsInteger = 280 then
       begin

         iColuna := frmdados.Dbx_Conf_NF.FieldByName('Coluna').AsInteger;;
         iLin    := frmdados.Dbx_Conf_NF.FieldByName('Linha').AsInteger;;
         iEspaco := frmdados.Dbx_Conf_NF.FieldByName('Espaco').AsInteger;
         iItens  := 0;

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

                   sQtdeImp      := AlinNumD3(10,Cds_dVenda.fieldbyname('qtde').asfloat);
                   sDescricaoImp := copy(Cds_dVenda.fieldbyname('npro').asString,1,34);
                   sCprodImp     := formatfloat('00000',Cds_dVenda.fieldbyname('cpro').asfloat);
                   sValorImp     := AlinNumD(10,Cds_dVenda.fieldbyname('prve').asfloat);
                   sTotalImp     := AlinNumD(12,Cds_dVenda.fieldbyname('subtotal').asfloat);
                   sUniImp       := Cds_dVenda.fieldbyname('nUnid').asString;

                   if cds_dvenda.fieldbyname('codCF').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from CF Where codigo = '+cds_dvenda.fieldbyname('codcf').asString);
                        Dbx_Exec.Active := true;
                        sDescCf := Dbx_Exec.fieldbyname('Descricao').asString;
                      end;
                   //endi

                   if cds_dvenda.fieldbyname('codSITA').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from SITA Where codigo = '+cds_dvenda.fieldbyname('codSITA').asString);
                        Dbx_Exec.Active := true;
                        sDescSITA := Dbx_Exec.fieldbyname('Descricao').asString;
                      end;
                   //endi

                   if cds_dvenda.fieldbyname('codSITB').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from SITB Where codigo = '+cds_dvenda.fieldbyname('codSITB').asString);
                        Dbx_Exec.Active := true;
                        sDescSITB := Dbx_Exec.fieldbyname('Descricao').asString;
                      end;
                   //endi

                   if cds_dvenda.fieldbyname('codICMS').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from AliqImpFis Where codigo = '+cds_dvenda.fieldbyname('codICMS').asString);
                        Dbx_Exec.Active := true;
                        sDescICMS := Dbx_Exec.fieldbyname('Sigla').asString;
                        fAliqICMS := Dbx_Exec.fieldbyname('Aliquota').asfloat;
                      end;
                   //endi

                   if cds_dvenda.fieldbyname('codIPI').asInteger > 0 then
                      begin
                        Dbx_Exec.Active := false;
                        Dbx_Exec.SQL.Clear;
                        Dbx_Exec.SQL.Add('Select * from IPI Where codigo = '+cds_dvenda.fieldbyname('codIPI').asString);
                        Dbx_Exec.Active := true;
                        sDescIPI := Dbx_Exec.fieldbyname('Descricao').asString;
                        fAliqIPI := Dbx_Exec.fieldbyname('Aliq').asfloat;
                      end;
                   //endi

                   Dbx_Exec.Active := false;

                   fVlrIPI := Cds_dVenda.fieldbyname('subtotal').asfloat * fAliqIPI / 100;
                   if Cds_Clientes.FieldByName('reducaoicms').AsString = 'T' then
                      fVlrICMS :=  (  Cds_dVenda.fieldbyname('subtotal').asfloat -  Cds_dVenda.fieldbyname('subtotal').asfloat * cds_indice.fieldbyname('reducaoicms').asfloat / 100 )   * fAliqICMS / 100
                   else
                      fVlrICMS := Cds_dVenda.fieldbyname('subtotal').asfloat * fAliqICMS / 100;
                   //endi
                   if fVlrICMS > 0 then
                      begin
                        if Cds_Clientes.FieldByName('reducaoicms').AsString = 'T' then
                           ftotbcalcicms := ftotbcalcicms + (  Cds_dVenda.fieldbyname('subtotal').asfloat -  Cds_dVenda.fieldbyname('subtotal').asfloat * cds_indice.fieldbyname('reducaoicms').asfloat / 100 )
                        else
                           ftotbcalcicms := ftotbcalcicms + Cds_dVenda.fieldbyname('subtotal').asfloat;
                        //endi
                      end
                   else
                      begin

                       if cds_dvenda.fieldbyname('codSITA').asInteger > 0 then
                          begin

                        Dbx_ImpRecAnt.Active := false;
                        Dbx_ImpRecAnt.SQL.Clear;
                        Dbx_ImpRecAnt.SQL.Add('Select * from ImpRecAnt where csita = '+cds_dvenda.fieldbyname('codSITA').asString);
                        Dbx_ImpRecAnt.Active := true;
                        if Dbx_ImpRecAnt.RecordCount > 0 then
                           begin
                             while not Dbx_ImpRecAnt.Eof do
                               begin
                                 if Dbx_ImpRecAnt.FieldByName('csitb').asInteger = cds_dvenda.fieldbyname('codSITb').asInteger then
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
                   Cds_dVenda.Next;
                   if Cds_dVenda.Eof then
                      break;
                   //endi


                   iItens := iItens + 1;
                   //if iItens >= 10 then
                   if iItens >= itotp then
                      break;
                   //endi



                 end;
              //endw


           end;
         //endth



    if (frmdados.Cds_dVenda.Eof) then
       begin

          with frmdados do
            begin
              dbx_exec.Active := false;
              dbx_exec.SQL.Clear;
              dbx_exec.SQL.Add('Select count(*) as totitens from dVenda where (codsvenda = '+cds_svenda.fieldbyname('codigo').asString+') and (EouS = '+quotedstr('S')+') and (IMPNF = '+QuotedStr('T')+')');
              dbx_exec.Active := true;
              ftotI := dbx_exec.fieldbyname('totitens').asfloat;

              dbx_exec.Active := false;
              dbx_exec.SQL.Clear;
              dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dVenda where (codsvenda = '+cds_svenda.fieldbyname('codigo').asString+') and (EouS = '+quotedstr('S')+') and (IMPNF = '+QuotedStr('T')+')');
              dbx_exec.Active := true;
              ftotG := dbx_exec.fieldbyname('totbruto').asfloat;

              dbx_exec.Active := false;
              dbx_exec.SQL.Clear;
              dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from dVenda where (codsvenda = '+cds_svenda.fieldbyname('codigo').asString+') and (EouS = '+quotedstr('E')+') and (IMPNF = '+QuotedStr('T')+')');
              dbx_exec.Active := true;
              ftotE := dbx_exec.fieldbyname('totbruto').asfloat;

              dbx_exec.Active := false;

            end;
          //endw

          ftotnf := ftotipi+ftotg+frmdados.Cds_sVenda.fieldbyname('vlrfrete').asfloat+frmdados.Cds_sVenda.fieldbyname('vlrseguro').asfloat+frmdados.Cds_sVenda.fieldbyname('outdesp').asfloat;

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
                  sayprint.Say(iLinha,iColuna,  AlinNumD(10,frmdados.Cds_sVenda.fieldbyname('basecalcicmssub').asfloat)  );
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
                  if frmdados.Cds_sVenda.fieldbyname('vlricmssub').asfloat > 0 then
                     sayprint.Say(iLinha,iColuna,AlinNumD(10,frmdados.Cds_sVenda.fieldbyname('vlricmssub').asfloat))
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
                  if frmdados.Cds_sVenda.fieldbyname('vlrfrete').asfloat > 0 then
                     sayprint.Say(iLinha,iColuna, AlinNumD(10,frmdados.Cds_sVenda.fieldbyname('vlrfrete').asfloat))
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
                  if frmdados.Cds_sVenda.fieldbyname('vlrseguro').asfloat > 0 then
                     sayprint.Say(iLinha,iColuna,AlinNumD(10,frmdados.Cds_sVenda.fieldbyname('vlrseguro').asfloat))
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
                  if frmdados.Cds_sVenda.fieldbyname('outdesp').asfloat > 0 then
                     sayprint.Say(iLinha,iColuna, AlinNumD(10,frmdados.Cds_sVenda.fieldbyname('outdesp').asfloat))
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
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('ntransp').asString);
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
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('fretep').asString);
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
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('placavei').asString);
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
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('ufvei').asString);
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
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_Transportadores.fieldbyname('Nome').asString);
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
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('Quantidade').asString );
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
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('especie').asString );
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
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('Marca').asString );
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
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('Numero').asString );
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
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('Pesob').asString );
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
                  sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('Pesol').asString );
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
                     if frmdados.Cds_sVenda.fieldbyname('DA1').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('DA1').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA1').asString)
                     //endi
                  else
                     if frmdados.Cds_Clientes.FieldByName('reducaoicms').AsString = 'T' then
                         sayprint.Say(iLinha,iColuna,'Base de calculo reduzida conf. D.L. 48959/04');
                     //endi
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
                     if frmdados.Cds_sVenda.fieldbyname('DA2').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('DA2').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA2').asString)
                     //endi
                  else
                     if bImpRecAnt then
                        sayprint.Say(iLinha,iColuna,'Imposto recolhido antecipadamente conf. ART. 426 A,');
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
                     if frmdados.Cds_sVenda.fieldbyname('DA3').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('DA3').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA3').asString)
                     //endi
                  else
                     if bImpRecAnt then
                        sayprint.Say(iLinha,iColuna,'e sujeito a subst. tributaria conf. ART. 313E, 313G.');
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
                     if frmdados.Cds_sVenda.fieldbyname('DA4').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('DA4').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA4').asString)
                     //endi
                  else
                     sayprint.Say(iLinha,iColuna,'');
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
                     if frmdados.Cds_sVenda.fieldbyname('DA5').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('DA5').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA5').asString)
                     //endi
                  else
                     sayprint.Say(iLinha,iColuna,'');
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
                     if frmdados.Cds_sVenda.fieldbyname('DA6').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('DA6').asString)
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
                     if frmdados.Cds_sVenda.fieldbyname('DA7').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('DA7').asString)
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
                     if frmdados.Cds_sVenda.fieldbyname('DA8').asString <> '' then
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_sVenda.fieldbyname('DA8').asString)
                     else
                        sayprint.Say(iLinha,iColuna,frmdados.Cds_Indice.fieldbyname('DA8').asString)
                     //endi
                  else
                     sayprint.Say(iLinha,iColuna,'');
                  //endi
                end;
             //end
          //endi

       end
    else
       begin


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



    if frmdados.Cds_dVenda.Eof then
       break;
    //endi




  end;
//endw
frmdados.cds_dVenda.Active := false;
frmdados.dbx_dVenda.Active := false;
frmdados.dbx_dVenda.SQL.Clear;
frmdados.dbx_dVenda.SQL.Add('Select * from dVenda where codsvenda = '+frmdados.cds_sVenda.fieldbyname('codigo').asString);
frmdados.dbx_dVenda.Active := true;
frmdados.cds_dVenda.Active := true;

frmdados.Dbx_Conf_NF.Active := false;

end;

procedure tfrmimped.ler_linha_col_nf(icodconfnf:integer);
begin
  frmdados.dbx_Conf_Nf.Active := false;
  frmdados.Dbx_Conf_NF.SQL.Clear;
  frmdados.Dbx_Conf_NF.SQL.Add('Select * from ConfNF where codigo = '+inttostr(icodconfnf));
  frmdados.Dbx_Conf_NF.Active := true;
end;




procedure Tfrmimped.spdimprimirClick(Sender: TObject);
var ftotal:currency;
    ftotalprazo:integer;
begin

ftotal := frmdados.Cds_sVenda.fieldbyname('din').asfloat+frmdados.Cds_sVenda.fieldbyname('vlrdup1').asfloat+frmdados.Cds_sVenda.fieldbyname('vlrdup2').asfloat+frmdados.Cds_sVenda.fieldbyname('vlrdup3').asfloat;


if ftotal < frmdados.Cds_sVenda.fieldbyname('liquido').asfloat then
   begin
     showmessage('Impressão de Nota Fiscal não permitida, Valores de Fechamento inconsistentes.');
     exit;
   end;
//endi

if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
   frmdados.Cds_sVenda.Post;
//endi
impnf;
close;
end;

procedure Tfrmimped.ediparcKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure tfrmimped.bloqueiaparcelas;
begin
  edinumdup1.Enabled := false;
  ediprazo1.Enabled := false;
  edivlrdup1.Enabled := false;
  edivctdup1.Enabled := false;

  edinumdup2.Enabled := false;
  ediprazo2.Enabled := false;
  edivlrdup2.Enabled := false;
  edivctdup2.Enabled := false;

  edinumdup3.Enabled := false;
  ediprazo3.Enabled := false;
  edivlrdup3.Enabled := false;
  edivctdup3.Enabled := false;

end;

procedure Tfrmimped.edidinExit(Sender: TObject);
begin
limparp;
bloqueiaparcelas;

if frmdados.Cds_sVenda.FieldByName('din').asfloat < frmdados.Cds_sVenda.FieldByName('liquido').asfloat  then
   begin
     ediparc.Enabled := true;
     if frmdados.Cds_Clientes.FieldByName('prazo').asInteger > 0 then
        begin
          frmdados.Cds_sVenda.FieldByName('parc').asInteger := 1;
          frmdados.Cds_sVenda.FieldByName('prazo1').asInteger := frmdados.Cds_Clientes.FieldByName('prazo').asInteger;
        end;
     //endi
     ediparc.SetFocus;
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

procedure Tfrmimped.limparT;
begin
  if (frmdados.Cds_sVenda.State <> dsinsert) or (frmdados.Cds_sVenda.State <> dsedit) then
     frmdados.Cds_sVenda.Edit;
  //endi

  frmdados.Cds_sVenda.FieldByName('pdesc').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('valdesc').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('liquido').asfloat := strtofloat(tirapontos(frmpesqvd.lbltotal.Caption));

  frmdados.Cds_sVenda.FieldByName('din').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('parc').asfloat := 0;

  frmdados.Cds_sVenda.FieldByName('numdup1').asString := '';
  frmdados.Cds_sVenda.FieldByName('prazo1').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('vlrdup1').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('vctdup1').asString := '';

  frmdados.Cds_sVenda.FieldByName('numdup2').asString := '';
  frmdados.Cds_sVenda.FieldByName('prazo2').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('vlrdup2').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('vctdup2').asString := '';

  frmdados.Cds_sVenda.FieldByName('numdup3').asString := '';
  frmdados.Cds_sVenda.FieldByName('prazo3').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('vlrdup3').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('vctdup3').asString := '';

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

end;

procedure tfrmimped.limparP;
begin
  frmdados.Cds_sVenda.FieldByName('numdup1').asString := '';
  frmdados.Cds_sVenda.FieldByName('prazo1').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('vlrdup1').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('vctdup1').asString := '';

  frmdados.Cds_sVenda.FieldByName('numdup2').asString := '';
  frmdados.Cds_sVenda.FieldByName('prazo2').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('vlrdup2').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('vctdup2').asString := '';

  frmdados.Cds_sVenda.FieldByName('numdup3').asString := '';
  frmdados.Cds_sVenda.FieldByName('prazo3').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('vlrdup3').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('vctdup3').asString := '';
 
end;


procedure Tfrmimped.ediparcExit(Sender: TObject);
var
   fvlrparc:currency;
begin


  if frmdados.Cds_sVenda.FieldByName('parc').asInteger <= 0 then
     begin
       ediparc.SetFocus;
       exit;
     end;
  //endi

  fvlrparc := (frmdados.Cds_sVenda.FieldByName('liquido').asfloat - frmdados.Cds_sVenda.FieldByName('din').asfloat) / frmdados.Cds_sVenda.FieldByName('parc').asInteger;

  edinumdup1.Enabled := true;
  ediprazo1.Enabled := true;
  edivlrdup1.Enabled := true;
  edivctdup1.Enabled := true;
  frmdados.Cds_sVenda.FieldByName('numdup1').asString := lblnnf.Caption + '-A';
  frmdados.Cds_sVenda.FieldByName('vlrdup1').asfloat := fvlrparc;

  if frmdados.Cds_sVenda.FieldByName('parc').asInteger > 1 then
     begin
       edinumdup2.Enabled := true;
       ediprazo2.Enabled := true;
       edivlrdup2.Enabled := true;
       edivctdup2.Enabled := true;
       frmdados.Cds_sVenda.FieldByName('numdup2').asString := lblnnf.Caption + '-B';
       frmdados.Cds_sVenda.FieldByName('vlrdup2').asfloat := fvlrparc;

       if frmdados.Cds_sVenda.FieldByName('parc').asInteger > 2 then
          begin
            edinumdup3.Enabled := true;
            ediprazo3.Enabled := true;
            edivlrdup3.Enabled := true;
            edivctdup3.Enabled := true;
            frmdados.Cds_sVenda.FieldByName('numdup3').asString := lblnnf.Caption + '-C';
            frmdados.Cds_sVenda.FieldByName('vlrdup3').asfloat := fvlrparc;

          end;
       //endi
     end;
  //endi

  edinumdup1.SetFocus;


end;

procedure Tfrmimped.edidinEnter(Sender: TObject);
begin
frmdados.Cds_sVenda.FieldByName('parc').asInteger := 0;
end;

procedure Tfrmimped.ediprazo1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.ediprazo2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.ediprazo3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmimped.ediprazo1Exit(Sender: TObject);
begin
frmdados.Cds_sVenda.FieldByName('vctdup1').asDatetime := date + frmdados.Cds_sVenda.FieldByName('prazo1').asInteger;
end;

procedure Tfrmimped.ediprazo2Exit(Sender: TObject);
begin
frmdados.Cds_sVenda.FieldByName('vctdup2').asDatetime := date + frmdados.Cds_sVenda.FieldByName('prazo2').asInteger;
end;

procedure Tfrmimped.ediprazo3Exit(Sender: TObject);
begin
frmdados.Cds_sVenda.FieldByName('vctdup3').asDatetime := date + frmdados.Cds_sVenda.FieldByName('prazo3').asInteger;
end;

procedure Tfrmimped.edivctdup1Exit(Sender: TObject);
begin
frmdados.Cds_sVenda.FieldByName('prazo1').asfloat := frmdados.Cds_sVenda.FieldByName('vctdup1').asDateTime - date;
end;

procedure Tfrmimped.edivctdup2Exit(Sender: TObject);
begin
frmdados.Cds_sVenda.FieldByName('prazo2').asfloat := frmdados.Cds_sVenda.FieldByName('vctdup2').asDateTime - date;
end;

procedure Tfrmimped.edivctdup3Exit(Sender: TObject);
begin
frmdados.Cds_sVenda.FieldByName('prazo3').asfloat := frmdados.Cds_sVenda.FieldByName('vctdup3').asDateTime - date;
end;

procedure Tfrmimped.ediparcEnter(Sender: TObject);
begin
  if frmdados.Cds_Clientes.FieldByName('prazo').asInteger > 0 then
     begin
       frmdados.Cds_sVenda.FieldByName('parc').asInteger := 1;
       frmdados.Cds_sVenda.FieldByName('prazo1').asInteger := frmdados.Cds_Clientes.FieldByName('prazo').asInteger;
     end;
  //endi

end;

procedure Tfrmimped.FormKeyDown(Sender: TObject; var Key: Word;
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

end.
