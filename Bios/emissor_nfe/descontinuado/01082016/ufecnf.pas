unit ufecnf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ComCtrls, ExtCtrls, Grids,
  DBGrids, DB;

type
  Tfrmfecnf = class(TForm)

    btnemitir: TBitBtn;
    btncancelar: TBitBtn;
    pctcadnf: TPageControl;
    tbstransportador: TTabSheet;
    Label24: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label25: TLabel;
    Label49: TLabel;
    edicnpjtransp: TDBText;
    Label50: TLabel;
    edienderecotransp: TDBText;
    Label51: TLabel;
    DBText23: TDBText;
    Label52: TLabel;
    edibairrotransp: TDBText;
    Label53: TLabel;
    ediceptransp: TDBText;
    Label54: TLabel;
    edimunicipiotransp: TDBText;
    Label55: TLabel;
    editelefonestransp: TDBText;
    Label56: TLabel;
    ediuftransp: TDBText;
    Label57: TLabel;
    ediietransp: TDBText;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    cbxdesctransp_cod5nf: TDBLookupComboBox;
    cbxdescfreteporconta_cod2nf: TDBLookupComboBox;
    ediplacavei: TEdit;
    EDIUFVEI: TEdit;
    EDIQUANTIDADE: TEdit;
    ediespecie: TEdit;
    edimarca: TEdit;
    EDINUMERO: TEdit;
    EDIPESOB: TEdit;
    EDIPESOL: TEdit;
    tbsadicnf: TTabSheet;
    mmoadicnf: TMemo;
    Label26: TLabel;
    edidatasai: TMaskEdit;
    Label27: TLabel;
    edihorasai: TMaskEdit;
    Label3: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    edivaldesc: TEdit;
    Label23: TLabel;
    EDILIQUIDO: TEdit;
    Label1: TLabel;
    lbltotal: TLabel;
    edipdesc: TEdit;
    Label6: TLabel;
    lbldestinatario: TLabel;
    Label15: TLabel;
    edibscalcsubstrib: TEdit;
    Label16: TLabel;
    EDIVLRICMSSUBTRIB: TEdit;              
    Label17: TLabel;
    edivlrfrete: TEdit;
    Label18: TLabel;
    EDIVLRSEG: TEdit;
    Label19: TLabel;
    edivlrout: TEdit;
    Label9: TLabel;
    ediiesubtrib: TEdit;
    lblmensagem: TLabel;
    Label10: TLabel;
    cbxdesccfop_cod7nf: TDBLookupComboBox;
    Label11: TLabel;
    Label12: TLabel;
    edialiqapicms: TEdit;
    Bevel7: TBevel;
    Label65: TLabel;
    edialiqapipi: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    edinnfrefdevol: TEdit;
    Label28: TLabel;
    edidatanfrefdevol: TMaskEdit;
    Bevel4: TBevel;
    ckbmostrafat: TCheckBox;
    tbsdup: TTabSheet;
    rgbformapgto: TRadioGroup;
    Label21: TLabel;
    edidin: TEdit;
    Label22: TLabel;
    edinparc: TEdit;
    btncalcular: TButton;
    Label29: TLabel;
    lbltotdup: TLabel;
    Bevel1: TBevel;
    DBGrid1: TDBGrid;
    Label30: TLabel;
    ediprazo: TEdit;
    Label31: TLabel;
    edivencimento: TMaskEdit;
    Label32: TLabel;
    edivalorp: TEdit;
    Label33: TLabel;
    ediperiodo: TEdit;
    Label34: TLabel;
    edidatainic: TMaskEdit;
    btneditar: TBitBtn;
    btnsalvar: TBitBtn;
    btncancelarparc: TBitBtn;
    edidte: TMaskEdit;
    Label35: TLabel;
    Label36: TLabel;
    ediproxnota: TEdit;
    ckbenviae: TCheckBox;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    cbxdesctiponf_cod1nf: TDBLookupComboBox;
    rg1: TRadioGroup;
    Edit1: TEdit;
    Label37: TLabel;
    edialiqapiss: TEdit;
    Pedido: TLabel;
    edinped: TEdit;
    cbxfinalidade: TComboBox;
    Label38: TLabel;
    Label39: TLabel;
    cbxindfinal: TComboBox;
    Label5: TLabel;
    cbxindpres: TComboBox;
    Label40: TLabel;
    edirefnfe: TEdit;
    Bevel2: TBevel;
    ckbdadosadic: TCheckBox;
    Timer1: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btncancelarClick(Sender: TObject);
    procedure limpar;
    procedure FormShow(Sender: TObject);
    procedure edipdescKeyPress(Sender: TObject; var Key: Char);
    procedure edivaldescKeyPress(Sender: TObject; var Key: Char);
    procedure EDILIQUIDOKeyPress(Sender: TObject; var Key: Char);
    procedure edibscalcsubstribKeyPress(Sender: TObject; var Key: Char);
    procedure EDIVLRICMSSUBTRIBKeyPress(Sender: TObject; var Key: Char);
    procedure edivlrfreteKeyPress(Sender: TObject; var Key: Char);
    procedure edivlroutKeyPress(Sender: TObject; var Key: Char);
    procedure EDIVLRSEGKeyPress(Sender: TObject; var Key: Char);
    procedure edidatasaiKeyPress(Sender: TObject; var Key: Char);
    procedure edipdescExit(Sender: TObject);
    procedure edivaldescExit(Sender: TObject);
    procedure EDILIQUIDOExit(Sender: TObject);
    procedure btnemitirClick(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure edinfatKeyPress(Sender: TObject; var Key: Char);
    procedure EDIPESOBKeyPress(Sender: TObject; var Key: Char);
    procedure EDIPESOLKeyPress(Sender: TObject; var Key: Char);
    procedure edidinKeyPress(Sender: TObject; var Key: Char);
    procedure edinparcKeyPress(Sender: TObject; var Key: Char);
    procedure tbsdupShow(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure btncalcularClick(Sender: TObject);
    procedure totalizadup;
    procedure limpararqdup;
    procedure totalizafat;
    procedure limpararqfat;
    procedure ediperiodoKeyPress(Sender: TObject; var Key: Char);
    procedure edivalorpKeyPress(Sender: TObject; var Key: Char);
    procedure ediprazoKeyPress(Sender: TObject; var Key: Char);
    procedure edidinExit(Sender: TObject);
    procedure edidatainicKeyPress(Sender: TObject; var Key: Char);
    procedure btneditarClick(Sender: TObject);
    procedure edivalorpExit(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure bloqueaparc;
    procedure desbloqueaparc;
    procedure btncancelarparcClick(Sender: TObject);
    procedure ediprazoExit(Sender: TObject);
    procedure edidteKeyPress(Sender: TObject; var Key: Char);
    procedure edivencimentoKeyPress(Sender: TObject; var Key: Char);
    procedure limparparc;
    procedure edivencimentoExit(Sender: TObject);
    procedure edidatasaiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ediproxnotaKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure monta_nota;

    function imprimenfe(caminho:string):boolean;
    function visualizanfe(caminho:string):boolean;


    procedure edinpedKeyPress(Sender: TObject; var Key: Char);
    procedure edialiqapissKeyPress(Sender: TObject; var Key: Char);
    procedure cbxfinalidadeKeyPress(Sender: TObject; var Key: Char);
    procedure edirefnfeKeyPress(Sender: TObject; var Key: Char);
    procedure cbxindpresKeyPress(Sender: TObject; var Key: Char);
    procedure cbxdesctiponf_cod1nfKeyPress(Sender: TObject; var Key: Char);
    procedure cbxindfinalKeyPress(Sender: TObject; var Key: Char);
    procedure edirefnfeExit(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);

  private
    { Private declarations }
    fsb_valorliquidoitem,
    fsb_valorliquidocupom:Currency;

    sb_valorliquidoitem,
    sb_valorliquidocupom:string;

    innf,
    icontadornfe,
    icodant:integer;

    faliqapicms,
    faliqapiss,
    ftotipi,
    ftotbcipi,
    ftotbcicms,
    ftoticms,
    ftotp:real;

    
    snped,
    scaminho,
    scnpjcpfemi,
    schavenfe:string;

    bmensagempro,
    bAut,
    bautImp:boolean;


  public
    { Public declarations }
  end;

var
  frmfecnf: Tfrmfecnf;

implementation
    uses ugeral, udados, upesqnf, umens, funcoes_ibpt;
{$R *.dfm}

procedure Tfrmfecnf.FormClose(Sender: TObject; var Action: TCloseAction);
var
  vardir:string;
begin

 

  vardir := extractfilepath(application.ExeName);
  
  frmdados.cds_nf.Locate('codigo',icodant,[]);

  pctcadnf.TabIndex := 0;
  Action:=caFree;
  frmfecnf:=nil;
  form_ativo := '';



  //lblmensagem.Caption := 'Concluindo...';
  //frmfecnf.Update;

  //while true do
  //  begin

  //    if fileexists(frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString+'\SAINFE.TXT' ) then
  //       begin
  //         deletefile(frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString+'\SAINFE.TXT');

           //AssignFile(f,vardir+'apagar.bat');
           //Rewrite(f); //abre o arquivo para escrita
           //Writeln(f,'cd '+frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString);
           //Writeln(f,'copy '+'SAINFE.TXT'+' '+frmdados.cds_indice.fieldbyname('caminhoarqnfetemp').AsString+'\SAINFEIMP.TXT');
           //Writeln(f,'del SAINFE.TXT');
           //Closefile(f); //fecha o handle de arquivo
           //WinExec(pchar(vardir+'apagar.bat'), SW_HIDE);

  //         break;

  //       end;
      //endi

  //    sleep(5000);
  //  end;
  //endi


end;

procedure Tfrmfecnf.btncancelarClick(Sender: TObject);
begin
close;
end;

procedure tfrmfecnf.limpar;
begin
  edidatasai.Text := datetostr(date);
  edihorasai.Text := '';
  edipdesc.Text := '0,00';
  edivaldesc.Text := '0,00';
  ediliquido.Text := '0,00';
  ediplacavei.Text := '';
  ediufvei.Text := '';
  ediquantidade.Text := '';
  ediespecie.Text := '';
  edimarca.Text := '';
  edinumero.Text := '';
  edipesob.Text := '';
  edipesol.Text := '';
  ediiesubtrib.Text := '';
  edibscalcsubstrib.Text := '0,00';
  edivlricmssubtrib.Text := '0,00';
  edivlrfrete.Text := '0,00';
  edivlrout.Text := '0,00';
  edivlrseg.Text := '0,00';
  edidin.Text := '0,00';
  edinparc.Text := '0';
  edidatainic.Text := datetostr(date);
  ediperiodo.text := '0';
  ediprazo.Text := '0';
  edivencimento.Text := '';
  edivalorp.Text := '0,00';

  mmoadicnf.Clear;


end;
procedure Tfrmfecnf.FormShow(Sender: TObject);
var
  f:TextFile;
  vardir, Linha:string;
  icontador, iPos:integer;
begin




vardir := extractfilepath(application.ExeName);


with frmdados do
  begin

    sql_consulta.Active := false;
    sql_consulta.SQL.Clear;
    sql_consulta.SQL.Add('select max(nnf) as numnota from indice');
    sql_consulta.Active := true;


    if cds_nf.FieldByName('chave').AsString  = '' then
       begin
         ediproxnota.Text :=  formatfloat('00000',sql_consulta.fieldbyname('numnota').asInteger);
       end
    else
       begin
         ediproxnota.Text :=  formatfloat('00000',cds_nf.fieldbyname('nnf').asInteger);
         ediproxnota.Enabled := false;
       end;
    //endi

  end;



 Edit1.Text := '';

edialiqapicms.Text := '0,00';
edialiqapipi.Text := '0,00';
edialiqapiss.Text := '0,00';
edinped.Text := '';
edirefnfe.Text := '';


edinnfrefdevol.Text := '';
edidatanfrefdevol.Text := '';




frmdados.cds_temp_imp.First;
while not frmdados.cds_temp_imp.Eof do
  begin
    frmdados.cds_temp_imp.Delete;
  end;
//endi


limpar;

//AssignFile(f,vardir+'copiaris.bat');
//Rewrite(f); //abre o arquivo para escrita
//Writeln(f,'cd '+frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString);
//Writeln(f,'copy '+'SAINFE.TXT'+' '+frmdados.cds_indice.fieldbyname('caminhoarqnfetemp').AsString+'\SAINFE_C'+formatfloat('000',icontadornfe)+'NF'+formatfloat('000',innf)+'.TXT');
//Writeln(f,'del SAINFE.TXT');
//Closefile(f); //fecha o handle de arquivo
//WinExec(pchar(vardir+'copiaris.bat'), SW_HIDE);

with frmdados do
  begin
    cds_temp.Edit;
    //cds_temp.FieldByName('cod5nf').asInteger := cds_transportador.fieldbyname('codigo').asInteger;
    //cds_temp.FieldByName('cod1nf').asInteger := cds_tiponf.fieldbyname('codigo').asInteger;
    //cds_temp.FieldByName('cod6nf').asInteger := cds_natop.fieldbyname('codigo').asInteger;
    
    cds_temp.FieldByName('cod1nf').asInteger := 2;
    //cds_temp.FieldByName('cod6nf').asInteger := 0;

  end;
//endth

with frmdados do
  begin
    cds_nfp.Filtered := false;
    cds_nfp.Filter := 'cnf = '+inttostr( frmdados.cds_nf.fieldbyname('codigo').asInteger );
    cds_nfp.Filtered := true;
  end;
//endth
frmpesqnf.totprod;

with frmdados do
  begin
    cds_nfs.Filtered := false;
    cds_nfs.Filter := 'cnf = '+inttostr( frmdados.cds_nf.fieldbyname('codigo').asInteger );
    cds_nfs.Filtered := true;             
  end;
//endth
frmpesqnf.totserv;

lbldestinatario.Caption := frmdados.cds_nf.fieldbyname('nomedest').asString;
lbltotal.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(frmpesqnf.lbltotprod.Caption))+strtofloat(tirapontos(frmpesqnf.lbltotserv.Caption)));
ediliquido.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(frmpesqnf.lbltotprod.Caption))+strtofloat(tirapontos(frmpesqnf.lbltotserv.Caption)));

if ediproxnota.Enabled then
   ediproxnota.SetFocus;
//endif


frmdados.cds_Temp.Edit;
frmdados.cds_Temp.FieldByName('cod5nf').asInteger := 0;


lblmensagem.Caption := '';

limpararqdup;
totalizadup;

limpararqfat;
totalizafat;


end;

procedure Tfrmfecnf.edipdescKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmfecnf.edivaldescKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmfecnf.EDILIQUIDOKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmfecnf.edibscalcsubstribKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmfecnf.EDIVLRICMSSUBTRIBKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmfecnf.edivlrfreteKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmfecnf.edivlroutKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmfecnf.EDIVLRSEGKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmfecnf.edidatasaiKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecnf.edipdescExit(Sender: TObject);
begin

edivaldesc.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(edipdesc.Text))*strtofloat(tirapontos(lbltotal.Caption))/100 );
ediliquido.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(lbltotal.Caption))-strtofloat(tirapontos(edivaldesc.Text)));
edipdesc.Text :=   formatfloat('###,###,##0.00',strtofloat(tirapontos(edipdesc.Text)));

end;

procedure Tfrmfecnf.edivaldescExit(Sender: TObject);
begin


edipdesc.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(edivaldesc.Text))/strtofloat(tirapontos(lbltotal.Caption))*100 );
ediliquido.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(lbltotal.Caption))-strtofloat(tirapontos(edivaldesc.Text)));
edivaldesc.Text :=   formatfloat('###,###,##0.00',strtofloat(tirapontos(edivaldesc.Text)));

end;

procedure Tfrmfecnf.EDILIQUIDOExit(Sender: TObject);
begin

edivaldesc.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(lbltotal.Caption))-strtofloat(tirapontos(ediliquido.Text)));
edipdesc.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(edivaldesc.Text))/strtofloat(tirapontos(lbltotal.Caption))*100 );
ediliquido.Text :=   formatfloat('###,###,##0.00',strtofloat(tirapontos(ediliquido.Text)));

end;

procedure Tfrmfecnf.btnemitirClick(Sender: TObject);
begin

frmdados.cds_nf.Locate('codigo',icodant,[]);

lblmensagem.Caption := '';
frmfecnf.Update;

//lblmensagem.Caption := 'Aguarde processamento de requisição NFE efetuada de outro equipamento...';
//application.MessageBox(pchar('Outro equipamento está emitindo neste momento, clique em ok e tente novamente daqui alguns segundos...'+chr(13)+'Se esta mensagem continuar a persistir clique em utilitários e desbloqueio de envio'),pchar('Atenção'),mb_ok);

if application.MessageBox('Deseja realmente emitir esta N.F.','Atenção',mb_yesno) <> 6 then
   exit;
//endi

if (frmdados.cds_nf.FieldByName('chave').AsString = '') or
   (frmdados.cds_nf.FieldByName('status').AsString <> 'V')
then
   begin
      application.MessageBox(pchar('Esta nota ainda não foi validada, clique no botão'+chr(13)+'correspondente e em seguida realize a emissão'),pchar('Atenção'),mb_ok);
      exit;
   end;
//endi

if not fileexists(  frmdados.cds_nf.FieldByName('caminhonfe').AsString ) then
  begin
    application.MessageBox(pchar('XML não encontrado nesta máquina, por favor clique no botão validar'+chr(13)+'e em seguida realize a emissão'),pchar('Atenção'),mb_ok);
    exit;
  end;
//endi

scaminho := frmdados.cds_nf.FieldByName('caminhonfe').AsString;

bautImp := imprimenfe(scaminho);

  if (bautImp) then
     begin

       frmdados.sql_nfe.Active := true;
       frmdados.cds_nfe.Active := true;

       frmdados.cds_nfe.Filtered := false;
       frmdados.cds_nfe.IndexName := 'codigo';
       frmdados.cds_nfe.Last;

       frmdados.cds_nfe.Append;
       frmdados.cds_nfe.FieldByName('cemi').asInteger :=  frmdados.Cds_emitente.fieldbyname('codigo').asInteger;
       frmdados.cds_nfe.FieldByName('tipodest').asString :=  frmdados.cds_nf.FieldByName('tipodest').AsString;
       frmdados.cds_nfe.FieldByName('cdest').asInteger :=  frmdados.cds_nf.fieldbyname('cdest').asInteger ;
       frmdados.cds_nfe.FieldByName('cnpjcpfdest').AsString := frmpesqnf.lblcnpj.Caption;


       scnpjcpfemi := tirapontos(frmdados.Cds_emitente.fieldbyname('cnpj').asString);
       scnpjcpfemi := tirabarras(scnpjcpfemi);
       scnpjcpfemi := tiratracos(scnpjcpfemi);



       frmdados.cds_nfe.FieldByName('cnpjcpfemi').AsString := scnpjcpfemi;


       {

       if frmdados.cds_nf.FieldByName('tipodest').AsString = 'C' then
          begin
            frmdados.cds_nfe.FieldByName('cdest').asInteger :=  frmdados.cds_clientes.fieldbyname('codigo').asInteger ;
          end;
       //endi

       if frmdados.cds_nf.FieldByName('tipodest').AsString = 'F' then
          begin
            frmdados.cds_nfe.FieldByName('cdest').asInteger :=  frmdados.cds_fornecedores.fieldbyname('codigo').asInteger ;
          end;
       //endi

       }


       if cbxdesctransp_cod5nf.text <> '' then
          frmdados.cds_nfe.FieldByName('ctransp').asInteger :=  frmdados.cds_transportador.fieldbyname('codigo').asInteger;
       //endi

       frmdados.cds_nfe.FieldByName('pdesc').asfloat :=  strtofloat(tirapontos(edipdesc.text));
       frmdados.cds_nfe.FieldByName('vdesc').asfloat :=  strtofloat(tirapontos(edivaldesc.text));
       frmdados.cds_nfe.FieldByName('total').asfloat :=  strtofloat(tirapontos(lbltotal.caption));
       frmdados.cds_nfe.FieldByName('liquido').asfloat :=  strtofloat(tirapontos(ediliquido.text));
       frmdados.cds_nfe.FieldByName('cnatop').asInteger :=  frmdados.cds_natop.fieldbyname('codigo').asInteger;
       frmdados.cds_nfe.FieldByName('bscalcsubtrib').asfloat :=  strtofloat(tirapontos(edibscalcsubstrib.text));
       frmdados.cds_nfe.FieldByName('vlricmssubtrib').asfloat :=  strtofloat(tirapontos(edivlricmssubtrib.text));
       frmdados.cds_nfe.FieldByName('placavei').asString := ediplacavei.text;
       frmdados.cds_nfe.FieldByName('ufvei').asString :=  ediufvei.Text;
       if edihorasai.Text <> '  :  ' then
          frmdados.cds_nfe.FieldByName('horasai').asString :=  edihorasai.Text;
       //endi
       if (edidatasai.Text <> '00/00/0000')  then
           frmdados.cds_nfe.FieldByName('datasai').asString :=  edidatasai.Text;
       //endi
       frmdados.cds_nfe.FieldByName('quantidade').asString :=  ediquantidade.Text;
       frmdados.cds_nfe.FieldByName('especie').asString :=  ediespecie.Text;
       frmdados.cds_nfe.FieldByName('marca').asString :=  edimarca.Text;
       frmdados.cds_nfe.FieldByName('numero').asString :=  edinumero.Text;
       frmdados.cds_nfe.FieldByName('pesob').asString :=  edipesob.Text;
       frmdados.cds_nfe.FieldByName('pesol').asString :=  edipesol.Text;
       frmdados.cds_nfe.FieldByName('adicnf').asString :=  mmoadicnf.Text;
       frmdados.cds_nfe.FieldByName('adicpostofiscal').asString :=  '';
       frmdados.cds_nfe.FieldByName('ctiponf').asInteger :=  frmdados.cds_tiponf.fieldbyname('codigo').asInteger;
       if  (cbxdescfreteporconta_cod2nf.text <> '') then
           begin
             frmdados.cds_nfe.FieldByName('cfreteporconta').asInteger := frmdados.cds_onusdofrete.fieldbyname('codigo').asInteger;
           end;
       //endi
       frmdados.cds_nfe.FieldByName('nnf').asInteger :=  innf;
       frmdados.cds_nfe.FieldByName('tvlrfrete').asfloat :=  strtofloat(tirapontos(edivlrfrete.text));
       frmdados.cds_nfe.FieldByName('dataemi').asString :=   datetostr(date);
       frmdados.cds_nfe.FieldByName('tvlrseg').asfloat :=    strtofloat(tirapontos(edivlrseg.text));
       frmdados.cds_nfe.FieldByName('tvlrvii').asfloat :=  0;
       frmdados.cds_nfe.FieldByName('tvlripi').asfloat :=  ftotipi;
       frmdados.cds_nfe.FieldByName('tvlrpis').asfloat :=  0;
       frmdados.cds_nfe.FieldByName('tvlrcofins').asfloat :=  0;
       frmdados.cds_nfe.FieldByName('tvlrout').asfloat:= strtofloat( tirapontos(edivlrout.text) );
       frmdados.cds_nfe.FieldByName('ndest').asString :=  '';
       frmdados.cds_nfe.FieldByName('iesubstrib').asString :=  ediiesubtrib.Text;
       frmdados.cds_nfe.FieldByName('modelonf').asString :=  '';
       frmdados.cds_nfe.FieldByName('serienf').asString :=  '';
       frmdados.cds_nfe.FieldByName('codigonf').asString :=  '';
       frmdados.cds_nfe.FieldByName('tiponf').asString :=  '';
       frmdados.cds_nfe.FieldByName('formapgtonf').asString :=  inttostr(rgbformapgto.ItemIndex);
       frmdados.cds_nfe.FieldByName('cuftransp').asInteger :=  0;
       frmdados.cds_nfe.FieldByName('vlrserv').asfloat :=  0;
       frmdados.cds_nfe.FieldByName('vlrbsserv').asfloat :=  0;
       frmdados.cds_nfe.FieldByName('aliqserv').asfloat := 0 ;
       frmdados.cds_nfe.FieldByName('vlriss').asfloat :=  0;
       frmdados.cds_nfe.FieldByName('bcipi').asfloat :=  ftotbcipi;
       frmdados.cds_nfe.FieldByName('aliqipi').asfloat := 0 ;
       frmdados.cds_nfe.FieldByName('ccofins').asInteger :=  0;
       frmdados.cds_nfe.FieldByName('ncofins').asString :=  '';
       frmdados.cds_nfe.FieldByName('bscofins').asfloat :=  0;
       frmdados.cds_nfe.FieldByName('aliqcofins').asfloat :=  0;
       frmdados.cds_nfe.FieldByName('vcofins').asfloat :=  0;
       frmdados.cds_nfe.FieldByName('totbcicms').asfloat :=  ftotbcicms;
       frmdados.cds_nfe.FieldByName('toticms').asfloat :=  ftoticms;
       frmdados.cds_nfe.FieldByName('totp').asfloat :=  ftotp;
       frmdados.cds_nfe.FieldByName('vlrdesc').asfloat :=  0;
       frmdados.cds_nfe.FieldByName('totipi').asfloat :=  ftotipi;
       frmdados.cds_nfe.FieldByName('vlrpis').asfloat :=  0;
       frmdados.cds_nfe.FieldByName('vlrcofins').asfloat :=  0;
       frmdados.cds_nfe.FieldByName('vlrtotal').asfloat :=  ftotp-strtofloat(edivaldesc.text)+ftotipi;
       frmdados.cds_nfe.FieldByName('ccfoptrans').asInteger :=  0;
       frmdados.cds_nfe.FieldByName('cidadecodtrans').asInteger :=  0;
       frmdados.cds_nfe.FieldByName('ufplacavei').asString :=  '';
       frmdados.cds_nfe.FieldByName('rntc').asString :=  '';
       frmdados.cds_nfe.FieldByName('arquivonfe').asString := 'SAINFE_C'+formatfloat('00000',icontadornfe)+'NF'+formatfloat('00000',innf)+'.TXT' ;
       frmdados.cds_nfe.FieldByName('cnf').asInteger :=  frmdados.cds_nf.fieldbyname('codigo').asInteger;
       frmdados.cds_nfe.FieldByName('contador').asInteger :=  icontadornfe;
       frmdados.cds_nfe.FieldByName('chave').asString :=  schavenfe;

       frmdados.cds_nfe.Post;
       frmdados.cds_nfe.Active := false;
       frmdados.sql_nfe.Active := false;


     end;
  //endif










//monta_nota;
close;

end;

function Tfrmfecnf.imprimenfe(caminho:string):boolean;
var
  f:TextFile;
  Vardir, Linha, semail_dest, semail_cc:String;
  bNaut:boolean;
  iPos:integer;
begin
  bAut := false;
  bNaut := false;

  vardir := extractfilepath(application.ExeName);

  //if fileexists(frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString+'\SAINFE.TXT' ) then
  //   begin

  //     deletefile(frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString+'\SAINFE.TXT');

       //showmessage('Clique em OK para solicitar impressão');

  //   end;
  //endi



  //Closefile(f);
  AssignFile(f,vardir+'ENTNFE.TXT');
  Rewrite(f); //abre o arquivo para escrita

  //if sAcao = 'V' then
  //   begin
  //     Writeln(f,'NFE.IMPRIMIRDANFE("'+caminho+'")')
  //   end
  //else
  //   begin

  Writeln(f,'NFE.EnviarNFe("'+caminho+'",1,1,1)');


  //   end;
  //endi

  Closefile(f); //fecha o handle de arquivo

  AssignFile(f,vardir+'c2.bat');
  Rewrite(f); //abre o arquivo para escrita
  Writeln(f,'cd '+vardir);
  Writeln(f,'copy '+'ENTNFE.TXT'+' '+frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString);
  Writeln(f,'del '+vardir+'c2.bat');
  Closefile(f); //fecha o handle de arquivo
  WinExec(pchar(vardir+'c2.bat'), SW_HIDE);  

  while true do

        begin
          //aqui
          lblmensagem.Caption := 'Realize a impressão assim que possível ...';
          frmfecnf.Update;

          if fileexists(frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString+'\SAINFE.TXT' ) then
             begin
               AssignFile(f,  frmdados.Cds_Indice.fieldbyname('caminhoarqnfe').asString+'\SAINFE.TXT');
               Reset(f);
               While not Eof(f) do
                 begin
                   Readln(f, Linha);
                   iPos := pos('Autorizado',linha);
                   if ( iPos > 0) then
                      begin
                        bAut := true;
                        lblmensagem.Caption := 'Impressão realizada com sucesso, aguarde encerramento desta tela...';
                        frmfecnf.Update;
                        sleep(5000);
                        scaminho := copy(Linha,iPos,length(Linha));
                        break;
                      end;
                   //endi
                 end;
               //endw
               CloseFile(f);
               if (bAut) then
                  begin
                    break;
                  end
               else
                  begin
                    bNaut := true;
                    //if sAcao = 'V' then
                    //lblmensagem.Caption := 'Visualização concluída';
                    //else

                    //lblmensagem.Caption := 'Rejeição do documento pela secretaria da fazenda, verifique os erros';

                    //endi
                    frmfecnf.Update;
                    sleep(5000);
                    break;
                  end;
               //endi
             end;
          //endi
          Application.ProcessMessages; {ESC key stops the loop}
          if GetKeyState(VK_Escape) AND 128 = 128 then
             break ;
          //endi
          if (bAut) then
             begin
               break;
             end;
          //endi
          //if (bNaut) then
          //   begin
          //     break;
          //   end;
          //endi
          sleep(5000);
        end;
  //endw

  if bNaut then
    begin

      result := false;
      exit;

    end;





//-------------

 sleep(5000);

  //Closefile(f);
  AssignFile(f,vardir+'ENTNFE.TXT');
  Rewrite(f); //abre o arquivo para escrita


  if frmdados.cds_nf.FieldByName('tipodest').AsString  = 'C' then
     if frmdados.cds_clientes.Locate('codigo',frmdados.cds_nf.fieldbyname('cdest').asInteger,[]) then
        semail_dest := frmdados.cds_clientes.fieldbyname('email').AsString;
     //endif
  //endif

  if frmdados.cds_nf.FieldByName('tipodest').AsString  = 'F' then
     if frmdados.cds_fornecedores.Locate('codigo',frmdados.cds_nf.fieldbyname('cdest').asInteger,[]) then
       semail_dest := frmdados.cds_fornecedores.fieldbyname('email').AsString;
     //endif
  //endif

  if  ckbenviae.Checked then
      if semail_dest <> '' then
         Writeln(f,'NFE.ENVIAREMAIL("'+semail_dest+'","'+caminho+'",1');
      //endif
  //endif

  Closefile(f); //fecha o handle de arquivo

  AssignFile(f,vardir+'c7.bat');
  Rewrite(f); //abre o arquivo para escrita
  Writeln(f,'cd '+vardir);
  Writeln(f,'copy '+'ENTNFE.TXT'+' '+frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString);
  Writeln(f,'del '+vardir+'c7.bat');
  Closefile(f); //fecha o handle de arquivo
  WinExec(pchar(vardir+'c7.bat'), SW_HIDE);





  result := true;
end;



function Tfrmfecnf.visualizanfe(caminho:string):boolean;
var
  f:TextFile;
  Vardir, Linha, semail_dest, semail_cc:String;
  bNaut:boolean;
  iPos:integer;
begin
  bAut := false;
  bNaut := false;

  vardir := extractfilepath(application.ExeName);

  AssignFile(f,vardir+'ENTNFE.TXT');
  Rewrite(f); //abre o arquivo para escrita

  //if sAcao = 'V' then
  //   begin

  Writeln(f,'NFE.IMPRIMIRDANFE("'+caminho+'")');

  //   end
  //else
  //   begin
  //Writeln(f,'NFE.EnviarNFe("'+caminho+'",1,1,1)');
  //   end;
  //endi

  Closefile(f); //fecha o handle de arquivo

  AssignFile(f,vardir+'c2.bat');
  Rewrite(f); //abre o arquivo para escrita
  Writeln(f,'cd '+vardir);
  Writeln(f,'copy '+'ENTNFE.TXT'+' '+frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString);
  Writeln(f,'del '+vardir+'c2.bat');
  Closefile(f); //fecha o handle de arquivo
  WinExec(pchar(vardir+'c2.bat'), SW_HIDE);

  while true do
        begin
          //aqui
          lblmensagem.Caption := 'Aguarde validação desta nota ...';
          frmfecnf.Update;

          if fileexists(frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString+'\SAINFE.TXT' ) then
             begin
               AssignFile(f,  frmdados.Cds_Indice.fieldbyname('caminhoarqnfe').asString+'\SAINFE.TXT');
               Reset(f);
               While not Eof(f) do
                 begin
                   Readln(f, Linha);
                   iPos := pos('Autorizado',linha);
                   if ( iPos > 0) then
                      begin
                        bAut := true;
                        lblmensagem.Caption := 'Impressão realizada com sucesso, aguarde encerramento desta tela...';
                        frmfecnf.Update;
                        sleep(5000);
                        scaminho := copy(Linha,iPos,length(Linha));
                        break;
                      end;
                   //endi
                 end;
               //endw
               CloseFile(f);
               if (bAut) then
                  begin
                    break;
                  end
               else
                  begin
                    bNaut := true;
                    //if sAcao = 'V' then

                    lblmensagem.Caption := 'Validação concluída, prossiga com a emissão da nota...';

                    //else
                    //lblmensagem.Caption := 'Rejeição do documento pela secretaria da fazenda, verifique os erros';
                    //endi
                    frmfecnf.Update;
                    sleep(5000);
                    break;
                  end;
               //endi
             end;
          //endi
          Application.ProcessMessages; {ESC key stops the loop}
          if GetKeyState(VK_Escape) AND 128 = 128 then
             break ;
          //endi
          if (bAut) then
             begin
               break;
             end;
          //endi
          if (bNaut) then
             begin
               break;
             end;
          //endi
          sleep(5000);
        end;
  //endw

  if bNaut then
    begin

      result := false;
      exit;

    end;





//-------------

 sleep(5000);

  //Closefile(f);
  AssignFile(f,vardir+'ENTNFE.TXT');
  Rewrite(f); //abre o arquivo para escrita


  if frmdados.cds_nf.FieldByName('tipodest').AsString  = 'C' then
     if frmdados.cds_clientes.Locate('codigo',frmdados.cds_nf.fieldbyname('cdest').asInteger,[]) then
        semail_dest := frmdados.cds_clientes.fieldbyname('email').AsString;
     //endif
  //endif

  if frmdados.cds_nf.FieldByName('tipodest').AsString  = 'F' then
     if frmdados.cds_fornecedores.Locate('codigo',frmdados.cds_nf.fieldbyname('cdest').asInteger,[]) then
       semail_dest := frmdados.cds_fornecedores.fieldbyname('email').AsString;
     //endif
  //endif

  if  ckbenviae.Checked then
      if semail_dest <> '' then
         Writeln(f,'NFE.ENVIAREMAIL("'+semail_dest+'","'+caminho+'",1');
      //endif
  //endif

  Closefile(f); //fecha o handle de arquivo

  AssignFile(f,vardir+'c7.bat');
  Rewrite(f); //abre o arquivo para escrita
  Writeln(f,'cd '+vardir);
  Writeln(f,'copy '+'ENTNFE.TXT'+' '+frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString);
  Writeln(f,'del '+vardir+'c7.bat');
  Closefile(f); //fecha o handle de arquivo
  WinExec(pchar(vardir+'c7.bat'), SW_HIDE);





  result := true;
end;








procedure Tfrmfecnf.FormCreate(Sender: TObject);
begin
frmdados.sql_tiponf.Active := true;
frmdados.cds_tiponf.Active := true;

frmdados.sql_natop.Active := true;
frmdados.cds_natop.Active := true;

frmdados.sql_transportador.Active := true;
frmdados.cds_transportador.Active := true;

frmdados.sql_onusdofrete.Active := true;
frmdados.cds_onusdofrete.Active := true;

frmdados.sql_cfop.Active := true;
frmdados.cds_cfop.Active := true;

frmdados.sql_regtrib.Active := true;
frmdados.cds_regtrib.Active := true;

frmdados.cds_temp_imp.Active := true;

bmensagempro := false;

end;







          {

          case iI of
             0:begin
                 if cds_modbc.Locate('codigo',cds_nfp.fieldbyname('cod6prodnf').asInteger,[]) then
                    begin
                      smodbc := Cds_modbc.fieldbyname('sigla').asString;
                      smodbc := tirapontos(smodbc);
                      smodbc := tiratracos(smodbc);
                      smodbc := tirabarras(smodbc);
                      Writeln(f,'modBC='+smodbc);

                    end;
                 //endi

                 //ValorBase=
                 Writeln(f,'vBC='+formatfloat('0.00',fbcicms));

                 //Aliquota=
                 Writeln(f,'pICMS='+formatfloat('0.00',faliqicms));

                 //Valor=
                 Writeln(f,'vICMS='+formatfloat('0.00',fvicms));

               end;

            10:begin
                 if cds_modbc.Locate('codigo',cds_nfp.fieldbyname('cod6prodnf').asInteger,[]) then
                    begin
                      smodbc := Cds_modbc.fieldbyname('sigla').asString;
                      smodbc := tirapontos(smodbc);
                      smodbc := tiratracos(smodbc);
                      smodbc := tirabarras(smodbc);
                      Writeln(f,'modBC='+smodbc);

                    end;
                 //endi

                 //ValorBase=
                 Writeln(f,'vBC='+formatfloat('0.00',fbcicms));

                 //Aliquota=
                 Writeln(f,'pICMS='+formatfloat('0.00',faliqicms));

                 //Valor=
                 Writeln(f,'vICMS='+formatfloat('0.00',fvicms));

                 if cds_modbcst.Locate('codigo',cds_nfp.fieldbyname('cod7prodnf').asInteger,[]) then
                    begin
                      smodbcst := Cds_modbcst.fieldbyname('sigla').asString;
                      smodbcst := tirapontos(smodbcst);
                      smodbcst := tiratracos(smodbcst);
                      smodbcst := tirabarras(smodbcst);
                      Writeln(f,'modBCST='+smodbcst);

                    end;
                 //endi

                 Writeln(f,'pMVAST=');

                 Writeln(f,'pRedBCST=');

                 Writeln(f,'vBCST=');

                 Writeln(f,'pICMSST=');

                 Writeln(f,'vICMSST=');



               end;

            20:begin
                 if cds_modbc.Locate('codigo',cds_nfp.fieldbyname('cod6prodnf').asInteger,[]) then
                    begin
                      smodbc := Cds_modbc.fieldbyname('sigla').asString;
                      smodbc := tirapontos(smodbc);
                      smodbc := tiratracos(smodbc);
                      smodbc := tirabarras(smodbc);
                      Writeln(f,'modBC='+smodbc);

                    end;
                 //endi

                 Writeln(f,'pRedBC='+formatfloat('0.00',freducaobcicms));


                 Writeln(f,'vBC='+formatfloat('0.00',fbcicms));


                 Writeln(f,'pICMS='+formatfloat('0.00',faliqicms));


                 Writeln(f,'vICMS='+formatfloat('0.00',fvicms));


               end;

            30:begin

                 if cds_modbcst.Locate('codigo',cds_nfp.fieldbyname('cod7prodnf').asInteger,[]) then
                    begin
                      smodbcst := Cds_modbcst.fieldbyname('sigla').asString;
                      smodbcst := tirapontos(smodbcst);
                      smodbcst := tiratracos(smodbcst);
                      smodbcst := tirabarras(smodbcst);
                      Writeln(f,'modBCST='+smodbcst);

                    end;
                 //endi

                 Writeln(f,'pMVAST=');

                 Writeln(f,'pRedBCST=');

                 Writeln(f,'vBCST=');

                 Writeln(f,'pICMSST=');

                 Writeln(f,'vICMSST=');



               end;


            40:begin

                 Writeln(f,'vICMS='+formatfloat('0.00',fvicms));

                 //tabela de justificação da dosoneração do ICMS,
                 //verificar manual NFE para implementa-la
                 // quando informação do valor ICMS acima for
                 // inserido esta tabela deve ser especificada
                 //if cds_modbcst.Locate('codigo',cds_nfp.fieldbyname('cod7prodnf').asInteger,[]) then
                 //   begin
                 //     smodbcst := Cds_modbcst.fieldbyname('sigla').asString;
                 //     smodbcst := tirapontos(smodbcst);
                 //     smodbcst := tiratracos(smodbcst);
                 //     smodbcst := tirabarras(smodbcst);
                 //     Writeln(f,'modBCST='+smodbcst);

                 //   end;
                 //endi


               end;
            41:begin

                 Writeln(f,'vICMS='+formatfloat('0.00',fvicms));

                 //tabela de justificação da dosoneração do ICMS,
                 //verificar manual NFE para implementa-la
                 // quando informação do valor ICMS acima for
                 // inserido esta tabela deve ser especificada
                 //if cds_modbcst.Locate('codigo',cds_nfp.fieldbyname('cod7prodnf').asInteger,[]) then
                 //   begin
                 //     smodbcst := Cds_modbcst.fieldbyname('sigla').asString;
                 //     smodbcst := tirapontos(smodbcst);
                 //     smodbcst := tiratracos(smodbcst);
                 //     smodbcst := tirabarras(smodbcst);
                 //     Writeln(f,'modBCST='+smodbcst);

                 //   end;
                 //endi


               end;
            50:begin

                 Writeln(f,'vICMS='+formatfloat('0.00',fvicms));

                 //tabela de justificação da dosoneração do ICMS,
                 //verificar manual NFE para implementa-la
                 // quando informação do valor ICMS acima for
                 // inserido esta tabela deve ser especificada
                 //if cds_modbcst.Locate('codigo',cds_nfp.fieldbyname('cod7prodnf').asInteger,[]) then
                 //   begin
                 //     smodbcst := Cds_modbcst.fieldbyname('sigla').asString;
                 //     smodbcst := tirapontos(smodbcst);
                 //     smodbcst := tiratracos(smodbcst);
                 //     smodbcst := tirabarras(smodbcst);
                 //     Writeln(f,'modBCST='+smodbcst);

                 //   end;
                 //endi


               end;
            51:begin
                 if cds_modbc.Locate('codigo',cds_nfp.fieldbyname('cod6prodnf').asInteger,[]) then
                    begin
                      smodbc := Cds_modbc.fieldbyname('sigla').asString;
                      smodbc := tirapontos(smodbc);
                      smodbc := tiratracos(smodbc);
                      smodbc := tirabarras(smodbc);
                      Writeln(f,'modBC='+smodbc);

                    end;
                 //endi

                 Writeln(f,'pRedBC='+formatfloat('0.00',freducaobcicms));


                 Writeln(f,'vBC='+formatfloat('0.00',fbcicms));


                 Writeln(f,'pICMS='+formatfloat('0.00',faliqicms));


                 Writeln(f,'vICMS='+formatfloat('0.00',fvicms));


               end;

            60:begin

                 Writeln(f,'vBCSTRet='+formatfloat('0.00',cds_nfp.fieldbyname('bscalcst').asfloat));

                 Writeln(f,'vICMSSTRet='+formatfloat('0.00',cds_nfp.fieldbyname('icmscalcst').asfloat));

               end;

            70:begin
                 if cds_modbc.Locate('codigo',cds_nfp.fieldbyname('cod6prodnf').asInteger,[]) then
                    begin
                      smodbc := Cds_modbc.fieldbyname('sigla').asString;
                      smodbc := tirapontos(smodbc);
                      smodbc := tiratracos(smodbc);
                      smodbc := tirabarras(smodbc);
                      Writeln(f,'modBC='+smodbc);

                    end;
                 //endi

                 Writeln(f,'pRedBC=');

                 Writeln(f,'vBC='+formatfloat('0.00',fbcicms));

                 Writeln(f,'pICMS='+formatfloat('0.00',faliqicms));

                 Writeln(f,'vICMS='+formatfloat('0.00',fvicms));

                 if cds_modbcst.Locate('codigo',cds_nfp.fieldbyname('cod7prodnf').asInteger,[]) then
                    begin
                      smodbcst := Cds_modbcst.fieldbyname('sigla').asString;
                      smodbcst := tirapontos(smodbcst);
                      smodbcst := tiratracos(smodbcst);
                      smodbcst := tirabarras(smodbcst);
                      Writeln(f,'modBCST='+smodbcst);

                    end;
                 //endi

                 Writeln(f,'pMVAST=');

                 Writeln(f,'pRedBCST=');

                 Writeln(f,'vBCST=');

                 Writeln(f,'pICMSST=');

                 Writeln(f,'vICMSST=');



               end;

            90:begin
                 if cds_modbc.Locate('codigo',cds_nfp.fieldbyname('cod6prodnf').asInteger,[]) then
                    begin
                      smodbc := Cds_modbc.fieldbyname('sigla').asString;
                      smodbc := tirapontos(smodbc);
                      smodbc := tiratracos(smodbc);
                      smodbc := tirabarras(smodbc);
                      Writeln(f,'modBC='+smodbc);

                    end;
                 //endi

                 Writeln(f,'vBC='+formatfloat('0.00',fbcicms));


                 Writeln(f,'pRedBC=');


                 Writeln(f,'pICMS='+formatfloat('0.00',faliqicms));

                 Writeln(f,'vICMS='+formatfloat('0.00',fvicms));

                 if cds_modbcst.Locate('codigo',cds_nfp.fieldbyname('cod7prodnf').asInteger,[]) then
                    begin
                      smodbcst := Cds_modbcst.fieldbyname('sigla').asString;
                      smodbcst := tirapontos(smodbcst);
                      smodbcst := tiratracos(smodbcst);
                      smodbcst := tirabarras(smodbcst);
                      Writeln(f,'modBCST='+smodbcst);

                    end;
                 //endi

                 Writeln(f,'pMVAST=');

                 Writeln(f,'pRedBCST=');

                 Writeln(f,'vBCST=');

                 Writeln(f,'pICMSST=');

                 Writeln(f,'vICMSST=');

               end;
          end;

          }





procedure Tfrmfecnf.edinfatKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

end;

procedure Tfrmfecnf.EDIPESOBKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif
if not( key in ['0'..'9',#8,DecimalSeparator]) then
   key := #0;
//endi   
end;

procedure Tfrmfecnf.EDIPESOLKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif
if not( key in ['0'..'9',#8,DecimalSeparator]) then
   key := #0;
//endi   

end;

procedure Tfrmfecnf.edidinKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8,DecimalSeparator] )then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmfecnf.edinparcKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] )then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmfecnf.tbsdupShow(Sender: TObject);
begin
edidin.SetFocus;
end;

procedure Tfrmfecnf.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  with frmdados do
     begin
       if cds_duplicata.Active then
          begin
            if cds_duplicata.State in [dsinsert, dsedit] then
               begin
                 cds_duplicata.Post;
                 
               end;
            //endi
          end;
       //endi

     end;
  //endth
end;


procedure tfrmfecnf.limpararqdup;
begin

  with frmdados do
    begin
      sql_duplicata.Active := true;
      cds_duplicata.Active := true;
      cds_duplicata.Filtered := false;
      cds_duplicata.First;
      while not cds_duplicata.Eof do
         cds_duplicata.Delete;
      //endi

      cds_duplicata.Active := false;
      sql_duplicata.Active := false;
    end;
  //endi


end;
procedure Tfrmfecnf.btncalcularClick(Sender: TObject);
var fvlrparc:real;
    i, iureg, iprazo:integer;
    sdtv:string;


begin
if strtofloat(edinparc.Text) = 0 then
   exit;
//endi

limpararqdup;

fvlrparc := (  strtofloat( tirapontos(ediliquido.text) ) -  strtofloat( tirapontos(edidin.text) )   )  /  strtoint(edinparc.Text);

//showmessage(floattostr(fvlrparc));

with frmdados do
  begin

    sql_duplicata.Active := true;
    cds_duplicata.Active := true;

    iureg := cds_duplicata.fieldbyname('codigo').asInteger;

    i := 1;
    iprazo := 0;


    while i <= strtoint(edinparc.Text) do
      begin

        cds_duplicata.Append;

        iureg := iureg + 1;
        iprazo := iprazo + strtoint(ediperiodo.Text);
        cds_duplicata.FieldByName('codigo').asInteger := iureg;

        cds_duplicata.FieldByName('dte').AsDateTime := strtodate(edidatainic.Text);
        cds_duplicata.FieldByName('cnf').asInteger  := cds_nf.fieldbyname('codigo').asInteger;
        cds_duplicata.FieldByName('prazo').asInteger := iprazo;
        sdtv := datetostr( strtodate(edidatainic.Text)+iprazo );
        cds_duplicata.FieldByName('dtv').asString := sdtv;
        cds_duplicata.FieldByName('vdup').asfloat := fvlrparc;
        cds_duplicata.Post;
        
        i := i + 1;


      end;
    //endi


   try
      cds_duplicata.Active := false;
      sql_duplicata.Active := false;
      sql_duplicata.SQL.Clear;
      sql_duplicata.SQL.Add('select * from duplicata where cnf = '+ inttostr(cds_nf.fieldbyname('codigo').asInteger));
      sql_duplicata.Active := true;
      cds_duplicata.Active := true;

      if cds_duplicata.RecordCount  > 0 then
        begin
          rgbformapgto.ItemIndex := 1;
        end;
      //end
   except
   end;

   totalizadup;

   sql_duplicata.Active := true;
   cds_duplicata.Active := true;


  end;
//endth





end;


procedure tfrmfecnf.totalizadup;
var
   ftotal:real;
begin
  with frmdados do
    begin
      sql_duplicata.Active := true;
      cds_duplicata.Active := true;

      cds_duplicata.First;
      while not cds_duplicata.Eof do
        begin
          ftotal := ftotal + cds_duplicata.fieldbyname('vdup').asfloat;
          cds_duplicata.Next;
        end;
      //endth
      lbltotdup.Caption := formatfloat('###,###,##0.00',ftotal);

      cds_duplicata.Active := false;
      sql_duplicata.Active := false;

    end;
  //endi

end;

procedure tfrmfecnf.totalizafat;
var
   ftotal:real;
begin
  with frmdados do
    begin
      sql_fatura.Active := true;
      cds_fatura.Active := true;

      cds_fatura.First;
      while not cds_fatura.Eof do
        begin
          ftotal := ftotal + cds_fatura.fieldbyname('liquido').asfloat;
          cds_fatura.Next;
        end;
      //endth
      lbltotdup.Caption := formatfloat('###,###,##0.00',ftotal);

      cds_fatura.Active := false;
      sql_fatura.Active := false;

    end;
  //endi

end;

procedure tfrmfecnf.limpararqfat;
begin
  with frmdados do
    begin

      sql_fatura.Active := true;
      cds_fatura.Active := true;
      cds_fatura.Filtered := false;
      cds_fatura.First;


      while not cds_fatura.Eof do
         cds_fatura.Delete;
      //endi
      cds_fatura.Active := false;
      sql_fatura.Active := false;
    end;
  //endi
end;


procedure Tfrmfecnf.ediperiodoKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] )then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmfecnf.edivalorpKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8,DecimalSeparator] ) then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmfecnf.ediprazoKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] )then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmfecnf.edidinExit(Sender: TObject);
begin
edidin.Text :=   formatfloat('###,###,##0.00',strtofloat(tirapontos(edidin.Text)));

end;

procedure Tfrmfecnf.edidatainicKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

end;

procedure Tfrmfecnf.btneditarClick(Sender: TObject);
begin


with frmdados do
  begin
    if(cds_duplicata.Active) and (cds_duplicata.RecordCount = 0) then
       exit;
    //end
    ediprazo.Text := inttostr(cds_duplicata.fieldbyname('prazo').asInteger);
    edivencimento.Text := cds_duplicata.fieldbyname('dtv').asString;
    edidte.Text := cds_duplicata.fieldbyname('dte').asString;
    edivalorp.Text := formatfloat('###,###,##0.00', cds_duplicata.fieldbyname('vdup').asfloat );
  end;
//endi
if edidte.Enabled then
   edidte.SetFocus;
//endi   

bloqueaparc;

end;

procedure Tfrmfecnf.edivalorpExit(Sender: TObject);
begin
edivalorp.Text :=   formatfloat('###,###,##0.00',strtofloat(tirapontos(edivalorp.Text)));

end;

procedure Tfrmfecnf.btnsalvarClick(Sender: TObject);
begin
with frmdados do
  begin
    if (cds_duplicata.Active) then
       begin
         cds_duplicata.Edit;
         if edidte.Text <> '  /  /    ' then
            cds_duplicata.FieldByName('dte').asString := edidte.Text;
         //endi
         if edivencimento.Text <> '  /  /    ' then
            cds_duplicata.FieldByName('dtv').asString := edivencimento.Text;
         //endi
         cds_duplicata.FieldByName('prazo').AsInteger := strtoint(ediprazo.Text);
         cds_duplicata.FieldByName('vdup').AsFloat := strtofloat(tirapontos(edivalorp.Text));
         cds_duplicata.Post;
         
       end;
    //endi
  end;
//endi
limparparc;
desbloqueaparc;

end;

procedure tfrmfecnf.bloqueaparc;
begin
btncalcular.Enabled := false;
dbgrid1.Enabled := false;
end;


procedure tfrmfecnf.desbloqueaparc;
begin
btncalcular.Enabled := true;
dbgrid1.Enabled := true;
end;

procedure Tfrmfecnf.btncancelarparcClick(Sender: TObject);
begin
limparparc;
desbloqueaparc;

end;

procedure Tfrmfecnf.ediprazoExit(Sender: TObject);
begin

  edivencimento.Text :=  calc_data(edidte.Text,strtoint(ediprazo.text) );
end;

procedure Tfrmfecnf.edidteKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

end;

procedure Tfrmfecnf.edivencimentoKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

end;


procedure tfrmfecnf.limparparc;
begin
  ediprazo.Text := '';
  edivencimento.Text := '';
  edidte.Text := '';
  edivalorp.Text := '0,00';
end;

procedure Tfrmfecnf.edivencimentoExit(Sender: TObject);
begin
   ediprazo.Text :=  floattostr( calc_prazo(edidte.Text,edivencimento.text) );
end;

procedure Tfrmfecnf.edidatasaiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 7 then
   begin
     edidatasai.Text := '';
   end;
//endi
end;

procedure Tfrmfecnf.ediproxnotaKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecnf.BitBtn1Click(Sender: TObject);
begin

frmdados.cds_nf.Locate('codigo',icodant,[]);
monta_nota;


end;


procedure Tfrmfecnf.monta_nota;
var
  f:TextFile;

  vardir, scnpjt, scnpje, siee, scepe, scnpjd, siet,sied, scepd, scfop, scf, sund, ssitb, ssita,
  smodbc, smodbcst, spis, scofins, scfopt, sipi, scsosn, scalciva:string;

  iItem, iI, iPos, icontador, icodigo, icontdup, iureg:integer;

  ffrete_unit, foutrasdesp_unit, fvalorseg_unit, fvalordesc_unit, ftotfrete_unit, ftotoutrasdesp_unit, ftotvalorseg_unit,
  ftotvalordesc_unit, fdiffrete_unit, fdifoutrasdesp_unit, fdifvalorseg_unit, fdifvalordesc_unit, fbcipi, fbcicms,
  fvipi, fvicms, faliqicms, faliqipi,freducaobcicms, freducaobcipi, icodcfopt,
  ftotcredicms, fbasecalc, perc:real;

  Linha, sobs, scnpj:String;

  bNaut, bSairLoop, bDesistiu:boolean;
  saplicaliqfat, smodelocp, sdtecp, scoocp, scaixacp, sseriecp, scupom, smensagem:string;

  smsg: array of string;
  iicms, icfop,  icsosn, isitb, isita,  icf, icodufdest, icodufemi:integer;
  x, iregp, iregs:integer;
  data:TDateTime;
  A,B,MVA, fporciva, faliqintra, faliqinter, ftotalbasecalcicmsst,  fvlrbasecalcicmsst, fvlricms, ftotalvlricmsst, fvlricmsst  :real;
  sufemi,
  sufdest:string;

  sitens,
  scalcsubst_trib_ant:string;

  pICMSInterPart,
  vICMSUFRemet,
  vICMSUFDest,
  pICMSOrigPart,
  pdifpicms,
  vicms,

  totvICMSUFDest,

  totvICMSUFRemet:real;

  infennf:integer;



begin

  schavenfe := '';

  fsb_valorliquidocupom := 0;
  fsb_valorliquidoitem := 0;

  porcibpt := 0;
  vlribpt  := 0;
  vlrestadual := 0;
  vlrmunicipal := 0;

  sitens := '';

  setlength(smsg,50);

  x := 0;
  iicms := 0;
  icfop := 0;
  icsosn := 0;
  isitb := 0;
  isita := 0;
  icf := 0;


  frmdados.cds_nfp.Active := false;
  frmdados.sql_nfp.Active := false;

  frmdados.cds_nfp.Filtered := false;
  frmdados.cds_nfp.Filter := 'cnf = '+frmdados.cds_nf.fieldbyname('codigo').asString;
  frmdados.cds_nfp.Filtered := true;


  frmdados.sql_nfp.Active := true;
  frmdados.cds_nfp.Active := true;

  iregp := frmdados.cds_nfp.RecordCount;

  while not frmdados.cds_nfp.Eof do
     begin
       if frmdados.cds_nfp.FieldByName('cod1prodnf').AsInteger = 0 then
          iicms := iicms + 1;
       //endi
       if frmdados.cds_nfp.FieldByName('cod11prodnf').AsInteger = 0 then
          icfop := icfop + 1;
       //endi
       if frmdados.cds_nfp.FieldByName('cod14prodnf').AsInteger = 0 then
          if frmdados.cds_nfp.FieldByName('cod5prodnf').AsInteger = 0 then
             isitb := isitb + 1;
          //endi
       //endi
       if frmdados.cds_nfp.FieldByName('cod4prodnf').AsInteger = 0 then
          isita := isita + 1;
       //endi
       if frmdados.cds_nfp.FieldByName('cod3prodnf').AsInteger = 0 then
          if frmdados.cds_nfp.FieldByName('simplesncm').AsString = '' then
             icf := icf + 1;
          //endi
       //endi


       frmdados.cds_nfp.next;
    end;
  //endi




  frmdados.cds_nfs.Active := false;
  frmdados.sql_nfs.Active := false;

  frmdados.cds_nfs.Filtered := false;
  frmdados.cds_nfs.Filter := 'cnf = '+frmdados.cds_nf.fieldbyname('codigo').asString;
  frmdados.cds_nfs.Filtered := true;

  frmdados.sql_nfs.Active := true;
  frmdados.cds_nfs.Active := true;

  iregs := frmdados.cds_nfs.RecordCount;


  if (frmpesqnf.cbxdescdest_cod4nf.Text = '')      or
     (frmpesqnf.lblcnpj.Caption = '')              or
     (frmpesqnf.lblendereco.Caption = '')          or
     (frmpesqnf.lblnumero.Caption = '')            or
     (frmpesqnf.lblbairro.Caption = '')            or
     (frmpesqnf.lblcep.Caption = '')               or
     (frmpesqnf.lblmunicipio.Caption = '')         or
     (frmpesqnf.lbltelefones.Caption = '')         or
     (frmpesqnf.lblestado.Caption = '')            or
     (length(frmpesqnf.lbltelefones.Caption) > 20) or
     (length(frmpesqnf.lblestado.Caption) > 2)     or
     (length(frmpesqnf.lblcep.Caption) > 9)        or
     (frmpesqnf.cbxdescnatop_cod6nf.Text = '')

  then
     begin

       x := 0;
       smsg[x] := '* ERRO: DESTINATÁRIO, VERIFIQUE INCONSISTÊNCIA(S) ABAIXO';

       if frmpesqnf.cbxdescdest_cod4nf.Text = '' then
          begin
            //1
            x := x + 1;
            smsg[x] := '  - CAMPO: NOME EM BRANCO';
          end;
       //endi

       if frmpesqnf.lblcnpj.Caption = '' then
          begin
            //2
            x := x + 1;
            smsg[x] := '  - CAMPO: CNPJ EM BRANCO';
          end;
       //endi

       if frmpesqnf.lblendereco.Caption = '' then
          begin
            //3
            x := x + 1;
            smsg[x] :=  '  - CAMPO: ENDEREÇO EM BRANCO'+#13;
          end;
       //endi

       if frmpesqnf.lblnumero.Caption = '' then
          begin
            //4
            x := x + 1;
            smsg[x] :=  '  - CAMPO: NUMERO EM BRANCO'+#13;
          end;
       //endi

       if frmpesqnf.lblbairro.Caption = '' then
          begin
            //5
            x := x + 1;
            smsg[x] :=  '  - CAMPO: BAIRRO EM BRANCO'+#13;
          end;
       //endi

       if frmpesqnf.lblcep.Caption = '' then
          begin
            //6
            x := x + 1;
            smsg[x] :=  '  - CAMPO: CEP EM BRANCO'+#13;
          end;
       //endi

       if frmpesqnf.lblmunicipio.Caption = '' then
          begin
            //7
            x := x + 1;
            smsg[x] :=  '  - CAMPO: MUNICIPIO EM BRANCO'+#13;
          end;
       //endi

       if frmpesqnf.lbltelefones.Caption = '' then
          begin
            //8
            x := x + 1;
            smsg[x] :=  '  - CAMPO: TELEFONES EM BRANCO'+#13;
          end;
       //endi

       if frmpesqnf.lblestado.Caption = '' then
          begin
            //9
            x := x + 1;
            smsg[x] :=  '  - CAMPO: ESTADO EM BRANCO'+#13;
          end;
       //endi

       if length(frmpesqnf.lbltelefones.Caption) > 20  then
          begin
            //23
            x := x + 1;
            smsg[x] :=  '  - CAMPO: TELEFONE MAIOR QUE 20 CARACTERES'+#13;
          end;
       //endi

       if length(frmpesqnf.lblestado.Caption) > 2  then
          begin
            //24
            x := x + 1;
            smsg[x] :=  '  - CAMPO: ESTADO MAIOR QUE 2 CARACTERES'+#13;
          end;
       //endi

       if length(frmpesqnf.lblcep.Caption) > 9  then
          begin
            //25
            x := x + 1;
            smsg[x] :=  '  - CAMPO: CEP MAIOR QUE 9 CARACTERES'+#13;
          end;
       //endi

       if frmpesqnf.cbxdescnatop_cod6nf.Text = '' then
          begin
            //26
            x := x + 1;
            smsg[x] := '  - CAMPO: NATUREZA DA OPERAÇÃO EM BRANCO';
          end;
       //endi


    end;
 //endi

 if frmpesqnf.lblcnpj.Caption <> '' then
    begin

      scnpj := frmpesqnf.lblcnpj.Caption;
      scnpj := tirapontos(scnpj);
      scnpj := tiratracos(scnpj);
      scnpj := tirabarras(scnpj);

      if (verificacnpj(scnpj)) then
         begin
           if frmpesqnf.lblie.Caption = '' then
              begin

                if x = 0 then
                   begin

                     //smsg[x] :=  '* ERRO: DESTINATÁRIO, VERIFIQUE INCONSISTÊNCIA(S) ABAIXO';
                   end;
                //endi

                //10
                //x := x + 1;
                //smsg[x] :=   '  - CAMPO IE DO DESTINATÁRIOS EM BRANCO';

              end
           //endi
         end
      else
         begin
           if (not testacpf(scnpj)) then
              begin

                if x = 0 then
                  begin
                     smsg[x] := '* ERRO: DESTINATÁRIO, VERIFIQUE INCONSISTÊNCIA(S) ABAIXO';
                   end;
                //endi

                //11
                x:= x + 1;
                smsg[x] :=  '  - CAMPO CNPJ OU CPF INVÁLIDO';

              end;
           //endi
         end;
      //endif

    end;
 //endif



  if (frmpesqnf.cbxdescemi_cod3nf.Text = '')          or
     (frmpesqnf.lblcnpjemi.Caption = '')              or
     (frmpesqnf.lblenderecoemi.Caption = '')          or
     (frmpesqnf.lblnumeroemi.Caption = '')            or
     (frmpesqnf.lblbairroemi.Caption = '')            or
     (frmpesqnf.lblcepemi.Caption = '')               or
     (frmpesqnf.lblmunicipioemi.Caption = '')         or
     (frmpesqnf.lbltelefonesemi.Caption = '')         or
     (frmpesqnf.lblestadoemi.Caption = '')            or
     (length(frmpesqnf.lbltelefonesemi.Caption) > 20) or
     (length(frmpesqnf.lblestadoemi.Caption) > 2)     or
     (length(frmpesqnf.lblcepemi.Caption) > 9)

  then
     begin


       //for x := 0 to length(smsg) -1 do
       //  begin
       //    smsg[x]:= '';
       //  end;
       //endf

       if x > 0 then
          begin
            //12
            x := x + 2;
            smsg[x] := '* ERRO: EMITENTE, VERIFIQUE INCONSISTÊNCIA(S) ABAIXO';
          end
       else
          begin
            //12
            x := 0;
            smsg[x] := '* ERRO: EMITENTE, VERIFIQUE INCONSISTÊNCIA(S) ABAIXO';
          end;
       //endi

       if frmpesqnf.cbxdescemi_cod3nf.Text = '' then
          begin
            //13
            x := x + 1;
            smsg[x] := '  - CAMPO: NOME EM BRANCO';
          end;
       //endi

       if frmpesqnf.lblcnpjemi.Caption = '' then
          begin
            //14
            x := x + 1;
            smsg[x] := '  - CAMPO: CNPJ EM BRANCO';
          end;
       //endi

       if frmpesqnf.lblenderecoemi.Caption = '' then
          begin
            //15
            x := x + 1;
            smsg[x] :=  '  - CAMPO: ENDEREÇO EM BRANCO'+#13;
          end;
       //endi

       if frmpesqnf.lblnumeroemi.Caption = '' then
          begin
            //16
            x := x + 1;
            smsg[x] :=  '  - CAMPO: NUMERO EM BRANCO'+#13;
          end;
       //endi

       if frmpesqnf.lblbairroemi.Caption = '' then
          begin
            //17
            x := x + 1;
            smsg[x] :=  '  - CAMPO: BAIRRO EM BRANCO'+#13;
          end;
       //endi

       if frmpesqnf.lblcepemi.Caption = '' then
          begin
            //18
            x := x + 1;
            smsg[x] :=  '  - CAMPO: CEP EM BRANCO'+#13;
          end;
       //endi

       if frmpesqnf.lblmunicipioemi.Caption = '' then
          begin
            //19
            x := x + 1;
            smsg[x] :=  '  - CAMPO: MUNICIPIO EM BRANCO'+#13;
          end;
       //endi

       if frmpesqnf.lbltelefonesemi.Caption = '' then
          begin
            //20
            x := x + 1;
            smsg[x] :=  '  - CAMPO: TELEFONES EM BRANCO'+#13;
          end;
       //endi

       if frmpesqnf.lblestadoemi.Caption = '' then
          begin
            //21
            x := x + 1;
            smsg[x] :=  '  - CAMPO: ESTADO EM BRANCO'+#13;
          end;
       //endi

       if length(frmpesqnf.lbltelefonesemi.Caption) > 20  then
          begin
            //26
            x := x + 1;
            smsg[x] :=  '  - CAMPO: TELEFONE MAIOR QUE 20 CARACTERES'+#13;
          end;
       //endi

      if length(frmpesqnf.lblestadoemi.Caption) > 2  then
         begin
           //27
           x := x + 1;
           smsg[x] :=  '  - CAMPO: ESTADO MAIOR QUE 2 CARACTERES'+#13;
         end;
      //endi

      if length(frmpesqnf.lblcepemi.Caption) > 9  then
         begin
           //28
           x := x + 1;
           smsg[x] :=  '  - CAMPO: CEP MAIOR QUE 9 CARACTERES'+#13;
         end;
      //endi


    end;
 //endi

 if frmpesqnf.lblcnpjemi.Caption <> '' then
    begin

      scnpj := frmpesqnf.lblcnpjemi.Caption;
      scnpj := tirapontos(scnpj);
      scnpj := tiratracos(scnpj);
      scnpj := tirabarras(scnpj);

      if (verificacnpj(scnpj)) then
         begin
           if frmpesqnf.lblieemi.Caption = '' then
              begin

                if x = 0 then
                   begin

                     smsg[x] :=  '* ERRO: EMITENTE, VERIFIQUE INCONSISTÊNCIA(S) ABAIXO';
                   end;
                //endi

                //22
                x := x + 1;
                smsg[x] :=   '  - CAMPO IE EM BRANCO';

              end
           //endi
         end
      else
         begin
           if (not testacpf(scnpj)) then
              begin

                if x=0 then
                  begin

                     smsg[x] := '* ERRO: EMITENTE, VERIFIQUE INCONSISTÊNCIA(S) ABAIXO';
                   end;
                //endi

                //23
                x:= x + 1;
                smsg[x] :=  '  - CAMPO CNPJ OU CPF INVÁLIDO';

              end;
           //endi
         end;
      //endif

    end;
 //endif


  if (iicms >  0) or
     (icfop >  0) or
     (isitb >  0) or
     (isita > 0 ) or
     (icf > 0   ) or

     ((iregp = 0  ) and
     (iregs = 0  ))

  then
     begin


       if x > 0 then
          begin
            //29
            x := x + 2;
            smsg[x] := '* ERRO: PRODUTOS, VERIFIQUE INCONSISTÊNCIA(S) ABAIXO';
          end
       else
          begin
            //29
            x := 0;
            smsg[x] := '* ERRO: PRODUTOS, VERIFIQUE INCONSISTÊNCIA(S) ABAIXO';
          end;
       //endi

       if iicms > 0 then
          begin
            //30
            x := x + 1;
            smsg[x] := '  - CAMPO: ICMS -> '+inttostr(iicms)+' REGISTRO(S) EM BRANCO';
          end;
       //endi

       if icfop > 0 then
          begin
            //31
            x := x + 1;
            smsg[x] := '  - CAMPO: CFOP -> '+inttostr(icfop)+' REGISTRO(S) EM BRANCO';
          end;
       //endi

       if isitb > 0 then
          begin
            //32
            x := x + 1;
            smsg[x] := '  - CAMPO: CSOSN OU SIT. TRIB. -> '+inttostr(isitb)+' REGISTRO(S) EM BRANCO';
          end;
       //endi

       if isita > 0 then
          begin
            //33
            x := x + 1;
            smsg[x] := '  - CAMPO: ORIGEM -> '+inttostr(isita)+' REGISTRO(S) EM BRANCO';
          end;
       //endi

       if ((iregp = 0) and (iregs = 0)) then
          begin
            //34
            x := x + 1;
            smsg[x] := '  - NENHUM REGISTRO DE PRODUTO ENCONTRADO ';
          end;
       //endi

     end;
  //endi


  scnpjcpfemi := tirapontos(frmpesqnf.lblcnpjemi.Caption);
  scnpjcpfemi := tirabarras(scnpjcpfemi);
  scnpjcpfemi := tiratracos(scnpjcpfemi);


  with frmdados do
    begin
      cds_nfe.Active := false;
      sql_nfe.Active := false;
      sql_nfe.SQL.Clear;
      sql_nfe.SQL.Add('select * from nfe where cnpjcpfeminfe = '+quotedstr(scnpjcpfemi)+' and  nnf = '+ediproxnota.Text);
      sql_nfe.Active := true;
      cds_nfe.Active := true;
    end;

  if frmdados.cds_nfe.RecordCount > 0 then
     begin

       if x > 0 then
          begin
            //35
            x := x + 2;
            smsg[x] := '* ERRO: NOTA FISCAL, VERIFIQUE INCONSISTÊNCIA(S) ABAIXO';
          end
       else
          begin
            //35
            x := 0;
            smsg[x] := '* ERRO: NOTA FISCAL, VERIFIQUE INCONSISTÊNCIA(S) ABAIXO';
          end;
       //endi

       //36
       x := x + 1;
       smsg[x] := '  - HOUVE UM PROBLEMA: NÚMERO DA NOTA JÁ EXISTE EM NOTA FISCAL EMITIDA';
     end;
  //endi
  frmdados.cds_nfe.Active := false;
  frmdados.sql_nfe.Active := false;

  if cbxfinalidade.ItemIndex =  3 then
     begin
       if edirefnfe.Text = '' then
          begin
            //37
            x := x + 1;
            smsg[x] := '  - VOCÊ DEVE INSERIR NFE DE REFERÊNCIA PARA DEVOLUÇÃO ';
          end;
       //endi
     end;
  //endi

  if validacpf( tirapontos(tirabarras(tiratracos(frmpesqnf.lblcnpj.Caption)))  ) then
     if cbxindfinal.Text = 'NÃO' then
        begin
          //38
          x := x + 1;
          smsg[x] := '  - PARA EMITIR NOTA FISCAL PARA PESSOA FÍSICA, CONSUMIDOR FINAL DEVE ESTAR NA OPÇÃO SIM';
        end;
     //endi
  //endi

  if x > 0  then
     begin
       frmmens := tfrmmens.Create(self);
       for x := 0 to length(smsg)-1 do
          begin
            frmmens.Memo1.Lines.Add(smsg[x]);
          end;
       //endf
       frmmens.ShowModal;
       frmmens.Free;

       exit;
     end;
  //endi

  vardir := extractfilepath(application.ExeName);

  icodant := frmdados.cds_nf.Fieldbyname('codigo').asInteger;

  faliqapicms := strtofloat(  tirapontos( edialiqapicms.Text ) );

  faliqapiss := strtofloat(  tirapontos( edialiqapiss.Text ) );

  snped := edinped.text;

  icodcfopt := frmdados.cds_temp.fieldbyname('cod7nf').asInteger;

  bAut := false;
  bNaut := false;
  bSairLoop := false;
  bDesistiu := false;


  icontador := 0;



  with frmdados do
    begin
       sql_consulta.Active := false;
       sql_consulta.SQL.Clear;
       sql_consulta.SQL.Add('select max(nnf) as numnota from nfe');
       sql_consulta.Active := true;

       infennf := sql_consulta.fieldbyname('numnota').asInteger;

    end;

   if infennf >= strtoint(ediproxnota.Text) then
      begin

        ediproxnota.Text := formatfloat('00000',infennf + 1);
        frmfecnf.Update;

      end
   else
      begin

        if  bmensagempro then
           begin

             with frmdados do
               begin

                 sql_consulta.Active := false;
                 sql_consulta.SQL.Clear;
                 sql_consulta.SQL.Add('select max(nnf) as numnota from indice' );
                 sql_consulta.Active := true;

                 ediproxnota.Text := formatfloat('00000', sql_consulta.fieldbyname('numnota').AsInteger );
                 frmfecnf.Update;

               end;
             //endth

           end;
        //endi

      end;
   //endi

  //showmessage(  'NFE registrada anteriormente, nº '+formatfloat('00000',infennf)  );

  while true do
    begin

      if (fileexists(frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString+'\SAINFE.TXT' )) or
         (fileexists(frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString+'\ENTNFE.TXT' ))
      then
         begin

           lblmensagem.Caption := 'Preparando ambiente...';
           frmfecnf.Update;

           AssignFile(f,vardir+'c5.bat');
           Rewrite(f); //abre o arquivo para escrita
           Writeln(f,'cd '+frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString+'\');
           Writeln(f,'md Logs');
           Writeln(f,'copy '+'*.TXT'+' '+frmdados.cds_indice.fieldbyname('caminhoarqnfetemp').AsString+' /Y');
           Writeln(f,'del '+'*.TXT');
           Writeln(f,'del '+vardir+'c5.bat');
           Closefile(f); //fecha o handle de arquivo
           WinExec(pchar(vardir+'c5.bat'), SW_HIDE);

           sleep(5000);

         end
      else
         begin
           break;
         end;
      //endi

    end;
  //endw


  while true do
    begin

      if fileexists(frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString+'\SAINFE.TXT' ) then
         begin
           AssignFile(f,  frmdados.Cds_Indice.fieldbyname('caminhoarqnfe').asString+'\SAINFE.TXT');
           Reset(f);

           While not Eof(f) do
             begin
               Readln(f, Linha);
               iPos := pos('sucesso',linha);
               if iPos > 0 then
                  begin
                    bSairLoop := true;
                    break;
                  end;
               //endi
             end;
           //endw


           CloseFile(f);

           AssignFile(f,  frmdados.Cds_Indice.fieldbyname('caminhoarqnfe').asString+'\SAINFE.TXT');
           Reset(f);

           While not Eof(f) do
             begin
               Readln(f, Linha);
               iPos := pos('ERRO',linha);
               if iPos > 0 then
                  begin
                    bSairLoop := true;
                    break;
                  end;
               //endi
             end;
           //endw


           CloseFile(f);

           if bSairLoop then
              begin
                 break;
              end;
           //endi

           lblmensagem.Caption := 'Esperando encerramento do processo anterior...';
           frmfecnf.Update;
           sleep(5000);

           Application.ProcessMessages; {ESC key stops the loop}
           if GetKeyState(VK_Escape) AND 128 = 128 then
              begin
                bDesistiu := true;
                break ;
              end;
           //endi

         end
      else
         begin
           break;
         end;
      //endi

    end;
  //endw

  if fileexists(frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString+'\sainfe.txt' ) then
     begin
       deletefile(frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString+'\sainfe.txt');
     end;
  //endi

  if bDesistiu then
     begin
       exit;
       close;
     end;
  //endi


  lblmensagem.Caption := 'Aguarde, montando nota fiscal eletrônica número '+formatfloat('00000',strtoint(ediproxnota.Text));
  frmfecnf.Update;


  innf := strtoint( ediproxnota.text );

  with frmdados do
    begin

      sql_consulta.Active := false;
      sql_consulta.SQL.Clear;
      sql_consulta.SQL.Add('select max(contadornfe) as cnfe from indice');
      sql_consulta.Active := true;

      icontadornfe := sql_consulta.fieldbyname('cnfe').asInteger;


    end;



  iureg := 0;

  with frmdados do
    begin
      if ckbmostrafat.Checked then
         begin

           sql_fatura.Active := true;
           cds_fatura.Active := true;

           cds_fatura.Last;
           iureg := cds_fatura.fieldbyname('codigo').asInteger;

           cds_fatura.Append;
           iureg := iureg + 1;
           cds_fatura.FieldByName('codigo').asInteger :=  iureg;
           cds_fatura.FieldByName('cnf').asInteger :=  cds_nf.fieldbyname('codigo').asInteger;
           cds_fatura.FieldByName('nfat').asString :=  formatfloat('00000', innf);
           cds_fatura.FieldByName('vorig').asfloat :=  strtofloat( tirapontos(lbltotal.caption));
           cds_fatura.FieldByName('vdesc').asfloat :=  strtofloat( tirapontos(edivaldesc.Text));
           cds_fatura.FieldByName('vliq').asfloat :=  strtofloat( tirapontos(ediliquido.Text));
           cds_fatura.Post;
           cds_fatura.Active := false;
           sql_fatura.Active := false;

           

         end;
      //endif
    end;
  //endth


  AssignFile(f,vardir+'ENTNFE.TXT');
  Rewrite(f); //abre o arquivo para escrita

  //Writeln(f,'NFE.AdicionarNFE("[Identificacao]');

  Writeln(f,'NFE.CriarNFe("[Identificacao]');

  Writeln(f,'NaturezaOperacao='+frmpesqnf.cbxdescnatop_cod6nf.text);
  Writeln(f,'Modelo=55');

  if rg1.ItemIndex = 0 then
      Writeln(f,'Serie=1');
  //endi

  if rg1.ItemIndex = 1 then
      Writeln(f,'Serie=900');
  //endi

  Writeln(f,'Codigo='+inttostr(innf) );
  Writeln(f,'Numero='+inttostr(innf) );
  Writeln(f,'Emissao='+datetostr(date));


  if frmdados.cds_emitente.Locate('codigo',frmdados.cds_nf.fieldbyname('cemi').asInteger,[]) then
     begin

       sufemi := '';
       frmdados.sql_consulta.Active := false;
       frmdados.sql_consulta.SQL.Clear;
       frmdados.sql_consulta.SQL.Add('select * from estados where codigo = '+ inttostr( frmdados.cds_emitente.fieldbyname('cest').asInteger )  );
       frmdados.sql_consulta.Active := true;

       sufemi := frmdados.sql_consulta.fieldbyname('sigla').asString;

       sunidadefederativa := frmdados.sql_consulta.fieldbyname('sigla').asString;

     end;
  //endi

  if frmdados.cds_nf.FieldByName('tipodest').AsString = 'C' then
     begin

       if frmdados.cds_clientes.Locate('codigo',frmdados.cds_nf.fieldbyname('cdest').asInteger,[]) then
          begin

            sufdest := '';
            frmdados.sql_consulta.Active := false;
            frmdados.sql_consulta.SQL.Clear;
            frmdados.sql_consulta.SQL.Add('select * from estados where codigo = '+ inttostr( frmdados.cds_clientes.fieldbyname('cest').asInteger )  );
            frmdados.sql_consulta.Active := true;

            sufdest := frmdados.sql_consulta.fieldbyname('sigla').asString;

          end;
       //endi

     end;
  //endi


  if frmdados.cds_nf.FieldByName('tipodest').AsString = 'F' then
     begin


       if frmdados.cds_fornecedores.Locate('codigo',frmdados.cds_nf.fieldbyname('cdest').asInteger,[]) then
          begin

            sufdest := '';
            frmdados.sql_consulta.Active := false;
            frmdados.sql_consulta.SQL.Clear;
            frmdados.sql_consulta.SQL.Add('select * from estados where codigo = '+ inttostr( frmdados.cds_fornecedores.fieldbyname('cest').asInteger )  );
            frmdados.sql_consulta.Active := true;

            sufdest := frmdados.sql_consulta.fieldbyname('sigla').asString;

          end;
       //endi

     end;
  //endi

  if sufemi <> sufdest then
     begin
       Writeln(f,'idDest=2' );
     end;
  //endi


  if (edidatasai.Text <> '00/00/0000') then
     Writeln(f,'Saida='+edidatasai.text);
  //endi
  if (edihorasai.Text <> '  :  ') then
     Writeln(f,'hSaiEnt='+edihorasai.text);
  //endi

  Writeln(f,'tpNF='+frmdados.cds_tiponf.FieldByName('sigla').asString);
  //Writeln(f,'Finalidade=0');


  if cbxfinalidade.ItemIndex = 0 then
     Writeln(f,'finNFe=1');
  //endi
  if cbxfinalidade.ItemIndex = 1 then
     Writeln(f,'finNFe=2');
  //endi
  if cbxfinalidade.ItemIndex = 2 then
     Writeln(f,'finNFe=3');
  //endi
  if cbxfinalidade.ItemIndex = 3 then
     begin
       Writeln(f,'finNFe=4');
       Writeln(f,'[NFRef001]');

       Writeln(f,'refNFe='+edirefnfe.text);
       Writeln(f,'Tipo=NFe');

     end;
  //endi

  if cbxindfinal.ItemIndex = 0 then
     Writeln(f,'indFinal=0');
  //endi
  if cbxindfinal.ItemIndex = 1 then
     Writeln(f,'indFinal=1');
  //endi

  if cbxindpres.ItemIndex = 0 then
     Writeln(f,'indPres=0');
  //endi
  if cbxindpres.ItemIndex = 1 then
     Writeln(f,'indPres=1');
  //endi
  if cbxindpres.ItemIndex = 2 then
     Writeln(f,'indPres=2');
  //endi
  if cbxindpres.ItemIndex = 3 then
     Writeln(f,'indPres=3');
  //endi
  if cbxindpres.ItemIndex = 4 then
     Writeln(f,'indPres=9');
  //endi




  if rg1.ItemIndex = 1 then
     begin
       data := now;

       if frmdados.cds_indice.FieldByName('hverao').AsString = 'SIM' then
          data := (data * 17280) - 730
       else
          data := (data * 17280) - 10;
       //endi


       Writeln(f,'dhCont='+formatdatetime('dd/mm/yyyy hh:mm:ss',data/17280));
       Writeln(f,'xJust='+edit1.text);
     end;



  if rgbformapgto.ItemIndex <> -1 then
     Writeln(f,'FormaPag='+inttostr(rgbformapgto.ItemIndex) );
  //endi
  Writeln(f,'[Emitente]');

  if frmdados.cds_emitente.Locate('codigo',frmdados.cds_nf.fieldbyname('cemi').asInteger,[]) then
     begin

       sufemi := '';
       frmdados.sql_consulta.Active := false;
       frmdados.sql_consulta.SQL.Clear;
       frmdados.sql_consulta.SQL.Add('select * from estados where codigo = '+ inttostr( frmdados.cds_emitente.fieldbyname('cest').asInteger )  );
       frmdados.sql_consulta.Active := true;

       sufemi := frmdados.sql_consulta.fieldbyname('sigla').asString;

       scnpje := frmdados.Cds_emitente.fieldbyname('cnpj').asString;
       scnpje := tirapontos(scnpje);
       scnpje := tiratracos(scnpje);
       scnpje := tirabarras(scnpje);
       Writeln(f,'CNPJ='+scnpje);

       siee := frmdados.Cds_emitente.fieldbyname('ie').asString;
       siee := tirapontos(siee);
       siee := tiratracos(siee);
       siee := tirabarras(siee);
       Writeln(f,'IE='+siee);

       if frmdados.cds_regtrib.Locate('codigo',frmdados.cds_emitente.fieldbyname('cregtrib').asInteger,[]) then
          begin
            Writeln(f,'CRT='+inttostr(frmdados.cds_regtrib.fieldbyname('sigla').asInteger));
          end;
       //endi

       Writeln(f,'Razao='+frmdados.Cds_emitente.fieldbyname('nome').asString);
       Writeln(f,'Fantasia='+frmdados.Cds_emitente.fieldbyname('fantasia').asString);
       Writeln(f,'Fone='+frmdados.Cds_emitente.fieldbyname('telefones').asString);

       scepe := frmdados.Cds_emitente.fieldbyname('cep').asString;
       scepe := tirapontos(scepe);
       scepe := tiratracos(scepe);
       scepe := tirabarras(scepe);
       Writeln(f,'CEP='+scepe);

       Writeln(f,'Logradouro='+frmdados.Cds_emitente.fieldbyname('endereco').asString);
       Writeln(f,'Numero='+frmdados.Cds_emitente.fieldbyname('nro').asString);
       Writeln(f,'Complemento='+frmdados.Cds_emitente.fieldbyname('compl').asString);
       Writeln(f,'Bairro='+frmdados.Cds_emitente.fieldbyname('bairro').asString);


       if frmdados.cds_Munic.Locate('codigo',frmdados.cds_emitente.fieldbyname('cmun').asInteger,[]) then
          begin
            Writeln(f,'CidadeCod='+frmdados.cds_munic.fieldbyname('codibge').asString);
            Writeln(f,'Cidade='+frmdados.cds_munic.fieldbyname('nome').asString);
          end;
       //endi

       if frmdados.cds_estados.Locate('codigo',frmdados.cds_emitente.fieldbyname('cest').asInteger,[]) then
          begin
            Writeln(f,'UF='+frmdados.cds_estados.fieldbyname('sigla').asString);
          end;
       //endi


     end;
  //endi

  Writeln(f,'[Destinatario]');

  if frmdados.cds_nf.FieldByName('tipodest').AsString = 'C' then
     begin


       if frmdados.cds_clientes.Locate('codigo',frmdados.cds_nf.fieldbyname('cdest').asInteger,[]) then
          begin

            sufdest := '';
            frmdados.sql_consulta.Active := false;
            frmdados.sql_consulta.SQL.Clear;
            frmdados.sql_consulta.SQL.Add('select * from estados where codigo = '+ inttostr( frmdados.cds_clientes.fieldbyname('cest').asInteger )  );
            frmdados.sql_consulta.Active := true;

            sufdest := frmdados.sql_consulta.fieldbyname('sigla').asString;
            icodufdest :=  frmdados.sql_consulta.fieldbyname('codigo').asinteger;


            scnpjd := frmdados.Cds_clientes.fieldbyname('cnpj').asString;
            scnpjd := tirapontos(scnpjd);
            scnpjd := tiratracos(scnpjd);
            scnpjd := tirabarras(scnpjd);
            Writeln(f,'CNPJ='+scnpjd);

            sied := frmdados.Cds_clientes.fieldbyname('ie').asString;
            sied := tirapontos(sied);
            sied := tiratracos(sied);
            sied := tirabarras(sied);


            if (sied = 'ISENTO') or (sied = '') then
                 begin


                    if sied = 'ISENTO' then
                       begin

                         Writeln(f,'IE=');
                         Writeln(f,'indIEDest=2');

                       end;

                    if sied = '' then
                       begin

                         Writeln(f,'IE=');
                         Writeln(f,'indIEDest=9');

                       end;


                 end
            else
                begin

                  if sufemi <> sufdest then
                     begin

                       Writeln(f,'IE='+sied);
                       Writeln(f,'indIEDest=9');

                     end
                  else
                     begin

                       Writeln(f,'IE='+sied);
                       Writeln(f,'indIEDest=1');

                     end;
                  //endi


                end;

            //endi


            Writeln(f,'NomeRazao='+frmdados.Cds_clientes.fieldbyname('nome').asString);
            //Writeln(f,'Fantasia='+frmdados.Cds_clientes.fieldbyname('fantasia').asString);
            Writeln(f,'Fone='+frmdados.Cds_clientes.fieldbyname('telefones').asString);

            scepd := frmdados.Cds_clientes.fieldbyname('cep').asString;
            scepd := tirapontos(scepd);
            scepd := tiratracos(scepd);
            scepd := tirabarras(scepd);
            Writeln(f,'CEP='+scepd);

            Writeln(f,'Logradouro='+frmdados.Cds_clientes.fieldbyname('endereco').asString);
            Writeln(f,'Numero='+frmdados.Cds_clientes.fieldbyname('nro').asString);
            Writeln(f,'Complemento='+frmdados.Cds_clientes.fieldbyname('compl').asString);
            Writeln(f,'Bairro='+frmdados.Cds_clientes.fieldbyname('bairro').asString);


            if frmdados.cds_Munic.Locate('codigo',frmdados.cds_clientes.fieldbyname('cmun').asInteger,[]) then
               begin
                 Writeln(f,'CidadeCod='+frmdados.cds_munic.fieldbyname('codibge').asString);
                 Writeln(f,'Cidade='+frmdados.cds_munic.fieldbyname('nome').asString);
               end;
            //endi

            if frmdados.cds_estados.Locate('codigo',frmdados.cds_clientes.fieldbyname('cest').asInteger,[]) then
               begin
                 Writeln(f,'UF='+frmdados.cds_estados.fieldbyname('sigla').asString);
               end;
            //endi


          end;
       //endi

     end;
  //endi

  if frmdados.cds_nf.FieldByName('tipodest').AsString = 'F' then
     begin


       if frmdados.cds_fornecedores.Locate('codigo',frmdados.cds_nf.fieldbyname('cdest').asInteger,[]) then
          begin

            sufdest := '';
            frmdados.sql_consulta.Active := false;
            frmdados.sql_consulta.SQL.Clear;
            frmdados.sql_consulta.SQL.Add('select * from estados where codigo = '+ inttostr( frmdados.cds_fornecedores.fieldbyname('cest').asInteger )  );
            frmdados.sql_consulta.Active := true;

            sufdest := frmdados.sql_consulta.fieldbyname('sigla').asString;
            icodufdest :=  frmdados.sql_consulta.fieldbyname('codigo').asinteger;

            scnpjd := frmdados.Cds_fornecedores.fieldbyname('cnpj').asString;
            scnpjd := tirapontos(scnpjd);
            scnpjd := tiratracos(scnpjd);
            scnpjd := tirabarras(scnpjd);
            Writeln(f,'CNPJ='+scnpjd);

            sied := frmdados.Cds_fornecedores.fieldbyname('ie').asString;
            sied := tirapontos(sied);
            sied := tiratracos(sied);
            sied := tirabarras(sied);
            Writeln(f,'IE='+sied);

            Writeln(f,'NomeRazao='+frmdados.Cds_fornecedores.fieldbyname('nome').asString);
            //Writeln(f,'Fantasia='+frmdados.Cds_fornecedores.fieldbyname('fantasia').asString);
            Writeln(f,'Fone='+frmdados.Cds_fornecedores.fieldbyname('telefones').asString);

            scepd := frmdados.Cds_fornecedores.fieldbyname('cep').asString;
            scepd := tirapontos(scepd);
            scepd := tiratracos(scepd);
            scepd := tirabarras(scepd);
            Writeln(f,'CEP='+scepd);

            Writeln(f,'Logradouro='+frmdados.Cds_fornecedores.fieldbyname('endereco').asString);
            Writeln(f,'Numero='+frmdados.Cds_fornecedores.fieldbyname('nro').asString);
            Writeln(f,'Complemento='+frmdados.Cds_fornecedores.fieldbyname('compl').asString);
            Writeln(f,'Bairro='+frmdados.Cds_fornecedores.fieldbyname('bairro').asString);


            if frmdados.cds_Munic.Locate('codigo',frmdados.cds_fornecedores.fieldbyname('cmun').asInteger,[]) then
               begin
                 Writeln(f,'CidadeCod='+frmdados.cds_munic.fieldbyname('codibge').asString);
                 Writeln(f,'Cidade='+frmdados.cds_munic.fieldbyname('nome').asString);
               end;
            //endi

            if frmdados.cds_estados.Locate('codigo',frmdados.cds_fornecedores.fieldbyname('cest').asInteger,[]) then
               begin
                 Writeln(f,'UF='+frmdados.cds_estados.fieldbyname('sigla').asString);
               end;
            //endi


          end;
       //endi

     end;
  //endi

  ftotp := 0;
  iItem := 0;

  ftotbcipi:= 0;
  ftotbcicms:= 0;
  ftotipi:= 0;
  ftoticms:= 0;

  ffrete_unit := 0;
  foutrasdesp_unit := 0;
  fvalorseg_unit   := 0;
  fvalordesc_unit  := 0;

  with frmdados do
    begin
      cds_nfp.Filtered := false;
      cds_nfp.Filter := 'cnf = '+inttostr(cds_nf.fieldbyname('codigo').asInteger);
      cds_nfp.Filtered := true;

      fvlrbasecalcicmsst := 0;
      ftotalbasecalcicmsst := 0;
      ftotalvlricmsst := 0;
      totvICMSUFRemet := 0;
      totvICMSUFDest  := 0;
      fvlricms := 0;

      pICMSInterPart:= frmdados.cds_indice.fieldbyname('pICMSInterPart').AsFloat;
      pICMSOrigPart := 100 - frmdados.cds_indice.fieldbyname('pICMSInterPart').AsFloat;

      while not cds_nfp.Eof do
        begin
          vICMSUFRemet := 0;
          vICMSUFDest  := 0;

          fbcipi:= 0;
          fbcicms:= 0;
          fvipi:= 0;
          fvicms:= 0;
          faliqicms:= 0;
          faliqipi:= 0;
          freducaobcicms:= 0;
          freducaobcipi:= 0;
          fbasecalc := 0;
          A:=0;
          B:=1;
          MVA:=0;


          iItem := iItem + 1;
          Writeln(f,'[Produto'+formatfloat('000',iItem)+']');

          saplicaliqfat := 'F';

          Writeln(f,'xPed='+edinped.text);
          Writeln(f,'nItemPed='+ inttostr( cds_nfp.fieldbyname('item').AsInteger ) );

          sitens := sitens + 'ITEM '+formatfloat('00',cds_nfp.fieldbyname('item').AsInteger)+': '+edinped.Text+'/'+cds_nfp.fieldbyname('item').AsString+' ';


          if cds_ipi.Locate('codigo',cds_nfp.fieldbyname('cod2prodnf').asInteger,[]) then
             begin
               faliqipi := Cds_ipi.fieldbyname('aliquota').asfloat;
               freducaobcipi := Cds_ipi.fieldbyname('reducao').asfloat;

               if faliqipi > 0 then
                  begin


                                   //caso preencha valor icms
                    if frmdados.cds_nfp.FieldByName('vlripi').AsFloat > 0 then
                       begin

                         fbcipi :=  cds_nfp.fieldbyname('subtotal').asfloat;
                         fvipi := frmdados.cds_nfp.fieldbyname('vlripi').AsFloat;

                       end
                    else
                       begin

                         fbcipi :=  cds_nfp.fieldbyname('subtotal').asfloat - (freducaobcipi*cds_nfp.fieldbyname('subtotal').asfloat/100);
                         fvipi := fbcipi * faliqipi / 100;


                       end;






                  end
               else
                  begin

                    fbcipi :=  0;
                    fvipi := 0;


                  end;
               //endi






             end;
          //endi

          //caso preencha valor ipi
          //if frmdados.cds_nfp.FieldByName('vlripi').AsFloat > 0 then
          //   begin

          //     fbcipi :=  frmdados.cds_nfp.fieldbyname('subtotal').AsFloat;
          //     fvipi := frmdados.cds_nfp.fieldbyname('vlripi').AsFloat;

          //   end;



          fbasecalc :=  cds_nfp.fieldbyname('subtotal').asfloat;



          if cds_cfop.Locate('codigo',cds_nfp.fieldbyname('cod11prodnf').asInteger,[]) then
             begin

               if sufemi <> sufdest then
                  begin
                    // cobrança ou crédito icms quanto for estado diferente
                  end;
               //endi


               //if cds_cfop.FieldByName('aplicaliqfat').asstring = 'T' then
               //   if Copy(cds_csosn.FieldByName('descricao').AsString,1,3) = '101' then

                   //endi
               //endi

               scfop := Cds_cfop.fieldbyname('sigla').asString;
               scalciva :=  Cds_cfop.fieldbyname('calciva').asString;
               scalcsubst_trib_ant :=  Cds_cfop.fieldbyname('calcsubst_trib_ant').asString;

               if scalcsubst_trib_ant = 'S' then
                  begin

                    if sufemi <> sufdest then
                       begin

                         // cálculo de icms antecipado anteriormente estado diferente


                       end
                    else
                       begin

                         // cálculo de icms antecipado anteriormente mesmo estado 


                       end;
                    //endi



                  end;
               //endi


               if scalciva = 'S' then
                  begin


                    fporciva :=   cds_nfp.fieldbyname('iva').AsFloat / 100;

                    A := 1 + fporciva;

                    sql_consulta.Active := false;
                    sql_consulta.SQL.Clear;
                    sql_consulta.SQL.Add('select * from icms where codigo = '+ inttostr( cds_nfp.fieldbyname('cod1prodnf').asInteger )  );
                    sql_consulta.Active := true;

                    faliqintra := sql_consulta.fieldbyname('aliquota').AsFloat / 100;

                    if sufemi <> sufdest then
                       begin

                          sql_consulta.Active := false;
                          sql_consulta.SQL.Clear;
                          sql_consulta.SQL.Add('select * from aliqinter where codprod = '+ inttostr( cds_nfp.fieldbyname('cpro').asInteger  )+' and codest='+ inttostr(icodufdest)  );
                          sql_consulta.Active := true;

                          faliqinter := sql_consulta.fieldbyname('aliq').AsFloat / 100;


                          B :=  (1-faliqinter) / (1-faliqintra);


                       end
                    else
                       begin

                         sql_consulta.Active := false;
                         sql_consulta.SQL.Clear;
                         sql_consulta.SQL.Add('select * from icms where codigo = '+  inttostr( cds_nfp.fieldbyname('cod1prodnf').asInteger )  );
                         sql_consulta.Active := true;

                         faliqicms := sql_consulta.fieldbyname('aliquota').AsFloat;

                         fvicms :=   fbasecalc  *  faliqicms / 100

                       end;

                    MVA := ((A*B)-1)*100;

                    //fvlrbasecalcicmsst := (fbasecalc * MVA / 100) + fbasecalc;

                    fvlricmsst :=  (A * fbasecalc * faliqintra)  -   (faliqinter * fbasecalc) - fvicms;

                    if   fvlricmsst > 0 then
                         fvlrbasecalcicmsst := (fbasecalc * fporciva ) + fbasecalc
                    else
                         fvlrbasecalcicmsst := 0;
                    //endi

                    ftotalbasecalcicmsst := ftotalbasecalcicmsst + fvlrbasecalcicmsst;

                    ftotalvlricmsst := ftotalvlricmsst +  fvlricmsst;


                  end;

               scfop := tirapontos(scfop);
               scfop := tiratracos(scfop);
               scfop := tirabarras(scfop);
               Writeln(f,'CFOP='+scfop);

               if  (not cds_temp_imp.Locate('id','CFOP'+cds_cfop.fieldbyname('codigo').AsString,[])) then
                    begin

                    if  (cds_cfop.fieldbyname('obs').AsString <> '') then
                        begin
                          cds_temp_imp.Append;
                          cds_temp_imp.FieldByName('id').AsString := 'CFOP'+cds_cfop.fieldbyname('codigo').AsString;
                          cds_temp_imp.FieldByName('obs').AsString := cds_cfop.fieldbyname('obs').AsString;
                          cds_temp_imp.Post;

                         
                        end;
                    //endi


                  end;
               //endi


             end;
          //endi


          Case  frmdados.cds_indice.FieldByName('configcpro').asInteger of
                0:begin
                    Writeln(f,'Codigo='+inttostr(cds_nfp.fieldbyname('cpro').asInteger));
                  end;
                1:begin
                    Writeln(f,'Codigo='+cds_nfp.fieldbyname('caux').asstring);
                  end;
                2:begin
                    Writeln(f,'Codigo='+cds_nfp.fieldbyname('cbar').asstring);
                  end;

          end;




          Writeln(f,'Descricao='+cds_nfp.fieldbyname('npro').asString);

          if cds_cf.Locate('codigo',cds_nfp.fieldbyname('cod3prodnf').asInteger,[]) then
             begin
               scf := Cds_cf.fieldbyname('sigla').asString;
               scf := tirapontos(scf);
               scf := tiratracos(scf);
               scf := tirabarras(scf);
               Writeln(f,'NCM='+scf);
             end
          else
             begin
               Writeln(f,'NCM='+cds_nfp.fieldbyname('simplesncm').asString);
             end;
          //endi

          if  cds_nfp.fieldbyname('CEST').asString <> '' then
             begin
               Writeln(f,'CEST='+cds_nfp.fieldbyname('CEST').asString);
             end;
          //endi

          if cds_unidade.Locate('codigo',cds_nfp.fieldbyname('cod13prodnf').asInteger,[]) then
             begin
               sund := Cds_unidade.fieldbyname('sigla').asString;
               sund := tirapontos(sund);
               sund := tiratracos(sund);
               sund := tirabarras(sund);
               Writeln(f,'Unidade='+sund);
             end;
          //endi

          if cds_icms.Locate('codigo',cds_nfp.fieldbyname('cod1prodnf').asInteger,[]) then
             begin

               //caso preencha valor icms


               if frmdados.cds_nfp.FieldByName('vlricms').AsFloat > 0 then
                  begin

                    if frmdados.cds_nfp.FieldByName('bcicms').AsFloat > 0 then
                       begin
                         fbcicms :=  frmdados.cds_nfp.FieldByName('bcicms').AsFloat;
                       end
                    else
                       begin
                         fbcicms :=  frmdados.cds_nfp.fieldbyname('subtotal').AsFloat;
                       end;
                    //endi

                    fvicms := frmdados.cds_nfp.fieldbyname('vlricms').AsFloat;
                    faliqicms := Cds_icms.fieldbyname('aliquota').asfloat;

                  end;


               if frmdados.cds_regtrib.fieldbyname('sigla').asInteger > 1 then
                  begin

                    faliqicms := Cds_icms.fieldbyname('aliquota').asfloat;
                    freducaobcicms := Cds_icms.fieldbyname('reducao').asfloat;

                    if faliqicms > 0 then
                       begin
                         fbcicms :=  cds_nfp.fieldbyname('subtotal').asfloat - (freducaobcicms*cds_nfp.fieldbyname('subtotal').asfloat/100);
                         fvicms := fbcicms * faliqicms / 100;

                       end
                    else
                       begin
                         fbcicms :=  0;
                         fvicms := 0;
                       end;
                    //endi

                    if  (not cds_temp_imp.Locate('id','ICMS'+cds_icms.fieldbyname('codigo').AsString,[])) then
                         begin

                           if (cds_icms.fieldbyname('obs').AsString <> '') then
                              begin
                                cds_temp_imp.Append;
                                cds_temp_imp.FieldByName('id').AsString := 'ICMS'+cds_icms.fieldbyname('codigo').AsString;
                                cds_temp_imp.FieldByName('obs').AsString := cds_icms.fieldbyname('obs').AsString;
                                cds_temp_imp.Post;

                               
                              end;
                           //endi


                         end;
                    //endi
                  end
               else
                  begin


                    if frmdados.cds_nfp.FieldByName('vlricms').AsFloat > 0 then
                       begin

                         if frmdados.cds_nfp.FieldByName('bcicms').AsFloat > 0 then
                            begin
                              fbcicms :=  frmdados.cds_nfp.FieldByName('bcicms').AsFloat;
                            end
                         else
                            begin
                              fbcicms :=  frmdados.cds_nfp.fieldbyname('subtotal').AsFloat;
                            end;
                         //endi

                         fvicms := frmdados.cds_nfp.fieldbyname('vlricms').AsFloat;
                         faliqicms := Cds_icms.fieldbyname('aliquota').asfloat;

                       end
                    else
                       begin

                         fbcicms :=  0;
                         fvicms := 0;


                       end;
                    //endi


                  end;
               //endi

             end;
          //endi




          Writeln(f,'Quantidade='+formatfloat('0.00',cds_nfp.fieldbyname('qtde').asfloat));

          Writeln(f,'ValorUnitario='+formatfloat('0.00',cds_nfp.fieldbyname('prve').asfloat));

          Writeln(f,'ValorTotal='+formatfloat('0.00',cds_nfp.fieldbyname('subtotal').asfloat));


          perc :=  cds_nfp.fieldbyname('subtotal').asfloat / strtofloat(tirapontos(lbltotal.Caption)) * 100;

          fvalordesc_unit := strtofloat(  tirapontos( edivaldesc.Text ) ) *  perc / 100;

          fvalorseg_unit := strtofloat(  tirapontos( edivlrseg.Text ) ) * perc / 100;

          foutrasdesp_unit :=  strtofloat(  tirapontos( edivlrout.Text ) ) * perc / 100;

          ffrete_unit :=   strtofloat(  tirapontos( edivlrfrete.Text ) ) * perc / 100;

          ftotfrete_unit := ftotfrete_unit + ffrete_unit;
          ftotoutrasdesp_unit := ftotoutrasdesp_unit + foutrasdesp_unit;
          ftotvalorseg_unit := ftotvalorseg_unit + fvalorseg_unit;
          ftotvalordesc_unit := ftotvalordesc_unit + fvalordesc_unit;


          Writeln(f,'vFrete='+formatfloat('0.00',ffrete_unit ));

          Writeln(f,'vOutro='+formatfloat('0.00',foutrasdesp_unit ));

          Writeln(f,'vSeg='+formatfloat('0.00',fvalorseg_unit ));

          Writeln(f,'vDesc='+formatfloat('0.00',fvalordesc_unit ));

          fsb_valorliquidoitem := cds_nfp.fieldbyname('subtotal').asfloat;   //-((      cds_nfp.fieldbyname('qtde').asfloat*cds_nfp.fieldbyname('prve').asfloat)-cds_nfp.fieldbyname('subtotal').asfloat);

          fsb_valorliquidocupom := fsb_valorliquidocupom+fsb_valorliquidoitem;

          buscarcalcibpt(cds_nfp.fieldbyname('cpro').asString,fsb_valorliquidoitem, fsb_valorliquidocupom);

          //if cds_nfp.RecNo = 1 then
          //   begin
          //     fdiffrete_unit :=   0;
          //     fdifoutrasdesp_unit := 0;
          //     fdifvalorseg_unit :=  0;
          //     fdifvalordesc_unit := 0;
          //   end;
          //endi

          Writeln(f,'[ICMS'+formatfloat('000',iItem)+']');

          cds_tgicms.Filtered := false;
          cds_tgicms.Filter := 'codigo = 0';
          cds_tgicms.Filtered := true;

          if cds_sitb.Locate('codigo',cds_nfp.fieldbyname('cod5prodnf').asInteger,[]) then
             begin

               ssitb := Cds_sitb.fieldbyname('sigla').asString;
               ssitb := tirapontos(ssitb);
               ssitb := tiratracos(ssitb);
               ssitb := tirabarras(ssitb);
               Writeln(f,'CST='+ssitb);

               cds_tgicms.Filtered := false;
               cds_tgicms.Filter := 'csitb = '+inttostr(cds_nfp.fieldbyname('cod5prodnf').asInteger);
               cds_tgicms.Filtered := true;

             end;
          //endi

          if cds_sita.Locate('codigo',cds_nfp.fieldbyname('cod4prodnf').asInteger,[]) then
             begin
               ssita := Cds_sita.fieldbyname('sigla').asString;
               ssita := tirapontos(ssita);
               ssita := tiratracos(ssita);
               ssita := tirabarras(ssita);
               Writeln(f,'Origem='+ssita);
             end;
          //endi

          if cds_csosn.Locate('codigo',cds_nfp.fieldbyname('cod14prodnf').asInteger,[]) then
             begin

               scsosn := Cds_csosn.fieldbyname('sigla').asString;
               scsosn := tirapontos(scsosn);
               scsosn := tiratracos(scsosn);
               scsosn := tirabarras(scsosn);
               Writeln(f,'CSOSN='+scsosn);


               if cds_cfop.FieldByName('aplicaliqfat').asstring = 'T' then
                  begin

                    if (cds_csosn.FieldByName('sigla').AsString = '101') or (cds_csosn.FieldByName('sigla').AsString = '201') then
                       begin
                         ftotcredicms := ftotcredicms + faliqapicms / 100 * cds_nfp.fieldbyname('subtotal').asfloat;

                         Writeln(f,'pCredSN='+ formatfloat('0.00',  faliqapicms  ));
                         Writeln(f,'vCredICMSSN='+ formatfloat('0.00',  faliqapicms / 100   *   cds_nfp.fieldbyname('subtotal').asfloat      )  );

                       end;
                    //endi



                  end;


               //cds_tgicms.Filtered := false;
               //cds_tgicms.Filter := 'csitb = '+inttostr(cds_nfp.fieldbyname('cod5prodnf').asInteger);
               //cds_tgicms.Filtered := true;

             end;
          //endi

          //while not cds_tgicms.Eof do
          //  begin
          //    if cds_tgicms.fieldbyname('camporef').asString <> '' then
          //       begin
          //         Writeln(f,cds_tgicms.fieldbyname('descricao').asString+'='+cds_nfp.fieldbyname(cds_tgicms.fieldbyname('camporef').asString).asString );
          //       end;
          //    else
          //       begin

          //       end;
              //endi
          //    cds_tgicms.Next;
          //  end;
          //endi

          iI:= StrToIntDef(ssitb,0);



          //Writeln(f,'Modalidade=3');

          Writeln(f,'Modalidade='+smodbc);
          if fbcicms > 0 then
             Writeln(f,'vBC='+formatfloat('0.00',fbcicms));
          //endi
          if faliqicms > 0 then
             Writeln(f,'pICMS='+formatfloat('0.00',faliqicms));
          //endi
          if fvicms > 0 then
             Writeln(f,'vICMS='+formatfloat('0.00',fvicms));
          //endi




         if cds_modbcst.Locate('codigo',cds_nfp.fieldbyname('cod7prodnf').asInteger,[]) then
            begin
              smodbcst := Cds_modbcst.fieldbyname('sigla').asString;
              smodbcst := tirapontos(smodbcst);
              smodbcst := tiratracos(smodbcst);
              smodbcst := tirabarras(smodbcst);
              Writeln(f,'modBCST='+smodbcst);

            end;
         //endi



          Writeln(f,'pMVAST='+ formatfloat('0.00',fporciva) );
          Writeln(f,'pRedBCST=' );

          Writeln(f,'vBCST='+ formatfloat('0.00',  fvlrbasecalcicmsst  ) );
          Writeln(f,'pICMSST='+ formatfloat('0.00',  faliqintra  )  );
          Writeln(f,'vICMSST='+ formatfloat('0.00', fvlricmsst )   );
          Writeln(f,'pRedBC='+formatfloat('0.00', freducaobcicms));
          Writeln(f,'vBCSTRet='+formatfloat('0.00',cds_nfp.fieldbyname('bscalcst').asfloat));
          Writeln(f,'vICMSSTRet='+formatfloat('0.00',cds_nfp.fieldbyname('icmscalcst').asfloat));

          //smodbc
          Writeln(f,'[IPI'+formatfloat('000',iItem)+']');
          if cds_ipi.Locate('codigo',cds_nfp.fieldbyname('cod2prodnf').asInteger,[]) then
             begin
               sipi := Cds_ipi.fieldbyname('sigla').asString;
               sipi := tirapontos(sipi);
               sipi := tiratracos(sipi);
               sipi := tirabarras(sipi);
               Writeln(f,'CST='+sipi);

               Writeln(f,'ValorBase='+formatfloat('0.00',fbcipi));
               Writeln(f,'Aliquota='+formatfloat('0.00',faliqipi));
               Writeln(f,'Valor='+formatfloat('0.00',fvipi));


             end;
          //endi


          Writeln(f,'[PIS'+formatfloat('000',iItem)+']');
          if cds_pis.Locate('codigo',cds_nfp.fieldbyname('cod9prodnf').asInteger,[]) then
             begin
               spis := Cds_pis.fieldbyname('sigla').asString;
               spis := tirapontos(spis);
               spis := tiratracos(spis);
               spis := tirabarras(spis);
               Writeln(f,'CST='+spis);

               Writeln(f,'ValorBase=');
               Writeln(f,'Aliquota=');
               Writeln(f,'Valor=');

             end;
          //endi

          Writeln(f,'[COFINS'+formatfloat('000',iItem)+']');
          if cds_pis.Locate('codigo',cds_nfp.fieldbyname('cod9prodnf').asInteger,[]) then
             begin
               scofins := Cds_cofins.fieldbyname('sigla').asString;
               scofins := tirapontos(scofins);
               scofins := tiratracos(scofins);
               scofins := tirabarras(scofins);
               Writeln(f,'CST='+scofins);

               Writeln(f,'ValorBase=');
               Writeln(f,'Aliquota=');
               Writeln(f,'Valor=');

             end;
          //endi




         //pICMSOrigPart
         if sufemi <> sufdest then
             begin

               sql_consulta.Active := false;
               sql_consulta.SQL.Clear;
               sql_consulta.SQL.Add('select * from icms where codigo = '+ inttostr( cds_nfp.fieldbyname('cod1prodnf').asInteger )  );
               sql_consulta.Active := true;

               faliqintra := sql_consulta.fieldbyname('aliquota').AsFloat;

               sql_consulta.Active := false;
               sql_consulta.SQL.Clear;
               sql_consulta.SQL.Add('select * from aliqinter where codprod = '+ inttostr( cds_nfp.fieldbyname('cpro').asInteger  )+' and codest='+ inttostr(icodufdest)  );
               sql_consulta.Active := true;

               faliqinter := sql_consulta.fieldbyname('aliq').AsFloat;

               //showmessage(inttostr(cds_nfp.fieldbyname('cpro').asInteger));
               //showmessage(inttostr(icodufdest));
               //showmessage(floattostr(faliqinter));

               Writeln(f,'[ICMSUFDest'+formatfloat('000',iItem)+']');
               Writeln(f,'vBCUFDest='+formatfloat('0.00',fbcicms));
               Writeln(f,'pFCPUFDest=0.00');//percentual fundo de combate a pobreza
               Writeln(f,'pICMSUFDest='+formatfloat('0.00',faliqintra));
               Writeln(f,'pICMSInter='+formatfloat('0.00', faliqinter));
               Writeln(f,'pICMSInterPart='+formatfloat('0.00',pICMSInterPart));
               Writeln(f,'vFCPUFDest=0.00');//valor fundo de combate a pobreza



               if faliqintra > faliqinter then
                  begin

                    pdifpicms := faliqintra - faliqinter;

                  end
               else
                  begin
                    if faliqinter > faliqintra  then
                       begin

                         pdifpicms := faliqinter - faliqintra;

                       end
                    else
                       begin

                         pdifpicms := faliqintra;

                       end;
                    //endi
                  end;
               //endi

               vicms := fbcicms *  pdifpicms / 100;


               vICMSUFDest :=  vicms * pICMSInterPart / 100;
               totvICMSUFDest :=  totvICMSUFDest +  vICMSUFDest;
               Writeln(f,'vICMSUFDest='+formatfloat('0.00', vICMSUFDest  ) );

               vICMSUFRemet:= vicms * pICMSOrigPart / 100;
               totvICMSUFRemet :=  totvICMSUFRemet + vICMSUFRemet;
               Writeln(f,'vICMSUFRemet='+formatfloat('0.00',    vICMSUFRemet    )     );

            end;
          //endi





          ftotbcipi:= ftotbcipi+fbcipi;
          ftotbcicms:= ftotbcicms+fbcicms;
          ftotipi:= ftotipi+fvipi;
          ftoticms:= ftoticms+fvicms;
          ftotp := ftotp + cds_nfp.fieldbyname('subtotal').AsFloat;
          cds_nfp.Next;
        end;
      //endw



    end;
  //endth

   Writeln(f,'[Total]');
  Writeln(f,'BaseICMS='+formatfloat('0.00',ftotbcicms));
  Writeln(f,'ValorICMS='+formatfloat('0.00',ftoticms));



   writeln(f,'vFCPUFDest=0.00');
	 writeln(f,'vICMSUFDest='+formatfloat('0.00',totvICMSUFDest) );
	 writeln(f,'vICMSUFRemet='+formatfloat('0.00',totvICMSUFRemet) );


  Writeln(f,'ValorProduto='+formatfloat('0.00',ftotp ));


  if  strtofloat( tirapontos(edibscalcsubstrib.text )) > 0  then
     Writeln(f,'BaseICMSSubstituicao='+formatfloat('0.00',strtofloat( tirapontos(edibscalcsubstrib.text )) ))
  else
     Writeln(f,'BaseICMSSubstituicao='+formatfloat('0.00',  ftotalbasecalcicmsst  ));




  if strtofloat( tirapontos(edivlricmssubtrib.text)) > 0 then
     Writeln(f,'ValorICMSSubstituicao='+formatfloat('0.00',strtofloat( tirapontos(edivlricmssubtrib.text)) ))
  else
     Writeln(f,'ValorICMSSubstituicao='+formatfloat('0.00', ftotalvlricmsst  ));




  Writeln(f,'ValorFrete='+formatfloat('0.00',strtofloat( tirapontos(edivlrfrete.text )) ));
  Writeln(f,'ValorSeguro='+formatfloat('0.00',strtofloat( tirapontos(edivlrseg.text )) ));
  Writeln(f,'ValorDesconto='+formatfloat('0.00',strtofloat(  tirapontos(edivaldesc.text  )) ) );
  Writeln(f,'ValorII=');
  Writeln(f,'ValorIPI='+formatfloat('0.00', ftotipi ));
  Writeln(f,'ValorPIS=');
  Writeln(f,'ValorCOFINS=');
  Writeln(f,'ValorOutrasDespesas='+formatfloat('0.00',strtofloat(  tirapontos(edivlrout.text)) ));

  Writeln(f,'ValorNota='+formatfloat('0.00',  ftotp+ ftotalvlricmsst + strtofloat(  tirapontos(edivlrout.text))+strtofloat( tirapontos(edivlrseg.text ))+strtofloat( tirapontos(edivlrfrete.text ))+ftotipi - strtofloat( tirapontos(edivaldesc.text ))   ));

  //Writeln(f,'ValorNota='+formatfloat('0.00',  ftotp+ftotipi   ));

  if  (cbxdesctransp_cod5nf.Text <> '') or
      (cbxdescfreteporconta_cod2nf.text <> '')
  then
      begin
        Writeln(f,'[Transportador]');
      end;
  //endi

  if  (cbxdescfreteporconta_cod2nf.text <> '') then
      begin
        Writeln(f,'FretePorConta='+frmdados.cds_onusdofrete.fieldbyname('sigla').asString);
      end;
  //endi

  if  (cbxdesctransp_cod5nf.Text <> '') then
      begin

        scnpjt := frmdados.Cds_transportador.fieldbyname('cnpj').asString;
        scnpjt := tirapontos(scnpjt);
        scnpjt := tiratracos(scnpjt);
        scnpjt := tirabarras(scnpjt);
        Writeln(f,'CnpjCpf='+scnpjt);

        Writeln(f,'NomeRazao='+frmdados.cds_transportador.FieldByName('nome').asString );

        siet := frmdados.Cds_transportador.fieldbyname('ie').asString;
        siet := tirapontos(siet);
        siet := tiratracos(siet);
        siet := tirabarras(siet);
        Writeln(f,'IE='+siet);

        Writeln(f,'Endereco='+frmdados.Cds_transportador.fieldbyname('endereco').asString+', '+frmdados.Cds_transportador.fieldbyname('nro').asString);

       if frmdados.cds_Munic.Locate('codigo',frmdados.cds_transportador.fieldbyname('cmun').asInteger,[]) then
          begin
            Writeln(f,'CidadeCod='+frmdados.cds_munic.fieldbyname('codibge').asString);
            Writeln(f,'Cidade='+frmdados.cds_munic.fieldbyname('nome').asString);
          end;
       //endi

       // Writeln(f,'Cidade=');

       if frmdados.cds_estados.Locate('codigo',frmdados.cds_transportador.fieldbyname('cest').asInteger,[]) then
          begin
            Writeln(f,'UF='+frmdados.cds_estados.fieldbyname('sigla').asString);
          end;
       //endi

       Writeln(f,'ValorServico=');
       Writeln(f,'ValorBase=');
       Writeln(f,'Aliquota=');
       Writeln(f,'Valor=');

       if frmdados.cds_cfop.Locate('codigo',icodcfopt,[]) then
          begin
            scfopt := frmdados.Cds_cfop.fieldbyname('sigla').asString;
            scfopt := tirapontos(scfopt);
            scfopt := tiratracos(scfopt);
            scfopt := tirabarras(scfopt);
            Writeln(f,'CFOP='+scfopt);
          end;
       //endi


       Writeln(f,'Placa='+ediplacavei.text);
       Writeln(f,'UFPlaca='+ediufvei.text);

       Writeln(f,'RNTC=');


      end;
  //endi

  Writeln(f,'[Volume001]');
  Writeln(f,'Quantidade='+ediquantidade.text);
  Writeln(f,'Especie='+ediespecie.text);
  Writeln(f,'Marca='+edimarca.text);
  Writeln(f,'Numeracao='+edinumero.text);
  Writeln(f,'PesoLiquido='+edipesol.text);
  Writeln(f,'PesoBruto='+edipesob.text);

  with frmdados do
    begin

      sql_fatura.Active := true;
      cds_fatura.Active := true;

      cds_fatura.Filtered := false;
      cds_fatura.Filter := 'cnf = '+inttostr(cds_nf.fieldbyname('codigo').asInteger);
      cds_fatura.Filtered := true;

      if cds_fatura.RecordCount > 0 then
         begin
           Writeln(f,'[Fatura]');
           Writeln(f,'Numero='+cds_fatura.fieldbyname('nfat').asString);
           Writeln(f,'ValorOriginal='+ formatfloat('0.00', cds_fatura.fieldbyname('vorig').asfloat ) );
           Writeln(f,'ValorDesconto='+ formatfloat('0.00', cds_fatura.fieldbyname('vdesc').asfloat ) );
           Writeln(f,'ValorLiquido='+  formatfloat('0.00', cds_fatura.fieldbyname('vliq').asfloat  ) );
         end;
      //endi
      cds_fatura.Active := false;
      sql_fatura.Active := false;

      icontdup := 0;

      sql_duplicata.Active := true;
      cds_duplicata.Active := true;


      cds_duplicata.Filtered := false;
      cds_duplicata.Filter := 'cnf = '+inttostr(cds_nf.fieldbyname('codigo').asInteger);
      cds_duplicata.Filtered := true;
      cds_duplicata.First;

      if strtofloat(tirapontos(edidin.Text)) > 0 then
         begin

           icontdup := icontdup + 1;
           Writeln(f,'[Duplicata'+formatfloat('000',icontdup)+']'  );
           if cds_duplicata.RecordCount > 0 then
              Writeln(f,'Numero='+formatfloat('00000',innf)+'/'+ inttostr(icontdup) )
           else
              Writeln(f,'Numero='+formatfloat('00000',innf) );
           //endi
           Writeln(f,'DataVencimento='+edidatainic.text );
           Writeln(f,'Valor='+ formatfloat('0.00',   strtofloat(tirapontos(edidin.Text))    ) );

         end;
      //endi

      while not cds_duplicata.Eof do
          begin

            icontdup := icontdup + 1;
            Writeln(f,'[Duplicata'+formatfloat('000',icontdup)+']'  );
            Writeln(f,'Numero='+formatfloat('00000',innf)+'/'+ inttostr(icontdup) );
            Writeln(f,'DataVencimento='+cds_duplicata.fieldbyname('dtv').asString);
            Writeln(f,'Valor='+ formatfloat('0.00', cds_duplicata.fieldbyname('vdup').asfloat )  );

            cds_duplicata.Next;
          end;
      //endw

      //cds_duplicata.Active := false;
    end;
  //endth

  icontador := 0;

  sobs := '';

  if not ckbdadosadic.Checked then
     begin


            if edinped.Text <> '' then
               sobs := sitens;
            //endi

            if sobs = '' then
               begin
                 //sobs := 'Val Aprox. dos Tributos R$ '+formatfloat('###,###,##0.00',vlribpt )+' ('+  formatfloat('###,###,##0.00',porcibpt )  +'%) Fonte: IBPT'+';'
                 sobs := 'Val Aprox. dos Tributos R$ '+formatfloat('###,###,##0.00',vlribpt )+' Federal, R$ '+  formatfloat('###,###,##0.00',vlrestadual )  +' Estadual e R$ '+ formatfloat('###,###,##0.00',vlrmunicipal ) +' Municipal - Fonte: IBPT'+schave+';';

               end
            else
              begin
                 //sobs := sobs +  'Val Aprox. dos Tributos R$ '+formatfloat('###,###,##0.00',vlribpt )+' ('+  formatfloat('###,###,##0.00',porcibpt )  +'%) Fonte: IBPT'+';';
                 sobs := sobs +  'Val Aprox. dos Tributos R$ '+formatfloat('###,###,##0.00',vlribpt )+' Federal, R$ '+  formatfloat('###,###,##0.00',vlrestadual )  +' Estadual e R$ '+ formatfloat('###,###,##0.00',vlrmunicipal ) +' Municipal - Fonte: IBPT '+schave+';';

              end;
            //endi

            if frmdados.cds_regtrib.Locate('codigo',frmdados.cds_emitente.FieldByName('cregtrib').AsInteger,[]) then
               begin
                 if sobs = '' then
                    begin
                      sobs := frmdados.cds_regtrib.fieldbyname('obs').asString;
                    end
                 else
                    begin
                      sobs := sobs +' '+ frmdados.cds_regtrib.fieldbyname('obs').asString;
                    end;
                 //endi
               end;
            //endi

            if frmdados.cds_nf.FieldByName('vlrcredipi').asfloat = 0 then
               begin
                 if sobs = '' then
                    begin
                      //sobs := 'NAO GERA DIREITO A CREDITO FISCAL DE IPI';
                    end
                 else
                    begin
                       //sobs := sobs +' / NAO GERA DIREITO A CREDITO FISCAL DE IPI';
                    end;
                 //endi
               end;
            //endi


            if frmdados.cds_nf.FieldByName('vlrcrediss').asfloat = 0 then
               begin
                 if sobs = '' then
                    begin
                      //sobs := 'NAO GERA DIREITO A CREDITO FISCAL DE ISS';
                    end
                 else
                    begin
                       //sobs := sobs +' / NAO GERA DIREITO A CREDITO FISCAL DE ISS';
                    end;
                 //endi
               end;
            //endi




            frmdados.cds_temp_imp.First;
            while not frmdados.cds_temp_imp.Eof do
              begin
                 if sobs = '' then
                    begin
                      sobs := frmdados.cds_temp_imp.fieldbyname('obs').asString;
                    end
                 else
                    begin
                       sobs := sobs +' / '+frmdados.cds_temp_imp.fieldbyname('obs').asString;
                    end;
                 //endi

                 frmdados.cds_temp_imp.Next;

              end;
            //endi

            if frmdados.cds_nf.FieldByName('nnfrefdevol').asString <> ''  then
               begin
                 if sobs = '' then
                    begin
                      sobs := 'DEVOLUCAO DE MERCADORIA REFERENTE SUA N.F. N.O '+ frmdados.cds_nf.FieldByName('nnfrefdevol').asString +' DE '+  frmdados.cds_nf.FieldByName('datanfrefdevol').asString+' POR ESTAR EM DESACORDO COM O PEDIDO';
                    end
                 else
                    begin
                       sobs := sobs +' / DEVOLUCAO DE MERCADORIA REFERENTE SUA N.F. N.O '+ frmdados.cds_nf.FieldByName('nnfrefdevol').asString +' DE '+  frmdados.cds_nf.FieldByName('datanfrefdevol').asString+' POR ESTAR EM DESACORDO COM O PEDIDO';
                    end;
                 //endi
               end;
            //endi

            if fvicms > 0  then
               begin
                 if sobs = '' then
                    begin
                      sobs := 'BC DO ICMS '+formatfloat('###,###,##0.00', ftotbcicms );
                    end
                 else
                    begin
                      sobs := sobs +' / BC DO ICMS '+formatfloat('###,###,##0.00', ftotbcicms );
                    end;
                 //endi
               end;
            //endi

            if fvicms > 0  then
               begin
                 if sobs = '' then
                    begin
                      sobs := 'VALOR ICMS '+formatfloat('###,###,##0.00', ftoticms ) ;
                    end
                 else
                    begin
                       sobs := sobs +' / VALOR ICMS '+formatfloat('###,###,##0.00', ftoticms );
                    end;
                 //endi
               end;
            //endi

            if fvipi > 0  then
               begin
                 if sobs = '' then
                    begin
                      sobs := 'BC DO IPI '+formatfloat('###,###,##0.00', ftotbcipi ) ;
                    end
                 else
                    begin
                       sobs := sobs +' / BC DO IPI '+formatfloat('###,###,##0.00', ftotbcipi );
                    end;
                 //endi
               end;
            //endi

            if fvipi > 0  then
               begin
                 if sobs = '' then
                    begin
                      sobs := 'VALOR IPI '+formatfloat('###,###,##0.00', ftotipi );
                    end
                 else
                    begin
                       sobs := sobs +' / VALOR IPI '+formatfloat('###,###,##0.00', ftotipi ) ;
                    end;
                 //endi
               end;
            //endi

     end;
  //endi

  with frmdados do
    begin

      sql_cupom.Active := false;
      cds_cupom.Active := false;

      cds_cupomcnf.DefaultExpression := inttostr(cds_nf.fieldbyname('codigo').asInteger);
      cds_cupom.Filtered := false;
      cds_cupom.Filter := 'cnf = '+ inttostr(cds_nf.fieldbyname('codigo').asInteger);
      cds_cupom.Filtered := true;

      sql_cupom.Active := true;
      cds_cupom.Active := true;


      scupom := '';


      while not cds_cupom.Eof do
        begin
          if scupom <> '' then
             scupom := scupom + ' / Cupom';
          //endi

          if cds_cupom.FieldByName('coo').asString <> '' then
             scupom := scupom + ' N.o ' + cds_cupom.fieldbyname('coo').AsString;
          //endi

          if cds_cupom.FieldByName('dte').asString <> '' then
             scupom := scupom + ' Emissao ' + cds_cupom.fieldbyname('dte').AsString;
          //endi

          if cds_cupom.FieldByName('modelo').asString <> '' then
             scupom := scupom + ' Modelo ' + cds_cupom.fieldbyname('modelo').AsString;
          //endi

          if cds_cupom.FieldByName('serieecf').asString <> '' then
             scupom := scupom + ' Serie ' + cds_cupom.fieldbyname('serieecf').AsString;
          //endi

          if cds_cupom.FieldByName('caixa').asString <> '' then
             scupom := scupom + ' Caixa ' + cds_cupom.fieldbyname('caixa').AsString;
          //endi

          cds_cupom.Next;
        end;
      //endi


    end;
  //endth

  //if frmdados.cds_nf.FieldByName('ncupom').asString <> ''  then


  if not ckbdadosadic.Checked  then
    begin


            if scupom <> '' then
               begin
                 if sobs = '' then
                    begin
                      //sobs := 'LANCAMENTO EFETUADO EM DECORRENCIA DE EMISSAO DE CUPOM FISCAL Nº '+frmdados.cds_nf.FieldByName('ncupom').asString+' EMITIDO EM '+frmdados.cds_nf.FieldByName('datacupom').asString;
                      sobs := 'LANCAMENTO EFETUADO EM DECORRENCIA DE EMISSAO DE CUPOM FISCAL'+scupom;

                    end
                 else
                    begin
                      //sobs := sobs +' / LANCAMENTO EFETUADO EM DECORRENCIA DE EMISSAO DE CUPOM FISCAL Nº '+frmdados.cds_nf.FieldByName('ncupom').asString+' EMITIDO EM '+frmdados.cds_nf.FieldByName('datacupom').asString ;
                      sobs := sobs +' / LANCAMENTO EFETUADO EM DECORRENCIA DE EMISSAO DE CUPOM FISCAL'+scupom ;
                    end;
                 //endi
               end;
            //endi

            //if frmdados.cds_nf.FieldByName('vlrcredicms').asfloat > 0  then


            //showmessage(floattostr(ftotcredicms));


            if ftotcredicms > 0 then
               begin
                 if sobs = '' then
                    begin
                      //sobs := 'PERMITE APROVEITAMENTO DO CREDITO DE ICMS NO VALOR DE R$ '+formatfloat('###,###,##0.00', frmdados.cds_nf.FieldByName('vlrcredicms').asfloat)+' CORRESPONDENTE A ALIQUOTA DE '+ formatfloat('###,###,##0.00', frmdados.cds_nf.FieldByName('aliqapicms').asfloat)+'% NOS TERMOS DO ARTIGO 23 DA LC 123/2006';
                      sobs := 'PERMITE APROVEITAMENTO DO CREDITO DE ICMS NO VALOR DE R$ '+formatfloat('###,###,##0.00', ftotcredicms)+' CORRESPONDENTE A ALIQUOTA DE '+ formatfloat('###,###,##0.00', faliqapicms)+'% NOS TERMOS DO ARTIGO 23 DA LC 123/2006';
                    end
                 else
                    begin
                      //sobs := sobs +' / PERMITE APROVEITAMENTO DO CREDITO DE ICMS NO VALOR DE R$ '+formatfloat('###,###,##0.00', frmdados.cds_nf.FieldByName('vlrcredicms').asfloat)+' CORRESPONDENTE A ALIQUOTA DE '+ formatfloat('###,###,##0.00', frmdados.cds_nf.FieldByName('aliqapicms').asfloat)+'% NOS TERMOS DO ARTIGO 23 DA LC 123/2006';
                      sobs := sobs +' / PERMITE APROVEITAMENTO DO CREDITO DE ICMS NO VALOR DE R$ '+formatfloat('###,###,##0.00', ftotcredicms)+' CORRESPONDENTE A ALIQUOTA DE '+ formatfloat('###,###,##0.00', faliqapicms)+'% NOS TERMOS DO ARTIGO 23 DA LC 123/2006';
                    end;
                 //endi
               end
            else
               begin

                 { //mensagem quando não gerar credito icms
                 if sobs = '' then
                    begin
                      sobs := '';
                    end
                 else
                    begin
                      sobs := sobs +' / ';
                    end;
                 //endi
                 }




               end;
            //endi

    end;
  //endi


  if mmoadicnf.Text <> '' then
     begin
       if sobs = '' then
          begin
            sobs := mmoadicnf.Text;
          end
       else
          begin
             sobs := sobs +' '+mmoadicnf.Text;
          end;
       //endi
     end;
  //endi


  Writeln(f,'[DadosAdicionais]');
  Writeln(f,'Complemento='+sobs);

  Writeln(f,'",1)');
  Closefile(f); //fecha o handle de arquivo

  while true do
    begin

      lblmensagem.Caption := 'Aguardando retorno processamento NFE - Pressione <<ESC>> para desistir da impressão';
      frmfecnf.Update;

      if not fileexists(frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString+'\ENTNFE.TXT' ) then
         begin

           AssignFile(f,vardir+'c1.bat');
           Rewrite(f); //abre o arquivo para escrita
           Writeln(f,'cd '+vardir);
           Writeln(f,'copy '+'ENTNFE.TXT'+' '+frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString);
           Writeln(f,'del '+vardir+'c1.bat');
           Closefile(f); //fecha o handle de arquivo
           WinExec(pchar(vardir+'c1.bat'), SW_HIDE);

           while true do
             begin
               lblmensagem.Caption := 'Analisando retorno da validação, aguarde...';
               frmfecnf.Update;

               if fileexists(frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString+'\SAINFE.TXT' ) then
                  begin
                    AssignFile(f,  frmdados.Cds_Indice.fieldbyname('caminhoarqnfe').asString+'\SAINFE.TXT');
                    Reset(f);
                    While not Eof(f) do
                      begin
                        Readln(f, Linha);
                        iPos := pos('OK',linha);
                        if iPos > 0 then
                           begin
                             bAut := true;

                             scaminho := copy(Linha,iPos+4,length(Linha));

                             schavenfe := copy(Linha,iPos+28,44);

                             frmdados.cds_nf.Edit;
                             frmdados.cds_nf.FieldByName('status').AsString := 'V';
                             frmdados.cds_nf.Post;

                             if  frmdados.cds_nf.FieldByName('chave').AsString = '' then
                                 begin  

                                   frmdados.cds_nf.Edit;
                                   frmdados.cds_nf.FieldByName('caminhonfe').AsString := scaminho;
                                   frmdados.cds_nf.FieldByName('chave').AsString := schavenfe;
                                   frmdados.cds_nf.FieldByName('nnf').Asinteger := innf;

                                   frmdados.cds_nf.Post;

                                   innf := innf + 1;
                                   frmdados.cds_indice.Edit;
                                   frmdados.cds_indice.FieldByName('contadornfe').asInteger := icontadornfe;
                                   frmdados.cds_indice.FieldByName('nnf').asInteger := innf;
                                   frmdados.cds_indice.Post;                                     

                                   ediproxnota.Enabled := false;


                                 end;
                             //endi


                             lblmensagem.Caption := 'Nota fiscal eletrônica validada com sucesso, aguardando resposta...';
                             frmfecnf.Update;

                             break;
                           end;
                        //endi


                      end;
                    //endw
                    CloseFile(f);
                    if (bAut) then
                       begin
                         break;
                       end
                    else
                       begin
                         bNaut := true;
                         lblmensagem.Caption := 'Erro na validação do arquivo...';
                         frmfecnf.Update;
                         sleep(5000);
                         break;
                       end;
                    //endi
                  end;
               //endi
               Application.ProcessMessages; {ESC key stops the loop}
               if GetKeyState(VK_Escape) AND 128 = 128 then
                  begin
                    break ;
                  end;
               //endi
               if (bAut) then
                  begin
                    break;
                  end;
               //endi
               if (bNaut) then
                  begin
                    break;
                  end;
               //endi
               sleep(5000);

             end;
           //endw

         end;
      //endi


      icontadornfe := icontadornfe + 1;


      Application.ProcessMessages; {ESC key stops the loop}
      if GetKeyState(VK_Escape) AND 128 = 128 then
         begin

           break ;

         end;
      //endi
      if (bAut) then
          begin

            break;

          end;
      //end
      if (bNaut) then
         begin

          break;

         end;
      //end
      sleep(5000);

    end;
  //endw


  while true do
    begin
      if fileexists(frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString+'\SAINFE.TXT') then
         begin
           CopyFile(PChar( frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString+'\SAINFE.TXT' ),PChar(frmdados.cds_indice.fieldbyname('caminhoarqnfetemp').AsString+'\SAINFE_C'+formatfloat('00000',icontadornfe)+'NF'+formatfloat('00000',innf)+'.TXT'),False);
           deletefile(frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString+'\SAINFE.TXT');
           break;
         end;
      //endiif
      sleep(5000);
    end;
  //endw

  // impressão nfe

  if baut then
    begin
      bautImp := visualizanfe(scaminho);
    end;
  //endi

  //limpararqdup;
  //totalizadup;

  //limpararqfat;
  //totalizafat;


  //frmdados.cds_fatura.Active := false;
  //frmdados.sql_fatura.Active := false;

  //frmdados.cds_duplicata.Active := false;
  //frmdados.sql_duplicata.Active := false;

  //frmdados.cds_nf.Active := false;
  //frmdados.sql_nf.Active := false;

  //frmpesqnf.pctdados.ActivePageIndex := 0;
  //frmdados.cds_nf.Last;

  //frmdados.sql_nf.Active := true;
  //frmdados.cds_nf.Active := true;

  frmdados.cds_indice.Edit;
  frmdados.cds_indice.FieldByName('contadornfe').asInteger := icontadornfe;
  frmdados.cds_indice.Post;

end;

procedure Tfrmfecnf.edinpedKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecnf.edialiqapissKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecnf.cbxfinalidadeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecnf.edirefnfeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecnf.cbxindpresKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecnf.cbxdesctiponf_cod1nfKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecnf.cbxindfinalKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmfecnf.edirefnfeExit(Sender: TObject);
begin
   if (edirefnfe.Text<>'') and (cbxfinalidade.ItemIndex <>  3) then
      begin

        showmessage('O preenchimento deste campo só terá efeito se o ***CAMPO FINALIDADE*** for igual a devolução/retorno');

      end
   else
      begin
        if edirefnfe.Text <> '' then
           begin
             showmessage('Lembrete: Os códigos CFOPs das mercadorias para esta nota devem estar marcadas como devolução ou retorno');
           end;
      end;
   //endi
end;

procedure Tfrmfecnf.Timer1Timer(Sender: TObject);
begin
  if frmdados.cds_indice.FieldByName('contadornfe').asInteger <> strtoint(ediproxnota.Text) then
     begin
       //frmdados.cds_indice.FieldByName('contadornfe').asInteger := strtoint(ediproxnota.Text)
     end;
  //endi
end;

end.
