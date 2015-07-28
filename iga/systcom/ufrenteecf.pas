unit ufrenteecf;
                        
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList, dbcgrids, EditNum, AppEvnts, SayPrint,
  jpeg;


type
  Tfrmfrenteecf = class(TForm)
    pnlinferior: TPanel;
    barra: TStatusBar;
    rchrodape: TRichEdit;
    AplEvento: TApplicationEvents;
    SayPrint: TSayPrint;
    ckbentrada: TCheckBox;
    lbltote: TLabel;
    cbxnomefun: TDBLookupComboBox;
    spdConsultaCliente239: TSpeedButton;
    pnlnpro: TPanel;
    edidescricao: TEdit;
    lbltipo: TLabel;
    lbltotCs: TLabel;
    lbltotCe: TLabel;
    lblsubtotc: TLabel;
    spdconsultaproduto: TSpeedButton;
    lblncli: TLabel;
    dbgprodutos: TDBCtrlGrid;
    lblcodigo: TDBText;
    lbldescricao: TDBText;
    lblquantidade: TDBText;
    lblprecov: TDBText;
    lblsubtotalv: TDBText;
    lblunidade: TDBText;
    pnlfechamento: TPanel;
    lblqtde: TLabel;
    lblprve: TLabel;
    lblsubtotal: TLabel;
    lbltitestq: TLabel;
    lbltotestq: TLabel;
    Label13: TLabel;
    lbltotitens: TLabel;
    lbltotbruto: TLabel;
    lbltititens: TLabel;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    memostatus: TMemo;
    pnlparcela: TPanel;
    Label3: TLabel;
    Shape6: TShape;
    Label26: TLabel;
    rgbtipoop: TRadioGroup;
    rgbtipoent: TRadioGroup;
    Data: TLabel;
    lblData: TLabel;
    Shape13: TShape;
    Label4: TLabel;
    lbltotpagar: TLabel;
    Shape7: TShape;
    Label22: TLabel;
    lbltroco: TLabel;
    Shape15: TShape;
    spdfechamento: TSpeedButton;
    spdcancfec: TSpeedButton;
    rchtipopgto: TRichEdit;
    Shape4: TShape;
    rchmensfecpgto: TRichEdit;
    Shape5: TShape;
    Label24: TLabel;
    edidin: TEdit;
    Shape12: TShape;
    Label11: TLabel;
    pnldesconto: TPanel;
    Label20: TLabel;
    lbltotal: TLabel;
    Label19: TLabel;
    edipdesc: TEdit;
    Label23: TLabel;
    edivaldesc: TEdit;
    Label21: TLabel;
    editotpagar: TEdit;
    Label2: TLabel;
    lblabsdesc: TLabel;
    btnlancarD: TBitBtn;
    lbltitncopia: TLabel;
    edincopias: TEdit;
    shpncopia: TShape;
    spddesconto: TSpeedButton;
    btncancelarD: TBitBtn;
    Shape1: TShape;
    Shape3: TShape;
    Label10: TLabel;
    lbltitvalor: TLabel;
    dbgpgto: TDBGrid;
    edivalor: TEdit;
    lbloperacao: TLabel;
    spdIncluir231: TSpeedButton;
    spdConsultar434: TSpeedButton;
    spdsalvar233: TSpeedButton;
    spdfimp: TSpeedButton;
    spdpedaprazo: TSpeedButton;
    spdalteracupom: TSpeedButton;
    btninferior2: TPanel;
    spdAlterar232: TSpeedButton;
    spdExcluir234: TSpeedButton;
    spdfechar236: TSpeedButton;
    spdcomanda: TSpeedButton;
    spdorc: TSpeedButton;
    spdcancelar2310: TSpeedButton;
    spdparcelar: TSpeedButton;
    pnlparcelar: TPanel;
    Label5: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    lbltotalp: TLabel;
    edinparc: TEdit;
    ediporcjuros: TEdit;
    spdcancelap: TBitBtn;
    spdcalcular: TBitBtn;
    pnlinfop: TPanel;
    dbgvencto: TDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Label12: TLabel;
    Label16: TLabel;
    editotal: TEdit;
    Label17: TLabel;
    lbldatamov: TLabel;
    lblstatuscaixa: TLabel;
    Label18: TLabel;

    procedure limpar;
    procedure FormShow(Sender: TObject);
    procedure habilita;
    procedure desabilita;
    procedure xxxEnter(Sender: TObject);
    procedure xxxExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgvenctoKeyPress(Sender: TObject; var Key: Char);
    procedure buscarprodutos;
    procedure edicproExit(Sender: TObject);
    procedure edidescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ckbentradaClick(Sender: TObject);
    procedure spdsalvar233Click(Sender: TObject);
    procedure totais;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spdconsultaprodutoClick(Sender: TObject);
    procedure dbgprodutosPaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure divinfo;
    procedure limpargrav;
    procedure cbxnomefunKeyPress(Sender: TObject; var Key: Char);
    procedure spdExcluir234Click(Sender: TObject);
    procedure desativabotoes;
    procedure ativabotoes;
    procedure FormCreate(Sender: TObject);
    procedure AplEventoException(Sender: TObject; E: Exception);
    procedure ckbentregaClick(Sender: TObject);
    procedure spdfechamentoClick(Sender: TObject);
    procedure imporcrazao30x80;
    procedure imporcrazao30x140;
    procedure imporc70b;

    procedure spdConsultaCliente239Click(Sender: TObject);
    procedure edipdescExit(Sender: TObject);
    function  AlinEdNumD(texto:TEdit):string;
    procedure edivaldescExit(Sender: TObject);
    procedure editotpagarExit(Sender: TObject);
    procedure edidinExit(Sender: TObject);
    procedure edipdescKeyPress(Sender: TObject; var Key: Char);
    procedure editotpagarKeyPress(Sender: TObject; var Key: Char);
    procedure edidinKeyPress(Sender: TObject; var Key: Char);
    procedure edivaldescKeyPress(Sender: TObject; var Key: Char);
    procedure spdfechar236Click(Sender: TObject);
    procedure spdcancfecClick(Sender: TObject);
    procedure edincopiasKeyPress(Sender: TObject; var Key: Char);
    procedure edinparcKeyPress(Sender: TObject; var Key: Char);
    procedure dbgvenctoEnter(Sender: TObject);
    procedure dbgvenctoExit(Sender: TObject);
    procedure edinparcExit(Sender: TObject);
    procedure criaparc;
    procedure apagaparc;
    procedure apafec;
    procedure edipdescEnter(Sender: TObject);
    procedure edivaldescEnter(Sender: TObject);
    procedure edidinEnter(Sender: TObject);
    procedure rgbtipoopClick(Sender: TObject);
    procedure rchrodapeEnter(Sender: TObject);
    procedure rgbtipoentClick(Sender: TObject);
    procedure limparrgb;
    procedure ajustargbtipoop;
    procedure ajustargbttipoent;
    procedure cbxnomefunExit(Sender: TObject);
    procedure cbxnomefunEnter(Sender: TObject);
    procedure vestoqNv;
    procedure vestoqV;
    procedure spdorcClick(Sender: TObject);
    procedure buscaorcamento;
    procedure spdcancelar2310Click(Sender: TObject);
    procedure buscapedido;
    procedure novavenda;
    procedure dbgvenctoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgvenctoColEnter(Sender: TObject);
    procedure spdAlterar232Click(Sender: TObject);
    procedure dbgpgtoColEnter(Sender: TObject);
    procedure dbgpgtoEnter(Sender: TObject);
    procedure dbgpgtoExit(Sender: TObject);
    procedure dbgpgtoKeyPress(Sender: TObject; var Key: Char);
    procedure edivalorKeyPress(Sender: TObject; var Key: Char);
    procedure edivalorExit(Sender: TObject);
    procedure lancavenda;
    function  verificavenda:boolean;
    procedure spddescontoClick(Sender: TObject);
    procedure btnlancarDClick(Sender: TObject);
    procedure salvapedido;
    procedure memostatusEnter(Sender: TObject);
    procedure rchmensfecpgtoEnter(Sender: TObject);
    procedure rchtipopgtoEnter(Sender: TObject);
    procedure lancapa;
    procedure lancanu;
    function vparc:boolean;
    procedure spdfimpClick(Sender: TObject);
    procedure spdpedaprazoClick(Sender: TObject);
    procedure  finalizatef;
    procedure  formapgtotef;
    procedure spdcomandaClick(Sender: TObject);
    procedure buscacomanda;
    procedure btncancelarDClick(Sender: TObject);
    procedure improdape;
    procedure impdetalhe;
    procedure impcabecalho;
    procedure edivalor1KeyPress(Sender: TObject; var Key: Char);
    procedure cancelapedido;
    procedure excluiritem;
    procedure spdalteracupomClick(Sender: TObject);
    procedure alteraritem;
    procedure excluiProduto;
    procedure modoentrada;
    procedure ediporcjurosKeyPress(Sender: TObject; var Key: Char);
    procedure ediporcjurosExit(Sender: TObject);
    procedure spdparcelarClick(Sender: TObject);
    procedure spdcancelapClick(Sender: TObject);
    procedure spdcalcularClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure mensatalho;
    procedure lancacaixaind;
    function verificacaixa(cusu:integer):string;

  private
    { Private declarations }
    fsb_valorliquidoitem, fsb_valorliquidocupom:Currency;
    sb_valorliquidoitem,sb_valorliquidocupom:string;



    sOpcao:string;
    bMostrar:boolean;
    Comando: array[0..512] of Char;
    iResposta: integer;
    iACK, iST1, iST2: Integer; // Variáveis com o retorno do Status da Impressora
    jafoi,item,opc,Conf:integer;
    sforma,sacredesc,stipo,svalord,mensagem,sdesconto,totalprazo,formaprazo:string;
    totalbruto,minuta:double;
    sTipoCod:string;
    ftotGprodD, fpdesc, fvaldesc, fdin, ftotpagar, ftroco, ftotgpagar, fabsdesc, ftotal, fnparc:currency;
    sNovoCli, sNomeCli, sFantasia, sEnderecoent, sComplent, sBairroent, sCidadeent,
    sEstadoent, sCepent, sTelefoneent, sEmail, sContato,sCpf, sRG, sVendedor, sDataF, sPdescA,
    sValDescA, sTotPagarA, sValor, sTitulo:string;
    iNumero, icfun, iImp, iTipoOp, iTipoEnt, icodsvenda, iVzs:integer;
    fpcomf, fdinheiro, ftotapurado:real;

    cAliquotas, cAliq, cVerCaracter, cCompleto, pformapagto, ccpf, NumeroCupom: String;
    iNumeroCupom: Integer;

    bBloqv, bdesc, bimpcab, bparc:boolean;

    spdesc, pdesc, svaldesc, sdin, sdata, stroco, stotgpagar, sabsdesc, stotpago,
    stotal, stote,  stotbruto, scustopecas, scustopecae, stotGprodD, sDataFec:string;
    itotitens:integer;

    iparc, iaprazo:integer;
    fvlrparc:currency;

    scAcrescimoDesconto,
    scTipoAcrescimoDesconto,
    scValorAcrescimoDesconto: string;

    s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,sImp:string;
    Col, Centro, iLin, iItens, iCols, iParcDup3, iParcDup1, iParcDup2, iParcDup4:Integer;
    sDelimitador, sNumDup1, sVlrDup1, sVctDup1 , sNumDup2, sVlrDup2, sVctDup2,
    sNumDup3, sVlrDup3, sVctDup3 , sNumDup4, sVlrDup4, sVctDup4:string;
    sQtdeImp,sDescricaoImp,sCprodImp, sValorImp, sTotalImp, sUniImp:String;
    ftotG, ftotI, ftotE:real;
    sCab1, sCab2, sCab3, sCab4:string;



  public
    { Public declarations }
    bprocura:boolean;
    sdescricao, sCodigo,  mmoinfent, sDataImp, sHoraImp, sActDesc, scoluna:string;
    fqtde, fprve, fpdescunit, fvdescunit, fsubtotal, fPdescG, fVdescG, fQtdeEstq, fprcu :real;
    icpro, icuni, iccli, iNorc, iNped :Integer;
    iControle, inparc:integer;
    bApresEstq, bentrada:boolean;
    bReimp, bAtualiza:boolean;
    bcaixaAberto, bcaixaerro:boolean;

  end;

var

  frmfrenteecf: Tfrmfrenteecf;


  //trocar iretorno para iresposta


implementation
  uses ugeral, uDados, upesqprodecf, uloginecf, upesqClicecf, uMensEstqecf,
  ucaixaapecf, ualterapecf, uMp20i, usangriaecf, uingestaoecf, ufimpf, upedprazo,
  uajustevb, uexcluirPecf, funcoes_ibpt;

{$R *.dfm}


procedure tfrmfrenteecf.limpar;
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
  sData, sHora:string;
begin
  tabela := 'Vendab';

  limparrgb;

  sData := datetostr(date);
  sHora := timetostr(time);

  with frmdados do
     begin
       cds_movreg.Active := false;
       dbx_movreg.Active := false;
       dbx_movreg.SQL.Clear;
       dbx_movreg.SQL.Add('Select * from movreg where (hdnumber = '+quotedstr(sNumSerieHD)+') and (st = 0)');
       dbx_movreg.Active := true;
       cds_movreg.Active := true;

       if cds_movreg.recordcount = 0 then
          begin
            SqlStMt := 'Select gen_id(Gen_Controle_V,1) as Valor from RDB$DATABASE;';
            ResultSet := nil;
            Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
            if Assigned(ResultSet) then
               iControle := ResultSet.fieldbyname('valor').asInteger;
            //endi
            dbx_exec.Active := false;
            dbx_exec.SQL.Clear;
            if icusu > 0 then
               begin
                 dbx_exec.SQL.Add('insert into movreg (hdnumber, cusu, data, hora, controle) values ('+quotedstr(sNumSerieHD)+','+inttostr(icusu)+','+quotedstr(bar_is_point(sData))+','+QuotedStr(sHora)+','+inttostr(icontrole)+')');
                 dbx_exec.ExecSQL;
                 if cbxnomefun.Enabled then
                    cbxnomefun.SetFocus;
                 //endi
               end
            //endi
          end
       else
          begin
            icontrole := cds_movreg.fieldbyname('controle').asInteger;
            application.Terminate;
          end;
       //endi
       dbx_exec.Active := false;
     end;
  //endi


  with frmdados do
     begin

       try

         cds_svenda.Active := false;
         cds_svendanco.DefaultExpression := inttostr(icontrole);
         dbx_svenda.Active := false;
         dbx_svenda.SQL.Clear;
         dbx_svenda.SQL.Add('Select * from svenda where (nco = '+inttostr(icontrole)+')');
         dbx_svenda.Active := true;
         cds_svenda.Active := true;

         cds_Vendab.Active := false;
         dbx_Vendab.Active := false;
         dbx_Vendab.SQL.Clear;
         dbx_Vendab.SQL.Add('Select * from Vendab where controle = '+inttostr(icontrole));
         dbx_Vendab.Active := true;
         cds_Vendab.Active := true;

         cds_vencto.Active := false;
         cds_venctoc_tipo_pgto.DefaultExpression := inttostr( cds_indice.fieldbyname('PARCPADRAO').asInteger);
         cds_venctodescricao.DefaultExpression := QuotedStr('Parcela Venda Balcão');
         cds_venctonco.DefaultExpression := inttostr(icontrole);
         dbx_vencto.Active := false;
         dbx_vencto.SQL.Clear;
         dbx_vencto.SQL.Add('Select * from Vencimentos where (nco = '+inttostr(icontrole)+')');
         dbx_vencto.Active := true;
         cds_vencto.Active := true;

       except
         sMsg := 'Erro!!!';
       end;

    end;
  //endi

  pnlfechamento.Visible := false;
  pnlinfop.Visible := false;

  scpf := '';
  edidescricao.text := '';
  lblqtde.caption := '0,000';
  lblprve.caption := '0,00';
  lblsubtotal.Caption := '0,00';
  lbltotitens.Caption := '0';
  lbltotbruto.Caption := '0,00';
  edipdesc.text := '0,00';

  lbltotalp.Caption := '0,00';

  ediporcjuros.Text := '0,00';
  ediporcjuros.Text := AlinEdNumD(ediporcjuros);

  lbltroco.Caption := '0,00';
  //edidin.Text := '0';

  ftotApurado := 0;
  fdinheiro := 0;

  lbltote.Caption := '0,00';
  icpro := 0;
  icuni := 0;
  icfun := 0;
  fpcomf := 0;
  iccli := 0;
  fQtdeEstq := 0;
  sActDesc := 'T';
  pnlnpro.Caption := '';
  bMostrar := false;
  lbldata.Caption := sData;
  edipdesc.Text := '0,00';
  edipdesc.Text := AlinEdNumD(edipdesc);

  lbltotalp.Caption := '0,00';

  ediporcjuros.Text := '0,00';
  ediporcjuros.Text := AlinEdNumD(ediporcjuros);

  edivaldesc.Text := '0,00';
  edivaldesc.Text := AlinEdNumD(edivaldesc);
  editotpagar.Text := '0,00';
  editotpagar.Text := AlinEdNumD(editotpagar);
  lbltroco.Caption := '0,00';
  edincopias.Text := frmdados.Cds_Indice.fieldbyname('ncopiasv').asString;
  //edidin.Text := '0,00';
  //edidin.Text := AlinEdNumD(edidin);

  bimpcab := true;

  lbltotal.Caption := '0,00';
  lbltroco.Caption := '0,00';
  lblsubtotc.Caption := '0,00';

  pnlfechamento.Visible := false;
  pnlinfop.Visible := false;

  edinparc.Text := '0';
  lbltotpagar.Caption :='0,00';
  lblncli.Caption := 'Consumidor';

  edipdesc.Enabled := false;
  edivaldesc.Enabled := false;

  ediporcjuros.Enabled := false;


  //edidin.Enabled := false;
  editotpagar.Enabled := false;
  edincopias.Enabled := false;
  bReimp := false;
  lbltipo.Caption := 'Descrição';
  iImp := 0;
  bAtualiza := true;
  iparc := 0;

  fsb_valorliquidocupom := 0;
  fsb_valorliquidoitem := 0;

  porcibpt := 0;
  vlribpt  := 0;

  if frmdados.Cds_Vendab.RecordCount = 0 then
     begin
       desativabotoes;
       spdincluir231.Enabled := true;
    end;
  //endi

  totais;

  if cbxnomefun.Enabled then
     cbxnomefun.SetFocus;
  //endi

  rchmensfecpgto.Lines.Clear;

end;


procedure Tfrmfrenteecf.FormShow(Sender: TObject);
var
Erro:word;
vardir, stipopgto:string;
code : integer;
retimp, iConta  : integer;

begin
  bcaixaAberto := false;
  bcaixaerro := false;

  lbloperacao.Caption := '';

  bimpcab := true;

  rgbtipoop.Enabled := false;

  dbgvencto.Align := alclient;

  pnldesconto.Left := rchmensfecpgto.Left;
  pnldesconto.top := rchmensfecpgto.top;

  pnlfechamento.Top := 81;
  pnlfechamento.Left := 577;

  pnlinfop.Top := pnlfechamento.Top;
  pnlinfop.Left := pnlfechamento.Left;
  pnlinfop.Width := pnlfechamento.Width;
  pnlinfop.Height := pnlfechamento.height;

  pnlparcelar.Left := rchmensfecpgto.Left;
  pnlparcelar.top := rchmensfecpgto.top;

  sDataImp := datetostr(date);
  sHoraImp := copy(timetostr(time),1,5);
  sDelimitador := replicar('-',60);

  try
    if frmdados.Cds_Indice.FieldByName('pct4').asString <> '' then
       begin
         image2.Picture.LoadFromFile(frmdados.Cds_Indice.FieldByName('pct4').asString);
       end;
    //endi

  except
    smsg := 'erro qdo tentei carregar figura';
  end;

  // Fecha a porta que está aberta

  retimp := 0;
  retimp := FechaPorta();
  if retimp <= 0 then
     smsg :=  'Problemas ao fechar a porta de Comunicação.';

  if (frmdados.cds_indice.fieldbyname('portaimp').asInteger = 0) then
           comunica := 'LPT1'#0;
  if (frmdados.cds_indice.fieldbyname('portaimp').asInteger = 1) then
           comunica := 'COM1'#0;
  if (frmdados.cds_indice.fieldbyname('portaimp').asInteger = 2) then
          comunica := 'COM2'#0;
  if (frmdados.cds_indice.fieldbyname('portaimp').asInteger = 3) then
          comunica := 'USB'#0;


  retimp := 0;
  retimp := IniciaPorta(Pchar(comunica));
  if retimp <= 0 then
      smsg := 'Problemas ao abrir a porta de Comunicação.';
  //endi


  //itipoimpf := frmdados.Cds_Indice.FieldByName('tipoimpf').asInteger;



  case itipoimpf of
       0:begin
           // Nenhuma
           if ( frmdados.Cds_Indice.FieldByName('impconcomitante').asString = 'T' ) then
              begin

              end;
           //endi



         end;



       1:begin
           // SWEDA

           iResposta := ECF_AbrePortaSerial();

         end;


       2:begin
           //BEMATECH

           iResposta := Bematech_FI_AbrePortaSerial();


           For iConta := 1 To 79 Do Begin cAliquotas := cAliquotas + ' ' End;
               iResposta := Bematech_FI_RetornoAliquotas( cAliquotas );
               For iConta := 1 To Length( Trim( cAliquotas ) ) Do
                   Begin
                      cVerCaracter := Copy( cAliquotas, iConta, 1 );
                      If cVerCaracter <> ',' Then
                           Begin
                             cAliq := cAliq + cVerCaracter;
                           End
                      Else
                           Begin
                             cCompleto := cCompleto + cAliq + #13;
                           End;
                    //endi
                  End;
               //endfor
           //endfor
         end;


       3:begin
           // DATAREGIS
           //DLLG2Handle := DLLG2_IniciaDriver (ComboBox1.Items[ComboBox1.ItemIndex]);
           DLLG2Handle := DLLG2_IniciaDriver ('COM4');
           if (DLLG2Handle < 0) then
              begin
                DLLG2Handle := DLLG2_IniciaDriver ('COM3');
                if (DLLG2Handle < 0) then
                   begin
                     DLLG2Handle := DLLG2_IniciaDriver ('COM2');
                     if (DLLG2Handle < 0) then
                         begin
                           DLLG2Handle := DLLG2_IniciaDriver ('COM1');
                           if (DLLG2Handle < 0) then
                              begin
                                MessageBox(Handle, 'Erro na inicialização do canal', 'SYSTCOM', MB_OK);
                                application.Terminate;
                              end;
                           //endi
                         end
                     //endi
                   end
                //endi
              end;
           //endi

           //iRet = DLLG2_ConfiguraDriver(DLLG2Handle, 115200, "e")
           //If (iRet = -1) Then
                //MsgBox "Erro ao configurar driver", vbOKOnly, "Exemplo Simples"
                //Stop
           //End If

           DLLG2_DefineTimeout (DLLG2Handle, 40);



         end;


       else exit;

  end;

  if (ThreadStatus = nil) then  // Se não existe a thread
     Begin
       ThreadStatus := TThreadLeStatus.Inicia(MemoStatus);
       //btnStatusPorta.Caption := 'Cancelar'
     End
  Else
     Begin
       If ThreadStatus.Suspended then
         Begin
           ThreadStatus.Suspended := False;
           //btnStatusPorta.Caption := 'Cancelar'
         End
       Else // Se não estiver para então para.
         Begin
           //ThreadStatus.Suspended := True;
           //btnStatusPorta.Caption := 'Status da Impressora'
         End;
     End;
  //endi

  sOpcao := 'I';
  bprocura := true;

  lbltotcs.Visible := false;
  lbltotce.Visible := false;
  lblsubtotc.Visible := false;
  lbltipo.Caption := 'Descrição';
  iImp := 0;

  edipdesc.Text := '0,00';
  lbltote.Caption := '0,00';
  lblabsdesc.Caption := '0,00';

  lbltotalp.Caption := '0,00';
  ediporcjuros.Text := '0,00';
  ediporcjuros.Text := AlinEdNumD(ediporcjuros);

  ftotApurado := 0;


  scoluna := 'n_tipo_pgto';

  vardir := extractfilepath(application.ExeName);

  frmloginecf := tfrmloginecf.create(self);
  frmloginecf.showmodal;
  frmloginecf.free;

  with edidescricao do
    begin
      width := 480;
      left := 191;
      top := 101;
      height := 26;
    end;
  //endi
  with pnlnpro do
    begin
      width := 480;
      left := 191;
      top := 101;
      height := 26;
    end;
  //endi

  with FrmDados do
    begin

      Cds_Unidade.Active := false;
      Dbx_Unidade.Active := false;
      Dbx_Unidade.SQL.Clear;
      Dbx_Unidade.SQL.Add('Select * from Unidade');
      Dbx_Unidade.Active := true;
      Cds_Unidade.Active := true;

      Cds_Config.Active := false;
      Dbx_Config.Active := false;
      Dbx_Config.SQL.Clear;
      Dbx_Config.SQL.Add('Select * from Config');
      Dbx_Config.Active := true;
      Cds_Config.Active := true;

      Cds_Funcionarios.Active := false;
      Dbx_Funcionarios.Active := false;
      Dbx_Funcionarios.SQL.Clear;
      Dbx_Funcionarios.SQL.Add('Select * from Funcionarios order by nome');
      Dbx_Funcionarios.Active := true;
      Cds_Funcionarios.Active := true;

      Cds_Tipo_Pgto.Active := false;
      Dbx_Tipo_Pgto.Active := false;
      Dbx_Tipo_Pgto.SQL.Clear;
      //Dbx_Tipo_Pgto.SQL.Add('Select * from tipo_pgto where ( codigo <> '+ inttostr( cds_indice.fieldbyname('codavista').asInteger)+') and ( mosvd = '+quotedstr('T')+')'  );
      Dbx_Tipo_Pgto.SQL.Add('Select * from tipo_pgto where ( mosvd = '+quotedstr('T')+')'  );
      Dbx_Tipo_Pgto.Active := true;
      Cds_Tipo_Pgto.Active := true;

      lblstatuscaixa.Caption := verificacaixa(icusu);

      if  ( not frmfrenteecf.bcaixaerro ) and (lbldatamov.Caption <> datetostr( date )) then
         begin
           application.MessageBox('Divergência entre data atual e do sistema','atenção',mb_ok);
         end;
      //endi


      stipopgto := '';
      while not Cds_Tipo_Pgto.Eof do
        begin
          stipopgto := stipopgto +' '+ Cds_Tipo_Pgto.fieldbyname('codigo').asString+') '+Cds_Tipo_Pgto.fieldbyname('Descricao').asString;

          Cds_tipo_Pgto.Next;
        end;
      //endi

    end;
  //endth

  rchtipopgto.Lines.Clear;
  rchtipopgto.Lines.Add('Forma Pgto: '+stipopgto);

  sNumSerieHD := SerialNum('C');

  desabilita;
  limpar;

  pnlnpro.visible := true;

  WinExec(pchar(vardir+'imprime.bat'), SW_Hide);



end;


procedure tfrmfrenteecf.habilita;
begin
  if edipdesc.Focused then
     begin
       edipdesc.Color := clyellow;
       edipdesc.Font.Color := clnavy;
     end;
  //endi

  //if edidin.Focused then
  //   begin
  //     edidin.Color := clyellow;
  //     edidin.Font.Color := clnavy;
  //   end;
  //endi
end;

procedure tfrmfrenteecf.desabilita;
begin
 edipdesc.Font.Color := clteal;
 edipdesc.Color := clcream;

 //edidin.Font.Color := clteal;
 //edidin.Color := clcream;


end;
procedure Tfrmfrenteecf.xxxEnter(Sender: TObject);
begin
habilita;
end;

procedure Tfrmfrenteecf.xxxExit(Sender: TObject);
begin
desabilita;
end;

procedure Tfrmfrenteecf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if (pnlfechamento.Visible) then
   begin
     if (key = vk_F2) and (not spdfechar236.Enabled) then
         begin
           if rgbtipoop.ItemIndex = 1 then
              rgbtipoop.ItemIndex := 0
           else
              if rgbtipoop.ItemIndex = -1 then
                 rgbtipoop.ItemIndex := 0
              else
                 rgbtipoop.ItemIndex := 1;
              //endi
           //endi
           ajustargbtipoop;
         end;
     //endi

     if (key = vk_F3) and (not spdfechar236.Enabled) then
         begin
           if rgbtipoent.ItemIndex = 1 then
              rgbtipoent.ItemIndex := 0
           else
              if rgbtipoent.ItemIndex = -1 then
                 rgbtipoent.ItemIndex := 0
              else
                 rgbtipoent.ItemIndex := 1;
              //endi
           //endi
           ajustargbttipoent;
         end;
     //endi
     if (key = vk_f5) then
         begin
           if spddesconto.Enabled then
              spddesconto.Click;
           //endi
         end;
     //endi
     if (key = vk_f6) then
         begin
           if (spdparcelar.Visible) and (spdparcelar.Enabled) then
              spdparcelar.Click;
           //endi
         end;
     //endi
     if (key = vk_f12) then
         begin
           if spdpedaprazo.Enabled then
              spdpedaprazo.Click;
           //endi
         end;
     //endi


   end
else
   begin
     if (key = vk_F9) and (frmdados.Cds_Vendab.RecordCount = 0)then
        begin
          spdcomanda.Click;
        end;
     //endi
     if (key = vk_F2) then
        begin
          spdorc.Click;
        end;
     //endi
     if (key = vk_f5) and (spdconsultaproduto.Enabled)  then
         begin
           spdconsultaproduto.Click;
         end;
     //endi
   end;
//endi


if (key = vk_f4) and (spdconsultacliente239.Enabled) then
   begin
     spdconsultacliente239.Click;
   end;
//endi



if (key = vk_F11) and (spdfechar236.Enabled) and (not cbxnomefun.Focused)then
    begin
      spdfechar236.Click;
    end
else
   begin
     if (key = vk_F11) and (pnlfechamento.Visible) and (frmdados.Cds_Indice.FieldByName('TCLFINALIZA').asInteger = 1) and (spdfechamento.Enabled)then
         begin
           spdfechamento.Click;
         end
     //endi
   end;
//endi

end;

procedure Tfrmfrenteecf.dbgvenctoKeyPress(Sender: TObject; var Key: Char);
begin

if scoluna = 'n_tipo_pgto' then
   if ( key in['0'..'9',#8] ) then
      if frmdados.cds_Tipo_Pgto.Locate('codigo',key,[]) then
         begin
           frmdados.Cds_vencto.Edit;
           frmdados.Cds_vencto.FieldByName('c_tipo_pgto').AsString := key;
         end;
      //endi
   //endi
//endi

if key = #13 then
   begin
      if frmdados.Cds_vencto.State in [dsinsert, dsedit] then
         begin
           frmdados.Cds_vencto.Post;
         end
      else
         begin
           key := #0;
           SelectNext(ActiveControl,True,True);
         end
      //endi
   end;
//endi
end;

procedure tfrmfrenteecf.buscarprodutos;
begin
if sDescricao = '' then
   exit;
//endi
with frmdados do
  begin
    dbx_vProdutos.Active := false;
    dbx_vProdutos.SQL.Clear;
    dbx_vProdutos.SQL.Add('Select * from vProdutos Where cBar = '+Quotedstr(sDescricao));
    dbx_vProdutos.Active := true;
    if dbx_vProdutos.RecordCount = 0 then
       begin
         dbx_vProdutos.Active := false;
         dbx_vProdutos.SQL.Clear;
         dbx_vProdutos.SQL.Add('Select * from vProdutos Where cAux = '+Quotedstr(sDescricao));
         dbx_vProdutos.Active := true;
         if dbx_vProdutos.RecordCount = 0 then
            begin
              dbx_vProdutos.Active := false;
              dbx_vProdutos.SQL.Clear;
              dbx_vProdutos.SQL.Add('Select * from vProdutos Where Descricao = '+Quotedstr(sDescricao));
              dbx_vProdutos.Active := true;
              if dbx_vProdutos.RecordCount = 0 then
                 begin
                   try
                     dbx_vProdutos.Active := false;
                     dbx_vProdutos.SQL.Clear;
                     dbx_vProdutos.SQL.Add('Select * from vProdutos Where Codigo = '+Quotedstr(sDescricao));
                     dbx_vProdutos.Active := true;
                     if dbx_vProdutos.RecordCount = 0 then
                        begin
                          if testacpf(sDescricao) and (length(sDescricao) = 11) then
                             begin
                               scpf := sDescricao;
                               rchrodape.Lines.Clear;
                               rchrodape.Lines.Add('C.P.F. N.O '+sDescricao);
                             end
                          else
                             begin

                               if verificacnpj(sDescricao) and (length(sDescricao) = 14) then
                                  begin
                                    scpf := sDescricao;
                                    rchrodape.Lines.Clear;
                                    rchrodape.Lines.Add('C.N.P.J N.O '+sDescricao);
                                  end
                               else
                                  begin

                                    icpro := 0;
                                    icuni := 0;
                                    fQtdeEstq := 0;
                                    sActDesc := 'T';
                                    pnlnpro.Caption := sDescricao;
                                    pnlnpro.Visible := true;
                                    bMostrar := false;
                                    sTipoCod := '';
                                    rchrodape.Lines.Clear;
                                    rchrodape.Lines.Add('Informação não existe!!!');

                                  end;
                               //endi
                             end
                          //endi
                        end
                     else
                        begin
                          pnlnpro.Visible := true;
                          pnlnpro.Caption := dbx_vProdutos.fieldbyname('descricao').asString;
                          icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
                          icuni := dbx_vProdutos.fieldbyname('cuni').asInteger;
                          fprve := dbx_vProdutos.fieldbyname('prve').asfloat;
                          fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
                          fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
                          sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
                          bMostrar := true;
                          sTipoCod := 'Codigo';
                        end
                     //endi
                   except
                     if edidescricao.text <> '' then
                        begin
                          if bAltDesc then
                             begin
                               icpro := 0;
                               icuni := 0;
                               fQtdeEstq := 0;
                               sActDesc := 'T';
                               pnlnpro.Caption := sDescricao;
                               pnlnpro.Visible := true;
                               bMostrar := true;
                               sTipoCod := '';
                             end
                          else
                             begin
                               icpro := 0;
                               icuni := 0;
                               fQtdeEstq := 0;
                               sActDesc := 'T';
                               pnlnpro.Caption := sDescricao;
                               pnlnpro.Visible := true;
                               bMostrar := false;
                               sTipoCod := '';
                               rchrodape.Lines.Clear;
                               rchrodape.Lines.Add('Permissão Negada Venda Sem Cadastro de Produto!!!');
                             end;
                          //endi
                        end
                     else
                        begin
                          icpro := 0;
                          icuni := 0;
                          fQtdeEstq := 0;
                          sActDesc := 'T';
                          pnlnpro.Caption := '';
                          pnlnpro.Visible := true;
                          bMostrar := false;
                          sTipoCod := '';
                        end;
                     //endi
                   end
                 end
              else
                 begin
                   pnlnpro.Visible := true;
                   pnlnpro.Caption := dbx_vProdutos.fieldbyname('descricao').asString;
                   icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
                   icuni := dbx_vProdutos.fieldbyname('cuni').AsInteger;
                   fprve := dbx_vProdutos.fieldbyname('prve').asfloat;
                   fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
                   fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
                   sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
                   bMostrar := true;
                   sTipoCod := 'Desc';
                 end
              //endi
            end
         else
            begin
              pnlnpro.Visible := true;
              pnlnpro.Caption := dbx_vProdutos.fieldbyname('descricao').asString;
              icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
              icuni := dbx_vProdutos.fieldbyname('cuni').asInteger;
              fprve := dbx_vProdutos.fieldbyname('prve').asfloat;
              fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
              fQtdeEstq := dbx_vProdutos.fieldbyname('qua').asfloat;
              sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
              bMostrar := true;
              sTipoCod := 'cAux';
            end
         //endi
       end
    else
       begin
         pnlnpro.Visible := true;
         pnlnpro.Caption := dbx_vProdutos.fieldbyname('descricao').asString;
         icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
         icuni := dbx_vProdutos.fieldbyname('cuni').asInteger;
         fprve := dbx_vProdutos.fieldbyname('prve').asfloat;
         fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
         fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
         sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
         bMostrar := true;
         sTipoCod := 'cBar';
       end
    //endi
  end;
//end

if (frmdados.Cds_Indice.FieldByName('ecflanca').asString = 'T') then
   begin

     if (not bVSEstq) and
        (rgbtipoop.ItemIndex = 1) and
        (not ckbentrada.Checked)
     then
        begin
          if (icpro > 0) then
             begin
               vestoqNv;
             end;
          //endi
        end
     else
        begin
          if (icpro > 0) then
             begin
               vestoqv;
             end;
          //endi
        end;
     //endi

   end;
//endi
if stipocod = 'cBar' then
  begin
     if (not pnlfechamento.Visible)then
        begin
          spdsalvar233.Click;
        end;
     //endi
     limpargrav;
     //pnlnpro.Visible := false;
     if edidescricao.Enabled then
        edidescricao.SetFocus;
     //endi   
     bMostrar := false;
  end;
//endi



end;

procedure Tfrmfrenteecf.edicproExit(Sender: TObject);
begin
buscarprodutos;
end;

procedure Tfrmfrenteecf.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if iImp = 1 then
   if key = #13 then
      begin
        buscaorcamento;
        exit;
      end;
   //endi
//endi
if iImp = 2 then
   if key = #13 then
      begin
        buscapedido;
        exit;
      end;
   //endi
//endi
if iImp = 3 then
   if key = #13 then
      begin
        buscacomanda;
        exit;
      end;
   //endi
//endi

try
if key = #13 then
   begin
     key := #0;
     divinfo;
   end;
//endi
except
  if edidescricao.Enabled then
     edidescricao.SetFocus;
  //endi
end;


end;

procedure Tfrmfrenteecf.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (bReimp) and (frmdados.cds_vendab.RecordCount > 0) and (not pnlfechamento.Visible)then
   begin
     key := #0;
     exit;
   end;
//endi

//if (frmdados.cds_vendab.RecordCount > 0) and (not pnlfechamento.Visible)then
//   begin
//     key := #0;
//     exit;
//   end;
//endi

if not bAltp then
  if key = '=' then
     begin
       key := #0;
       exit;
     end;
  //endi
//end

if not bLanDesc then
  if key = '-' then
     begin
       key := #0;
       exit;
     end;
  //endi
//end

if pnlnpro.Visible then
   begin
     if (key=#13) and (not pnlfechamento.Visible)then
        begin
          spdsalvar233.Click;
        end;
     //endi
     limpargrav;
     pnlnpro.Visible := false;
     bMostrar := false;
   end;
//endi
if key=#13 then
   begin
     pnlnpro.Visible := true;
   end;
//endi
if key=#27 then
   begin
     if pnlfechamento.Visible then
        begin
          spdcancfec.Click;


          if  strtofloat( tirapontos(edipdesc.Text) ) > 0 then
              btncancelard.Click;
          //endi

        end;
     //endi
     pnlnpro.Visible := true;

     ckbentrada.Checked := false;

     lbloperacao.Caption := '';

     bentrada := false;

     edidescricao.Text  := '';
     if edidescricao.Enabled then
        edidescricao.SetFocus;
     //endi
   end;
//endi
if (pos('<',rchrodape.Text) = 0 ) then
   begin
     mensatalho;
   end;
//endi
if dbgprodutos.Focused then
   pnlnpro.Visible := true;
//endi

end;


procedure Tfrmfrenteecf.ckbentradaClick(Sender: TObject);
begin

  modoentrada;

end;

procedure Tfrmfrenteecf.spdsalvar233Click(Sender: TObject);
    var sPrve,
        sQtde,
        sSubtotal,
        sOp,
        sEouS,
        sprcu,
        sSubtotalc,
        sdata_op,
        sTipoQtde,
        sTipoDesconto,
        sCodigoProduto,
        sDescricaoProduto,
        sAliquota,
        sValorDesconto,
        sQteItem,
        sValorItem,
        indic,
        sultimoitem :string;

        iDecimal,
        iStatus,
        iFlagFiscal: Integer;

        bImprimiuecf:boolean;

        vardir:string;

    var
      EndConsumidor,
      IdConsumidor,
      NomeConsumidor : String;

    var
      AliquotaICMS,
      CodAliquota,
      CodDepartamento,
      CodProduto,
      NomeDepartamento,
      NomeProduto,
      PercentualAliquota,
      PrecoUnitario,
      Quantidade,
      Unidade : String;

    var
      x:integer;




begin

vardir := extractfilepath(application.ExeName);

if not bcaixaaberto then
   begin
     application.MessageBox('Caixa individual está fechado, para efetuar a venda deve-se primeiro abrir o caixa!','Atenção, Item não lançado',mb_ok);
     exit;
   end;
//endi

sImpF := lerarqtexto(vardir+'ImpF.inf');

if sImpf = 'Nenhuma' then
   itipoimpf := 0;
//endi
if sImpf = '' then
   itipoimpf := 0;
//endi
if sImpf = 'SWEDA' then
   itipoimpf := 1;
//endi
if sImpf = 'BEMA' then
   itipoimpf := 2;
//endi
if sImpf = 'DATAREGIS' then
   itipoimpf := 3;
//endi



if sDescricao = '' then
   exit;
//endi
if not bMostrar then
   exit;
//endi

//if bentrada then
//   sEouS := 'E'
//else
//   sEouS := 'S';
//endi

if ckbentrada.Checked then
   sEouS := 'E'
else
   sEouS := 'S';
//endi

bImprimiuecf := false;

sPrve := floattostr(fprve);
sPrcu := floattostr(fprcu);
sQtde := floattostr(fqtde);
sSubtotal := floattostr(fqtde*fprve);
sSubtotalC := floattostr(fqtde*fprcu);
sData_Op := datetostr(date);
SetLength (sUltimoitem,4);

//  Verifica o Tipo da Quantidade:
// 'I' para Inteira ou 'F' para Fracionária

if frac(fqtde) = 0 then
   sTipoQtde := 'I'
else
   sTipoQtde := 'F';
//endi

// Verifica o Tipo de Decimal:
// 2 para duas casas ou 3 para três casas
iDecimal := 2;

// Verifica o Tipo de Desconto:
// '%' para percentual ou '$' para valor
sTipoDesconto := '%' ;



  {

  Verificar se há cupom aberto antes de disparar comando abaixo talvez comando
  abaixo não funcione com bematech ou outras impressoras.

  |
  |
  |
  |
  }

  if sEouS = 'S' then
     begin


       case itipoimpf of
            0:begin
                // Nenhuma

                if bimpcab then
                   begin
                     impcabecalho;
                     bimpcab := false;
                   end;
                //endi

              end;

            1:begin
                //SWEDA

                SetLength (Indic,2);
                iStatus := ECF_StatusCupomFiscal(indic);
                indic := trim(indic);
                if indic = '0' then
                   begin

                     if scpf = '' then
                        begin
                          iResposta := ECF_AbreCupom( Pchar( '' )  )
                        end
                     else
                        begin
                          iResposta := ECF_AbreCupom( Pchar( scpf ) );
                        end;
                      //endi


                   end;
                //endi

                //Analisa_resposta_sweda();
                //Retorno_Impressora_sweda;



              end;


            2:begin
                //BEMATECH

                // verificar se o cupom fiscal está aberto
                iStatus := Bematech_FI_flagsfiscais(iFlagFiscal);
                if iFlagFiscal <> 1 then
                   begin

                     if scpf = '' then
                        iResposta := Bematech_FI_AbreCupom( Pchar( '' ) )
                     else
                        begin
                          iResposta := Bematech_FI_AbreCupom( Pchar( scpf ) );
                        end;
                     //endi


                   end;
                //endi

              end;


            3:begin
                //DATAREGIS

                //Limpa parametros da DLLG2
                DLLG2_LimpaParams(DLLG2Handle);

                //'Adiciona parametros
                DLLG2_AdicionaParam(DLLG2Handle, 'NomeTexto', 'NomeEstadoFiscal', 7);

                //Executa comando LeInteiro
                iRet := DLLG2_ExecutaComando(DLLG2Handle, 'LeTexto');
                if (iRet <= 0) then
                   begin
                     MessageBox(Handle, 'Problemas de Comunicação', 'SYSTCOM', MB_OK);
                     exit
                   end;
                //endi

                CodErro := DLLG2_ObtemCodErro(DLLG2Handle);
                if (CodErro > 0) then
                   begin
                     NomeErro := DLLG2_ObtemNomeErro(DLLG2Handle, NomeErro, 0);
                     Circunstancia := DLLG2_ObtemCircunstancia(DLLG2Handle, Circunstancia, 0);

                     MessageBox(Handle, PChar(IntToStr(CodErro) + ' - ' + NomeErro + ' - ' + Circunstancia), 'SYSTCOM', MB_OK);
                   end
                else
                   begin
                     SetLength(ValorRetorno, 50);
                     iRet := DLLG2_Retorno(DLLG2Handle, 0, 'ValorTexto', 0, PChar(ValorRetorno), 50);

                     //MessageBox(Handle, PChar(' Estado Fiscal:  ' + ValorRetorno), 'SYSTCOM', MB_OK);
                   end;
                //endi

                if ValorRetorno = 'ESTADO_ECF_PRONTO' then
                   begin

                     EndConsumidor  := sEnderecoEnt;
                     IdConsumidor   := sCpf;
                     NomeConsumidor := sNomeCli;

                     //Limpa parametros da DLLG2
                     DLLG2_LimpaParams(DLLG2Handle);

                     //Adiciona parametros
                     if (Length(EndConsumidor) > 0) then
                        DLLG2_AdicionaParam(DLLG2Handle, 'EnderecoConsumidor', EndConsumidor, 7);
                     //endi
                     if (Length(IdConsumidor) > 0) then
                        DLLG2_AdicionaParam(DLLG2Handle, 'IdConsumidor', IdConsumidor, 7);
                     //endi
                     if (Length(NomeConsumidor) > 0) then
                        DLLG2_AdicionaParam(DLLG2Handle, 'NomeConsumidor', NomeConsumidor, 7);
                     //endi

                     //Executa comando AbreCupomFiscal
                     iRet := DLLG2_ExecutaComando(DLLG2Handle, 'AbreCupomFiscal');
                     if (iRet <= 0) then
                        begin
                          MessageBox(Handle, 'Problemas de Comunicação', 'SYSTCOM', MB_OK);
                          exit
                        end;
                     //endi

                     CodErro := DLLG2_ObtemCodErro(DLLG2Handle);
                     if (CodErro > 0) then
                        begin
                          NomeErro := DLLG2_ObtemNomeErro(DLLG2Handle, NomeErro, 0);
                          Circunstancia := DLLG2_ObtemCircunstancia(DLLG2Handle, Circunstancia, 0);

                          MessageBox(Handle, PChar(IntToStr(CodErro) + ' - ' + NomeErro + ' - ' + Circunstancia), 'SYSTCOM', MB_OK);
                        end;
                     //endi
                   end;
                //endi



              end;







            else exit;

       end;

     end;
  //enfif


with frmdados do
  begin
   //dbx_Exec.Active := false;
   //dbx_Exec.SQL.Clear;
   //dbx_Exec.SQL.Add('Select * from Vendab Where ( cpro = '+inttostr(icpro)+') and ( controle = '+inttostr(iControle)+') and (prve = '+decimal_is_point(sPrve)+') and (EouS = '+quotedstr(sEouS)+')');
   //dbx_Exec.Active := true;
   //if dbx_Exec.RecordCount = 0 then
   //   begin


   sCodigoProduto    := inttostr(icpro);
   sDescricaoProduto := pnlnpro.Caption;
   sAliquota         := '1800';
   //sAliquota         := '1700';
   cds_vprodutos.Active := false;
   dbx_vprodutos.Active := false;
   dbx_vprodutos.SQL.Clear;
   dbx_vprodutos.SQL.Add('Select * from vprodutos where codigo = '+inttostr(icpro));
   dbx_vprodutos.Active := true;
   cds_vprodutos.Active := true;
   if cds_vprodutos.RecordCount > 0 then
      begin

        cds_AliqImpFis.Active := false;
        dbx_AliqImpFis.Active := false;
        dbx_AliqImpFis.SQL.Clear;
        dbx_AliqImpFis.SQL.Add('Select * from AliqImpFis where codigo = '+inttostr(cds_vprodutos.FieldByName('sglimpfis').AsInteger));
        dbx_AliqImpFis.Active := true;
        cds_AliqImpFis.Active := true;

        if cds_AliqImpFis.RecordCount > 0 then
           begin
             sAliquota  :=  cds_aliqImpFis.fieldbyname('sigla').asString;
           end;
        //endi

        cds_unidade.Active := false;
        dbx_unidade.Active := false;
        dbx_unidade.SQL.Clear;
        dbx_unidade.SQL.Add('Select * from unidade where codigo = '+inttostr(cds_vprodutos.FieldByName('cuni').AsInteger));
        dbx_unidade.Active := true;
        cds_unidade.Active := true;

        if cds_unidade.RecordCount > 0 then
           begin
             sUniImp  :=  cds_unidade.fieldbyname('descricao').asString;
           end;
        //endi


      end;
   //endi

   //sQteItem  := decimal_is_point(sQtde);

   if stipoqtde = 'I' then
      begin
        sQteItem  := formatfloat('0000',fqtde);
      end;
   //endi
   if stipoqtde = 'F' then
      begin
        sQteItem  := formatfloat('0000.000',fqtde*10);
        sQteItem  := decimal_is_point(sQteItem);
      end;
   //endi


   //sQteItem := floattostr( fqtde / 100 );
   //sQteItem := decimal_is_point(sQteItem);

   //if sTipoQtde = 'I' then
   //   sQteItem := decimal_is_point(sQtde);
   //endi
   //if sTipoQtde = 'F' then
   //   sQteItem := decimal_is_pointff(sQtde);
   //endi

   //showmessage(sQteItem);

   //if idecimal = 2 then
   //   sQteItem := decimal_is_point(sQtde)
   //else
   //   sQteItem := decimal_is_pointf(sQtde);
   //endi

   sValorItem        := decimal_is_point(sPrve);
   sValorDesconto    := '0';

   if sEouS = 'S' then
      begin

        case itipoimpf of

           0:begin


               sQtdeImp      := formatfloat('###,###,##0.000',fqtde);
               sDescricaoImp := sDescricaoProduto;
               sCprodImp     := formatfloat('00000',strtofloat( sCodigoProduto ) );
               sValorImp     := AlinNumD(10, strtofloat( tirapontos(sPrve) ) );
               sTotalImp     := AlinNumD(10, strtofloat( tirapontos(sPrve) ) * fqtde );

               impdetalhe;

               bImprimiuecf := true;
               sUltimoitem := '';
             end;


           1:begin
               //SWEDA



              //showmessage( sCodigoProduto +' '+ sDescricaoProduto +' '+sAliquota +' '+sTipoQtde +' '+sQteItem+' '+ inttostr(iDecimal)+' '+ sValorItem +' '+sTipoDesconto+' '+ sValorDesconto);



               iResposta := ECF_VendeItem(        pchar( sCodigoProduto ),
                                                  pchar( sDescricaoProduto ),
                                                  pchar( sAliquota ),
                                                  pchar( sTipoQtde ),
                                                  pchar( sQteItem ),
                                                  iDecimal,
                                                  pchar( sValorItem ),
                                                  pchar( sTipoDesconto ),
                                                  pchar( sValorDesconto ) );


               Analisa_resposta_sweda();
               Retorno_Impressora_sweda;

               //criar VerificaRetornoFuncaoImpressora igual ao da bematech e tratar aqui

               if ( VerificaRetornoFuncaoImpressora_sweda( iResposta ) ) then
                  begin

                    iresposta := ECF_UltimoItemVendido(sUltimoitem);
                    sUltimoitem := trim(sUltimoitem);

                    bImprimiuecf := true;
                  end;
               //endi



             end;

           2:begin
               //BEMATECH

               iResposta := Bematech_FI_VendeItem(        pchar( sCodigoProduto ),
                                                          pchar( sDescricaoProduto ),
                                                          pchar( sAliquota ),
                                                          pchar( sTipoQtde ),
                                                          pchar( sQteItem ),
                                                          iDecimal,
                                                          pchar( sValorItem ),
                                                          pchar( sTipoDesconto ),
                                                          pchar( sValorDesconto ) );


               Analisa_resposta_bema();
               Retorno_Impressora_bema;

               if ( VerificaRetornoFuncaoImpressora_bema( iResposta ) ) then
                  begin

                    iresposta := Bematech_FI_UltimoItemVendido(sUltimoitem);
                    sUltimoitem := trim(sUltimoitem);

                    bImprimiuecf := true;
                  end;
               //endi



             end;

           3:begin
               //DATAREGIS

               AliquotaICMS       := '';
               CodAliquota        := sAliquota;
               CodDepartamento    := '';
               CodProduto         := sCodigoProduto;
               NomeDepartamento   := '';
               NomeProduto        := sDescricaoproduto;
               PercentualAliquota := '';
               PrecoUnitario      := sValorItem;
               Quantidade         := sQtde;
               Unidade            := '';










             end;



           else exit;

      end;
      // end case

      end
   else
      begin
        bImprimiuecf := true;
        sUltimoitem := '';
      end;
   //endi


   if bImprimiuecf then
      begin


        dbx_Exec.Active := false;
        dbx_Exec.SQL.Clear;
        dbx_Exec.SQL.Add('Insert into Vendab(');

        if iccli > 0 then
           dbx_Exec.SQL.Add('ccli, ');
        //endi

        if icpro > 0 then
           dbx_Exec.SQL.Add('cpro, ');
        //endi

        if pnlnpro.Caption <> '' then
           dbx_Exec.SQL.Add('npro, ');
        //endi

        if sQtde <> '' then
           dbx_Exec.SQL.Add('qtde, ');
        //endi

        if sPrve <> '' then
           dbx_Exec.SQL.Add('prve, ');
        //endi

        if sSubtotal <> '' then
           dbx_Exec.SQL.Add('subtotal, ');
        //endi

        if sEouS <> '' then
           dbx_Exec.SQL.Add('EouS, ');
        //endi

        if icuni > 0 then
           dbx_Exec.SQL.Add('cuin, ');
        //endi

        if sActDesc <> '' then
           dbx_Exec.SQL.Add('ActDesc, ');
        //endi

        if sPrcu <> '' then
           dbx_Exec.SQL.Add('prcu, ');
        //endi

        if sSubtotalC <> '' then
           dbx_Exec.SQL.Add('SubtotalC, ');
        //endi

        if sUltimoItem <> '' then
           dbx_Exec.SQL.Add('ItemEcf, ');
        //endi

        dbx_Exec.SQL.Add('controle');

        dbx_Exec.SQL.Add(')');

        dbx_Exec.SQL.Add(' values (');

        if iccli > 0 then
           dbx_Exec.SQL.Add(inttostr(iccli)+',');
        //endi

        if icpro > 0 then
           dbx_Exec.SQL.Add(inttostr(icpro)+',');
        //endi

        if pnlnpro.Caption <> '' then
           dbx_Exec.SQL.Add(quotedstr(pnlnpro.Caption)+',');
        //endi

        if sQtde <> '' then
           dbx_Exec.SQL.Add(decimal_is_pointf(sQtde)+',');
        //endi

        if sPrve <> '' then
           dbx_Exec.SQL.Add(decimal_is_point(sPrve)+',');
        //endi

        if sSubtotal <> '' then
           dbx_Exec.SQL.Add(decimal_is_point(sSubtotal)+',');
        //endi

        if sEouS <> '' then
           dbx_Exec.SQL.Add(quotedstr(sEouS)+',');
        //endi

        if icuni > 0 then
           dbx_Exec.SQL.Add(inttostr(icuni)+',');
        //endi

        if sActDesc <> '' then
           dbx_Exec.SQL.Add(quotedstr(sActDesc)+',');
        //endi

        if sPrcu <> '' then
           dbx_Exec.SQL.Add(decimal_is_point(sPrcu)+',');
        //endi

        if sSubtotalC <> '' then
           dbx_Exec.SQL.Add(decimal_is_point(sSubtotalC)+',');
        //endi

        if sUltimoItem <> '' then
           dbx_Exec.SQL.Add(sUltimoItem+',');
        //endi

        dbx_Exec.SQL.Add(inttostr(iControle));

        dbx_Exec.SQL.Add(')');

        dbx_Exec.ExecSQL;
        sOp := 'I';

      end;
   //endii


   fsb_valorliquidoitem := strtofloat(  sPrve   ) -((  strtofloat(   sQtde  ) *    strtofloat(   sPrve   )    ) -  strtofloat(  sSubtotal  )   );

   fsb_valorliquidocupom := fsb_valorliquidocupom+fsb_valorliquidoitem;

   buscarcalcibpt(inttostr(icpro),fsb_valorliquidoitem, fsb_valorliquidocupom);


   //   end
   //else
   //   begin
   //     if icpro > 0 then
   //        begin
   //          dbx_Exec.Active := false;
   //          dbx_Exec.SQL.Clear;
   //          dbx_Exec.SQL.Add('Update Vendab set qtde = qtde + '+decimal_is_point(sQtde)+' Where ( cpro = '+inttostr(icpro)+') and ( controle = '+inttostr(iControle)+') and (prve = '+decimal_is_point(sPrve)+') and (EouS = '+quotedstr(sEouS)+')');
   //          dbx_Exec.ExecSQL;

   //          dbx_Exec.SQL.Clear;
   //          dbx_Exec.SQL.Add('Update Vendab set Subtotal = Subtotal + '+decimal_is_point(sSubtotal)+' Where ( cpro = '+inttostr(icpro)+') and ( controle = '+inttostr(iControle)+') and (prve = '+decimal_is_point(sPrve)+') and (EouS = '+quotedstr(sEouS)+')');
   //          dbx_Exec.ExecSQL;

   //          dbx_Exec.SQL.Clear;
   //          dbx_Exec.SQL.Add('Update Vendab set SubtotalC = SubtotalC + '+decimal_is_point(sSubtotalC)+' Where ( cpro = '+inttostr(icpro)+') and ( controle = '+inttostr(iControle)+') and (prve = '+decimal_is_point(sPrve)+') and (EouS = '+quotedstr(sEouS)+')');
   //          dbx_Exec.ExecSQL;

   //          sOp := 'A';
   //        end
   //     else
   //        begin
             //dbx_Exec.Active := false;
             //dbx_Exec.SQL.Clear;
             //dbx_Exec.SQL.Add('Insert into Vendab(controle, cpro, npro, qtde, prve, subtotal, EouS, cuin, ActDesc, prcu, SubtotalC ) values (');
             //dbx_Exec.SQL.Add(inttostr(iControle)+','+inttostr(icpro)+','+quotedstr(pnlnpro.Caption)+',');
             //dbx_Exec.SQL.Add(decimal_is_point(sQtde)+','+decimal_is_point(sPrve)+','+decimal_is_point(sSubtotal)+','+quotedstr(sEouS)+','+inttostr(icuni)+','+quotedstr(sActDesc)+','+decimal_is_point(sPrcu)+','+decimal_is_point(sSubtotalC)+')');
             //dbx_Exec.ExecSQL;

   //          dbx_Exec.Active := false;
   //          dbx_Exec.SQL.Clear;
   //          dbx_Exec.SQL.Add('Insert into Vendab(');

   //          if iccli > 0 then
   //             dbx_Exec.SQL.Add('ccli, ');
             //endi

   //          if icpro > 0 then
   //             dbx_Exec.SQL.Add('cpro, ');
             //endi

   //          if pnlnpro.Caption <> '' then
   //             dbx_Exec.SQL.Add('npro, ');
             //endi

   //          if sQtde <> '' then
   //             dbx_Exec.SQL.Add('qtde, ');
             //endi

   //          if sPrve <> '' then
   //             dbx_Exec.SQL.Add('prve, ');
             //endi

   //          if sSubtotal <> '' then
   //             dbx_Exec.SQL.Add('subtotal, ');
             //endi

   //          if sEouS <> '' then
    //            dbx_Exec.SQL.Add('EouS, ');
             //endi

   //          if icuni > 0 then
   //             dbx_Exec.SQL.Add('cuin, ');
             //endi

   //          if sActDesc <> '' then
   //             dbx_Exec.SQL.Add('ActDesc, ');
             //endi

   //          if sPrcu <> '' then
    //            dbx_Exec.SQL.Add('prcu, ');
             //endi

   //          if sSubtotalC <> '' then
   //            dbx_Exec.SQL.Add('SubtotalC, ');
             //endi

   //          dbx_Exec.SQL.Add('controle');

   //          dbx_Exec.SQL.Add(')');

  //           dbx_Exec.SQL.Add(' values (');

  //           if iccli > 0 then
  //              dbx_Exec.SQL.Add(inttostr(iccli)+',');
             //endi

  //           if icpro > 0 then
  //              dbx_Exec.SQL.Add(inttostr(icpro)+',');
             //endi

   //          if pnlnpro.Caption <> '' then
   //             dbx_Exec.SQL.Add(quotedstr(pnlnpro.Caption)+',');
             //endi

    //         if sQtde <> '' then
    //            dbx_Exec.SQL.Add(decimal_is_point(sQtde)+',');
             //endi

    //         if sPrve <> '' then
    //            dbx_Exec.SQL.Add(decimal_is_point(sPrve)+',');
             //endi

    //         if sSubtotal <> '' then
    //            dbx_Exec.SQL.Add(decimal_is_point(sSubtotal)+',');
             //endi

     //        if sEouS <> '' then
     //           dbx_Exec.SQL.Add(quotedstr(sEouS)+',');
             //endi

     //        if icuni > 0 then
     //           dbx_Exec.SQL.Add(inttostr(icuni)+',');
             //endi

     //        if sActDesc <> '' then
     //           dbx_Exec.SQL.Add(quotedstr(sActDesc)+',');
             //endi

     //        if sPrcu <> '' then
     //           dbx_Exec.SQL.Add(decimal_is_point(sPrcu)+',');
             //endi

     //        if sSubtotalC <> '' then
     //           dbx_Exec.SQL.Add(decimal_is_point(sSubtotalC)+',');
             //endi

     //        dbx_Exec.SQL.Add(inttostr(iControle));

    //         dbx_Exec.SQL.Add(')');

    //         dbx_Exec.ExecSQL;

   //          sOp := 'I';
   //        end;
        //endi
   //   end;
   //endi

   if bAtualiza then
      begin

        totais;

        try

        cds_Vendab.Active := false;
        dbx_vendab.Active := false;
        dbx_Vendab.SQL.Clear;
        dbx_Vendab.SQL.Add('Select * from Vendab where controle = '+inttostr(icontrole));
        dbx_Vendab.Active := true;
        cds_Vendab.Active := true;

        if sOp = 'I' then
           cds_Vendab.Last;
        //endi

        except
         sMsg := 'Erro!!!';
        end;


      end;
   //endi


   dbx_exec.Active := false;



  end;
//endth

ckbentrada.Checked := false;

lbloperacao.Caption := '';

bentrada := false;

if frmdados.cds_Vendab.RecordCount > 0 then
   begin
     ativabotoes;
     spdorc.Enabled := false;
     //spdcaixaap.Enabled := false;
     cbxnomefun.Enabled := false;
     //spdsangria.Enabled := false;
     //spdtroco.Enabled := false;
     spdcomanda.Enabled := false;
     spdfimp.Enabled := false;

   end;
//endi


end;


procedure Tfrmfrenteecf.totais;
begin


  with frmdados do
    begin

      //dbx_exec.Active := false;
      //dbx_exec.SQL.Clear;
      //dbx_exec.SQL.Add('Select sum(qtde) as totitens from Vendab where (controle = '+inttostr(icontrole)+') and (EouS = '+quotedstr('S')+')');
      //dbx_exec.Active := true;
      //ftotI := dbx_exec.fieldbyname('totitens').asfloat;

      //dbx_exec.Active := false;
      //dbx_exec.SQL.Clear;
      //dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from Vendab where (controle = '+inttostr(icontrole)+') and (EouS = '+quotedstr('S')+')');
      //dbx_exec.Active := true;
      //ftotG := dbx_exec.fieldbyname('totbruto').asfloat;

      //dbx_exec.Active := false;
      //dbx_exec.SQL.Clear;
      //dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from Vendab where (controle = '+inttostr(icontrole)+') and (EouS = '+quotedstr('E')+')');
      //dbx_exec.Active := true;
      //ftotE := dbx_exec.fieldbyname('totbruto').asfloat;

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from Vendab where (controle = '+inttostr(icontrole)+') and (EouS = '+quotedstr('E')+')');
      dbx_exec.Active := true;
      lbltote.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totbruto').asfloat);
      ftotE := dbx_exec.fieldbyname('totbruto').asfloat;

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select sum(qtde) as totitens from Vendab where (controle = '+inttostr(icontrole)+') and (EouS = '+quotedstr('S')+')');
      dbx_exec.Active := true;
      lbltotitens.Caption := formatfloat('00000',dbx_exec.fieldbyname('totitens').asfloat);
      ftotI := dbx_exec.fieldbyname('totitens').asfloat;

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from Vendab where (controle = '+inttostr(icontrole)+') and (EouS = '+quotedstr('S')+')');
      dbx_exec.Active := true;
      lbltotbruto.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totbruto').asfloat);
      ftotG := dbx_exec.fieldbyname('totbruto').asfloat;


      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select sum(qtde*prcu) as totCs from Vendab where (controle = '+inttostr(icontrole)+') and (EouS = '+quotedstr('S')+')');
      dbx_exec.Active := true;
      lbltotCs.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totCs').asfloat);

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select sum(qtde*prcu) as totCe from Vendab where (controle = '+inttostr(icontrole)+') and (EouS = '+quotedstr('E')+')');
      dbx_exec.Active := true;
      lbltotCe.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totCe').asfloat);

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from Vendab where (controle = '+inttostr(icontrole)+') and (EouS = '+quotedstr('S')+')  and ( actdesc = '+quotedstr('F')+')');
      dbx_exec.Active := true;
      lblabsdesc.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totbruto').asfloat);

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from Vendab where (controle = '+inttostr(icontrole)+') and (EouS = '+quotedstr('S')+')  and ( actdesc = '+quotedstr('T')+')');
      dbx_exec.Active := true;
      ftotGprodD := dbx_exec.fieldbyname('totbruto').asfloat;

      edivaldesc.Text := Formatfloat('0.00',strToFLoat(tirapontos(edipDesc.text))/100*ftotGprodD);
      edivaldesc.Text := AlinEdNumD(edivaldesc);

      editotpagar.Text := FormatFloat('0.00',((ftotGprodD-strToFLoat(tirapontos(edipDesc.text))/100*ftotGprodD) - strtofloat(tirapontos(lbltote.Caption))));
      //editotpagar.Text := FormatFloat('0.00',((ftotGprodD-ftoteT-strToFLoat(tirapontos(edivalDesc.text)))/100*(ftotGprodD-ftoteT)));
      sTotPagarA := FormatFloat('0.00',((ftotGprodD-strToFLoat(tirapontos(edipDesc.text))/100*ftotGprodD) - strtofloat(tirapontos(lbltote.Caption))));

      editotpagar.Text := AlinEdNumD(editotpagar);
      lbltotal.Caption := formatfloat('###,###,##0.00',strToFLoat(tirapontos(editotpagar.Text))+strToFLoat(tirapontos(lblabsdesc.caption)));
      //lbltotpagar.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(editotpagar.Text))+strtofloat(tirapontos(lblabsdesc.Caption))-strtofloat(tirapontos(lbltote.Caption)));
      lbltotpagar.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(editotpagar.Text))+strtofloat(tirapontos(lblabsdesc.Caption)));


      lbltotalp.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(editotpagar.Text))+strtofloat(tirapontos(lblabsdesc.Caption)));


      dbx_exec.Active := false;

    end;
  //endw


end;


procedure Tfrmfrenteecf.FormClose(Sender: TObject; var Action: TCloseAction);
var
  indic:string;
  iStatus, iFlagFiscal:integer;
begin

  ThreadStatus.Suspended := true;

  case itipoimpf of
       0:begin
           // Nenhuma
           if ( frmdados.Cds_Indice.FieldByName('impconcomitante').asString = 'T' ) then
              begin

              end;
           //endi


         end;



       1:begin
           //SWEDA

           SetLength (Indic,2);
           iStatus := ECF_StatusCupomFiscal(indic);
           indic := trim(indic);
           if indic = '1' then
              begin
                iresposta := ECF_CancelaCupom;
              end;
           //endi

         end;


       2:begin
           //BEMATECH
           iStatus := BEMATECH_FI_Flagsfiscais(iFlagFiscal);
           if iFlagFiscal = 33 then
              begin
                iresposta := BEMATECH_FI_CancelaCupom;
              end;
           //endi

         end;

       3:begin
           //DATAREGIS

           iRet := DLLG2_EncerraDriver(DLLG2Handle);
           if (iRet < 0) then
              begin
                MessageBox(Handle, 'Erro no encerramento do canal', 'Exemplo Simples', MB_OK)
              end;
           //endi

         end;


       else exit;

     end;






  try
    with FrmDados do
      begin
        Cds_Unidade.Active := false;
        Dbx_Unidade.Active := false;
        Dbx_Unidade.SQL.Clear;
        Dbx_Unidade.SQL.Add('Select * from Unidade where codigo = 0');
        Dbx_Unidade.Active := true;
        Cds_Unidade.Active := true;
      end;
    //endth
  except
    sMsg := 'Erro !!!';
  end;

  with frmdados do
    begin
      dbx_movreg.Active := false;
      dbx_movreg.SQL.Clear;
      dbx_movreg.SQL.Add('delete from movreg where (hdnumber = '+quotedstr(sNumSerieHD)+')');
      dbx_movreg.ExecSQL;
    end;
  //endi

  if sImpfg = 'Nenhuma' then
     itipoimpf := 0;
  //endi
  if sImpfg = '' then
     itipoimpf := 0;
  //endi
  if sImpfg = 'SWEDA' then
     itipoimpf := 1;
  //endi
  if sImpfg = 'BEMA' then
     itipoimpf := 2;
  //endi
  if sImpfg = 'DATAREGIS' then
     itipoimpf := 3;
  //endi




  case itipoimpf of
       0:begin
           // Nenhuma
           if ( frmdados.Cds_Indice.FieldByName('impconcomitante').asString = 'T' ) then
              begin

              end;
           //endi


         end;



       1:begin
          //SWEDA
          iresposta := ECF_FechaPortaSerial;

         end;

       2:begin
          //BEMATECH
          iresposta := Bematech_FI_FechaPortaSerial;

         end;

       3:begin
          //DATAREGIS



         end;



       else exit;

  end;


end;

procedure Tfrmfrenteecf.spdconsultaprodutoClick(Sender: TObject);
begin
  if edidescricao.Enabled then
     edidescricao.SetFocus;
  //endi
  frmpesqprodDecf := tfrmpesqprodDecf.create(self);
  frmpesqprodDecf.ShowModal;
  frmpesqprodDecf.Free;
end;

procedure Tfrmfrenteecf.dbgprodutosPaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
if frmdados.Cds_Vendab.FieldByName('EouS').AsString = 'E' then
   begin
     lblquantidade.Font.Color := clred;
     lblunidade.Font.Color := clred;
     lbldescricao.Font.Color := clred;
     lblcodigo.Font.Color := clred;
     lblprecov.Font.Color := clred;
     lblsubtotalv.Font.Color := clred;
   end
else
   begin
     lblquantidade.Font.Color := clNavy;
     lblunidade.Font.Color := clNavy;
     lbldescricao.Font.Color := clNavy;
     lblcodigo.Font.Color := clNavy;
     lblprecov.Font.Color := clNavy;
     lblsubtotalv.Font.Color := clNavy;
   end;
//endi
end;


procedure tfrmfrenteecf.divinfo;
var
  iposi,iposf, iposDp, iposDv:integer;
  fprvelocal:real;
  sdescl:string;
begin
  try
     iposi := pos('*',edidescricao.Text);
     if iposi > 0 then
        begin
          fqtde := strtofloat(copy(edidescricao.Text,1,iposi-1));
          sDescricao := copy(edidescricao.Text,iposi+1,length(edidescricao.Text))
        end
     else
        begin
          fqtde := 1;
          sDescricao := edidescricao.Text;
        end;
     //endi

     iposDp := pos('-',sDescricao);
     if iposDp > 0 then
        begin
          sdescl := copy(sDescricao,iposDp+1,length(sDescricao));
          sDescricao := copy(sDescricao,1,iposDp-1);
          iposDv := pos('%',sdescl);
          if iposDv > 0 then
             fpdescunit := strtofloat(copy(sdescl,1,iposDv-1))
          else
             fvdescunit := strtofloat(sdescl);
          //endi
        end;
     //endi

     iposf := pos('=',sDescricao);
     if iposf > 0 then
        begin
          fprvelocal := strtofloat(copy(sDescricao,iposf+1,length(sDescricao)));
          sDescricao := copy(sDescricao,1,iposf-1);
        end;
     //endi

     if bprocura then
        buscarprodutos;
     //endi

     if iposf > 0 then
        fprve := fprvelocal;
     //endi

     if bprocura then
        begin

          if not bMostrar then
             fqtde := 0;
          //endi
          lblqtde.Caption := formatfloat('###,###,##0.000',fqtde);
          lblprve.Caption := formatfloat('###,###,##0.00',fprve);
          lblsubtotal.Caption := formatfloat('###,###,##0.00',fprve*fqtde);
          lblsubtotC.Caption := formatfloat('###,###,##0.00',fprcu*fqtde);

        end;
     //endi
   except
     if edidescricao.Enabled then
        edidescricao.SetFocus;
     //endi   
   end;

end;


procedure tfrmfrenteecf.limpargrav;
begin
  pnlnpro.Caption := '';
  edidescricao.Text := '';
  lblqtde.Caption := '0,000';
  lblprve.Caption := '0,00';
  lblsubtotal.Caption := '0,00';
  fprve := 0;
  fqtde := 0;
  fprcu := 0;

end;
procedure Tfrmfrenteecf.cbxnomefunKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

end;

procedure Tfrmfrenteecf.spdExcluir234Click(Sender: TObject);
begin
  excluiProduto;
end;

procedure tfrmfrenteecf.desativabotoes;
begin

  spdAlterar232.Enabled := false;
  spdalteracupom.Enabled := false;

  spdexcluir234.Enabled := false;
  spdconsultar434.Enabled := false;
  spdsalvar233.Enabled := false;
  //spdconsultafun235.Enabled := false;
  spdfechar236.Enabled := false;
  spdconsultacliente239.Enabled := false;
  spdincluir231.Enabled := false;
  spdcancelar2310.Enabled := false;


  spdorc.Enabled := false;
  bApresEstq := false;
  lbltitestq.Visible := false;
  lbltotestq.Visible := false;
  //spdcaixaap.Enabled := false;
  //cbxnomefun.Enabled := false;
  //spdsangria.Enabled := false;
  //spdtroco.Enabled := false;
  spdcomanda.Enabled := false;
  spdfimp.Enabled := false;

end;


procedure tfrmfrenteecf.ativabotoes;
begin
  spdconsultar434.Enabled := true;
  spdsalvar233.Enabled := true;
  //spdconsultafun235.Enabled := true;
  spdfechar236.Enabled := true;
  spdconsultacliente239.Enabled := true;
  //spdcaixaap.Enabled := true;
  spdincluir231.Enabled := true;
  spdcancelar2310.Enabled := true;


  //spdsangria.Enabled := true;
  //spdtroco.Enabled := true;
  spdcomanda.Enabled := true;
  spdfimp.Enabled := true;

  //cbxnomefun.Enabled := true;

  //if (not bReimp) then
  //   begin
  //     if iImp = 0 then
  //        begin
            spdorc.Enabled := true;
            //spdcaixaap.Enabled := true;
            //cbxnomefun.Enabled := true;
            //spdsangria.Enabled := true;
            //spdtroco.Enabled := true;
            spdcomanda.Enabled := true;
            spdfimp.Enabled := true;
  //        end;
       //endi
       spdAlterar232.Enabled := true;
       spdexcluir234.Enabled := true;
       spdalteracupom.Enabled := true;





  //   end;
  //endi

  bApresEstq := false;
  lbltitestq.Visible := false;
  lbltotestq.Visible := false;

end;


procedure Tfrmfrenteecf.FormCreate(Sender: TObject);
 var
   cArquivo : TextFile;
   cLinha: string;

begin



  if findwindow('Frente de Caixa',nil)>0 then
     showmessage('Delphi está carregado');


  if DelphiCarregado then
    begin
      //Showmessage('Delphi está carregado');
      //application.terminate;
    end;
  //endi



  case itipoimpf of
       0:begin
           // Nenhuma
           if ( frmdados.Cds_Indice.FieldByName('impconcomitante').asString = 'T' ) then
              begin

              end;
           //endi


         end;



       1:begin
           //SWEDA

           //Verifica se existe o arquivo TEF.TXT, indicando que houve uma queda de
           //energia e que existe uma transação pendente.
           if FileExists( 'TEF.TXT' ) then
              begin

                 // Função que realiza o fechamento do comprovante não fiscal vinculado,
                 // caso esteja aberto.
                 iResposta := ECF_FechaComprovanteNaoFiscalVinculado;

                  if FileExists( 'TEF.TXT' ) then
                     begin
                        AssignFile( cArquivo, 'TEF.TXT' );
                        Reset( cArquivo );
                        ReadLn( cArquivo, cLinha );
                        CloseFile( cArquivo );
                        NaoConfirmaTransacao( StrToInt( cLinha ) );
                        DeleteFile( 'TEF.TXT' );
                     end;
                  //endi
               end;
           //endi

         end;


       2:begin
           //BEMATECH

           //Verifica se existe o arquivo TEF.TXT, indicando que houve uma queda de
           //energia e que existe uma transação pendente.
           if FileExists( 'TEF.TXT' ) then
              begin

                 // Função que realiza o fechamento do comprovante não fiscal vinculado,
                 // caso esteja aberto.
                 iResposta := Bematech_FI_FechaComprovanteNaoFiscalVinculado;

                  if FileExists( 'TEF.TXT' ) then
                     begin
                        AssignFile( cArquivo, 'TEF.TXT' );
                        Reset( cArquivo );
                        ReadLn( cArquivo, cLinha );
                        CloseFile( cArquivo );
                        NaoConfirmaTransacao( StrToInt( cLinha ) );
                        DeleteFile( 'TEF.TXT' );
                     end;
                  //endi
               end;
           //endi


         end;

       3:begin
           // DATAREGIS


         end;



       else exit;

  end;

  iConta     := 1;
  iTransacao := 0;
  iQuantasTransacoes := 0;
  iValorRestante := 0;
  cValorPago := TStringList.Create;

end;

procedure Tfrmfrenteecf.AplEventoException(Sender: TObject;
  E: Exception);
var
  NomeDoLog: string;
  Arquivo: TextFile;
begin
  NomeDoLog := ChangeFileExt(Application.Exename, '.log');
  AssignFile(Arquivo, NomeDoLog);
  if FileExists(NomeDoLog) then
    Append(arquivo) { se existir, apenas adiciona linhas }
  else
    ReWrite(arquivo); { cria um novo se não existir }
  try
    WriteLn(arquivo, DateTimeToStr(Now) + ':' + E.Message);
    WriteLn(arquivo, '----------------------------------------------------------------------');
    Application.ShowException(E);
  finally
    CloseFile(arquivo);
    with frmdados do
      begin
        dbx_movreg.Active := false;
        dbx_movreg.SQL.Clear;
        dbx_movreg.SQL.Add('delete from movreg where (hdnumber = '+quotedstr(sNumSerieHD)+')');
        dbx_movreg.ExecSQL;
      end;
    //endi
    //application.Terminate;
  end;
end;

procedure Tfrmfrenteecf.ckbentregaClick(Sender: TObject);
begin
if edidescricao.Enabled then
   edidescricao.SetFocus;
//endi
end;

procedure Tfrmfrenteecf.spdfechamentoClick(Sender: TObject);
var x:integer;
    fprojecao:currency;
    ResultSet : tCustomSqlDataSet;
    SqlStMt, sVlr, sTit, sS1, sVlrR, stotpagar, sapurado : String;
    fVlr, fvlrtotparc, fVlrR:real;
    cArquivo : TextFile;
    cLinha, sibpt: string;
    iVezes:integer;
    bfalta:boolean;

begin


  try
    strtofloat(tirapontos(edivalor.text));
  except
    edivalor.Text := '0,00';
    edivalor.Text := AlinEdNumD(edivalor);
    exit;
  end;

  if frmdados.Cds_Vendab.RecordCount = 0 then
     exit;
  //endi

  if (strtofloat(tirapontos(edivalor.Text)) = 0) and
     (strtofloat(tirapontos(lbltotpagar.caption)) > 0)
  then
     begin
       edivalor.SetFocus;
       exit;
     end;
  //endi

  edivalor.Text := AlinEdNumD(edivalor);

  pdesc := tirapontos(edipdesc.Text);
  svaldesc := tirapontos(edivaldesc.text);
  //sdin := tirapontos(edidin.text);

  sdata := lbldata.caption;
  stroco := tirapontos(lbltroco.caption);
  stotgpagar := tirapontos(lbltotpagar.caption);
  stotpagar := tirapontos(editotpagar.text);

  stotpago := tirapontos(editotpagar.text);


  sabsdesc := tirapontos(lblabsdesc.caption);
  stotal := tirapontos(lbltotal.caption);
  stote := tirapontos(lbltote.caption);
  itotitens := strtoint(lbltotitens.caption);
  stotbruto := tirapontos(lbltotbruto.caption);
  scustopecas := tirapontos(lbltotCs.caption);
  scustopecae := tirapontos(lbltotCe.caption);
  stotGprodD := tirapontos(floattostr(ftotGprodD));

  with frmdados do
    begin

      if iccli > 0 then
         begin
           dbx_clientes.Active := false;
           dbx_clientes.SQL.Clear;
           dbx_clientes.SQL.Add('select * from clientes where codigo = '+inttostr(iccli));
           dbx_clientes.Active := true;
           sNomeCli := dbx_clientes.fieldbyname('Nome').asString;
           sEnderecoent := dbx_clientes.fieldbyname('endent').asString;

           if dbx_clientes.fieldbyname('nroent').asString <> '' then
              sEnderecoent := sEnderecoent + 'N.o '+dbx_clientes.fieldbyname('nroent').asString;
           //endi



           sComplent := dbx_clientes.fieldbyname('Complent').asString;
           sBairroent := dbx_clientes.fieldbyname('Bairroent').asString;
           sCidadeent := dbx_clientes.fieldbyname('Cidadeent').asString;
           sEstadoent := dbx_clientes.fieldbyname('estadoent').asString;
           sTelefoneent := dbx_clientes.fieldbyname('telefoneent').asString;
           sContato := dbx_clientes.fieldbyname('contato').asString;

           //sCpf := dbx_clientes.fieldbyname('cpf').asString;
           //sRg := dbx_clientes.fieldbyname('IE').asString;

         end
      //endi
    end;
  //endi

  pnldesconto.Visible := false;




  case itipoimpf of
   0:begin
       //NE


       if not verificavenda then
          exit;
       //endi


       fVlr := strtofloat(tirapontos(edivalor.Text));
       sVlr := alinNumD(14,fvlr);

       if (not vparc) and (frmdados.cds_Tipo_Pgto.FieldByName('codigo').asInteger <> frmdados.cds_indice.fieldbyname('codavista').asInteger) then
           begin
             showmessage('Limite de parcela à prazo excedido');
             exit;
           end;
       //endi


       ftotApurado := ftotApurado +  strtofloat(tirapontos(edivalor.Text));

       if frmdados.cds_Tipo_Pgto.FieldByName('codigo').asInteger = frmdados.cds_indice.fieldbyname('codavista').asInteger then
          begin
            fdinheiro := fdinheiro + strtofloat(tirapontos(edivalor.Text));
          end
       else
          begin
            lancapa;
          end;
       //endi

       stit :=  copy(frmdados.cds_Tipo_Pgto.FieldByName('descricao').asString,1,20);

       for x := 1 to ( 20 - length( stit ) ) do
           sS1 := sS1 + ' ';
       //endfor

       rchmensfecpgto.Lines.Add(stit+sS1+sVlr );

       //showmessage(floattostr(ftotApurado)+' '+tirapontos(lbltotpagar.Caption));

       stotpagar := formatfloat('0.00',strtofloat(tirapontos(lbltotpagar.Caption)));
       sapurado  := formatfloat('0.00',ftotApurado);

       //if ftotApurado < strtofloat(tirapontos(lbltotpagar.Caption)) then
       if strtofloat(tirapontos(sapurado)) < strtofloat(tirapontos(stotpagar)) then
          begin
            fVlr :=  strtofloat(tirapontos(lbltotpagar.Caption)) - ftotApurado;
            lbltotalp.Caption := formatfloat('###,###,##0.00',fVlr);
            sVlr := alinNumD(14,fVlr);
            rchmensfecpgto.Lines.Add('--> Falta(m) '+ sVlr );
            spddesconto.Enabled := false;
            spdparcelar.Enabled := false;

            dbgpgto.SetFocus;

            if spdparcelar.Enabled then
               begin
                 edivalor.Text := '0,00';
                 edivalor.Text := AlinEdNumD(edivalor);
               end;
            //endi


            exit;
          end
       else
          begin
            rchmensfecpgto.Lines.Add('--> OK');
          end;
       //endi



       sdin := floattostr(fdinheiro);

       lancanu;
       improdape;


       if (frmdados.Cds_Indice.FieldByName('tpimpv').asInteger = 3) and (strtoint(edincopias.text) > 0) then
           begin
             //if strtofloat(tirapontos(edidin.Text)) > 0 then

             if fdinheiro > 0 then
                begin
                  sayprint.BeginPrn;
                  sayprint.Say(0,0,chr(27)+chr(118)+chr(76));
                  sayprint.EndPrn;
                end;
             //endi

             for x := 1 to strtoint(edincopias.text) do
                begin
                  imporc70b;
                end
             //endi


           end
       else
           begin
             for x := 1 to strtoint(edincopias.text) do
               begin
                 if frmdados.Cds_Indice.FieldByName('tpimpv').asInteger = 1 then
                    imporcrazao30x80;
                 //endi
                 if frmdados.Cds_Indice.FieldByName('tpimpv').asInteger = 2 then
                    imporcrazao30x140;
                 //endi
               end
           //endf
         end;
       //endi

       salvapedido;
       lancavenda;
       lancacaixaind;
       novavenda;

     end;

   1:begin
       //SWEDA

       fVlrR := strtofloat(tirapontos(edivalor.Text));
       sVlrR := formatfloat('0.00',fvlrR);


       if (not vparc) and (frmdados.cds_Tipo_Pgto.FieldByName('codigo').asInteger <> frmdados.cds_indice.fieldbyname('codavista').asInteger) then
          begin
            showmessage('Limite de parcela à prazo excedido');
            exit;
          end;
       //endi

       bfalta := true;

       if (iVzs = 0) and (not bdesc) then
          begin
            scAcrescimoDesconto      := 'D';
            scTipoAcrescimoDesconto  := '$';
            scValorAcrescimoDesconto := edivaldesc.Text;

            iResposta := ECF_IniciaFechamentoCupom( pchar( scAcrescimoDesconto ),
                                                            pchar( scTipoAcrescimoDesconto ),
                                                             pchar( scValorAcrescimoDesconto ) );

            Analisa_resposta_sweda;
            Retorno_Impressora_sweda;
          end;
       //endif


       if ( frmdados.cds_Tipo_Pgto.FieldByName('eheletronico').asString = 'T' ) then
          begin
             cIdentificacao := Time;
             SetLength( cNumeroCupom, 6 );
             iResposta := ECF_NumeroCupom( cNumeroCupom );
             VerificaRetornoFuncaoImpressora_sweda( iResposta );

             // Se já existe mais de um pagamento, deve-se confirmar a transação anterior
             if ( fileexists( 'PENDENTE.TXT' ) ) then
                begin
                   AssignFile( cArquivo, 'PENDENTE.TXT' );
                   Reset( cArquivo );
                   ReadLn( cArquivo, cLinha );
                   CloseFile( cArquivo );
                   ConfirmaTransacao( strtoint( cLinha ) );
                   DeleteFile( 'PENDENTE.TXT' );
                end;
             //endi
             iResposta := 0;
             if ( RealizaTransacao( cIdentificacao, cNumeroCupom, FormatFloat( svlrR , 0 ), iConta ) = 1 ) then
                begin
                   //showmessage('passei realiza transacao');
                   iResposta:=ECF_EfetuaFormaPagamento( Pchar( frmdados.cds_Tipo_Pgto.FieldByName('descricao').asString )  , pchar(svlrR));
                   if ( VerificaRetornoFuncaoImpressora_sweda( iResposta ) ) then
                      begin
                         cValorPago.Add( svlrR );
                         iConta := iConta + 1;
                         iTransacao := iTransacao + 1;
                      end;
                   //endi
                end;
             //endif
          end
       else
          begin
            iResposta:=ECF_EfetuaFormaPagamento( Pchar( frmdados.cds_Tipo_Pgto.FieldByName('descricao').asString )  ,pchar(svlrR));
            Analisa_resposta_sweda;
            Retorno_Impressora_sweda;
          end;
       //endi

       if iResposta = 1 then
          begin

            ftotApurado := ftotApurado +  strtofloat(tirapontos(edivalor.Text));

            if frmdados.cds_Tipo_Pgto.FieldByName('codigo').asInteger = frmdados.cds_indice.fieldbyname('codavista').asInteger then
               begin
                 fdinheiro := fdinheiro + strtofloat(tirapontos(edivalor.Text));
               end
            else
               begin
                 if (frmdados.Cds_Indice.FieldByName('ecflanca').asString = 'T') then
                     begin
                       lancapa;
                     end;
                 //endi
               end;
            //endi

            fVlr := strtofloat(tirapontos(edivalor.Text));
            sVlr := alinNumD(14,fvlr);

            stit :=  copy(frmdados.cds_Tipo_Pgto.FieldByName('descricao').asString,1,20);

            for x := 1 to ( 20 - length( stit ) ) do
               sS1 := sS1 + ' ';
            //endfor

            rchmensfecpgto.Lines.Add(stit+sS1+sVlr );

            stotpagar := formatfloat('0.00',strtofloat(tirapontos(lbltotpagar.Caption)));
            sapurado  := formatfloat('0.00',ftotApurado);

            //if ftotApurado < strtofloat(tirapontos(lbltotpagar.Caption)) then
            if strtofloat(tirapontos(sapurado)) < strtofloat(tirapontos(stotpagar)) then
               begin
                 fVlr :=  strtofloat(tirapontos(lbltotpagar.Caption)) - ftotApurado;
                 lbltotalp.Caption := formatfloat('###,###,##0.00',fVlr);
                 sVlr := alinNumD(14,fVlr);
                 rchmensfecpgto.Lines.Add('--> Falta(m) '+ sVlr );
                 spddesconto.Enabled := false;
                 spdparcelar.Enabled := false;

                 bfalta := true;

                 if spdparcelar.Enabled then
                    begin
                      edivalor.Text := '0,00';
                      edivalor.Text := AlinEdNumD(edivalor);
                    end;
                 //endi

               end
            else
               begin
                 rchmensfecpgto.Lines.Add('--> OK');
                 bfalta := false;
               end;
            //endi


          end;
       //endi




       edivalor.Text := '0,00';
       edivalor.Text := AlinEdNumD(edivalor);



       if not bfalta then
          begin

            sibpt := 'Val Aprox. dos Tributos R$ '+formatfloat('###,###,##0.00',vlribpt )+' ('+  formatfloat('###,###,##0.00',porcibpt )  +'%) Fonte: IBPT'+';';

            iResposta:=ECF_TerminaFechamentoCupom(pchar(sibpt+' '+frmdados.Cds_Indice.FieldByName('txt').asString));
            //VerificaRetornoFuncaoImpressora_sweda( iResposta );

            Analisa_resposta_sweda;
            Retorno_Impressora_sweda;

            iQuantasTransacoes := 1;
            if ( frmdados.cds_Tipo_Pgto.FieldByName('eheletronico').asString = 'T' ) then
                  begin
                     Gerencial := false;
                     while ( iQuantasTransacoes <= iTransacao ) do
                        begin
                           if not ( ImprimeTransacao_sweda( frmdados.cds_Tipo_Pgto.FieldByName('descricao').asString, cValorPago.Strings[ iQuantasTransacoes - 1 ], cNumeroCupom, cIdentificacao, iQuantasTransacoes ) ) then
                              if ( Application.MessageBox( 'A impressora não responde!' + #13 +
                                                           'Deseja imprimir novamente?', 'Atenção',
                                                             MB_IconInformation + MB_YESNO ) = IDYES ) then
                                   begin
                                      showmessage('fecha comprovante não fiscal 1');
                                      iResposta := ECF_FechaComprovanteNaoFiscalVinculado();
                                      Gerencial := True;
                                      iQuantasTransacoes := 1;
                                   end
                              else
                                   begin
                                      showmessage('fecha comprovante não fiscal 2');
                                      iResposta := ECF_FechaComprovanteNaoFiscalVinculado();
                                      NaoConfirmaTransacao( iTransacao );
                                      break;
                                   end
                              //endi
                           else
                              iQuantasTransacoes := iQuantasTransacoes + 1;
                           //endi
                        end;
                     //endw
                     cValorPago.Clear;

                     if ( ( iQuantasTransacoes - 1 ) = iTransacao ) then
                          begin
                             ConfirmaTransacao( iTransacao );
                             DeleteFile( 'PENDENTE.TXT' );
                          end;
                     //endi

                     for iVezes := 1 to ( iQuantasTransacoes - 1 ) do
                          begin
                             if ( FileExists( 'C:\TEF_DIAL\RESP\INTPOS' + inttostr( iVezes ) + '.001' ) ) then
                                begin
                                   DeleteFile( 'C:\TEF_DIAL\RESP\INTPOS' + inttostr( iVezes ) + '.001' );
                                   DeleteFile( 'IMPRIME' + inttostr( iVezes ) + '.TXT' );
                                end;
                             //endi
                          end;
                     //endfor

                  end;
            //endi
            DeleteFile( 'TEF.TXT' );
            iConta     := 1;
            iTransacao := 1;

            sdin := floattostr(fdinheiro);

            if (frmdados.Cds_Indice.FieldByName('ecflanca').asString = 'T') then
                begin

                  //if not verificavenda then
                  //   exit;
                  //endi

                  lancanu;
                  salvapedido;

                  lancavenda;
                  lancacaixaind;

                end;
            //endi

            novavenda;
          end
       else
          begin
            dbgpgto.SetFocus;
          end;
       //endi



     end;

   2:begin
       //BEMATECH

       fVlrR := strtofloat(tirapontos(edivalor.Text));
       sVlrR := formatfloat('0.00',fvlrR);


       if (not vparc) and (frmdados.cds_Tipo_Pgto.FieldByName('codigo').asInteger <> frmdados.cds_indice.fieldbyname('codavista').asInteger) then
          begin
            showmessage('Limite de parcela à prazo excedido');
            exit;
          end;
       //endi

       bfalta := true;

       if (iVzs = 0) and (not bdesc) then
          begin
            scAcrescimoDesconto      := 'D';
            scTipoAcrescimoDesconto  := '$';
            scValorAcrescimoDesconto := edivaldesc.Text;

            iResposta := Bematech_FI_IniciaFechamentoCupom( pchar( scAcrescimoDesconto ),
                                                            pchar( scTipoAcrescimoDesconto ),
                                                             pchar( scValorAcrescimoDesconto ) );

            Analisa_resposta_bema;
            Retorno_Impressora_bema;
          end;
       //endif


       if ( frmdados.cds_Tipo_Pgto.FieldByName('eheletronico').asString = 'T' ) then
          begin
             cIdentificacao := Time;
             SetLength( cNumeroCupom, 6 );
             iResposta := Bematech_FI_NumeroCupom( cNumeroCupom );
             VerificaRetornoFuncaoImpressora_bema( iResposta );

             // Se já existe mais de um pagamento, deve-se confirmar a transação anterior
             if ( fileexists( 'PENDENTE.TXT' ) ) then
                begin
                   AssignFile( cArquivo, 'PENDENTE.TXT' );
                   Reset( cArquivo );
                   ReadLn( cArquivo, cLinha );
                   CloseFile( cArquivo );
                   ConfirmaTransacao( strtoint( cLinha ) );
                   DeleteFile( 'PENDENTE.TXT' );
                end;
             //endi
             iResposta := 0;
             if ( RealizaTransacao( cIdentificacao, cNumeroCupom, FormatFloat( svlrR , 0 ), iConta ) = 1 ) then
                begin
                   //showmessage('passei realiza transacao');
                   iResposta:=Bematech_FI_EfetuaFormaPagamento( Pchar( frmdados.cds_Tipo_Pgto.FieldByName('descricao').asString )  , pchar(svlrR));
                   if ( VerificaRetornoFuncaoImpressora_bema( iResposta ) ) then
                      begin
                         cValorPago.Add( svlrR );
                         iConta := iConta + 1;
                         iTransacao := iTransacao + 1;
                      end;
                   //endi
                end;
             //endif
          end
       else
          begin
            iResposta:=Bematech_FI_EfetuaFormaPagamento( Pchar( frmdados.cds_Tipo_Pgto.FieldByName('descricao').asString )  ,pchar(svlrR));
            Analisa_resposta_bema;
            Retorno_Impressora_bema;
          end;
       //endi

       if iResposta = 1 then
          begin

            ftotApurado := ftotApurado +  strtofloat(tirapontos(edivalor.Text));

            if frmdados.cds_Tipo_Pgto.FieldByName('codigo').asInteger = frmdados.cds_indice.fieldbyname('codavista').asInteger then
               begin
                 fdinheiro := fdinheiro + strtofloat(tirapontos(edivalor.Text));
               end
            else
               begin
                 if (frmdados.Cds_Indice.FieldByName('ecflanca').asString = 'T') then
                     begin
                       lancapa;
                     end;
                 //endi
               end;
            //endi

            fVlr := strtofloat(tirapontos(edivalor.Text));
            sVlr := alinNumD(14,fvlr);

            stit :=  copy(frmdados.cds_Tipo_Pgto.FieldByName('descricao').asString,1,20);

            for x := 1 to ( 20 - length( stit ) ) do
               sS1 := sS1 + ' ';
            //endfor

            rchmensfecpgto.Lines.Add(stit+sS1+sVlr );

            stotpagar := formatfloat('0.00',strtofloat(tirapontos(lbltotpagar.Caption)));
            sapurado  := formatfloat('0.00',ftotApurado);

            //if ftotApurado < strtofloat(tirapontos(lbltotpagar.Caption)) then
            if strtofloat(tirapontos(sapurado)) < strtofloat(tirapontos(stotpagar)) then
               begin
                 fVlr :=  strtofloat(tirapontos(lbltotpagar.Caption)) - ftotApurado;
                 lbltotalp.Caption := formatfloat('###,###,##0.00',fVlr);
                 sVlr := alinNumD(14,fVlr);
                 rchmensfecpgto.Lines.Add('--> Falta(m) '+ sVlr );
                 spddesconto.Enabled := false;
                 spdparcelar.Enabled := false;

                 bfalta := true;

                 if spdparcelar.Enabled then
                    begin
                      edivalor.Text := '0,00';
                      edivalor.Text := AlinEdNumD(edivalor);
                    end;
                 //endi

               end
            else
               begin
                 rchmensfecpgto.Lines.Add('--> OK');
                 bfalta := false;
               end;
            //endi


          end;
       //endi

       edivalor.Text := '0,00';
       edivalor.Text := AlinEdNumD(edivalor);

       if not bfalta then
          begin
              sibpt := 'Val Aprox. dos Tributos R$ '+formatfloat('###,###,##0.00',vlribpt )+' ('+  formatfloat('###,###,##0.00',porcibpt )  +'%) Fonte: IBPT'+';';


            iResposta:=Bematech_FI_TerminaFechamentoCupom(pchar(sibpt+' '+frmdados.Cds_Indice.FieldByName('txt').asString));
            //VerificaRetornoFuncaoImpressora_bema( iResposta );

            Analisa_resposta_bema;
            Retorno_Impressora_bema;

            iQuantasTransacoes := 1;
            if ( frmdados.cds_Tipo_Pgto.FieldByName('eheletronico').asString = 'T' ) then
                  begin
                     Gerencial := false;
                     while ( iQuantasTransacoes <= iTransacao ) do
                        begin
                           if not ( ImprimeTransacao_bema( frmdados.cds_Tipo_Pgto.FieldByName('descricao').asString, cValorPago.Strings[ iQuantasTransacoes - 1 ], cNumeroCupom, cIdentificacao, iQuantasTransacoes ) ) then
                              if ( Application.MessageBox( 'A impressora não responde!' + #13 +
                                                           'Deseja imprimir novamente?', 'Atenção',
                                                             MB_IconInformation + MB_YESNO ) = IDYES ) then
                                   begin
                                      showmessage('fecha comprovante não fiscal 1');
                                      iResposta := Bematech_FI_FechaComprovanteNaoFiscalVinculado();
                                      Gerencial := True;
                                      iQuantasTransacoes := 1;
                                   end
                              else
                                   begin
                                      showmessage('fecha comprovante não fiscal 2');
                                      iResposta := Bematech_FI_FechaComprovanteNaoFiscalVinculado();
                                      NaoConfirmaTransacao( iTransacao );
                                      break;
                                   end
                              //endi
                           else
                              iQuantasTransacoes := iQuantasTransacoes + 1;
                           //endi
                        end;
                     //endw
                     cValorPago.Clear;

                     if ( ( iQuantasTransacoes - 1 ) = iTransacao ) then
                          begin
                             ConfirmaTransacao( iTransacao );
                             DeleteFile( 'PENDENTE.TXT' );
                          end;
                     //endi

                     for iVezes := 1 to ( iQuantasTransacoes - 1 ) do
                          begin
                             if ( FileExists( 'C:\TEF_DIAL\RESP\INTPOS' + inttostr( iVezes ) + '.001' ) ) then
                                begin
                                   DeleteFile( 'C:\TEF_DIAL\RESP\INTPOS' + inttostr( iVezes ) + '.001' );
                                   DeleteFile( 'IMPRIME' + inttostr( iVezes ) + '.TXT' );
                                end;
                             //endi
                          end;
                     //endfor

                  end;
            //endi
            DeleteFile( 'TEF.TXT' );
            iConta     := 1;
            iTransacao := 1;

            sdin := floattostr(fdinheiro);

            if (frmdados.Cds_Indice.FieldByName('ecflanca').asString = 'T') then
                begin

                  //if not verificavenda then
                  //   exit;
                  //endi

                  lancanu;
                  salvapedido;

                  lancavenda;
                  lancacaixaind;
                end;
            //endi

            novavenda;
          end
       else
          begin
            dbgpgto.SetFocus;
          end;
       //endi

     end;

   3:begin
       //DATAREGIS

       fVlrR := strtofloat(tirapontos(edivalor.Text));
       sVlrR := formatfloat('0.00',fvlrR);


       if (not vparc) and (frmdados.cds_Tipo_Pgto.FieldByName('codigo').asInteger <> frmdados.cds_indice.fieldbyname('codavista').asInteger) then
          begin
            showmessage('Limite de parcela à prazo excedido');
            exit;
          end;
       //endi

       bfalta := true;

       if (iVzs = 0) and (not bdesc) then
          begin
            scAcrescimoDesconto      := 'D';
            scTipoAcrescimoDesconto  := '$';
            scValorAcrescimoDesconto := edivaldesc.Text;

            iResposta := Bematech_FI_IniciaFechamentoCupom( pchar( scAcrescimoDesconto ),
                                                            pchar( scTipoAcrescimoDesconto ),
                                                             pchar( scValorAcrescimoDesconto ) );

            Analisa_resposta_bema;
            Retorno_Impressora_bema;
          end;
       //endif


       if ( frmdados.cds_Tipo_Pgto.FieldByName('eheletronico').asString = 'T' ) then
          begin
             cIdentificacao := Time;
             SetLength( cNumeroCupom, 6 );
             iResposta := Bematech_FI_NumeroCupom( cNumeroCupom );
             VerificaRetornoFuncaoImpressora_bema( iResposta );

             // Se já existe mais de um pagamento, deve-se confirmar a transação anterior
             if ( fileexists( 'PENDENTE.TXT' ) ) then
                begin
                   AssignFile( cArquivo, 'PENDENTE.TXT' );
                   Reset( cArquivo );
                   ReadLn( cArquivo, cLinha );
                   CloseFile( cArquivo );
                   ConfirmaTransacao( strtoint( cLinha ) );
                   DeleteFile( 'PENDENTE.TXT' );
                end;
             //endi
             iResposta := 0;
             if ( RealizaTransacao( cIdentificacao, cNumeroCupom, FormatFloat( svlrR , 0 ), iConta ) = 1 ) then
                begin
                   //showmessage('passei realiza transacao');
                   iResposta:=Bematech_FI_EfetuaFormaPagamento( Pchar( frmdados.cds_Tipo_Pgto.FieldByName('descricao').asString )  , pchar(svlrR));
                   if ( VerificaRetornoFuncaoImpressora_bema( iResposta ) ) then
                      begin
                         cValorPago.Add( svlrR );
                         iConta := iConta + 1;
                         iTransacao := iTransacao + 1;
                      end;
                   //endi
                end;
             //endif
          end
       else
          begin
            iResposta:=Bematech_FI_EfetuaFormaPagamento( Pchar( frmdados.cds_Tipo_Pgto.FieldByName('descricao').asString )  ,pchar(svlrR));
            Analisa_resposta_bema;
            Retorno_Impressora_bema;
          end;
       //endi

       if iResposta = 1 then
          begin

            ftotApurado := ftotApurado +  strtofloat(tirapontos(edivalor.Text));

            if frmdados.cds_Tipo_Pgto.FieldByName('codigo').asInteger = frmdados.cds_indice.fieldbyname('codavista').asInteger then
               begin
                 fdinheiro := fdinheiro + strtofloat(tirapontos(edivalor.Text));
               end
            else
               begin
                 if (frmdados.Cds_Indice.FieldByName('ecflanca').asString = 'T') then
                     begin
                       lancapa;
                     end;
                 //endi
               end;
            //endi

            fVlr := strtofloat(tirapontos(edivalor.Text));
            sVlr := alinNumD(14,fvlr);

            stit :=  copy(frmdados.cds_Tipo_Pgto.FieldByName('descricao').asString,1,20);

            for x := 1 to ( 20 - length( stit ) ) do
               sS1 := sS1 + ' ';
            //endfor

            rchmensfecpgto.Lines.Add(stit+sS1+sVlr );

            stotpagar := formatfloat('0.00',strtofloat(tirapontos(lbltotpagar.Caption)));
            sapurado  := formatfloat('0.00',ftotApurado);

            //if ftotApurado < strtofloat(tirapontos(lbltotpagar.Caption)) then
            if strtofloat(tirapontos(sapurado)) < strtofloat(tirapontos(stotpagar)) then
               begin
                 fVlr :=  strtofloat(tirapontos(lbltotpagar.Caption)) - ftotApurado;
                 lbltotalp.Caption := formatfloat('###,###,##0.00',fVlr);
                 sVlr := alinNumD(14,fVlr);
                 rchmensfecpgto.Lines.Add('--> Falta(m) '+ sVlr );
                 spddesconto.Enabled := false;
                 spdparcelar.Enabled := false;

                 bfalta := true;


                 if spdparcelar.Enabled then
                    begin
                      edivalor.Text := '0,00';
                      edivalor.Text := AlinEdNumD(edivalor);
                    end;
                 //endi


               end
            else
               begin
                 rchmensfecpgto.Lines.Add('--> OK');
                 bfalta := false;
               end;
            //endi


          end;
       //endi

       edivalor.Text := '0,00';
       edivalor.Text := AlinEdNumD(edivalor);

       if not bfalta then
          begin

              sibpt := 'Val Aprox. dos Tributos R$ '+formatfloat('###,###,##0.00',vlribpt )+' ('+  formatfloat('###,###,##0.00',porcibpt )  +'%) Fonte: IBPT'+';';


            iResposta:=Bematech_FI_TerminaFechamentoCupom(pchar( sibpt +'  '+ frmdados.Cds_Indice.FieldByName('txt').asString));
            //VerificaRetornoFuncaoImpressora_bema( iResposta );

            Analisa_resposta_bema;
            Retorno_Impressora_bema;

            iQuantasTransacoes := 1;
            if ( frmdados.cds_Tipo_Pgto.FieldByName('eheletronico').asString = 'T' ) then
                  begin
                     Gerencial := false;
                     while ( iQuantasTransacoes <= iTransacao ) do
                        begin
                           if not ( ImprimeTransacao_bema( frmdados.cds_Tipo_Pgto.FieldByName('descricao').asString, cValorPago.Strings[ iQuantasTransacoes - 1 ], cNumeroCupom, cIdentificacao, iQuantasTransacoes ) ) then
                              if ( Application.MessageBox( 'A impressora não responde!' + #13 +
                                                           'Deseja imprimir novamente?', 'Atenção',
                                                             MB_IconInformation + MB_YESNO ) = IDYES ) then
                                   begin
                                      showmessage('fecha comprovante não fiscal 1');
                                      iResposta := Bematech_FI_FechaComprovanteNaoFiscalVinculado();
                                      Gerencial := True;
                                      iQuantasTransacoes := 1;
                                   end
                              else
                                   begin
                                      showmessage('fecha comprovante não fiscal 2');
                                      iResposta := Bematech_FI_FechaComprovanteNaoFiscalVinculado();
                                      NaoConfirmaTransacao( iTransacao );
                                      break;
                                   end
                              //endi
                           else
                              iQuantasTransacoes := iQuantasTransacoes + 1;
                           //endi
                        end;
                     //endw
                     cValorPago.Clear;

                     if ( ( iQuantasTransacoes - 1 ) = iTransacao ) then
                          begin
                             ConfirmaTransacao( iTransacao );
                             DeleteFile( 'PENDENTE.TXT' );
                          end;
                     //endi

                     for iVezes := 1 to ( iQuantasTransacoes - 1 ) do
                          begin
                             if ( FileExists( 'C:\TEF_DIAL\RESP\INTPOS' + inttostr( iVezes ) + '.001' ) ) then
                                begin
                                   DeleteFile( 'C:\TEF_DIAL\RESP\INTPOS' + inttostr( iVezes ) + '.001' );
                                   DeleteFile( 'IMPRIME' + inttostr( iVezes ) + '.TXT' );
                                end;
                             //endi
                          end;
                     //endfor

                  end;
            //endi
            DeleteFile( 'TEF.TXT' );
            iConta     := 1;
            iTransacao := 1;

            sdin := floattostr(fdinheiro);

            if (frmdados.Cds_Indice.FieldByName('ecflanca').asString = 'T') then
                begin

                  //if not verificavenda then
                  //   exit;
                  //endi

                  lancanu;
                  salvapedido;
                  lancavenda;
                  lancacaixaind;

                end;
            //endi

            novavenda;
          end
       else
          begin
            dbgpgto.SetFocus;
          end;
       //endi



     end;




   else exit;

  end;







  {



  while true do
    begin

      iretornogav := Le_Status_Gaveta;


      showmessage('Fechar Gaveta');


      if iretornogav = 0 then
         texto_retorno_gaveta := '';
      //endi

      if iretornogav = 1 then
         texto_retorno_gaveta := 'Gaveta Aberta';
      //endi

      if iretornogav = 2 then
         texto_retorno_gaveta := 'Gaveta Fechada';
      //endi

      //showmessage(inttostr(iretornogav));
      if iretornogav = 0 then
         begin
           //showmessage('Ocorreu falha, sai!!!');
           novavenda;
           break;
         end;
      //endi

      if iretornogav = 1 then
         begin
           //showmessage('ocorreu o fechamento da gaveta!!!');
           novavenda;
           break;
         end;
      //endi


    end;
  //endi



  }


  iVzs := iVzs + 1;

end;

procedure tfrmfrenteecf.imporcrazao30x80;
var
  s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,sImp:string;
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
  Col, Centro,x, iLin, iItens:Integer;
  sDelimitador:string;
  sQtdeImp,sDescricaoImp,sCprodImp, sValorImp, sTotalImp, sUniImp:String;
  ftotG, ftotI, ftotE:real;
  sCab1, sCab2, sCab3, sCab4:string;
begin

sDataImp := datetostr(date);
sHoraImp := copy(timetostr(time),1,5);
sDelimitador := replicar('-',80);

frmdados.Cds_Vendab.First;
if frmdados.Cds_Vendab.RecordCount = 0 then
   exit;
//endi
while true do
  begin


    s1 := '';
    sayprint.BeginPrn;

    sayprint.Condensed(true);
    sayprint.Expand(True);
    for x := 1 to (( 40  - length( frmdados.Cds_Config.fieldbyname('campo2').asString )) div 2) do
        begin
          s1 := (s1 + ' ');
        end;
    //endfor
    sImp := s1+frmdados.Cds_Config.fieldbyname('campo2').asString;
    sayprint.Say(0,0,sImp);
    sayprint.Expand(false);


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

    if rgbtipoop.ItemIndex = 0 then
       begin
         sayprint.Say(4,0,'Orcamento '+formatfloat('00000',iNorc));
       end
    else
       begin
         sayprint.Say(4,0,'Pedido '+formatfloat('00000',iNped));
       end;
    //endi
    sayprint.Say(4,35,'Data     '+sDataImp);
    sayprint.Say(4,68,'Hora   '+sHoraImp);

    sayprint.Say(5,0,sDelimitador);

    ilin := 5;

    //if frmdados.Cds_Indice.FieldByName('IMPCABCLI').asString  = 'T' then
    //   begin


         if iccli > 0 then
            begin

              ilin := ilin + 1;
              sayprint.Say(ilin, 0,'Cliente.....: '+sNomeCli);

              ilin := ilin + 1;
              sayprint.Say(ilin, 0,'Endereco....: '+sEnderecoent);


              ilin := ilin + 1;
              sayprint.Say(ilin, 0,'Complemento.: '+copy(sComplent,1,14));
              sayprint.Say(ilin,30,'Bairro.....: '+copy(sBairroent,1,15));
              sayprint.Say(ilin,60,'Cidade.: '+copy(sCidadeent,1,10));

              ilin := ilin + 1;
              sayprint.Say(ilin, 0,'Estado......: '+sEstadoent);
              sayprint.Say(ilin,30,'Cep........: '+scepent);

              ilin := ilin + 1;
              sayprint.Say(ilin, 0,'Telefone....: '+sTelefoneent);
              sayprint.Say(ilin,30,'Contato....: '+sContato);

            end
         else
            begin

              ilin := ilin + 1;
              sayprint.Say(ilin, 0,'Cliente.....: Consumidor');

              ilin := ilin + 1;
              sayprint.Say(ilin, 0,'Endereco....: ');

              ilin := ilin + 1;
              sayprint.Say(ilin, 0,'Complemento.: ');
              sayprint.Say(ilin,30,'Bairro.....: ');
              sayprint.Say(ilin,60,'Cidade.: ');

              ilin := ilin + 1;
              sayprint.Say(ilin, 0,'Estado......: ');
              sayprint.Say(ilin,30,'Cep........: ');

              ilin := ilin + 1;
              sayprint.Say(ilin, 0,'Telefone....: ');
              sayprint.Say(ilin,30,'Contato....: ');

            end;
         //endi
         ilin := ilin + 1;
         sayprint.Say(ilin,0,sDelimitador);

    //   end;
    //endi

    ilin := ilin + 1;
    sayprint.Say(ilin,0,'      Qtde Un. Descricao                          Codigo       Valor       Total');
    //                 xx.xxx,xxx xxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  xxxxx  xxx,xxx.xx  xxx,xxx.xx

    ilin := ilin + 1;
    sayprint.Say(ilin,0,sDelimitador);


    ilin := ilin + 1;
    iItens  := 0;

    //frmDados.Dbx_Vendab.First;



      with frmdados do
         begin


           while true do
              begin

                sQtdeImp      := AlinNumD3(10,Cds_Vendab.fieldbyname('qtde').asfloat);
                sDescricaoImp := copy(Cds_Vendab.fieldbyname('npro').asString,1,34);
                sCprodImp     := formatfloat('00000',Cds_Vendab.fieldbyname('cpro').asfloat);
                sValorImp     := AlinNumD(10,Cds_Vendab.fieldbyname('prve').asfloat);
                sTotalImp     := AlinNumD(12,Cds_Vendab.fieldbyname('subtotal').asfloat);
                sUniImp       := Cds_Vendab.fieldbyname('nUni').asString;

                sayprint.Say(iLin,0,sQtdeImp);
                sayprint.Say(iLin,11,sUniImp);
                sayprint.Say(iLin,15,sDescricaoImp);
                sayprint.Say(iLin,51,sCprodImp);
                sayprint.Say(iLin,58,sValorImp);
                sayprint.Say(iLin,68,sTotalImp);

                iLin := iLin + 1;
                Cds_Vendab.Next;
                if Cds_Vendab.Eof then
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

      if frmdados.Cds_Vendab.Eof then
         begin

            with frmdados do
              begin
                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select sum(qtde) as totitens from Vendab where (controle = '+inttostr(icontrole)+') and (EouS = '+quotedstr('S')+')');
                dbx_exec.Active := true;
                ftotI := dbx_exec.fieldbyname('totitens').asfloat;

                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from Vendab where (controle = '+inttostr(icontrole)+') and (EouS = '+quotedstr('S')+')');
                dbx_exec.Active := true;
                ftotG := dbx_exec.fieldbyname('totbruto').asfloat;

                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from Vendab where (controle = '+inttostr(icontrole)+') and (EouS = '+quotedstr('E')+')');
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

            sayprint.Say(25,60,'Total');

            sValorImp := formatfloat('###,###,##0.00',ftotG);
            sValorImp := AlinNumD(14,ftotG);

            sayprint.Say(25,66,sValorImp);



            if bReimp then
               begin
                 sayprint.Say(29,0,'Re-Impressão Pedido');
                 sayprint.Say(29,30,'Data Original '+sDataF);
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


      sayprint.Say(33,0,' ');


      sayprint.FreeCommand(chr(13));
      sayprint.EndPrn;



      if frmdados.Cds_Vendab.Eof then
         break;
      //endi




  end;
//endw

end;



procedure tfrmfrenteecf.imporcrazao30x140;
var
  s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,sImp:string;
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
  Col, Centro,x, iLin, iItens, iCols, iParcDup1, iParcDup2, iParcDup3, iParcDup4:Integer;
  sDelimitador:string;
  sQtdeImp,sDescricaoImp,sCprodImp, sValorImp, sTotalImp, sUniImp, sVlrDup1, sVlrDup2, sVlrDup3, sVlrDup4,
  sNumDup1,sNumDup2,sNumDup3,sNumDup4,sVctDup1,sVctDup2,sVctDup3,sVctDup4:String;


  ftotG, ftotI, ftotE:real;
  sCab1, sCab2, sCab3, sCab4:string;
begin

sDataImp := datetostr(date);
sHoraImp := copy(timetostr(time),1,5);
sDelimitador := replicar('-',137);
frmdados.Cds_Vendab.First;
if frmdados.Cds_Vendab.RecordCount = 0 then
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

    sayprint.Expand(True);
    for x := 1 to (( 40  - length( frmdados.Cds_Config.fieldbyname('campo2').asString )) div 2) do
        begin
          s1 := (s1 + ' ');
        end;
    //endfor
    sImp := s1+frmdados.Cds_Config.fieldbyname('campo2').asString;
    sayprint.Say(0,0,sImp);
    sayprint.Expand(false);

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

    if rgbtipoop.ItemIndex = 0 then
       begin
         sayprint.Say(4,0,'Orcamento '+formatfloat('00000',iNorc));
       end
    else
       begin
         sayprint.Say(4,0,'Pedido '+formatfloat('00000',iNped));
       end;
    //endi
    sayprint.Say(4,35,'Data     '+sDataImp);
    sayprint.Say(4,68,'Hora   '+sHoraImp);

    sayprint.Condensed(true);
    sayprint.Say(5,0,sDelimitador);

    ilin := 5;

    //if frmdados.Cds_Indice.FieldByName('IMPCABCLI').asString  = 'T' then
    //   begin

         if iccli > 0 then
            begin

              ilin := ilin + 1;
              sayprint.Say(ilin,0,'Cliente.....: '+sNomeCli);

              ilin := ilin + 1;
              sayprint.Say(ilin,0,'Endereco....: '+sEnderecoent);

              ilin := ilin + 1;
              sayprint.Say(ilin, 0,'Complemento.: '+copy(sComplent,1,65));
              sayprint.Say(ilin,60,'Bairro.....: '+copy(sBairroent,1,20));
              sayprint.Say(ilin,103,'Cidade.: '+copy(sCidadeent,1,18));

              ilin := ilin + 1;
              sayprint.Say(ilin, 0,'Estado......: '+sEstadoent);
              sayprint.Say(ilin,60,'Cep........: '+scepent);

              ilin := ilin + 1;
              sayprint.Say(ilin, 0,'Telefone....: '+sTelefoneent);
              sayprint.Say(ilin,60,'Contato....: '+sContato);

              //sayprint.Say(10,103,'Vendedor...: '+sVendedor);

            end
         else
            begin

              ilin := ilin + 1;
              sayprint.Say(ilin,0,'Cliente.....: Consumidor');

              ilin := ilin + 1;
              sayprint.Say(ilin,0,'Endereco....: ');

              ilin := ilin + 1;
              sayprint.Say(ilin,0,'Complemento.: ');
              sayprint.Say(ilin,60,'Bairro.....: ');
              sayprint.Say(ilin,103,'Cidade.: ');

              ilin := ilin + 1;
              sayprint.Say(ilin,0,'Estado......: ');
              sayprint.Say(ilin,60,'Cep........: ');

              ilin := ilin + 1;
              sayprint.Say(ilin,  0,'Telefone....: ');
              sayprint.Say(ilin, 60,'Contato....: ');

              //sayprint.Say(10,103,'Vendedor...: '+sVendedor);

            end;
         //endi
         ilin := ilin + 1;
         sayprint.Say(ilin,0,sDelimitador);
    //   end;
    //endi

    ilin := ilin + 1;
    sayprint.Say(ilin,0,'      Qtde Un. Descricao                                                                                   Codigo       Valor       Total');
    //                 xx.xxx,xxx xxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx  xxxxx  xxx,xxx.xx  xxx,xxx.xx

    ilin := ilin + 1;
    sayprint.Say(ilin,0,sDelimitador);

    ilin := ilin + 1;
    iItens  := 0;

    //frmDados.Dbx_Vendab.First;

      with frmdados do
         begin


           while true do
              begin

                sQtdeImp      := AlinNumD3(10,Cds_Vendab.fieldbyname('qtde').asfloat);
                sDescricaoImp := Cds_Vendab.fieldbyname('npro').asString;
                sCprodImp     := formatfloat('00000',Cds_Vendab.fieldbyname('cpro').asfloat);
                sValorImp     := AlinNumD(10,Cds_Vendab.fieldbyname('prve').asfloat);
                sTotalImp     := AlinNumD(10,Cds_Vendab.fieldbyname('subtotal').asfloat);
                sUniImp       := Cds_Vendab.fieldbyname('nUni').asString;

                sayprint.Say(iLin,0,sQtdeImp);
                sayprint.Say(iLin,11,sUniImp);
                sayprint.Say(iLin,15,sDescricaoImp);
                sayprint.Say(iLin,108,sCprodImp);
                sayprint.Say(iLin,115,sValorImp);
                sayprint.Say(iLin,127,sTotalImp);


                iLin := iLin + 1;
                Cds_Vendab.Next;
                if Cds_Vendab.Eof then
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

      if frmdados.Cds_Vendab.Eof then
         begin

            with frmdados do
              begin
                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select sum(qtde) as totitens from Vendab where (controle = '+inttostr(icontrole)+') and (EouS = '+quotedstr('S')+')');
                dbx_exec.Active := true;
                ftotI := dbx_exec.fieldbyname('totitens').asfloat;

                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from Vendab where (controle = '+inttostr(icontrole)+') and (EouS = '+quotedstr('S')+')');
                dbx_exec.Active := true;
                ftotG := dbx_exec.fieldbyname('totbruto').asfloat;

                dbx_exec.Active := false;
                dbx_exec.SQL.Clear;
                dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from Vendab where (controle = '+inttostr(icontrole)+') and (EouS = '+quotedstr('E')+')');
                dbx_exec.Active := true;
                ftotE := dbx_exec.fieldbyname('totbruto').asfloat;

                dbx_exec.Active := false;

              end;
            //endw

            sayprint.Condensed(false);

            sayprint.Say(25,0,'Vendedor '+sVendedor);

            if ftote > 0 then
               begin
                 sayprint.Say(25,20,'Troca '+formatfloat('###,##0.00',ftotE));
               end;
            //endi

            sayprint.Say(ilin,36,'Itens '+formatfloat('00000',ftotI));

            sayprint.Condensed(false);

            sayprint.Say(25,55,'Total');

            sValorImp := formatfloat('###,###,##0.00',ftotG);
            sValorImp := AlinNumD(14,ftotG);

            sayprint.Say(25,66,sValorImp);

            sayprint.Say(26,55,'Desc.');

            sValorImp := formatfloat('##0.00',  strtofloat (  tirapontos( edipdesc.Text )  )  );
            sValorImp := AlinNumD(6,strtofloat (  tirapontos( edipdesc.Text )) );

            sayprint.Say(26,60,sValorImp+'% R$');

            sValorImp := formatfloat('###,###,##0.00',  strtofloat (  tirapontos(   edivaldesc.Text ))  );
            sValorImp := AlinNumD(10,strtofloat (  tirapontos( edivaldesc.Text  )) );

            sayprint.Say(26,66,sValorImp);
           
            sayprint.Say(27,55,'Liquido');

            sValorImp := formatfloat('###,###,##0.00', strtofloat (  tirapontos( lbltotpagar.Caption  )) );
            sValorImp := AlinNumD(14,strtofloat (  tirapontos( lbltotpagar.Caption  )));
            sayprint.Say(27,66,sValorImp);
            sayprint.Condensed(true);

            sayprint.Say(28,0,'Forma de Pagto:');

            //if strtofloat (  tirapontos( edidin.Text  )) > 0 then

            if fdinheiro > 0 then
               begin
                 sayprint.Say(28,18,'A vista (');

                 //if strtofloat (  tirapontos( edidin.Text  )) > strtofloat (  tirapontos( lbltotpagar.Caption  )) then
                 if fdinheiro > strtofloat (  tirapontos( lbltotpagar.Caption  )) then
                    begin
                      sValorImp := formatfloat('###,###,##0.00',strtofloat (  tirapontos( lbltotpagar.Caption  )));
                      sValorImp := AlinNumD(10,strtofloat (  tirapontos( lbltotpagar.Caption  )));
                    end
                 else
                    begin
                      //sValorImp := formatfloat('###,###,##0.00',strtofloat (  tirapontos( edidin.Text  )));
                      sValorImp := formatfloat('###,###,##0.00',fdinheiro);
                      //sValorImp := AlinNumD(10, strtofloat (  tirapontos( edidin.Text   )) );
                      sValorImp := AlinNumD(10, fdinheiro );
                    end;
                 //endi

                 sayprint.Say(28,25,' R$ '+sValorImp+' )');

               end;
            //endi

            //imprime parcelas
            iCols := 1;
            iLin := 28;
            iItens  := 0;
            svlrdup1 := '0';
            svlrdup2 := '0';
            svlrdup3 := '0';

            with frmdados do
              begin

                //cds_vencto.Active := false;
                //dbx_vencto.Active := false;
                //dbx_vencto.SQL.Clear;
                //dbx_vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger )+')');
                //dbx_vencto.Active := true;
                //cds_vencto.Active := true;

                cds_vencto.First;

                while not cds_vencto.Eof do
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
                        if Cds_vencto.Eof then
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

            if bReimp then
               begin
                 sayprint.Say(29,0,'Re-Impressão Pedido');
                 sayprint.Say(29,30,'Data Original '+sDataF);
               end;
            //endi

            sayprint.Condensed(true);

            sayprint.Say(30,0,sDelimitador);

         end
      else
         begin


            if bReimp then
               begin
                 sayprint.Say(29, 0,'Re-Impressão Pedido');
                 sayprint.Say(29,30,'Data Original '+sDataF);
               end;
            //endi


           sayprint.Say(30,0,sDelimitador);





         end;
      //endi


      sayprint.Say(33,0,' ');


      sayprint.FreeCommand(chr(13));
      sayprint.EndPrn;



      if frmdados.Cds_Vendab.Eof then
         break;
      //endi




  end;
//endw







end;


procedure tfrmfrenteecf.imporc70b;
var
  x:integer;
//  s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,sImp:string;
//  ResultSet : tCustomSqlDataSet;
//  SqlStMt : String;
//  Col, Centro,x, iLin, iItens, iCols, iParcDup3, iParcDup1, iParcDup2, iParcDup4:Integer;
//  sDelimitador, sNumDup1, sVlrDup1, sVctDup1 , sNumDup2, sVlrDup2, sVctDup2,
//  sNumDup3, sVlrDup3, sVctDup3 , sNumDup4, sVlrDup4, sVctDup4:string;
//  sQtdeImp,sDescricaoImp,sCprodImp, sValorImp, sTotalImp, sUniImp:String;
//  ftotG, ftotI, ftotE:real;
//  sCab1, sCab2, sCab3, sCab4:string;

begin

sDataImp := datetostr(date);
sHoraImp := copy(timetostr(time),1,5);
sDelimitador := replicar('-',60);
frmdados.Cds_Vendab.First;
if frmdados.Cds_Vendab.RecordCount = 0 then
   exit;
//endi

s1 := '';
sayprint.BeginPrn;

sayprint.Condensed(false);
sayprint.Expand(True);

for x := 1 to (( 24  - length( frmdados.Cds_Config.fieldbyname('campo2').asString )) div 2) do
    begin
      s1 := (s1 + ' ');
    end;
//endfor
sImp := s1+frmdados.Cds_Config.fieldbyname('campo2').asString;
sayprint.Say(0,0,sImp);
sayprint.Expand(false);

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
for x := 1 to (( 48  - length( copy(scab2,1,48) )) div 2) do
    begin
      s1 := (s1 + ' ');
    end;
//endfor
sImp := s1+copy(scab2,1,48);

sayprint.Say(2,0,sImp);

sayprint.Condensed(true);
sayprint.Say(3,0,sDelimitador);
sayprint.Condensed(false);

if rgbtipoop.ItemIndex = 0 then
   begin
     sayprint.Say(4,0,'Orcamento '+formatfloat('00000',iNorc));
   end
else
   begin
     sayprint.Say(4,0,'Pedido '+formatfloat('00000',iNped));
   end;
//endi
sayprint.Say(4,19,'Data '+sDataImp);
sayprint.Say(4,38,'Hora '+sHoraImp);

sayprint.Condensed(true);

sayprint.Say(5,0,sDelimitador);

iLin    := 5;


if frmdados.Cds_Indice.FieldByName('IMPCABCLI').asString  = 'T' then
   begin


     if iccli > 0 then
        begin
          ilin := ilin + 1;
          sayprint.Say(ilin,0,'Cliente.: '+copy(sNomeCli,1,38));

          ilin := ilin + 1;
          sayprint.Say(ilin,0,'Endereco: '+copy(sEnderecoent,1,38));

          ilin := ilin + 1;
          sayprint.Say(ilin, 0,'Compl..: '+copy(sComplent,1,5));
          sayprint.Say(ilin,15,'Bairro.: '+copy(sBairroent,1,10));
          sayprint.Say(ilin,35,'Cidade.: '+copy(sCidadeent,1,5));

          ilin := ilin + 1;
          sayprint.Say(ilin, 0,'Estado.: '+sEstadoent);
          sayprint.Say(ilin,15,'Cep....: '+scepent);


          ilin := ilin + 1;
          sayprint.Say(ilin, 0,'Tel...: '+copy(sTelefoneent,1,38));
          sayprint.Say(ilin,35,'Cont..: '+copy(sContato,1,5));

        end
     else
        begin
          ilin := ilin + 1;
          sayprint.Say(ilin,0,'Cliente.: Consumidor');

          ilin := ilin + 1;
          sayprint.Say(ilin,0,'Endereco: ');


          ilin := ilin + 1;
          sayprint.Say(ilin, 0,'Compl..: ');
          sayprint.Say(ilin,15,'Bairro.: ');
          sayprint.Say(ilin,35,'Cidade.: ');

          ilin := ilin + 1;
          sayprint.Say(ilin, 0,'Estado.: ');
          sayprint.Say(ilin,15,'Cep....: ');

          ilin := ilin + 1;
          sayprint.Say(ilin, 0,'Tel...: ');
          sayprint.Say(ilin,35,'Cont..: ');

        end;
     //endi

     ilin := ilin + 1;
     sayprint.Say(ilin,0,sDelimitador);

   end;
//endi

//sayprint.Say(12,0,'      Qtde Un. Descricao                                 TP.');

ilin := ilin + 1;
sayprint.Say(ilin,0,'      Qtde Un. Descricao                                    ');
//                 xx.xxx,xxx xxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx x

ilin := ilin + 1;
sayprint.Say(ilin,0,'Codigo                       Valor                     Total');
//                  xxxxx                  xxx,xxx.xx                xxx,xxx.xx

ilin := ilin + 1;
sayprint.Say(ilin,0,sDelimitador);

ilin := ilin + 1;
iItens  := 0;

with frmdados do
   begin

     while true do
        begin
          sQtdeImp      := AlinNumD3(10,Cds_Vendab.fieldbyname('qtde').asfloat);
          sDescricaoImp := Cds_Vendab.fieldbyname('npro').asString;
          sCprodImp     := formatfloat('00000',Cds_Vendab.fieldbyname('cpro').asfloat);
          sValorImp     := AlinNumD(10,Cds_Vendab.fieldbyname('prve').asfloat);
          sTotalImp     := AlinNumD(10,Cds_Vendab.fieldbyname('subtotal').asfloat);
          sUniImp       := Cds_Vendab.fieldbyname('nUni').asString;

          sayprint.Say(iLin,0,sQtdeImp);
          sayprint.Say(iLin,11,sUniImp);
          sayprint.Say(iLin,15,sDescricaoImp);

          iLin := iLin + 1;

          sayprint.Say(iLin,0,sCprodImp);
          sayprint.Say(iLin,24,sValorImp);
          sayprint.Say(iLin,50,sTotalImp);

          iLin := iLin + 1;
          Cds_Vendab.Next;
          if Cds_Vendab.Eof then
             break;
          //endi


        end;
     //endw


  end;
//endth

sayprint.Say(iLin,0,sDelimitador);

with frmdados do
     begin
       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Add('Select sum(qtde) as totitens from Vendab where (controle = '+inttostr(icontrole)+') and (EouS = '+quotedstr('S')+')');
       dbx_exec.Active := true;
       ftotI := dbx_exec.fieldbyname('totitens').asfloat;

       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from Vendab where (controle = '+inttostr(icontrole)+') and (EouS = '+quotedstr('S')+')');
       dbx_exec.Active := true;
       ftotG := dbx_exec.fieldbyname('totbruto').asfloat;

       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Add('Select sum(qtde*prve) as totbruto from Vendab where (controle = '+inttostr(icontrole)+') and (EouS = '+quotedstr('E')+')');
       dbx_exec.Active := true;
       ftotE := dbx_exec.fieldbyname('totbruto').asfloat;

       dbx_exec.Active := false;

     end;
//endth

iLin := iLin + 1;
sayprint.Say(iLin,25,'Total');

sValorImp := formatfloat('###,###,##0.00',ftotG);
sValorImp := AlinNumD(14,ftotG);

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

sValorImp := formatfloat('###,###,##0.00',strtofloat(tirapontos( lbltotpagar.Caption   )) );
sValorImp := AlinNumD(14, strtofloat(tirapontos( lbltotpagar.Caption   )) );

sayprint.Say(iLin,46,sValorImp);

iLin := iLin + 1;
sayprint.Say(iLin,0,'Forma de Pagto:');

//if strtofloat(tirapontos(edidin.Text))  > 0 then
if fdinheiro > 0 then

   begin
     iLin := iLin + 1;
     sayprint.Say(iLin,0,'A vista (');
     //if strtofloat(tirapontos(edidin.Text)) > strtofloat(tirapontos(lbltotpagar.Caption)) then
     if fdinheiro > strtofloat(tirapontos(lbltotpagar.Caption)) then
        begin
          sValorImp := formatfloat('###,##0.00',strtofloat(tirapontos(lbltotpagar.Caption)));
          sValorImp := AlinNumD(10,strtofloat(tirapontos(lbltotpagar.Caption)));
        end
     else
        begin
          //sValorImp := formatfloat('###,##0.00',strtofloat(tirapontos(edidin.Text)));
          //sValorImp := AlinNumD(10,strtofloat(tirapontos(edidin.Text )));

          sValorImp := formatfloat('###,##0.00',fdinheiro);
          sValorImp := AlinNumD(10,fdinheiro );

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

      //if strtofloat(tirapontos(edidin.Text)) < strtofloat(tirapontos(lbltotpagar.Caption)) then
      if fdinheiro < strtofloat(tirapontos(lbltotpagar.Caption)) then
         begin

            cds_vencto.First;
            while not cds_vencto.Eof do
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
                   if Cds_vencto.Eof then
                      break;
                   //endi



                 end;
            //endw

         end;
      //endi

    end;
//endth

if strtofloat(lbltroco.Caption) > 0 then
   begin
     iLin := iLin + 1;
     sayprint.Say(iLin,0,'Troco   ( R$      '+formatfloat('###,##0.00', strtofloat(  tirapontos( lbltroco.Caption  )  )  )+'  )');
   end;
//endi

if frmdados.Cds_Indice.FieldByName('impvlrreccli').asString = 'T' then
   begin
     iLin := iLin + 1;
     //sayprint.Say(iLin,0,'Vlr.Rec.( R$      '+formatfloat('###,##0.00', strtofloat( tirapontos( edidin.text ) )  )+'  )');
     sayprint.Say(iLin,0,'Vlr.Rec.( R$      '+formatfloat('###,##0.00', fdinheiro  )+'  )');

   end;
//endi

if ftote > 0 then
   begin
     iLin := iLin + 1;
     sayprint.Say(iLin,0,'Devol.  ( R$      '+formatfloat('###,##0.00',ftotE)+'  )');
   end;
//endi

iLin := iLin + 1;
sayprint.Say(iLin,0,   'Vendedor '+sVendedor);

iLin := iLin + 1;
sayprint.Say(iLin,0,   'Itens    '+formatfloat('00000',ftotI));

iLin := iLin + 1;
sayprint.Say(iLin,0,  'Val Aprox. dos Tributos R$ '+formatfloat('###,###,##0.00',vlribpt )+' ('+  formatfloat('###,###,##0.00',porcibpt )  +'%) Fonte: IBPT'+';' );

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

procedure Tfrmfrenteecf.spdConsultaCliente239Click(Sender: TObject);
begin
if iccli = 0 then
   begin
     iccli := 0;
     lblncli.Caption := 'Consumidor';
   end;
//endi

frmpesqclicecf := tfrmpesqclicecf.create(self);
frmpesqclicecf.showmodal;
frmpesqclicecf.free;
end;

procedure Tfrmfrenteecf.edipdescExit(Sender: TObject);
begin


try

  frmdados.Dbx_vencto.Active := false;
  frmdados.Cds_vencto.Active := false;
  frmdados.dbx_exec.Active := false;
  frmdados.dbx_exec.SQL.Clear;
  frmdados.dbx_exec.SQL.Add('delete from Vencimentos where (nco = '+inttostr(icontrole)+')');
  frmdados.dbx_exec.ExecSQL;
  frmdados.Dbx_vencto.Active := true;
  frmdados.Cds_vencto.Active := true;

  edipdesc.Text := AlinEdNumD(edipdesc);

  if trim(edipdesc.Text) <> trim(sPdescA) then
     begin
       edivaldesc.Text := Formatfloat('0.00',strToFLoat(tirapontos(edipDesc.text))/100*ftotGprodD);
       edivaldesc.Text := AlinEdNumD(edivaldesc);
       sValDescA := edivaldesc.Text;

       //editotpagar.Text := FormatFloat('0.00',(ftotGprodD-strToFLoat(tirapontos(edipDesc.text))/100*ftotGprodD));
       //editotpagar.Text := FormatFloat('0.00',((ftotGprodD-ftoteT-strToFLoat(tirapontos(edivalDesc.text)))/100*(ftotGprodD-ftoteT)));

       editotpagar.Text := FormatFloat('0.00',((ftotGprodD-strToFLoat(tirapontos(edipDesc.text))/100*ftotGprodD) - strtofloat(tirapontos(lbltote.Caption))));
       editotpagar.Text := AlinEdNumD(editotpagar);
       stotpagarA := editotpagar.Text;

       //lbltotal.Caption := formatfloat('###,###,##0.00',strToFLoat(tirapontos(editotpagar.Text))+strToFLoat(tirapontos(lblabsdesc.caption)));

       //lbltotpagar.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(editotpagar.Text))+strtofloat(tirapontos(lblabsdesc.Caption))-strtofloat(tirapontos(lbltote.Caption)));


       //lbltotpagar.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(editotpagar.Text))+strtofloat(tirapontos(lblabsdesc.Caption)));

       //lbltotalp.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(editotpagar.Text))+strtofloat(tirapontos(lblabsdesc.Caption)));


       sPdescA := edipdesc.Text;

     end;
  //endi


  if not bLimiteDesc then
     if strtofloat(tirapontos(edipdesc.Text)) > frmdados.cds_indice.FieldByName('limitedesc').asfloat then
        begin
          rchrodape.Lines.Clear;
          rchrodape.Lines.Add('Desconto não permitido!!!');
          //if (edipdesc.Enabled) and (pnlfechamento.Visible) then
          //   edipdesc.SetFocus;
          //endi
        end;
     //endi
  //endi

except
 edipDesc.Text := '0,00';
 edipDesc.Text := AlinEdNumD(edipDesc);
 exit;
end;



end;


function Tfrmfrenteecf.AlinEdNumD(texto:TEdit):string;
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




procedure Tfrmfrenteecf.edivaldescExit(Sender: TObject);


begin

 try

    frmdados.Dbx_vencto.Active := false;
    frmdados.Cds_vencto.Active := false;
    frmdados.dbx_exec.Active := false;
    frmdados.dbx_exec.SQL.Clear;
    frmdados.dbx_exec.SQL.Add('delete from Vencimentos where (nco = '+inttostr(icontrole)+')');
    frmdados.dbx_exec.ExecSQL;
    frmdados.Dbx_vencto.Active := true;
    frmdados.Cds_vencto.Active := true;

    edivaldesc.Text := AlinEdNumD(edivaldesc);

   //showmessage(trim(edivaldesc.Text));
   //showmessage(trim(sValDescA));

   if trim(edivaldesc.Text) <> trim(sValDescA) then
      begin


        edipDesc.Text := FormatFloat('0.00',       StrToFloat(tirapontos(edivalDesc.text))/ftotGprodD*100   );

        edipdesc.Text := AlinEdNumD(edipdesc);

        sPdescA := edipdesc.Text;

        //editotpagar.Text := FormatFloat('0.00',(ftotGprodD-strToFLoat(tirapontos(edipDesc.text))/100*ftotGprodD));
        //editotpagar.Text := FormatFloat('0.00',((ftotGprodD-ftoteT-strToFLoat(tirapontos(edivalDesc.text)))/100*(ftotGprodD-ftoteT)));
        //editotpagar.Text := FormatFloat('0.00',((ftotGprodD-strToFLoat(tirapontos(edipDesc.text))/100*ftotGprodD) - strtofloat(tirapontos(lbltote.Caption))));
        editotpagar.Text := FormatFloat('0.00',((ftotGprodD-  StrToFloat(tirapontos(edivalDesc.text))/ftotGprodD * 100 / 100  * ftotGprodD) - strtofloat(tirapontos(lbltote.Caption))));

        editotpagar.Text := AlinEdNumD(editotpagar);

        edivaldesc.Text := AlinEdNumD(edivaldesc);

        //lbltotal.Caption := formatfloat('###,###,##0.00',strToFLoat(tirapontos(editotpagar.Text))+strToFLoat(tirapontos(lblabsdesc.caption)));

        //lbltotpagar.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(editotpagar.Text))+strtofloat(tirapontos(lblabsdesc.Caption))-strtofloat(tirapontos(lbltote.Caption)));


        //lbltotpagar.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(editotpagar.Text))+strtofloat(tirapontos(lblabsdesc.Caption)));

        //lbltotalp.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(editotpagar.Text))+strtofloat(tirapontos(lblabsdesc.Caption)));


        sValdescA := ediValdesc.Text;
        sTotPagarA := editotpagar.Text;


      end;
   //endi


    if not bLimiteDesc then
       if strtofloat(tirapontos(edipdesc.Text)) > frmdados.cds_indice.FieldByName('limitedesc').asfloat then
          begin
            rchrodape.Lines.Clear;
            rchrodape.Lines.Add('Desconto não permitido!!!');
            if (edivaldesc.Enabled) and (pnlfechamento.Visible) then
               edivaldesc.SetFocus;
            //endi
          end;
       //endi
    //endi







 except
   edivalDesc.Text := '0,00';
   edivalDesc.Text := AlinEdNumD(edivalDesc);
   exit;

 end;

end;

procedure Tfrmfrenteecf.editotpagarExit(Sender: TObject);
begin

try

   editotpagar.Text := AlinEdNumD(editotpagar);

   if trim(editotpagar.Text) <> trim(sTotpagarA) then
      begin

        edivaldesc.Text := FormatFloat('###,##0.00',ftotGProdD-strtofloat(tirapontos(editotpagar.text)));
        edivaldesc.Text := AlinEdNumD(edivaldesc);
        sValdescA := edivaldesc.Text;

        //edipDesc.Text := FormatFloat('###,##0.00',StrToFloat(tirapontos(edivalDesc.text))*100/(ftotGProdD-ftoteT));
        edipDesc.Text := FormatFloat('###,##0.00',StrToFloat(tirapontos(edivalDesc.text))*100/(ftotGProdD));
        edipdesc.Text := AlinEdNumD(edipdesc);
        sPdescA := edipdesc.Text;

        //lbltotal.Caption := formatfloat('###,###,##0.00',strToFLoat(tirapontos(editotpagar.Text))+strToFLoat(tirapontos(lblabsdesc.caption)));

        //lbltotpagar.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(editotpagar.Text))+strtofloat(tirapontos(lblabsdesc.Caption))-strtofloat(tirapontos(lbltote.Caption)));

        //lbltotpagar.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(editotpagar.Text))+strtofloat(tirapontos(lblabsdesc.Caption)));

        //lbltotalp.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(editotpagar.Text))+strtofloat(tirapontos(lblabsdesc.Caption)));

        sTotpagarA := editotpagar.Text;

      end;
   //endi

   if not bLimiteDesc then
      if strtofloat(tirapontos(edipdesc.Text)) > frmdados.cds_indice.FieldByName('limitedesc').asfloat then
         begin
           rchrodape.Lines.Clear;
           rchrodape.Lines.Add('Desconto não permitido!!!');
           if (editotpagar.Enabled)  and (pnlfechamento.Visible) then
              editotpagar.SetFocus;
           //endi
         end;
      //endi
   //endi

except
  editotpagar.Text := '0,00';
  editotpagar.Text := AlinEdNumD(editotpagar);
end;




end;

procedure Tfrmfrenteecf.edidinExit(Sender: TObject);
begin
try

  frmdados.Dbx_vencto.Active := false;
  frmdados.Cds_vencto.Active := false;
  frmdados.dbx_exec.Active := false;
  frmdados.dbx_exec.SQL.Clear;
  frmdados.dbx_exec.SQL.Add('delete from Vencimentos where (nco = '+inttostr(icontrole)+')');
  frmdados.dbx_exec.ExecSQL;
  frmdados.Dbx_vencto.Active := true;
  frmdados.Cds_vencto.Active := true;

  ediDin.Text := AlinEdNumD(EdiDin);

  if strtofloat(tirapontos(edidin.Text)) <  strtofloat(tirapontos(lbltotpagar.Caption))  then
     begin

       if application.MessageBox('Deseja Parcelar Restante?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
          begin
            lblTroco.Caption  := FormatFloat('###,##0.00',0);
            edinparc.Text := frmdados.cds_indice.fieldbyname('parc').asString;
            if bFvb then
               spdfechamento.Enabled := true;
            //endi

            edinparc.Enabled := true;
            //dbgvencto.Enabled := true;

            if (edinparc.Enabled)  and (pnlfechamento.Visible) then
                edinparc.SetFocus;
            //endi
          end
       else
          begin
            edidin.SetFocus;
            exit;
          end;
       //endi

     end
  else
     begin

       if (iccli = 0) and (rgbtipoent.ItemIndex = 1) and (pnlfechamento.Visible)  then
          begin
            showmessage('Selecione Cliente para Entrega de Mercadoria');
            if edidin.Enabled then
               edidin.SetFocus;
            //endi
            exit;
          end;
       //endi



       //lbltroco.Caption := FormatFloat('###,##0.00',StrToFloat(tirapontos(edidin.Text)) - StrToFloat(tirapontos(lbltotpagar.Caption)));

       lbltroco.Caption := FormatFloat('###,##0.00',fdinheiro - StrToFloat(tirapontos(lbltotpagar.Caption)));

       spdfechamento.Enabled := true;
       edinParc.Text := '0';
       //edinparc.Enabled := false;
       //dbgvencto.Enabled := false;

     end;
  //endi

except
  sMsg := 'Erro !!!';
end;
end;

procedure Tfrmfrenteecf.edipdescKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmfrenteecf.editotpagarKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmfrenteecf.edidinKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmfrenteecf.edivaldescKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmfrenteecf.spdfechar236Click(Sender: TObject);
begin

if (sImpf = 'Nenhuma') or
   (sImpf = '')        or
   (strtofloat(tirapontos(lbltotpagar.Caption)) < 0)
then
   begin
     lbltitncopia.Visible := true;
     shpncopia.Visible := true;
     
     edincopias.Visible := true;
     itipoimpf := 0;
   end;
//endi

frmdados.cds_Tipo_Pgto.First;

//rgbtipoop.Enabled := true;
rgbtipoent.Enabled := true;
spdfechamento.Enabled := true;

if cbxnomefun.Focused then
   exit;
//endi
//apagaparc;

if bFvb then
   spdfechamento.Enabled := true;
//endi

rchrodape.Clear;
rchrodape.Lines.Add('<F5> - Desconto / <F11> - Fechar');

rchmensfecpgto.Lines.Clear;

//if bReimp then
//   begin
     //rgbtipoop.Enabled := false;
     //rgbtipoent.Enabled := false;
     //edipdesc.Enabled := false;
     //edivaldesc.Enabled := false;
     //edidin.Enabled := false;
     //editotpagar.Enabled := false;
     //dbgvencto.Enabled := false;
     //spdfechamento.Enabled := true;
     //edincopias.Enabled := true;
     //edipdesc.Text := formatfloat('',);

     //rgbtipoop.ItemIndex := itipoop;
     //rgbtipoent.ItemIndex := itipoent;
     //spdconsultaproduto.Enabled := false;

     //edipdesc.Text := formatfloat('###,###,##0.00',fpdesc);
     //edipdesc.Text := AlinEdNumD(edipdesc);

     //edivaldesc.Text := formatfloat('###,###,##0.00',fvaldesc);
     //edivaldesc.Text := AlinEdNumD(edivaldesc);

     //edidin.Text := formatfloat('###,###,##0.00',fdin);
     //edidin.Text := AlinEdNumD(edidin);

     //lbltroco.Caption := formatfloat('###,###,##0.00',ftroco);

     //lbldata.Caption := sDataf;

     //pnlfechamento.Visible := true;
     //if (edincopias.Enabled)  and (pnlfechamento.Visible) then
     //   edincopias.SetFocus;
     //endi

//   end
//else
//   begin


     with frmdados do
       begin

         dbx_exec.Active := false;
         dbx_exec.SQL.Clear;
         dbx_exec.SQL.Add('Delete from Vencimentos where (nco = '+inttostr(icontrole)+')');
         dbx_exec.ExecSQL;

         Cds_vencto.Active := false;
         Dbx_vencto.Active := false;
         Dbx_vencto.SQL.Clear;
         Dbx_vencto.SQL.Add('Select * from Vencimentos where (nco = ' +inttostr(icontrole)+')' );

         Dbx_vencto.Active := true;
         Cds_vencto.Active := true;

       end;
     //endi

     pnlfechamento.Visible := true;
     //rgbtipoop.Enabled := true;

     //if (edipdesc.Enabled)  and (pnlfechamento.Visible) then
     //   edipdesc.SetFocus;
     //endi


//   end;
//endi

//dbgvencto.SelectedIndex := 0;


edipdesc.Text := '0,00';
edipdesc.Text := AlinEdNumD(edipdesc);
sPDescA := '0,00';


edivaldesc.Text := '0,00';
edivaldesc.Text := AlinEdNumD(edivaldesc);
sValDescA := '0,00';


//edidin.Text := '0,00';
//edidin.Text := AlinEdNumD(edidin);

fdinheiro := 0;
ftotApurado := 0;

edivalor.Text := '0,00';
edivalor.Text := AlinEdNumD(edivalor);

lbltroco.Caption := '0,00';

totais;


edincopias.Text := frmdados.Cds_Indice.fieldbyname('ncopiasv').asString;
dbgprodutos.Enabled := false;
edidescricao.Enabled := false;
spdalterar232.Enabled := false;
spdalteracupom.Enabled := false;

pnlparcelar.Visible := false;


spdexcluir234.Enabled := false;
spdfechar236.Enabled := false;
spdconsultaproduto.Enabled := false;
pnlfechamento.Visible := true;

ckbentrada.Enabled := false;

ckbentrada.Checked := false;

lbloperacao.Caption := '';

//edinparc.Enabled := false;
//dbgvencto.Enabled :=false;
edipdesc.Enabled := false;
edivaldesc.Enabled := false;
//edidin.Enabled := false;
editotpagar.Enabled := false;
edincopias.Enabled := false;

spddesconto.Enabled := true;

spdparcelar.Enabled := true;

pnldesconto.Visible := false;

dbgpgto.SetFocus;

limparrgb;

if strtofloat(tirapontos(lbltotpagar.caption)) < 0 then
   begin
     edivalor.Text := trim(lbltotpagar.caption);
     edivalor.Text := AlinEdNumD(edivalor);
     edivalor.Enabled := false;
   end
else
   begin
     edivalor.Text := '0,00';
     edivalor.Text := AlinEdNumD(edivalor);
     edivalor.Enabled := true;
   end;
//endi


iVzs := 0;


end;

procedure Tfrmfrenteecf.spdcancfecClick(Sender: TObject);
begin
try

    if frmdados.cds_Vendab.RecordCount > 0 then
       begin
         spdorc.Enabled     := false;
         //spdcaixaap.Enabled := false;
         cbxnomefun.Enabled := false;
         //spdsangria.Enabled := false;
         //spdtroco.Enabled   := false;
         spdcomanda.Enabled := false;
         spdfimp.Enabled := false;

       end;
    //endi


    dbgprodutos.Enabled := true;
    edidescricao.Enabled := true;
    //cbxnomefun.Enabled := true;
    //spdalterar232.Enabled := true;
    //spdexcluir234.Enabled := true;
    spdfechar236.Enabled := true;
    spdconsultacliente239.Enabled := true;
    //spdcaixaap.Enabled := true;
    //cbxnomefun.Enabled := true;
    //if not bReimp then
    spdconsultaproduto.Enabled := true;
    //endi
    spdcancelar2310.Enabled := true;


    //spdorc.Enabled := true;
    pnlfechamento.Visible := false;
    pnlinfop.Visible := false;



    //bApresEstq := false;
    //lbltitestq.Visible := false;
    //lbltotestq.Visible := false;
    //if not bReimp then
    //   begin
    //spdorc.Enabled := true;
    spdAlterar232.Enabled := true;
    spdalteracupom.Enabled := true;
    spdexcluir234.Enabled := true;
    ckbentrada.Enabled := true;

    ckbentrada.Checked := false;

    lbloperacao.Caption := '';


    //   end;
    //endi
    edipdesc.Enabled := false;
    edivaldesc.Enabled := false;

    ediporcjuros.Enabled := false;
    ediporcjuros.Text := '0,00';
    ediporcjuros.Text := AlinEdNumD(ediporcjuros);

    //edidin.Enabled := false;
    editotpagar.Enabled := false;
    edincopias.Enabled := false;

    mensatalho;

    if edidescricao.Enabled then
       edidescricao.SetFocus;
    //endi
except
   pnlfechamento.Visible := true;
   sMsg := 'Erro!!!';
end;

end;

procedure Tfrmfrenteecf.edincopiasKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure Tfrmfrenteecf.edinparcKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmfrenteecf.dbgvenctoEnter(Sender: TObject);
begin

tabela := 'Vencimentos';
end;

procedure Tfrmfrenteecf.dbgvenctoExit(Sender: TObject);
begin
if frmdados.Cds_vencto.State in [dsinsert, dsedit] then
   frmdados.Cds_vencto.Post;
//endi
tabela := 'Vendab';
spdfechamento.Enabled := true;
end;

procedure Tfrmfrenteecf.edinparcExit(Sender: TObject);
begin

if strtoint(edinparc.Text)>frmdados.Cds_Indice.FieldByName('maxparc').asInteger then
   begin
     if (edinparc.Enabled)  and (pnlfechamento.Visible) then
        edinparc.SetFocus;
     //endi
     exit;
   end;
//endif
if (iccli = 0) and (pnlfechamento.Visible) and (frmdados.Cds_Indice.FieldByName('obrcliparc').AsInteger = 0) then
   begin
     showmessage('Para Parcelar, Por Favor Escolha Cliente');
     exit;
   end;
//endi
end;

procedure tfrmfrenteecf.criaparc;
{var x, iaprazo:integer;
    fvlrparc:currency;
    sdata:string;  }

begin

  {

  tabela := 'Vencimentos';

  sdata := datetostr(date);

  try

    //apagaparc;

    frmdados.Cds_vencto.Active := false;
    frmdados.Dbx_vencto.Active := false;
    frmdados.dbx_exec.Active := false;
    frmdados.dbx_exec.SQL.Clear;
    frmdados.dbx_exec.SQL.Add('delete from Vencimentos where (nco = '+inttostr(icontrole)+')');
    frmdados.dbx_exec.ExecSQL;
    frmdados.Dbx_vencto.Active := true;
    frmdados.Cds_vencto.Active := true;

    //fvlrparc := (strtofloat(tirapontos(lbltotpagar.caption)) - strtofloat(tirapontos(edidin.Text))) / strtoint(edinparc.Text);
    fvlrparc := (strtofloat(tirapontos(lbltotpagar.caption)) - fdinheiro)  / strtoint(edinparc.Text);

    for x := 1 to strtoint(edinparc.Text) do
      begin
        frmdados.Cds_vencto.Append;
        if frmdados.Cds_indice.FieldByName('prazo').asInteger > 0 then
           begin
             frmdados.Cds_vencto.FieldByName('prazo').asInteger := frmdados.Cds_indice.FieldByName('prazo').asInteger + iaprazo;
             frmdados.Cds_vencto.FieldByName('dtv').asString := calc_data(sdata,frmdados.Cds_vencto.FieldByName('prazo').asInteger);
           end;
        //endi
        frmdados.Cds_vencto.FieldByName('valorreal').asfloat := fvlrparc;
        frmdados.Cds_vencto.FieldByName('c_tipo_pgto').asInteger := frmdados.Cds_Indice.fieldbyname('parcpadrao').asInteger;
        frmdados.Cds_vencto.FieldByName('nco').asInteger := icontrole;
        frmdados.Cds_vencto.FieldByName('csit').asInteger := 1;
        frmdados.Cds_vencto.FieldByName('parc').asstring := formatfloat('00',x)+'/'+ formatfloat('00', strtoint( edinparc.text ) );
        frmdados.Cds_vencto.FieldByName('originado').asString := '1'+inttostr(rgbtipoop.ItemIndex);

        if iccli > 0 then
           frmdados.Cds_vencto.FieldByName('ccli').asInteger := iccli;
        //endi


        iaprazo :=  frmdados.Cds_vencto.FieldByName('prazo').asInteger;


        frmdados.Cds_vencto.Post;
      end;
    //endf
    frmdados.Cds_vencto.First;
    tabela := 'Vendab';

    except

       tabela := 'Vendab';
       sMsg := 'Erro !!!';
    end;

  }


end;

procedure tfrmfrenteecf.apagaparc;
begin
  with frmdados do
    begin
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('delete from Vencimentos where (nco = '+inttostr(icontrole)+')');
      dbx_exec.ExecSQL;
      cds_vencto.Refresh;

      dbx_exec.Active := false;
    end;
  //endth
end;


procedure tfrmfrenteecf.apafec;
begin
  edinParc.Text := '0';
  //edinparc.Enabled := false;
  //dbgvencto.Enabled := false;
  if bFvb then
     spdfechamento.Enabled := true;
  //endi
  //apagaparc;

  //frmdados.Dbx_vencto.Active := false;
  //frmdados.Cds_vencto.Active := false;
  //frmdados.dbx_exec.Active := false;
  //frmdados.dbx_exec.SQL.Clear;
  //frmdados.dbx_exec.SQL.Add('delete from Vencimentos where (nco = '+inttostr(icontrole)+')');
  //frmdados.dbx_exec.ExecSQL;
  //frmdados.Dbx_vencto.Active := true;
  //frmdados.Cds_vencto.Active := true;


end;


procedure Tfrmfrenteecf.edipdescEnter(Sender: TObject);
begin
apafec;
//edidin.Text := '0,00';
//edidin.Text := AlinEdNumD(edidin);

//fdinheiro := 0;

end;

procedure Tfrmfrenteecf.edivaldescEnter(Sender: TObject);
begin
apafec;
//edidin.Text := '0,00';
//edidin.Text := AlinEdNumD(edidin);

//fdinheiro := 0;

end;

procedure Tfrmfrenteecf.edidinEnter(Sender: TObject);
begin
apafec;
end;

procedure Tfrmfrenteecf.rgbtipoopClick(Sender: TObject);
begin
ajustargbtipoop;
end;

procedure Tfrmfrenteecf.rchrodapeEnter(Sender: TObject);
begin
SelectNext(ActiveControl,True,True);

end;

procedure Tfrmfrenteecf.rgbtipoentClick(Sender: TObject);
begin
ajustargbttipoent;
end;


procedure Tfrmfrenteecf.limparrgb;
begin

cvalorpago.Clear;


rgbtipoop.ItemIndex := -1;
rgbtipoent.ItemIndex := -1;

rgbtipoop.ItemIndex := 1;



bdesc := false;
bparc := false;

with FrmDados do
  begin
    Cds_Indice.Active := false;
    Dbx_Indice.Active := false;
    Dbx_Indice.SQL.Clear;
    Dbx_Indice.SQL.Add('Select * from Indice');
    Dbx_Indice.Active := true;
    Cds_Indice.Active := true;

    //if frmdados.Cds_Indice.FieldByName('ehorc').asInteger  = 1 then
    //   begin
    //     rgbtipoop.ItemIndex := 1;
    //   end
    //else
    //   begin
    //     if frmdados.Cds_Indice.FieldByName('ehorc').asInteger  = 2 then
    //        begin
    //          rgbtipoop.ItemIndex := 0;
    //        end
         //endi
    //   end;
    //endi

    if frmdados.Cds_Indice.FieldByName('ehentrega').asInteger  = 1 then
       begin
         rgbtipoent.ItemIndex := 1;
       end
    else
       begin
         if frmdados.Cds_Indice.FieldByName('ehentrega').asInteger  = 2 then
            begin
              rgbtipoent.ItemIndex := 0;
            end
         //endi
       end;
    //endi

    {

    edipdesc.Text := '0,00';
    edipdesc.Text := AlinEdNumD(edipdesc);

    edivaldesc.Text := '0,00';
    edivaldesc.Text := AlinEdNumD(edivaldesc);

    edidin.Text := '0,00';
    edidin.Text := AlinEdNumD(edidin);

    lbltroco.Caption := '0,00';

    totais;

    }

    //if frmdados.Cds_Indice.FieldByName('ehentrega').asInteger  = 1 then
    //   begin
    //     rgbtipoent.ItemIndex := 1;
    //   end;
    //endi
  end;
//endth
end;


procedure tfrmfrenteecf.ajustargbtipoop;
begin
//if bReimp then
//   exit;
//endi
if (rgbtipoop.ItemIndex = 0) then
   begin
     if bPgtoOrc then
        begin
          edipdesc.Enabled := true;
          edivaldesc.Enabled := true;

          ediporcjuros.Enabled := true;

          //edidin.Enabled := true;
          editotpagar.Enabled := true;
          //if (edipdesc.Enabled)  and (pnlfechamento.Visible) then
          //   edipdesc.SetFocus;
          //endi
        end
     else
        begin
          spdfechamento.Enabled := true;
        end;
     //endi
     if bnumerocopiacx then
        edincopias.Enabled := true;

   end
else
   begin
     if (rgbtipoent.ItemIndex <> -1) then
        begin
          if bFechaVendab then
             begin
               edipdesc.Enabled := true;
               edivaldesc.Enabled := true;
               ediporcjuros.Enabled := true;
               //edidin.Enabled := true;
               editotpagar.Enabled := true;
               if bnumerocopiacx then
                  edincopias.Enabled := true;
               //if (edipdesc.Enabled)  and (pnlfechamento.Visible) then
               //   edipdesc.SetFocus;
               //endi
             end
          //endi
        end
     else
        begin
          edipdesc.Enabled := false;
          edivaldesc.Enabled := false;
          ediporcjuros.Enabled := false;

          //edidin.Enabled := false;
          editotpagar.Enabled := false;
          edincopias.Enabled := false;
          if bFvb then
             spdfechamento.Enabled := true;
          //endi
        end;
     //endi
   end;
//endi


end;


procedure tfrmfrenteecf.ajustargbttipoent;
begin
//if bReimp then
//   exit;
//endi

if rgbtipoop.ItemIndex = 1 then
   begin
     if (bFechaVendab) then
        begin
          edipdesc.Enabled := true;
          edivaldesc.Enabled := true;
          ediporcjuros.Enabled := true;

          //edidin.Enabled := true;
          editotpagar.Enabled := true;
        end;
     //endi
     if bnumerocopiacx then
        edincopias.Enabled := true;

     spdfechamento.Enabled := true;

   end;
//endi
//if (edipdesc.Enabled)  and (pnlfechamento.Visible) then
//   edipdesc.SetFocus;
//endi
end;


procedure Tfrmfrenteecf.cbxnomefunExit(Sender: TObject);
begin

if (not bVSAtend) and (cbxnomefun.Text = '') then
  begin
    showmessage('Não é Permitida Venda Sem Escolha do Atendente');
    if cbxnomefun.Enabled then
       cbxnomefun.SetFocus;
    //endi
    exit;
  end;
//endi



//if iretornogav = 0 then
//   showmessage('Falha na gaveta');
//endi

if (retornoimp > 0) then
   begin

     iretornogav := Le_Status_Gaveta;

     if (iretornogav = 2) then
        begin
          //showmessage('Gaveta Aberta, não será possível iniciar a venda');
          //if cbxnomefun.Enabled then
          //   cbxnomefun.SetFocus;
          //endi
          //exit;
        end;
     //endi


   end;
//endi
//if iretornogav = 1 then
//   showmessage('Gaveta Fechada');
//endi

icfun := frmdados.Cds_Funcionarios.fieldbyname('codigo').AsInteger;
fpcomf := frmdados.Cds_Funcionarios.fieldbyname('pcom').Asfloat;
sVendedor := copy(frmdados.Cds_Funcionarios.fieldbyname('nome').AsString,1,10);

tabela := 'Vendab';
spdconsultacliente239.Enabled := true;
//spdcaixaap.Enabled := true;
//cbxnomefun.Enabled := true;
spdcomanda.Enabled := true;
spdfimp.Enabled := true;

//spdsangria.Enabled := true;
//spdtroco.Enabled := true;

spdconsultaproduto.Enabled := true;

ckbentrada.Enabled := true;

ckbentrada.Checked := false;

lbloperacao.Caption := '';

spdcancelar2310.Enabled := true;

spdorc.Enabled := true;
//spdcaixaap.Enabled := true;
bApresEstq := false;
lbltitestq.Visible := false;
lbltotestq.Visible := false;

frmdados.Dbx_Vendab.Active := true;
frmdados.Cds_Vendab.Active := true;


if frmdados.cds_vendab.RecordCount > 0 then
   begin


     spdalterar232.Enabled := true;
     spdalteracupom.Enabled := true;
     spdexcluir234.Enabled := true;
     spdfechar236.Enabled := true;

   end;
//endi

{
if  ( not frmfrenteecf.bcaixaerro ) and (lbldatamov.Caption <> datetostr( date )) then
   begin
     application.MessageBox('Divergência entre data atual e do sistema, sistema não poderá prosseguir!','atenção',mb_ok);
     if cbxnomefun.Enabled then
        cbxnomefun.SetFocus;
     //endi
     exit;
   end;
//endi

}

rchrodape.Clear;
rchrodape.Lines.Add('Informe o Código ou Descrição');
rchrodape.Lines.Add('<F2> - Alternar / <F5> - Consulta / <F11> - Fechar');





end;

procedure Tfrmfrenteecf.cbxnomefunEnter(Sender: TObject);
begin
tabela := 'MovReg';
icfun := 0;
fpcomf := 0;
svendedor := '';
spdconsultacliente239.Enabled := false;
//spdcaixaap.Enabled := false;
//cbxnomefun.Enabled := false;
spdcomanda.Enabled := false;
spdfimp.Enabled := false;

//spdsangria.Enabled := false;
//spdtroco.Enabled := false;

spdconsultaproduto.Enabled := false;

spdalterar232.Enabled := false;
spdalteracupom.Enabled := false;

spdexcluir234.Enabled := false;
spdfechar236.Enabled := false;
ckbentrada.Enabled := false;

ckbentrada.Checked := false;

lbloperacao.Caption := '';

spdcancelar2310.Enabled := false;

spdorc.Enabled := false;
//spdcaixaap.Enabled := false;

bApresEstq := false;
lbltitestq.Visible := false;
lbltotestq.Visible := false;

rchrodape.Clear;
rchrodape.Lines.Add('Selecione Nome do Vendedor');
rchrodape.Lines.Add('Utilize Seta Para Baixo e Pressione ENTER');

frmdados.Dbx_Vendab.Active := false;
frmdados.Cds_Vendab.Active := false;


end;

procedure Tfrmfrenteecf.vestoqNv;
var
  fprojecao:real;

begin
    with frmdados do
      begin
        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        dbx_exec.SQL.Add('Select sum(qtde) as tqtde from vendab where (cpro = '+inttostr(icpro)+') and ( EouS = '+QuotedStr('S')+') and controle = '+inttostr(iControle));
        dbx_exec.Active := true;
        fprojecao := fQtde+dbx_exec.fieldbyname('tqtde').asfloat;
        dbx_exec.Active := false;
      end;
    //endi
    if fprojecao > fQtdeEstq then
       begin
         sActDesc := 'T';
         pnlnpro.Caption := sDescricao;
         pnlnpro.Visible := true;
         bMostrar := false;
         sTipoCod := '';
         rchrodape.Lines.Clear;
         rchrodape.Lines.Add('Estq. Insuficiente, Contate o Gerente!!! Qtde Atual: '+Formatfloat('###,###,##0.000',fQtdeEstq));
         fQtdeEstq := 0;
         icpro := 0;
         icuni := 0;
       end;
    //endi
end;

procedure Tfrmfrenteecf.vestoqV;
var
  fprojecao:real;

begin
    with frmdados do
      begin
        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        dbx_exec.SQL.Add('Select sum(qtde) as tqtde from vendab where (cpro = '+inttostr(icpro)+') and ( EouS = '+QuotedStr('S')+') and controle = '+inttostr(iControle));
        dbx_exec.Active := true;
        fprojecao := fQtde+dbx_exec.fieldbyname('tqtde').asfloat;
        dbx_exec.Active := false;
      end;
    //endi
    if fprojecao > fQtdeEstq then
       begin
         //gera relatorio venda com estoque insuficiente
         //com programação da entrega
       end;
    //endi
end;


procedure Tfrmfrenteecf.spdorcClick(Sender: TObject);
begin


bReimp := false;
if iImp = 0 then
   begin
     iImp := 1;
     lbltipo.Caption  := 'N.o Orçamento';
   end
else
   begin
     if iImp = 1 then
        begin
          iImp := 2;
          lbltipo.Caption  := 'N.o Pedido';
          bReimp := true;
        end
     else
        begin
          iImp := 0;
          lbltipo.caption := 'Descrição';
        end
     //endi
   end;
//endi
if edidescricao.Enabled then
   edidescricao.SetFocus;
//endi

//showmessage(inttostr(iImp));

//if lbltipo.caption = 'Descrição' then
//   lbltipo.Caption  := 'Número do Orçamento'
//else
//   lbltipo.caption := 'Descrição';
//endi
end;

procedure tfrmfrenteecf.buscaorcamento;
begin


  with frmdados do
    begin
      if cds_vendab.RecordCount > 0 then
         begin
           Showmessage('Encerre o Orçamento Abaixo Antes de Chamar Outro');
           lbltipo.Caption := 'Descrição';
           iImp := 0;
           exit;
         end;
      //endi
      dbx_sVenda.Active := false;
      dbx_sVenda.SQL.Clear;
      dbx_sVenda.SQL.Add('Select * from sVenda Where NumOrc = '+edidescricao.Text);
      dbx_sVenda.Active := true;
      if dbx_sVenda.RecordCount > 0 then
         begin

           if application.MessageBox('Deseja Rever Orçamento?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
              begin


                //spdorc.Enabled := false;
                bAtualiza := true;

                pnlnpro.Visible :=false;
                edidescricao.Visible := false;

                if dbx_sVenda.FieldByName('ccli').asInteger > 0 then
                   begin
                     dbx_Exec.Active := false;
                     dbx_Exec.SQL.Clear;
                     dbx_Exec.SQL.Add('Select * from clientes where codigo = '+ inttostr( dbx_sVenda.FieldByName('ccli').asInteger ));
                     dbx_Exec.Active := true;
                     if dbx_exec.RecordCount > 0 then
                        begin
                          iccli := dbx_exec.fieldbyname('codigo').AsInteger;
                          lblncli.Caption := dbx_exec.fieldbyname('nome').asString;
                        end;
                     //end
                   end;
                //endi

                cds_Exec.Active := false;
                dbx_Exec.Active := false;
                dbx_Exec.SQL.Clear;
                dbx_Exec.SQL.Add('Select * from vendab where controle = '+ inttostr( dbx_sVenda.fieldbyname('nco').asInteger ));
                dbx_Exec.Active := true;
                cds_Exec.Active := true;

                while not cds_Exec.Eof do
                  begin
                    edidescricao.Text := cds_Exec.fieldbyname('qtde').AsString+'*'+cds_Exec.fieldbyname('cpro').AsString;
                    divinfo;
                    spdsalvar233.Click;
                    cds_Exec.Next;
                  end;
                //endi
                limpargrav;
                //bprocura := false;

                cds_Vendab.Active := false;
                dbx_vendab.Active := false;
                dbx_Vendab.SQL.Clear;
                dbx_Vendab.SQL.Add('Select * from Vendab where controle = '+inttostr(icontrole));
                dbx_Vendab.Active := true;
                cds_Vendab.Active := true;

                pnlnpro.Visible :=true;
                edidescricao.Visible := true;
                batualiza := true;

              end;
           //endi

         end
      else
         begin
           ShowMessage('Não Foi Possível Encontrar Número do Orçamento Solicitado');
         end;
      //endi


     lbltipo.Caption := 'Descrição';
     iImp := 0;

     if edidescricao.Enabled then
        edidescricao.SetFocus;
     //endi
     dbx_exec.Active := false;

    end;
  //endth


end;


procedure tfrmfrenteecf.buscapedido;
var
  inped:integer;

begin

  with frmdados do
    begin
      if cds_vendab.RecordCount > 0 then
         begin
           Showmessage('Não é Possível Rever Pedido, Encerre o Orçamento Abaixo Antes de Chamar Outro');
           lbltipo.Caption := 'Descrição';
           iImp := 0;
           exit;
         end;
      //endi
      dbx_sVenda.Active := false;
      dbx_sVenda.SQL.Clear;
      dbx_sVenda.SQL.Add('Select * from sVenda Where NumPed = '+edidescricao.Text);
      dbx_sVenda.Active := true;
      if dbx_sVenda.RecordCount > 0 then
         begin

           if application.MessageBox('Deseja Rever Pedido?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
              begin

                batualiza := true;
                //spdorc.Enabled := false;
                //spdcaixaap.Enabled := false;
                //cbxnomefun.Enabled := false;

                //spdsangria.Enabled := false;
                //spdtroco.Enabled := false;

                //spdalterar232.Enabled := false;
                //spdexcluir234.Enabled := false;
                //ckbentrada.Enabled := false;
                //spdconsultaproduto.Enabled := false;

                //pnlnpro.Visible :=false;
                //edidescricao.Visible := false;

                itipoop := dbx_svenda.fieldbyname('tipoop').asInteger;
                itipoent := dbx_svenda.fieldbyname('tipoent').asInteger;
                fpdesc := dbx_svenda.fieldbyname('pdesc').asfloat;
                fvaldesc := dbx_svenda.fieldbyname('valdesc').asfloat;
                fdin := dbx_svenda.fieldbyname('din').asfloat;
                ftotpagar := dbx_svenda.fieldbyname('totpagar').asfloat;
                ftroco := dbx_svenda.fieldbyname('troco').asfloat;
                ftotgpagar := dbx_svenda.fieldbyname('totgpagar').asfloat;
                fabsdesc := dbx_svenda.fieldbyname('absdesc').asfloat;
                ftotal := dbx_svenda.fieldbyname('total').asInteger;
                fnparc:= dbx_svenda.fieldbyname('parc').asInteger;
                sDataF := dbx_svenda.fieldbyname('data').asString;
                inped := dbx_svenda.fieldbyname('numped').asInteger;

                if dbx_sVenda.FieldByName('ccli').asInteger > 0 then
                   begin
                     dbx_Exec.Active := false;
                     dbx_Exec.SQL.Clear;
                     dbx_Exec.SQL.Add('Select * from clientes where codigo = '+ inttostr( dbx_sVenda.FieldByName('ccli').asInteger ));
                     dbx_Exec.Active := true;
                     if dbx_exec.RecordCount > 0 then
                        begin
                          iccli := dbx_exec.fieldbyname('codigo').AsInteger;
                          lblncli.Caption := dbx_exec.fieldbyname('nome').asString;
                        end;
                     //end
                   end;
                //endi

                cds_Exec.Active := false;
                dbx_Exec.Active := false;
                dbx_Exec.SQL.Clear;
                dbx_Exec.SQL.Add('Select * from vendab where controle = '+ inttostr( dbx_sVenda.fieldbyname('nco').asInteger ));
                dbx_Exec.Active := true;
                cds_Exec.Active := true;


                while not cds_Exec.Eof do
                  begin
                    edidescricao.Text := cds_Exec.fieldbyname('qtde').AsString+'*'+cds_Exec.fieldbyname('cpro').AsString;
                    divinfo;
                    spdsalvar233.Click;
                    cds_Exec.Next;
                  end;
                //endi
                limpargrav;
                //bprocura := false;

                cds_Vendab.active := false;
                dbx_vendab.Active := false;
                dbx_Vendab.SQL.Clear;
                dbx_Vendab.SQL.Add('Select * from Vendab where controle = '+inttostr(icontrole));
                dbx_Vendab.Active := true;
                cds_Vendab.active := true;

                pnlnpro.Visible :=true;
                edidescricao.Visible := true;
                batualiza := true;

              end;
           //endi

         end
      else
         begin
           ShowMessage('Não Foi Possível Encontrar Número do Pedido Solicitado');
         end;
      //endi


     lbltipo.Caption := 'Descrição';
     iImp := 0;

     if edidescricao.Enabled then
        edidescricao.SetFocus;
     //endi
     dbx_exec.Active := false;
    end;
  //endth


end;

procedure Tfrmfrenteecf.spdcancelar2310Click(Sender: TObject);
begin
  cancelapedido;
end;


procedure tfrmfrenteecf.novavenda;
begin
dbgprodutos.Enabled := true;
edidescricao.Enabled := true;
cbxnomefun.Enabled := true;


spdalterar232.Enabled := true;
spdalteracupom.Enabled := true;

spdexcluir234.Enabled := true;
spdfechar236.Enabled := true;
spdconsultacliente239.Enabled := true;
//spdcaixaap.Enabled := true;

spdcomanda.Enabled := true;
spdfimp.Enabled := true;

//spdsangria.Enabled := true;
//spdtroco.Enabled := true;



//cbxnomefun.Enabled := true;
spdconsultaproduto.Enabled := true;
spdcancelar2310.Enabled := true;


spdorc.Enabled := true;
//spdcaixaap.Enabled := true;

//spdcomanda.Enabled := true;

//spdsangria.Enabled := true;
//spdtroco.Enabled := true;

bApresEstq := false;
lbltitestq.Visible := false;
lbltotestq.Visible := false;


with frmdados do
  begin
    dbx_movreg.Active := false;
    dbx_movreg.SQL.Clear;
    dbx_movreg.SQL.Add('delete from movreg where (hdnumber = '+quotedstr(sNumSerieHD)+')');
    dbx_movreg.ExecSQL;
  end;
//endi

limpar;

end;

procedure Tfrmfrenteecf.dbgvenctoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if (key = vk_f2) and (dbgvencto.Focused)then
//   begin
//     frmdados.Cds_tipo_pgto.Locate('1','codigo',[])
//   end;
//endi

end;

procedure Tfrmfrenteecf.dbgvenctoColEnter(Sender: TObject);
begin
  //sColuna := dbgvencto.SelectedField.FieldName;

end;

procedure Tfrmfrenteecf.spdAlterar232Click(Sender: TObject);
begin
  alteraritem;

end;

procedure Tfrmfrenteecf.dbgpgtoColEnter(Sender: TObject);
begin
sColuna := dbgpgto.SelectedField.FieldName;
end;

procedure Tfrmfrenteecf.dbgpgtoEnter(Sender: TObject);
begin
tabela := 'tipo_pgto';
//shape3.Brush.Color := clred;

end;

procedure Tfrmfrenteecf.dbgpgtoExit(Sender: TObject);
begin
tabela := 'Vendab';
end;

procedure Tfrmfrenteecf.dbgpgtoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     spdfechamento.Enabled := true;
   end;
//endif

if ( key in['0'..'9',#8] ) then
   if not frmdados.cds_Tipo_Pgto.Locate('codigo',key,[]) then
      begin
        showmessage('Código não encontrado');
      end
   else
      begin
        key := #0;
        SelectNext(ActiveControl,True,True);
        spdfechamento.Enabled := true;
      end;
   //endi
//endi
end;

procedure Tfrmfrenteecf.edivalorKeyPress(Sender: TObject; var Key: Char);
var
  fv:real;
begin

//showmessage(key);

if (key = #13) then
   begin
     fv :=  ftotapurado + strtofloat(tirapontos(edivalor.Text));

     if fv > strtofloat(  tirapontos( lbltotpagar.caption )  )  then
        begin
          lbltroco.Caption := formatfloat('###,###,##0.00', fv - strtofloat(tirapontos(lbltotpagar.Caption)));
        end;
     //endi

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

procedure Tfrmfrenteecf.edivalorExit(Sender: TObject);
begin
  try
    strtofloat(tirapontos(edivalor.text));
  except
    edivalor.Text := '0,00';
    edivalor.Text := AlinEdNumD(edivalor);
    exit;
  end;

  edivalor.Text := AlinEdNumD(edivalor);

end;


procedure tfrmfrenteecf.lancavenda;
var spdesc,
    svdesc:string;
begin

  with frmdados do
     begin


       if iccli > 0 then
          begin

            dbx_exec.Active := false;
            dbx_exec.SQL.Clear;
            dbx_exec.SQL.Add('Update vendab set ');
            dbx_exec.SQL.Add(' ccli = '+inttostr(iccli));
            dbx_exec.SQL.Add(' where controle = '+inttostr(icontrole));
            dbx_exec.ExecSQL;

            dbx_exec.Active := false;
            dbx_exec.SQL.Clear;
            dbx_exec.SQL.Add('Update Vencimentos set ' );
            dbx_exec.SQL.Add(' ccli = '+inttostr(iccli));
            dbx_exec.SQL.Add(' where nco = '+inttostr(icontrole));
            dbx_exec.ExecSQL;

            //dbx_exec.Active := false;
            //dbx_exec.SQL.Clear;
            //dbx_exec.SQL.Add('Update vendab set ccli = '+inttostr(iccli)+' where controle = '+inttostr(icontrole));
            //dbx_exec.ExecSQL;

            //dbx_exec.Active := false;
            //dbx_exec.SQL.Clear;
            //dbx_exec.SQL.Add('Update Vencimentos set ccli = '+inttostr(iccli)+' where nco = '+inttostr(icontrole));
            //dbx_exec.ExecSQL;

          end;
       //endi

       if rgbtipoop.ItemIndex = 1 then
          begin

            dbx_exec.Active := false;
            dbx_exec.SQL.Clear;
            dbx_exec.SQL.Add('Select codigo from sVenda where NumPed = '+inttostr(inped));
            dbx_exec.Active := true;

            iCodSvenda := dbx_exec.fieldbyname('codigo').asInteger;

            tabela := 'Comissao';

            cds_vendab.First;
            while not cds_vendab.Eof do
              begin
                cds_Comissao.Append;
                cds_Comissao.FieldByName('codsvenda').asInteger := iCodSvenda;
                cds_Comissao.FieldByName('cfun').asInteger := icfun;
                cds_Comissao.FieldByName('Descricao').asString := 'Venda Balcão';
                cds_Comissao.FieldByName('Servico').asString := cds_vendab.fieldbyname('npro').asString;
                cds_Comissao.FieldByName('DTE').asDatetime := date;
                cds_Comissao.FieldByName('DataFec').asDatetime := date;
                cds_comissao.FieldByName('valor').asfloat := cds_vendab.fieldbyname('Subtotal').asfloat;
                cds_comissao.FieldByName('pcomf').asfloat := fpcomf;
                cds_comissao.FieldByName('vcomf').asfloat := (fpcomf/100)*cds_vendab.fieldbyname('Subtotal').asfloat;
                cds_comissao.Post;

                cds_vendab.Next;

              end;
            //endi

            spdesc := tirapontos(edipdesc.Text);
            spdesc := Decimal_Is_Point(spdesc);


            dbx_exec.Active := false;
            dbx_exec.SQL.Clear;
            dbx_exec.SQL.Add('Update Vendab v set ');
            dbx_exec.SQL.Add('  v.codsvenda = '+inttostr(iCodSvenda));
            dbx_exec.SQL.Add(' ,v.ehvenda = '+quotedstr('T'));
            dbx_exec.SQL.Add(' ,pdesc = '+spdesc );
            dbx_exec.SQL.Add(' ,vdesc = '+spdesc+'* prve/100' );

            dbx_exec.SQL.add(' Where ( controle = '+inttostr(iControle)+')');
            dbx_exec.ExecSQL;

            dbx_exec.Active := false;
            dbx_exec.SQL.Clear;
            dbx_exec.SQL.Add('Update Vencimentos v set ');
            dbx_exec.SQL.Add('  v.ehvenda = '+quotedstr('T'));
            dbx_exec.SQL.Add(' ,v.c_svenda = '+inttostr(iCodSvenda));
            dbx_exec.sql.Add(' ,v.valor = v.valorreal');
            dbx_exec.SQL.add(' Where ( nco = '+inttostr(iControle)+')');
            dbx_exec.ExecSQL;

            //dbx_exec.Active := false;
            //dbx_exec.SQL.Clear;
            //dbx_exec.SQL.Add('Update Vendab set codsvenda = '+inttostr(iCodSvenda)+' Where ( controle = '+inttostr(iControle)+')');
            //dbx_exec.ExecSQL;

            //dbx_exec.Active := false;
            //dbx_exec.SQL.Clear;
            //dbx_exec.SQL.Add('Update Vendab set ehvenda = '+quotedstr('T')+' Where ( controle = '+inttostr(iControle)+')');
            //dbx_exec.ExecSQL;

            //dbx_exec.Active := false;
            //dbx_exec.SQL.Clear;
            //dbx_exec.SQL.Add('Update Vencimentos set c_svenda = '+inttostr(iCodSvenda)+' Where ( nco = '+inttostr(iControle)+')');
            //dbx_exec.ExecSQL;

            //dbx_exec.Active := false;
            //dbx_exec.SQL.Clear;
            //dbx_exec.SQL.Add('Update Vencimentos set ehvenda = '+quotedstr('T')+' Where ( nco = '+inttostr(iControle)+')');
            //dbx_exec.ExecSQL;

            //dbx_exec.Active := false;
            //dbx_exec.SQL.Clear;
            //dbx_exec.SQL.Add('Update Vencimentos set valor = valorreal where nco = '+ inttostr( iControle ));
            //dbx_exec.ExecSQL;

            tabela := 'sVenda';


          end;
       //endi

       dbx_exec.Active := false;

     end;
  //endth


end;


function tfrmfrenteecf.verificavenda:boolean;
var
  x:integer;
begin


  if bReimp then
     begin
       if (frmdados.Cds_Indice.FieldByName('tpimpv').asInteger = 3) and (strtoint(edincopias.text) > 0) then
          begin
            for x := 1 to strtoint(edincopias.text) do
               begin
                 imporc70b;
               end;
            //endi
          end
       else
          begin
            for x := 1 to strtoint(edincopias.text) do
              begin
                if frmdados.Cds_Indice.FieldByName('tpimpv').asInteger = 1 then
                   imporcrazao30x80;
                //endi
                if frmdados.Cds_Indice.FieldByName('tpimpv').asInteger = 2 then
                   imporcrazao30x140;
                //endi
              end
            //endi
          end;
       //endi
       novavenda;
       result := false;
       exit;
     end;
  //endi

  bBloqv := false;
  with frmdados do
    begin
      if (not bVSEstq) and (rgbtipoop.ItemIndex = 1) then
         begin
           cds_vendab.DisableControls;
           cds_vendab.First;
           while not cds_vendab.Eof do
             begin
               dbx_vProdutos.Active := false;
               dbx_vProdutos.SQL.Clear;
               dbx_vProdutos.SQL.Add('Select * from vProdutos Where Codigo = '+ inttostr( cds_vendab.fieldbyname('cpro').asInteger ));
               dbx_vProdutos.Active := true;
               if dbx_vProdutos.RecordCount > 0 then
                  begin
                    if (cds_vendab.FieldByName('qtde').asfloat > dbx_vProdutos.fieldbyname('qua').asfloat) and (cds_vendab.FieldByName('EouS').asString = 'S') then
                       begin
                         bBloqV := true;
                       end;
                    //endi
                  end;
               //endi
               cds_vendab.Next;
             end;
           //endw
         end;
      //endi
      cds_vendab.EnableControls;
    end;
  //endth
  if (bBloqV) then
     begin
       frmmensestqecf := tfrmmensestqecf.create(self);
       frmmensestqecf.showmodal;
       frmmensestqecf.free;
       result := false;
       exit;
     end;
  //endi

  if rgbtipoop.ItemIndex = -1 then
     begin
       showmessage('Selecione Tipo de Impressão');
       if (rgbtipoop.Enabled) and (pnlfechamento.Visible) then
          rgbtipoop.SetFocus;
       //endi
       result := false;
       exit;
     end
  else
     begin
       if (rgbtipoop.ItemIndex = 1) and (rgbtipoent.ItemIndex = -1) then
          begin
            showmessage('Selecione Tipo de Opção de Entrega');
            if (rgbtipoent.Enabled) and (pnlfechamento.Visible) then
               rgbtipoent.SetFocus;
            //endi
            result := false;
            exit;
          end
       //endi
     end;
  //endi

  if (iccli = 0) and (rgbtipoent.ItemIndex = 1) and (pnlfechamento.Visible)  then
     begin
       showmessage('Selecione Cliente para Entrega de Mercadoria');
       result := false;
       exit;
     end;
  //endi


  result := true;

end;

procedure Tfrmfrenteecf.spddescontoClick(Sender: TObject);
begin
if bdesc then
   exit;
//endi


pnldesconto.Visible := true;
edipdesc.SetFocus;
end;

procedure Tfrmfrenteecf.btnlancarDClick(Sender: TObject);
var
   stotal:string;

begin
  if not spddesconto.Enabled then
     begin
       showmessage('Desconto já foi lançado, se desejar altera-lo deve-se primeiro estorna-lo!');
       btncancelard.SetFocus;
       exit;
     end;
  //endi


  if  strtofloat( tirapontos(edipdesc.Text) ) = 0 then
      begin
        showmessage('Nenhum desconto especificado');
        edipdesc.SetFocus;
        exit;
      end;
  //endi


  scAcrescimoDesconto      := 'D';
  scTipoAcrescimoDesconto  := '$';
  scValorAcrescimoDesconto := edivaldesc.Text;

  pnldesconto.Visible := false;

  case itipoimpf of
       0:begin
           // Nenhuma
           if ( frmdados.Cds_Indice.FieldByName('impconcomitante').asString = 'T' ) then
              begin

              end;
           //endi


         end;


       1:begin
           //SWEDA


           iResposta := ECF_IniciaFechamentoCupom( pchar( scAcrescimoDesconto ),
                                                   pchar( scTipoAcrescimoDesconto ),
                                                   pchar( scValorAcrescimoDesconto ) );

           Analisa_resposta_sweda;
           Retorno_Impressora_Sweda;


         end;


       2:begin
           //BEMATECH

           iResposta := Bematech_FI_IniciaFechamentoCupom( pchar( scAcrescimoDesconto ),
                                                           pchar( scTipoAcrescimoDesconto ),
                                                           pchar( scValorAcrescimoDesconto ) );

           Analisa_resposta_bema;
           Retorno_Impressora_bema;



         end;

       3:begin
           //DATAREGIS




         end;



       else exit;

  end;

  lbltotpagar.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(editotpagar.Text))+strtofloat(tirapontos(lblabsdesc.Caption)));

  lbltotalp.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(editotpagar.Text))+strtofloat(tirapontos(lblabsdesc.Caption)));

  spddesconto.Enabled := false;

  editotal.Text := lbltotal.Caption;

  editotal.Text := AlinEdNumD(editotal);

  rchmensfecpgto.Lines.Add('                                  Valores');

  rchmensfecpgto.Lines.Add('Total                         '+ editotal.Text);

  rchmensfecpgto.Lines.Add('Desconto '+edipdesc.Text+'%   '+edivaldesc.Text );

  rchmensfecpgto.Lines.Add('Liquido                        '+editotpagar.text );

  rchmensfecpgto.Lines.Add('---------------------------------------------------');

  dbgpgto.SetFocus;

  bdesc := true;
end;

procedure tfrmfrenteecf.salvapedido;
var
  iid:integer;
begin


     with frmdados do
         begin

           cds_id.Active := true;
           iid := cds_id.fieldbyname('id').AsInteger;
           cds_id.Active  := false;


           dbx_exec.Active := false;
           dbx_exec.SQL.Clear;
           dbx_exec.SQL.Add('Insert into sVenda (');

           if rgbtipoop.ItemIndex = 0 then
              begin
                dbx_exec.SQL.Add('NumOrc,');
              end
           else
              begin
                dbx_exec.SQL.Add('NumPed,');
              end;
           //endi
           dbx_exec.SQL.Add('tipoop,');
           dbx_exec.SQL.Add('tipoent,');

           if iccli > 0 then
              dbx_exec.SQL.Add('ccli,');
           //endi
           if icfun > 0 then
              dbx_exec.SQL.Add('cfun,');
           //endi
           dbx_exec.SQL.Add('pdesc,');
           dbx_exec.SQL.Add('valdesc,');
           dbx_exec.SQL.Add('Din,');
           dbx_exec.SQL.Add('Data,');
           dbx_exec.SQL.Add('troco,');
           dbx_exec.SQL.Add('totgpagar,'); //lbltotpagar
           dbx_exec.SQL.Add('totpagar,');
           dbx_exec.SQL.Add('liquido,');

           dbx_exec.SQL.Add('absdesc,');
           dbx_exec.SQL.Add('total,');
           dbx_exec.SQL.Add('tote,');
           dbx_exec.SQL.Add('totitens,');
           dbx_exec.SQL.Add('totbruto,');
           dbx_exec.SQL.Add('custopecas,');
           dbx_exec.SQL.Add('custopecae,');
           dbx_exec.SQL.Add('totGprodD,');
           dbx_exec.SQL.Add('lancado,');
           dbx_exec.SQL.Add('datafec,');
           dbx_exec.SQL.Add('cusub,');
           dbx_exec.SQL.Add('idterminal,');
           dbx_exec.SQL.Add('nco');


           dbx_exec.SQL.Add(') values (');

           if rgbtipoop.ItemIndex = 0 then
              begin
                dbx_exec.SQL.Add(inttostr(iNorc)+',');
              end
           else
              begin
                dbx_exec.SQL.Add(inttostr(iNPed)+',');
              end;
           //endi
           dbx_exec.SQL.Add(inttostr(rgbtipoop.ItemIndex)+',');
           dbx_exec.SQL.Add(inttostr(rgbtipoent.ItemIndex)+',');

           if iccli > 0 then
              dbx_exec.SQL.Add(inttostr(iCcli)+',');
           //endi
           if icfun > 0 then
              dbx_exec.SQL.Add(inttostr(iCfun)+',');
           //endi
           dbx_exec.SQL.Add(decimal_is_point(pdesc)+',');
           dbx_exec.SQL.Add(decimal_is_point(svaldesc)+',');
           dbx_exec.SQL.Add(decimal_is_point(sdin)+',');
           dbx_exec.SQL.Add(quotedstr(bar_is_point(sdata))+',');
           dbx_exec.SQL.Add(decimal_is_point(stroco)+',');
           dbx_exec.SQL.Add(decimal_is_point(stotGpagar)+','); //lbltotpagar
           dbx_exec.SQL.Add(decimal_is_point(stotpago)+',');
           dbx_exec.SQL.Add(decimal_is_point(stotpago)+',');

           dbx_exec.SQL.Add(decimal_is_point(sabsdesc)+',');
           dbx_exec.SQL.Add(decimal_is_point(stotal)+',');
           dbx_exec.SQL.Add(decimal_is_point(stote)+',');
           dbx_exec.SQL.Add(inttostr(itotitens)+',');
           dbx_exec.SQL.Add(decimal_is_point(stotbruto)+',');
           dbx_exec.SQL.Add(decimal_is_point(sCustopecas)+',');
           dbx_exec.SQL.Add(decimal_is_point(sCustopecae)+',');
           dbx_exec.SQL.Add(decimal_is_point(stotGprodD)+',');
           dbx_exec.SQL.Add(Quotedstr('T')+',');

           sDataFec := datetostr(date);
           sDataFec := bar_is_point( sDataFec  );
           dbx_exec.SQL.Add(Quotedstr(sDataFec)+',');

           dbx_exec.SQL.Add(inttostr(icusu)+',');

           dbx_exec.SQL.Add(inttostr(iid)+',');

           dbx_exec.SQL.Add(inttostr(iControle));
           dbx_exec.SQL.Add(')');

           //showmessage(dbx_exec.SQL.Text);

           dbx_exec.ExecSQL;


         end;
     //endth






end;

procedure Tfrmfrenteecf.memostatusEnter(Sender: TObject);
begin
SelectNext(ActiveControl,True,True);
end;

procedure Tfrmfrenteecf.rchmensfecpgtoEnter(Sender: TObject);
begin
SelectNext(ActiveControl,True,True);
end;

procedure Tfrmfrenteecf.rchtipopgtoEnter(Sender: TObject);
begin
SelectNext(ActiveControl,True,True);
end;

procedure Tfrmfrenteecf.lancanu;
  var
    ResultSet : tCustomSqlDataSet;
    SqlStMt : String;
begin
  if rgbtipoop.ItemIndex = 0 then
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
       SqlStMt := 'Select gen_id(Gen_nPed,1) as Valor from RDB$DATABASE;';
       ResultSet := nil;
       frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
       if Assigned(ResultSet) then
          iNPed := ResultSet.fieldbyname('valor').asInteger;
       //endi
     end;
  //endi
end;

procedure Tfrmfrenteecf.lancapa;
begin

  tabela := 'Vencimentos';
  sdata := datetostr(date);

  frmdados.Cds_vencto.Append;

  iparc := iparc + 1;
  if frmdados.Cds_indice.FieldByName('prazo').asInteger > 0 then
     begin
       frmdados.Cds_vencto.FieldByName('prazo').asInteger := frmdados.Cds_indice.FieldByName('prazo').asInteger + iaprazo;
       frmdados.Cds_vencto.FieldByName('dtv').asString := calc_data(sdata,frmdados.Cds_vencto.FieldByName('prazo').asInteger);
     end;
  //endi


  frmdados.Cds_vencto.FieldByName('valorreal').asfloat := strtofloat(tirapontos(edivalor.Text));
  frmdados.Cds_vencto.FieldByName('c_tipo_pgto').asInteger := frmdados.Cds_tipo_pgto.fieldbyname('codigo').asInteger;

  frmdados.Cds_vencto.FieldByName('nco').asInteger := icontrole;
  frmdados.Cds_vencto.FieldByName('csit').asInteger := frmdados.Cds_Indice.fieldbyname('csitr').asInteger;
  if strtoint(edinparc.Text) > 0 then
     frmdados.Cds_vencto.FieldByName('parc').asstring := formatfloat('00',iparc)+'/'+ formatfloat('00', strtoint( edinparc.text ) )
  else
     frmdados.Cds_vencto.FieldByName('parc').asstring := formatfloat('00',iparc)+'/..';
  //endi
  frmdados.Cds_vencto.FieldByName('originado').asString := '1'+inttostr(rgbtipoop.ItemIndex);
  if iccli > 0 then
     frmdados.Cds_vencto.FieldByName('ccli').asInteger := iccli;
  //endi
  iaprazo :=  frmdados.Cds_vencto.FieldByName('prazo').asInteger;
  frmdados.Cds_vencto.Post;

  tabela := 'Vendab';

end;

function tfrmfrenteecf.vparc;
begin

with frmdados do
  begin


    if cds_Vencto.RecordCount > cds_Indice.FieldByName('MaxParc').asInteger then
       begin
         result := false;
       end
    else
       begin
         result := true;
       end;
    //endi

    //if cds_Vencto.RecordCount >= strtoint(frmfrenteecf.edinparc.text)then
    //   begin
    //     result := false;
    //   end
    //else
    //   begin
    //     result := true;
    //   end;
    //endi

  end;
//endth


end;

procedure Tfrmfrenteecf.spdfimpClick(Sender: TObject);
begin
frmfimpf := tfrmfimpf.create(self);
frmfimpf.showmodal;
frmfimpf.free;
end;

procedure Tfrmfrenteecf.spdpedaprazoClick(Sender: TObject);
begin
 frmpedprazo := tfrmpedprazo.Create(self);
 frmpedprazo.ShowModal;
 frmpedprazo.Free;

 //pnlinfop.Visible := true;


end;

procedure tfrmfrenteecf.finalizatef;
begin
//
end;

procedure tfrmfrenteecf.formapgtotef;
begin
//
end;




{



       if (not vparc) and (frmdados.cds_Tipo_Pgto.FieldByName('codigo').asInteger <> frmdados.cds_indice.fieldbyname('codavista').asInteger) then
          begin
            showmessage('Limite de parcela à prazo excedido');
            exit;
          end;
       //endi

       if ( frmdados.cds_Tipo_Pgto.FieldByName('eheletronico').asString = 'T' ) then
          begin
             cIdentificacao := Time;
             SetLength( cNumeroCupom, 6 );
             iResposta := ECF_NumeroCupom( cNumeroCupom );
             VerificaRetornoFuncaoImpressora_sweda( iResposta );

             // Se já existe mais de um pagamento, deve-se confirmar a transação anterior
             if ( fileexists( 'PENDENTE.TXT' ) ) then
                begin
                   AssignFile( cArquivo, 'PENDENTE.TXT' );
                   Reset( cArquivo );
                   ReadLn( cArquivo, cLinha );
                   CloseFile( cArquivo );
                   ConfirmaTransacao( strtoint( cLinha ) );
                   DeleteFile( 'PENDENTE.TXT' );
                end;
             //endi

             if ( RealizaTransacao( cIdentificacao, cNumeroCupom, FormatFloat( edivalor.Text, 0 ), iConta ) = 1 ) then
                begin
                   iResposta:=ECF_EfetuaFormaPagamento( Pchar( frmdados.cds_Tipo_Pgto.FieldByName('descricao').asString )  ,edivalor.Text);
                   if ( VerificaRetornoFuncaoImpressora_sweda( iResposta ) ) then
                      begin
                         cValorPago.Add( edivalor.Text );
                         iConta := iConta + 1;
                         iTransacao := iTransacao + 1;
                      end;
                   //endi
                end;
             //endif
          end
       else
          begin
            iResposta:=ECF_EfetuaFormaPagamento( Pchar( frmdados.cds_Tipo_Pgto.FieldByName('descricao').asString )  ,edivalor.Text);
            Analisa_resposta_sweda;
            Retorno_Impressora_Sweda;
          end;
       //endi

       if iResposta = 1 then
          begin

            ftotApurado := ftotApurado +  strtofloat(tirapontos(edivalor.Text));

            if frmdados.cds_Tipo_Pgto.FieldByName('codigo').asInteger = frmdados.cds_indice.fieldbyname('codavista').asInteger then
               begin
                 fdinheiro := fdinheiro + strtofloat(tirapontos(edivalor.Text));
               end
            else
               begin
                 if (frmdados.Cds_Indice.FieldByName('ecflanca').asString = 'T') then
                     begin
                       lancapa;
                     end;
                 //endi
               end;
            //endi

            fVlr := strtofloat(tirapontos(edivalor.Text));
            sVlr := alinNumD(14,fvlr);

            stit :=  copy(frmdados.cds_Tipo_Pgto.FieldByName('descricao').asString,1,20);

            for x := 1 to ( 20 - length( stit ) ) do
               sS1 := sS1 + ' ';
            //endfor

            rchmensfecpgto.Lines.Add(stit+sS1+sVlr );

            if ftotApurado < strtofloat(tirapontos(lbltotpagar.Caption)) then
               begin
                 fVlr :=  strtofloat(tirapontos(lbltotpagar.Caption)) - ftotApurado;
                 sVlr := alinNumD(14,fVlr);
                 rchmensfecpgto.Lines.Add('--> Falta(m) '+ sVlr );
               end
            else
               begin
                 rchmensfecpgto.Lines.Add('--> OK');
               end;
            //endi


          end;
       //endi

       iResposta:=ECF_TerminaFechamentoCupom(pchar(frmdados.Cds_Indice.FieldByName('txt').asString));
       VerificaRetornoFuncaoImpressora_sweda( iResposta );

       //Analisa_resposta_sweda;
       //Retorno_Impressora_Sweda;

       edivalor.Text := '0,00';
       edivalor.Text := AlinEdNumD(edivalor);

       if iResposta = 1 then
          begin

            iQuantasTransacoes := 1;
            if ( frmdados.cds_Tipo_Pgto.FieldByName('eheletronico').asString = 'T' ) then
                  begin
                     Gerencial := false;
                     while ( iQuantasTransacoes <= iTransacao ) do
                        begin
                           if not ( ImprimeTransacao_bema( frmdados.cds_Tipo_Pgto.FieldByName('descricao').asString, cValorPago.Strings[ iQuantasTransacoes - 1 ], cNumeroCupom, cIdentificacao, iQuantasTransacoes ) ) then
                              if ( Application.MessageBox( 'A impressora não responde!' + #13 +
                                                           'Deseja imprimir novamente?', 'Atenção',
                                                             MB_IconInformation + MB_YESNO ) = IDYES ) then
                                   begin
                                      iResposta := ECF_FechaComprovanteNaoFiscalVinculado();
                                      Gerencial := True;
                                      iQuantasTransacoes := 1;
                                   end
                              else
                                   begin
                                      iResposta := ECF_FechaComprovanteNaoFiscalVinculado();
                                      NaoConfirmaTransacao( iTransacao );
                                      break;
                                   end
                              //endi
                           else
                              iQuantasTransacoes := iQuantasTransacoes + 1;
                           //endi
                        end;
                     //endw
                     cValorPago.Clear;

                     if ( ( iQuantasTransacoes - 1 ) = iTransacao ) then
                          begin
                             ConfirmaTransacao( iTransacao );
                             DeleteFile( 'PENDENTE.TXT' );
                          end;
                     //endi

                     for iVezes := 1 to ( iQuantasTransacoes - 1 ) do
                          begin
                             if ( FileExists( 'C:\TEF_DIAL\RESP\INTPOS' + inttostr( iVezes ) + '.001' ) ) then
                                begin
                                   DeleteFile( 'C:\TEF_DIAL\RESP\INTPOS' + inttostr( iVezes ) + '.001' );
                                   DeleteFile( 'IMPRIME' + inttostr( iVezes ) + '.TXT' );
                                end;
                             //endi
                          end;
                     //endfor

                  end;
            //endi
            DeleteFile( 'TEF.TXT' );
            iConta     := 1;
            iTransacao := 1;

            sdin := floattostr(fdinheiro);

            if (frmdados.Cds_Indice.FieldByName('ecflanca').asString = 'T') then
                begin

                  //if not verificavenda then
                  //   exit;
                  //endi

                  lancanu;
                  salvapedido;
                  lancavenda;

                end;
            //endi

            novavenda;
          end
       else
          begin
            dbgpgto.SetFocus;
          end;
       //endi







}




procedure Tfrmfrenteecf.spdcomandaClick(Sender: TObject);
begin

bReimp := false;
iImp := 3;
lbltipo.Caption  := 'Comanda';
if edidescricao.Enabled then
   edidescricao.SetFocus;
//endi

end;

procedure tfrmfrenteecf.buscacomanda;
var
  icomanda : integer;
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
  sData, sHora, vardir:string;
  bImprimiuecf:boolean;

begin


   vardir := extractfilepath(application.ExeName);

   sImpF := lerarqtexto(vardir+'ImpF.inf');
   

  try

    if length(edidescricao.Text) = 13 then
       begin

          if copy(edidescricao.Text,1,1) = '7' then
             begin
               showmessage('Código de barras incorreto');
               edidescricao.Text := '';
               exit;
             end;
          //endi

          if copy(edidescricao.Text,1,1) = '1' then
             begin
               showmessage('Código de barras incorreto');
               edidescricao.Text := '';
               exit;
             end;
          //endi

          if copy(edidescricao.Text,1,1) = '9' then
             begin
               showmessage('Código de barras incorreto');
               edidescricao.Text := '';
               exit;
             end;
          //endi

          icomanda := strtoint(copy(edidescricao.Text,10,4));
       end
    else
       begin
          icomanda := strtoint(edidescricao.Text);
       end;
    //endi

  except

    lbltipo.Caption := 'Descrição';
    iImp := 0;

    if edidescricao.Enabled then
       edidescricao.SetFocus;
    //endi

    exit;

  end;

  with frmdados do
    begin

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select * from vendab where (cmdb = '+ inttostr( icomanda ) +') and (tpcmdb = '+quotedstr('B')+') and (ehvenda = '+quotedstr('F')+')' );
      //showmessage(dbx_exec.SQL.Text);
      dbx_exec.Active := true;
      if dbx_exec.RecordCount > 0 then
         begin


           if sImpf = 'Nenhuma' then
              itipoimpf := 0;
           //endi
           if sImpf = '' then
              itipoimpf := 0;
           //endi
           if sImpf = 'SWEDA' then
              itipoimpf := 1;
           //endi
           if sImpf = 'BEMA' then
              itipoimpf := 2;
           //endi
           if sImpf = 'DATAREGIS' then
              itipoimpf := 3;
           //endi

           //if sDescricao = '' then
           //   exit;
           //endi
           //if not bMostrar then
           //   exit;
           //endi
           //if ckbentrada.Checked then
           //   sEouS := 'E'
           //else
           //   sEouS := 'S';
           //endi

           bImprimiuecf := false;
           
           dbx_exec.Active := false;
           dbx_exec.SQL.Clear;
           dbx_exec.SQL.Add('update Vendab set controle = '+inttostr(icontrole)+' where (cmdb = ' + inttostr( icomanda ) + ') and (tpcmdb = '+quotedstr('B')+') and (ehvenda = '+quotedstr('F')+')' );
           dbx_exec.ExecSQL;

           cds_Vendab.Active := false;
           dbx_Vendab.Active := false;
           dbx_Vendab.SQL.Clear;
           dbx_Vendab.SQL.Add('Select * from Vendab where controle = '+inttostr(icontrole));
           dbx_Vendab.Active := true;
           cds_Vendab.Active := true;

           totais;

           ckbentrada.Checked := false;

           lbloperacao.Caption := '';

           bentrada := false;

           if cds_Vendab.RecordCount > 0 then
              begin
                ativabotoes;
                spdorc.Enabled := false;
                //spdcaixaap.Enabled := false;
                cbxnomefun.Enabled := false;
                //spdsangria.Enabled := false;
                //spdtroco.Enabled := false;
                spdcomanda.Enabled := false;
                spdfimp.Enabled := false;

              end;
           //endi


         end
      else
         begin
           showmessage('Não consta nenhum movimento nesta comanda!');
         end;
      //endi

      dbx_exec.Active := false;

    end;
  //endth

  lbltipo.Caption := 'Descrição';
  iImp := 0;

  if edidescricao.Enabled then
     edidescricao.SetFocus;
  //endi


end;


procedure Tfrmfrenteecf.btncancelarDClick(Sender: TObject);
begin
  // estornar desconto da impressora ou impressão concomitante

  rchmensfecpgto.lines.Clear;
  rchmensfecpgto.lines.Add('DESCONTO CANCELADO');


  pnldesconto.Visible := false;
  pnlparcelar.Visible := false;

  bdesc := false;
  bparc := false;

  spddesconto.Enabled := true;

  edipdesc.Text := '0,00';
  edipdesc.Text := AlinEdNumD(edipdesc);
  sPDescA := '0,00';

  edivaldesc.Text := '0,00';
  edivaldesc.Text := AlinEdNumD(edivaldesc);
  sValDescA := '0,00';

  editotpagar.Text := FormatFloat('0.00',((ftotGprodD-strToFLoat(tirapontos(edipDesc.text))/100*ftotGprodD) - strtofloat(tirapontos(lbltote.Caption))));
  editotpagar.Text := AlinEdNumD(editotpagar);


  lbltotpagar.caption := FormatFloat('0.00',((ftotGprodD-strToFLoat(tirapontos(edipDesc.text))/100*ftotGprodD) - strtofloat(tirapontos(lbltote.Caption))));

  if pnlfechamento.visible then
     dbgpgto.SetFocus;
  //endi   

end;

procedure tfrmfrenteecf.improdape;
var x:integer;
begin

   if ( frmdados.Cds_Indice.FieldByName('impconcomitante').asString = 'T' ) then
       begin

         iLin := 0;

         sayprint.BeginPrn;

         iLin := iLin + 1;
         sayprint.Say(iLin,25,'Total');

         sValorImp := formatfloat('###,###,##0.00',ftotG);
         sValorImp := AlinNumD(14,ftotG);

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

         sValorImp := formatfloat('###,###,##0.00',strtofloat(tirapontos( lbltotpagar.Caption   )) );
         sValorImp := AlinNumD(14, strtofloat(tirapontos( lbltotpagar.Caption   )) );

         sayprint.Say(iLin,46,sValorImp);

         iLin := iLin + 1;
         sayprint.Say(iLin,0,'Forma de Pagto:');

         //if strtofloat(tirapontos(edidin.Text))  > 0 then
         if fdinheiro > 0 then
            begin
              iLin := iLin + 1;
              sayprint.Say(iLin,0,'A vista (');
              //if strtofloat(tirapontos(edidin.Text)) > strtofloat(tirapontos(lbltotpagar.Caption)) then
              if fdinheiro > strtofloat(tirapontos(lbltotpagar.Caption)) then
                 begin
                   sValorImp := formatfloat('###,##0.00',strtofloat(tirapontos(lbltotpagar.Caption)));
                   sValorImp := AlinNumD(10,strtofloat(tirapontos(lbltotpagar.Caption)));
                 end
              else
                 begin
                    //sValorImp := formatfloat('###,##0.00',strtofloat(tirapontos(edidin.Text)));
                    //sValorImp := AlinNumD(10,strtofloat(tirapontos(edidin.Text )));

                    sValorImp := formatfloat('###,##0.00',fdinheiro);
                    sValorImp := AlinNumD(10,fdinheiro );

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

             //if strtofloat(tirapontos(edidin.Text)) < strtofloat(tirapontos(lbltotpagar.Caption)) then
             if fdinheiro < strtofloat(tirapontos(lbltotpagar.Caption)) then
                begin

                  cds_vencto.First;
                  while not cds_vencto.Eof do
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
                        if Cds_vencto.Eof then
                           break;
                        //endi



                      end;
                  //endw

               end;
            //endi

            end;
         //endth

         if strtofloat(lbltroco.Caption) > 0 then
            begin
              iLin := iLin + 1;
              sayprint.Say(iLin,0,'Troco   ( R$      '+formatfloat('###,##0.00', strtofloat(  tirapontos( lbltroco.Caption  )  )  )+'  )');
            end;
         //endi

         if frmdados.Cds_Indice.FieldByName('impvlrreccli').asString = 'T' then
            begin
              iLin := iLin + 1;
              //sayprint.Say(iLin,0,'Vlr.Rec.( R$      '+formatfloat('###,##0.00', strtofloat( tirapontos( edidin.text ) )  )+'  )');
              sayprint.Say(iLin,0,'Vlr.Rec.( R$      '+formatfloat('###,##0.00', fdinheiro  )+'  )');
            end;
         //endi

         if ftote > 0 then
            begin
              iLin := iLin + 1;
              sayprint.Say(iLin,0,'Devol.  ( R$      '+formatfloat('###,##0.00',ftotE)+'  )');
            end;
         //endi

         iLin := iLin + 1;
         sayprint.Say(iLin,0,   'Vendedor '+sVendedor);

         iLin := iLin + 1;
         sayprint.Say(iLin,0,   'Itens    '+formatfloat('00000',ftotI));

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


         sayprint.Say(iLin,0,chr(27)+chr(118)+chr(76));

         sayprint.EndPrn;
       end;
   //endi

end;

procedure tfrmfrenteecf.impdetalhe;
begin
   if ( frmdados.Cds_Indice.FieldByName('impconcomitante').asString = 'T' ) then
       begin

         with frmdados do
           begin

             iLin := 0;


             sayprint.BeginPrn;

             sayprint.Say(iLin,0,sQtdeImp);
             sayprint.Say(iLin,11,sUniImp);
             sayprint.Say(iLin,15,sDescricaoImp);

             iLin := iLin + 1;

             sayprint.Say(iLin,0,sCprodImp);
             sayprint.Say(iLin,24,sValorImp);
             sayprint.Say(iLin,50,sTotalImp);

             iLin := iLin + 1;

             //sayprint.Say(iLin,0,sDelimitador);

             sayprint.EndPrn;


             dbx_exec.Active := false;

           end;
         //endth

       end;
   //endi
end;

procedure tfrmfrenteecf.impcabecalho;
var x:integer;
begin

   if ( frmdados.Cds_Indice.FieldByName('impconcomitante').asString = 'T' ) then
       begin


         s1 := '';
         sayprint.BeginPrn;

         sayprint.Condensed(false);
         sayprint.Expand(True);

         for x := 1 to (( 24  - length( frmdados.Cds_Config.fieldbyname('campo2').asString )) div 2) do
             begin
               s1 := (s1 + ' ');
             end;
         //endfor
         sImp := s1+frmdados.Cds_Config.fieldbyname('campo2').asString;
         sayprint.Say(0,0,sImp);
         sayprint.Expand(false);

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
         for x := 1 to (( 48  - length( copy(scab2,1,48) )) div 2) do
             begin
               s1 := (s1 + ' ');
             end;
         //endfor
         sImp := s1+copy(scab2,1,48);

         sayprint.Say(2,0,sImp);

         sayprint.Condensed(true);
         sayprint.Say(3,0,sDelimitador);
         sayprint.Condensed(false);

         if rgbtipoop.ItemIndex = 0 then
            begin
              if iNorc > 0 then
                 sayprint.Say(4,0,'Orcamento '+formatfloat('00000',iNorc));
              //endi
            end
         else
            begin
              if iNped > 0 then
                 sayprint.Say(4,0,'Pedido '+formatfloat('00000',iNped));
              //endi
            end;
         //endi
         sayprint.Say(4,19,'Data '+sDataImp);
         sayprint.Say(4,38,'Hora '+sHoraImp);

         sayprint.Condensed(true);

         sayprint.Say(5,0,sDelimitador);

         iLin    := 5;


         if frmdados.Cds_Indice.FieldByName('IMPCABCLI').asString  = 'T' then
            begin

              if iccli > 0 then
                 begin
                   ilin := ilin + 1;
                   sayprint.Say(ilin,0,'Cliente.: '+copy(sNomeCli,1,38));
                   ilin := ilin + 1;

                   sayprint.Say(ilin,0,'Endereco: '+copy(sEnderecoent,1,38));

                   ilin := ilin + 1;
                   sayprint.Say(ilin, 0,'Compl..: '+copy(sComplent,1,5));
                   sayprint.Say(ilin,15,'Bairro.: '+copy(sBairroent,1,10));
                   sayprint.Say(ilin,35,'Cidade.: '+copy(sCidadeent,1,5));
                   ilin := ilin + 1;
                   sayprint.Say(ilin, 0,'Estado.: '+sEstadoent);
                   sayprint.Say(ilin,15,'Cep....: '+scepent);


                   ilin := ilin + 1;
                   sayprint.Say(ilin, 0,'Tel...: '+copy(sTelefoneent,1,38));
                   sayprint.Say(ilin,35,'Cont..: '+copy(sContato,1,5));
                 end
              else
                 begin
                   ilin := ilin + 1;
                   sayprint.Say(ilin,0,'Cliente.: Consumidor');

                   ilin := ilin + 1;
                   sayprint.Say(ilin,0,'Endereco: ');


                   ilin := ilin + 1;
                   sayprint.Say(ilin, 0,'Compl..: ');
                   sayprint.Say(ilin,15,'Bairro.: ');
                   sayprint.Say(ilin,35,'Cidade.: ');

                   ilin := ilin + 1;
                   sayprint.Say(ilin, 0,'Estado.: ');
                   sayprint.Say(ilin,15,'Cep....: ');

                   ilin := ilin + 1;
                   sayprint.Say(ilin, 0,'Tel...: ');
                   sayprint.Say(ilin,35,'Cont..: ');

                 end;
              //endi

              ilin := ilin + 1;
              sayprint.Say(ilin,0,sDelimitador);

              //sayprint.Say(12,0,'      Qtde Un. Descricao                                 TP.');
              ilin := ilin + 1;
              sayprint.Say(ilin,0,'      Qtde Un. Descricao                                    ');
              //                 xx.xxx,xxx xxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx x

              ilin := ilin + 1;
              sayprint.Say(ilin,0,'Codigo                       Valor                     Total');
              //                  xxxxx                  xxx,xxx.xx                xxx,xxx.xx

              ilin := ilin + 1;
              sayprint.Say(ilin,0,sDelimitador);

              ilin := ilin + 1;


              sayprint.EndPrn;


              iItens  := 0;

            end;
         //endi
       end;
   //endi

end;


procedure Tfrmfrenteecf.edivalor1KeyPress(Sender: TObject; var Key: Char);
var
  fv:real;
begin

//showmessage(key);

if (key = #13) then
   begin
     fv :=  ftotapurado + strtofloat(tirapontos(edivalor.Text));

     if fv > strtofloat(  tirapontos( lbltotpagar.caption )  )  then
        begin
          lbltroco.Caption := formatfloat('###,###,##0.00', fv - strtofloat(tirapontos(lbltotpagar.Caption)));
        end;
     //endi

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

procedure tfrmfrenteecf.cancelapedido;
var
  bcancelouecf:boolean;
  indic:string;
  iStatus, iFlagFiscal:integer;
begin




  case itipoimpf of
       0:begin
           // Nenhuma
           if ( frmdados.Cds_Indice.FieldByName('impconcomitante').asString = 'T' ) then
              begin

              end;
           //endi


         end;



       1:begin
           //SWEDA

           SetLength (Indic,2);
           iStatus := ECF_StatusCupomFiscal(indic);
           indic := trim(indic);
           if indic = '1' then
              begin
                iresposta := ECF_CancelaCupom;
              end;
           //endi

         end;


       2:begin
           //BEMATECH
           iStatus := BEMATECH_FI_Flagsfiscais(iFlagFiscal);
           if iFlagFiscal = 33 then
              begin
                iresposta := BEMATECH_FI_CancelaCupom;
              end;
           //endi
         end;


       3:begin
           //DATAREGIS
         end;


       else exit;

     end;


dbgprodutos.Enabled := true;
edidescricao.Enabled := true;
cbxnomefun.Enabled := true;


spdalterar232.Enabled := true;
spdalteracupom.Enabled := true;

spdexcluir234.Enabled := true;
spdfechar236.Enabled := true;
spdconsultacliente239.Enabled := true;
//spdcaixaap.Enabled := true;
//cbxnomefun.Enabled := true;

spdcomanda.Enabled := true;
spdfimp.Enabled := true;

//spdsangria.Enabled := true;
//spdtroco.Enabled := true;


spdconsultaproduto.Enabled := true;
bApresEstq := false;
lbltitestq.Visible := false;
lbltotestq.Visible := false;

with frmdados do
  begin
    dbx_movreg.Active := false;
    dbx_movreg.SQL.Clear;
    dbx_movreg.SQL.Add('delete from movreg where (hdnumber = '+quotedstr(sNumSerieHD)+')');
    dbx_movreg.ExecSQL;
  end;
//endi

limpar;

end;


procedure tfrmfrenteecf.excluiritem;
var
  bStatusok:boolean;
  sItemEcf:string;
  smensagem:string;

begin
  bStatusok := false;

  sItemEcf :=  frmdados.Cds_Vendab.fieldbyname('itemecf').asString;

  if dbgprodutos.Focused then
     begin
       //smensagem := 'Deseja Realmente Cancelar um(a)'+ formatfloat('###,###,##0.00',frmdados.Cds_Vendab.fieldbyname('qtde').asfloat) +' '+frmdados.Cds_Vendab.fieldbyname('npro').asString+'?';
       //if application.MessageBox(pchar(smensagem),'Atenção',mb_YesNo + mb_DefButton2) = idYes then

       if application.MessageBox('Deseja Realmente Cancelar este produto ?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
          begin
            case itipoimpf of
                0:begin
                    // Nenhuma
                    bStatusok := true;
                    if ( frmdados.Cds_Indice.FieldByName('impconcomitante').asString = 'T' ) then
                       begin

                       end;
                    //endi
                  end;
                1:begin
                    //SWEDA
                    iResposta:=ECF_CancelaItemGenerico(sItemEcf);
                    if ( VerificaRetornoFuncaoImpressora_sweda( iResposta ) ) then
                        begin
                          bStatusok := true;
                        end;
                    //endi

                  end;


                2:begin
                   //BEMATECH


                  end;


                3:begin
                    // DATAREGIS

                  end;





                else exit;

            end;


            if bStatusok then
               begin


                 frmdados.Cds_Vendab.Delete;
                 if frmdados.Cds_Vendab.RecordCount = 0 then
                    begin
                      desativabotoes;
                      spdincluir231.Enabled := true;
                      cbxnomefun.Enabled := true;
                    end;
                 //endi

                 if frmdados.Cds_Vendab.RecordCount = 0 then
                    begin
                      //spdcancelar2310.Click;
                      cancelapedido;
                    end;
                 //endi

                 totais;
               end;
            //endi

          end
       //endi
     end
  else
     begin
       Showmessage('Nenhum Item do Pedido não foi Selecionado');
     end;
  //endi

end;

procedure Tfrmfrenteecf.spdalteracupomClick(Sender: TObject);
begin
  frmajustevb := tfrmajustevb.create(self);
  frmajustevb.showmodal;
  frmajustevb.free;
end;


procedure tfrmfrenteecf.alteraritem;
begin

  //showmessage(Screen.ActiveForm.Name);

  if (Screen.ActiveForm.Name = 'frmfrenteecf') and (not dbgprodutos.Focused) then
     begin
       Showmessage('Nenhum Item foi Selecionado');
       exit;
     end;
  //endi

  if (not balteraritem) then
     begin
      Showmessage('Você não tem permissão para realizar esta operação');
      exit;
     end;
  //endi

  frmAlterapecf := tfrmAlterapecf.create(self);
  frmAlterapecf.showmodal;
  frmAlterapecf.free;
  totais;


end;

procedure tfrmfrenteecf.excluiProduto;
begin

  if (Screen.ActiveForm.Name = 'frmfrenteecf') and (not dbgprodutos.Focused) then
     begin
       Showmessage('Nenhum Item foi Selecionado');
       exit;
     end;
  //endi

  if (not bexcluiritem) then
     begin
      Showmessage('Você não tem permissão para realizar esta operação');
      exit;
     end;
  //endi

  frmExcluirPecf := tfrmExcluirPecf.create(self);
  frmExcluirPecf.showmodal;
  frmExcluirPecf.free;


end;


procedure tfrmfrenteecf.modoentrada;
begin

  if (not ckbentrada.Checked) and (not bdevolveritem) then
     begin
      Showmessage('Você não tem permissão para realizar esta operação');
      ckbentrada.Checked := false;
      exit;
     end;
  //endi

  if ckbentrada.Checked then
     lbloperacao.Caption := 'Devolução'
  else
     lbloperacao.Caption := '';
  //endi

  if edidescricao.Enabled then
     edidescricao.SetFocus;
  //endi


end;

procedure Tfrmfrenteecf.ediporcjurosKeyPress(Sender: TObject;
  var Key: Char);
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

procedure Tfrmfrenteecf.ediporcjurosExit(Sender: TObject);
begin
try

 ediporcjuros.Text := AlinEdNumD(ediporcjuros);

except
 ediporcjuros.Text := '0,00';
 ediporcjuros.Text := AlinEdNumD(ediporcjuros);
 exit;
end;

end;

procedure Tfrmfrenteecf.spdparcelarClick(Sender: TObject);
begin
if bparc then
   exit;
//endi


pnlparcelar.Visible := true;
ediporcjuros.SetFocus;

end;

procedure Tfrmfrenteecf.spdcancelapClick(Sender: TObject);
begin

  pnlparcelar.Visible := false;

  dbgpgto.SetFocus;

end;

procedure Tfrmfrenteecf.spdcalcularClick(Sender: TObject);
var x:integer;
    fporcjuros, fdife:real;
begin


  fporcjuros := strtofloat(tirapontos(ediporcjuros.Text)) / 100;
  fporcjuros := fporcjuros + 1;

  x := 1;

  while strtoint( edinparc.text  ) > x do
    begin

      fporcjuros := fporcjuros * fporcjuros;

      x := x + 1;

    end;
  //endf


  edivalor.Text := formatfloat('###,###,##0.00',  ( fporcjuros * strtofloat(tirapontos(lbltotalp.caption)) ) / strtoint( edinparc.text  )  );

  if  strtofloat(tirapontos(ediporcjuros.Text)) > 0 then

      fdife := ( strtofloat( edivalor.text ) * strtoint( edinparc.text  )  )      -    (  fporcjuros * strtofloat(tirapontos(lbltotalp.caption))  )

  else

      fdife := 0;

  //endi

  lbltotpagar.Caption := formatfloat('###,###,##0.00', fporcjuros * strtofloat(tirapontos(lbltotalp.caption)) + fdife   );

  editotal.Text := lbltotalp.Caption;

  editotal.Text := AlinEdNumD(editotal);

  rchmensfecpgto.Lines.Add('Total à prazo '+ editotal.Text);

  rchmensfecpgto.Lines.Add('Juros '+edivaldesc.Text+'%');

  rchmensfecpgto.Lines.Add('Número de Parcelas '+edinparc.Text );

  rchmensfecpgto.Lines.Add('---------------------------------------------------');



  spddesconto.Enabled := false;

  spdparcelar.Enabled := false;

  pnlparcelar.Visible := false;

  dbgpgto.SetFocus;

end;

procedure Tfrmfrenteecf.BitBtn1Click(Sender: TObject);
begin
pnlinfop.Visible := false;
end;


procedure Tfrmfrenteecf.mensatalho;
begin
  rchrodape.Clear;
  rchrodape.Lines.Add('Informe o Código ou Descrição');
  rchrodape.Lines.Add('<F2> - Alternar / <F5> - Consulta / <F11> - Fechar');
end;


procedure tfrmfrenteecf.lancacaixaind;
var
  fdinheiro:real;
begin


 //caixa individual

  with frmdados do
       begin

         cds_svenda.Active := false;
         dbx_svenda.Active := false;
         dbx_svenda.SQL.Clear;
         dbx_svenda.SQL.Add('select * from svenda where (nco = '+inttostr(iControle)+')'  );
         dbx_svenda.Active := true;
         cds_svenda.Active := true;

         if cds_svenda.fieldbyname('din').asfloat > cds_svenda.fieldbyname('totgpagar').asfloat then
            fdinheiro := cds_svenda.fieldbyname('totgpagar').asfloat
         else
            fdinheiro := cds_svenda.fieldbyname('din').asfloat;
         //endi

         if fdinheiro > 0 then
            begin

              cds_id.Active := true;


              cds_caixa.Active := false;

              cds_caixa.Filtered := false;
              cds_caixa.Filter := 'cusu = '+inttostr(icusu);
              cds_caixa.Filtered := true;

              cds_caixa.Active := true;
              cds_caixa.Append;
              cds_caixa.FieldByName('data').AsDateTime :=  strtodate( lbldatamov.caption );
              cds_caixa.FieldByName('valor').AsFloat :=  fdinheiro;
              cds_caixa.FieldByName('codformapgto').AsInteger := cds_indice.fieldbyname('codavista').AsInteger;

              cds_caixa.FieldByName('formapgto').AsString := 'DINHEIRO';
              cds_caixa.FieldByName('historico').AsString := 'Venda - Dinheiro';
              cds_caixa.FieldByName('op').AsString := 'C';
              cds_caixa.FieldByName('status').AsString := 'A';
              cds_caixa.FieldByName('cusu').AsInteger := icusu;
              cds_caixa.FieldByName('id').AsInteger := cds_id.fieldbyname('id').AsInteger;
              cds_caixa.FieldByName('nped').AsInteger := inped;
              cds_caixa.Post;
              cds_caixa.Active := false;
              cds_id.Active := false;

            end;
         //endi


         cds_Vencto.Active := false;
         dbx_Vencto.Active := false;
         dbx_Vencto.SQL.Clear;
         dbx_Vencto.SQL.Add('Select * from Vencimentos where ( nco = '+   inttostr(iControle) +' ) and (coalesce (nco,0) > 0)');
         dbx_Vencto.Active := true;
         cds_Vencto.Active := true;


         cds_caixa.Active := false;

         cds_caixa.Filtered := false;
         cds_caixa.Filter := 'cusu = '+inttostr(icusu);
         cds_caixa.Filtered := true;


         cds_caixa.Active := true;
         cds_id.Active := true;


         while not cds_vencto.Eof do
           begin

             cds_caixa.Append;
             cds_caixa.FieldByName('data').AsDateTime :=  strtodate( lbldatamov.caption );
             cds_caixa.FieldByName('valor').AsFloat :=  cds_vencto.fieldbyname('valorreal').AsFloat;
             cds_caixa.FieldByName('codformapgto').AsInteger := cds_vencto.fieldbyname('c_tipo_pgto').AsInteger;

             if cds_tipo_pgto.Locate('codigo',cds_vencto.fieldbyname('c_tipo_pgto').AsInteger,[]) then
                cds_caixa.FieldByName('formapgto').AsString := cds_tipo_pgto.fieldbyname('descricao').asString;
             //endi
             cds_caixa.FieldByName('historico').AsString := 'Venda prazo '+ inttostr( cds_vencto.fieldbyname('prazo').AsInteger )+' dias';
             cds_caixa.FieldByName('op').AsString := 'C';
             cds_caixa.FieldByName('status').AsString := 'A';
             cds_caixa.FieldByName('cusu').AsInteger := icusu;
             cds_caixa.FieldByName('id').AsInteger := cds_id.fieldbyname('id').AsInteger;
             cds_caixa.FieldByName('nped').AsInteger := inped;
             cds_caixa.Post;

             Cds_Vencto.Next;
           end;
         //endw



         cds_caixa.Active := false;
         cds_id.Active := false;




       end;
  //endi

end;


function tfrmfrenteecf.verificacaixa(cusu:integer):string;
var vardir:string;
begin



  vardir := extractfilepath(application.ExeName);

  with frmdados do
    begin

      if fileexists(vardir+'caixa.cds') then
         begin
           cds_caixa.Active := true;
           cds_caixa.Filtered := false;
           cds_caixa.Filter := 'cusu = '+inttostr(cusu);
           cds_caixa.Filtered := true;

           cds_caixa.Last;
           lbldatamov.Caption := cds_caixa.fieldbyname('data').AsString;
           if lbldatamov.Caption = '' then
              begin
                result := 'INDIVIDUAL INOPERANTE!';

                bcaixaAberto := false;
                bcaixaerro := true;
              end
           else
              begin
                if cds_caixa.FieldByName('status').AsString = 'A' then
                   begin
                     result :=  'ABERTO';

                     bcaixaAberto := true;
                     bcaixaerro := false;

                     //if lbldatamov.Caption <> datetostr( date ) then
                     //   begin
                     //     application.MessageBox('Divergência entre data atual e do sistema','atenção',mb_ok);
                     //   end;
                     //endi

                   end
                else
                   begin
                     result := 'FECHADO';

                     bcaixaAberto := false;
                     bcaixaerro := false;
                   end;
                //endi
              end;
           //endi
           cds_caixa.Active := false;
         end
      else
         begin
           result := 'INEXISTENTE!';

           bcaixaAberto := false;
           bcaixaerro := true;
         end;
      //endi

    end;
  //endth

end;


end.
