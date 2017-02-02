unit contasreceber_cedente;

{$IFDEF VER140}
{$DEFINE USAVARIANTS}
{$ENDIF}

{$IFDEF VER150}
{$DEFINE USAVARIANTS}
{$ENDIF}


interface

uses
  Windows, Messages, SysUtils, {$IFDEF USAVARIANTS} Variants,{$ENDIF} ComObj,
  Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, TFlatPanelUnit, StdCtrls, wwdblook,
  Buttons, Menus, DB, AdvGlowButton;

type
  Tfrmcontasreceber_cedente = class(TForm)
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    COMBOCONTA: TwwDBLookupCombo;
    ebanco: TEdit;
    eagencia: TEdit;
    econta: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    DataSource1: TDataSource;
    Bevel2: TBevel;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bcobrebem: TButton;
    BMATRICIAL: TButton;
    procedure BCANCELARClick(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure COMBOCONTAEnter(Sender: TObject);
    procedure COMBOCONTAExit(Sender: TObject);
    procedure COMBOCONTAKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure bcobrebemClick(Sender: TObject);
    procedure BGRAVARClick(Sender: TObject);
    procedure BMATRICIALClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_cedente: Tfrmcontasreceber_cedente;

implementation

uses contasreceber, modulo, principal;

{$R *.dfm}

procedure Tfrmcontasreceber_cedente.BCANCELARClick(Sender: TObject);
begin
   close;
end;

procedure Tfrmcontasreceber_cedente.Fechar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontasreceber_cedente.FormShow(Sender: TObject);
begin
  frmmodulo.qrcontacorrente.close;
  frmmodulo.qrcontacorrente.SQL.clear;
  frmmodulo.qrcontacorrente.sql.add('select * from c000041 order by TITULAR');
  frmmodulo.qrcontacorrente.Open;


  frmmodulo.qrbanco.close;
  frmmodulo.qrbanco.SQL.clear;
  frmmodulo.qrbanco.sql.add('select * from c000013 order by banco');
  frmmodulo.qrbanco.Open;



// frmmodulo.qrCLIENTE.close;
//  frmmodulo.qrCLIENTE.SQL.clear;
 // frmmodulo.qrCLIENTE.sql.add('select * from c000007 order by NOME');
//  frmmodulo.qrCLIENTE.Open;


  frmmodulo.qrconfig_cobrebem.close;
  frmmodulo.qrconfig_cobrebem.SQL.clear;
  frmmodulo.qrconfig_cobrebem.sql.add('select * from c000064 order by descricao');
  frmmodulo.qrconfig_cobrebem.Open;
end;

procedure Tfrmcontasreceber_cedente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcontasreceber_cedente.COMBOCONTAEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontasreceber_cedente.COMBOCONTAExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
  IF COMBOCONTA.TEXT <> '' THEN
  BEGIN
    IF FRMMODULO.qrconfig_cobrebem.Locate('descricao',COMBOCONTA.TEXT,[loCaseInsensitive]) THEN
    BEGIN
      eagencia.text := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('AGENCIA').ASSTRING;
      ebanco.text := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('BANCO').ASSTRING;
      econta.text := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('codconta').ASSTRING;

      EDIT1.TEXT := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('INSTRUCOES_1').ASSTRING;
      EDIT2.TEXT := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('INSTRUCOES_2').ASSTRING;
      EDIT3.TEXT := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('INSTRUCOES_3').ASSTRING;



    END
    ELSE
    BEGIN
      APPLICATION.MESSAGEBOX('Cedente/Conta n�o localizado!','Aten��o',mb_ok+MB_ICONERROR);
      comboconta.setfocus;

    END;
  END;
end;

procedure Tfrmcontasreceber_cedente.COMBOCONTAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcontasreceber_cedente.Edit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmcontasreceber_cedente.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.SetFocus;
end;

procedure Tfrmcontasreceber_cedente.bcobrebemClick(Sender: TObject);
var
   CobreBemX: Variant;
   Boleto: Variant;
   texto,texto1, texto2, texto3, texto4, texto5, texto6, texto7, texto8, texto9, texto10, texto11, texto12, texto13, texto14, texto15, texto16 : string;
   proximonumero, arquivoremessa : integer;
begin

     FRMMODULO.QRCONFIG.OPEN;

     CobreBemX := CreateOleObject('CobreBemX.ContaCorrente');
     CobreBemX.ArquivoLicenca := frmmodulo.qrconfig_cobrebem.fieldbyname('ARQUIVO_CONFIGURACAO').asstring;


     //----------------------------------- ARQUIVO DE REMESSA ---------------------\\
     if frmmodulo.qrconfig_cobrebem.FieldByName('REMESSA_UTILIZA').Asinteger = 1 then
     begin
       CobrebemX.ArquivoRemessa.Layout    := frmmodulo.qrconfig_cobrebem.fieldbyname('remessa_layout').asstring;
       CobreBemX.ArquivoRemessa.Arquivo   := 'R_'+copy(datetostr(date),1,2)+copy(datetostr(date),4,2)+copy(datetostr(date),7,4)+'_'+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+'.txt';
       CobreBemX.ArquivoRemessa.Diretorio := frmmodulo.qrconfig_cobrebem.fieldbyname('remessa_local').asstring;;
       CobrebemX.ArquivoRemessa.Sequencia := frmprincipal.zerarcodigo(inttostr(Frmmodulo.qrconfig_cobrebem.fieldbyname('REMEsSA_SEQUENCIA').asINTEGER),5);//'00015';
       arquivoremessa := frmmodulo.qrconfig_cobrebem.fieldbyname('remessa_sequencia').asinteger;
     end;
     //-----------------------------------------------------------------------------\\




     //----------------------------------- INFORMACOES DA CONTA -------------------------------\\
     CobreBemX.CodigoAgencia       := frmmodulo.qrconfig_cobrebem.fieldbyname('agencia').asstring;
     CobreBemX.NumeroContaCorrente := frmmodulo.qrconfig_cobrebem.fieldbyname('codconta').asstring;
     CobreBemX.CodigoCedente       := frmmodulo.qrconfig_cobrebem.fieldbyname('codigo_cedente').asstring;
     CobreBemX.InicioNossoNumero   := frmmodulo.qrconfig_cobrebem.fieldbyname('NOSSONUMERO_INICIO').asstring;
     CobreBemX.FimNossoNumero      := frmmodulo.qrconfig_cobrebem.fieldbyname('NOSSONUMERO_FIM').asstring;
     CobreBemX.ProximoNossoNumero  := frmmodulo.qrconfig_cobrebem.fieldbyname('NOSSONUMERO_PROXIMO').asstring;
     proximonumero :=  strtoint(frmmodulo.qrconfig_cobrebem.fieldbyname('NOSSONUMERO_PROXIMO').asstring);

     if frmmodulo.qrconfig_cobrebem.fieldbyname('VARIACAO_MODALIDADE').asstring <> '' then
     begin
       CobreBemX.OutroDadoConfiguracao1      :=  frmmodulo.qrconfig_cobrebem.fieldbyname('VARIACAO_MODALIDADE').asstring;
     end;



     //----------------------------------- CONFIGURACOES DO BOLETO -----------------------------\\
     CobreBemX.PadroesBoleto.PadroesBoletoImpresso.ArquivoLogotipo := frmmodulo.qrconfig_cobrebem.fieldbyname('ARQUIVO_LOGOMARCA').asstring;
     CobreBemX.PadroesBoleto.PadroesBoletoImpresso.CaminhoImagensCodigoBarras := 'c:\DATASAC\server\cob\CobreBemX\Imagens\';



     if frmmodulo.qrconfig_cobrebem.fieldbyname('TIPO_BOLETO').asstring = 'Padrao' then
     begin
       //

     end
     else
     begin
        Cobrebemx.padroesboleto.padroesboletoimpresso.LayoutBoleto := frmmodulo.qrconfig_cobrebem.fieldbyname('TIPO_BOLETO').asstring;//'CarnetReciboLateralEsquerda';
     end;
     if frmmodulo.qrconfig_cobrebem.fieldbyname('MARGEM_SUPERIOR').asinteger > 0 then
        Cobrebemx.padroesboleto.padroesboletoimpresso.MargemSuperior := frmmodulo.qrconfig_cobrebem.fieldbyname('MARGEM_SUPERIOR').asinteger;//4;

     texto := '<font face="Courier New" size = "">'+EDIT1.TEXT+
                                                 '<br> '+EDIT2.TEXT+
                                                 '<br> '+EDIT3.TEXT+
                                                 '<br> '+''+
                                                 '<br> '+''+
                                                 '<br> '+''+
                                                 '<br> '+''+'</font>';

      frmcontasreceber.qrcr.First;
      while not frmcontasreceber.qrcr.Eof do
      begin
        if frmcontasreceber.qrcr.fieldbyname('filtro').AsInteger = 1 then
        begin
           Boleto                 := CobreBemX.DocumentosCobranca.Add;
           Boleto.NumeroDocumento := frmcontasreceber.qrcr.fieldbyname('codigo').asstring;
           Boleto.NomeSacado      := frmmodulo.qrcliente.fieldbyname('nome').asstring;
           Boleto.CPFSacado       := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
           Boleto.EnderecoSacado  := frmmodulo.qrcliente.fieldbyname('endereco').asstring;
           Boleto.BairroSacado    := frmmodulo.qrcliente.fieldbyname('bairro').asstring;
           Boleto.CidadeSacado    := frmmodulo.qrcliente.fieldbyname('cidade').asstring;
           Boleto.EstadoSacado    := frmmodulo.qrcliente.fieldbyname('uf').asstring;
           Boleto.CepSacado       := frmprincipal.somenteNumero( frmmodulo.qrcliente.fieldbyname('cep').asstring );
           Boleto.DataDocumento   := frmcontasreceber.qrcr.fieldbyname('data_emissao').asstring;
           Boleto.DataVencimento  := frmcontasreceber.qrcr.fieldbyname('data_vencimento').asstring;
           Boleto.ValorDocumento  := frmcontasreceber.qrcr.fieldbyname('valor_atual').asfloat;
//         Boleto.BancoEmiteBoleto := true;
           Boleto.PadroesBoleto.Demonstrativo :=  texto;
           Boleto.PadroesBoleto.InstrucoesCaixa := '<br>'+edit1.text+'<br>'+edit2.text+'<br>'+edit3.text;
           CobreBemX.CalcularDadosBoletos;
           proximonumero := proximonumero+1;

//           inputbox('','',Boleto.LinhaDigitavel);

             frmcontasreceber.qrcontasreceber.Close;
             frmcontasreceber.qrcontasreceber.sql.clear;
             frmcontasreceber.qrcontasreceber.sql.add('select * from c000049 where codigo = '''+frmcontasreceber.qrcr.fieldbyname('codigo').asstring+'''');
             frmcontasreceber.qrcontasreceber.open;



           frmcontasreceber.qrcontasreceber.Edit;
           frmcontasreceber.qrcontasreceber.fieldbyname('nossonumero').asstring := Boleto.nossonumero;
           FRMCONTASRECEBER.qrcontasreceber.FIELDBYNAME('CODCEDENTE').ASSTRING  := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('CODIGO').ASSTRING;
           FRMCONTASRECEBER.qrcontasreceber.FIELDBYNAME('TIPO').ASSTRING := FRMMODULO.QRCONFIG.FieldBYNAME('BOLETO_FORMAPGTO').ASSTRING;
           frmcontasreceber.qrcontasreceber.post;

        end;
        frmcontasreceber.qrcr.next;
      end;
     //------- IMPRIMIR BOLETOS -------\\\
     CobreBemX.ImprimeBoletos;



     if frmmodulo.qrconfig_cobrebem.FieldByName('REMESSA_UTILIZA').Asinteger = 1 then
     begin
       if application.MessageBox('Deseja gerar remessa?','Aviso',mb_yesno+mb_iconquestion) = idyes then
       begin
         arquivoremessa := arquivoremessa + 1;
         CobreBemX.GravaArquivoRemessa;
       end;
     end;


     CobreBemX := Unassigned;



     texto := inttostr(proximonumero);
     while length(texto) < 4 do texto := '0'+texto;

     frmmodulo.qrconfig_cobrebem.Edit;
     frmmodulo.qrconfig_cobrebem.fieldbyname('NOSSONUMERO_PROXIMO').asstring := texto;
     frmmodulo.qrconfig_cobrebem.fieldbyname('remessa_sequencia').asinteger := arquivoremessa;
     frmmodulo.qrconfig_cobrebem.post;
     frmmodulo.Conexao.Commit;



     frmmodulo.qrcliente.close;
     frmmodulo.qrcliente.sql.Clear;
     frmmodulo.qrcliente.sql.add('select * from c000007 order by nome');
     frmmodulo.qrcliente.open;


end;

procedure Tfrmcontasreceber_cedente.BGRAVARClick(Sender: TObject);
begin
    IF FRMMODULO.qrconfig_cobrebem.FieldByName('TIPO').ASINTEGER = 1 THEN // BOLETO COBREBEM
    BEGIN
      bcobrebemClick(frmcontasreceber_cedente);
    END
    ELSE
    BEGIN // BOLETO NORMAL
      BMATRICIALclick(frmcontasreceber_cedente);

    END;
  FRMCONTASRECEBER.bfiltrarClick(FRMCONTASRECEBER);
  close;

end;

procedure Tfrmcontasreceber_cedente.BMATRICIALClick(Sender: TObject);
var f : textfile;
vencimento, data_doc, numero_doc, especie_doc, aceite, especie, qtde, valor,
valor_doc, desconto, outras, mora, outros, valor_cobrado, inst1, inst2, inst3, inst4, inst5, inst6,
cedente, cedente_ender : string;
LINHAS : ARRAY [1..50] OF STRING;
TEXTO : STRING;

I,x, Y, LINHA_ACERTO : INTEGER;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20

  LINHA_ACERTO := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('ACERTO_ENTRE_LINHAS').ASinteger;
  assignfile(f,impressora_venda);
  rewrite(f);
//  frmmodulo.qrcliente.close;
//  frmmodulo.qrcliente.sql.Clear;
//  frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+frmcontasreceber.qrcr.fieldbyname('codcliente').asstring+'''');
//  frmmodulo.qrcliente.open;
//  if frmmodulo.qrcliente.RecordCount > 0 then
//  begin
  while not frmcontasreceber.qrcr.Eof do
  begin
    if frmcontasreceber.qrcr.fieldbyname('filtro').asstring = '1' then
    begin
    VENCIMENTO := FRMPRINCIPAL.texto_justifica(frmcontasreceber.qrcr.fieldbyname('data_vencimento').asstring,10,' ','E');
    DATA_DOC   := FRMPRINCIPAL.texto_justifica(frmcontasreceber.qrcr.fieldbyname('data_EMISSAO').asstring,10,' ','E');
    NUMERO_DOC := FRMPRINCIPAL.texto_justifica(frmcontasreceber.qrcr.fieldbyname('CODIGO').asstring,20,' ','E');
    ESPECIE_DOC:= FRMPRINCIPAL.texto_justifica('DUPLIC.',7,' ','D');
    ACEITE     := FRMPRINCIPAL.texto_justifica('',6,' ','D');
    ESPECIE    := FRMPRINCIPAL.texto_justifica('',10,' ','D');
    QTDE       := FRMPRINCIPAL.texto_justifica('',10,' ','E');
    VALOR      := FRMPRINCIPAL.texto_justifica('',10,' ','E');
    VALOR_DOC  := FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',frmcontasreceber.qrcr.fieldbyname('VALOR_ATUAL').asFLOAT),10,' ','E');
    DESCONTO   := FRMPRINCIPAL.texto_justifica('',10,' ','E');
    OUTRAS     := FRMPRINCIPAL.texto_justifica('',10,' ','E');
    MORA       := FRMPRINCIPAL.texto_justifica('',10,' ','E');
    OUTROS     := FRMPRINCIPAL.texto_justifica('',10,' ','E');
    VALOR_COBRADO := FRMPRINCIPAL.texto_justifica('',10,' ','E');


    INST1  := FRMPRINCIPAL.texto_justifica(Edit1.Text,80,' ','D');
    INST2  := FRMPRINCIPAL.texto_justifica(Edit2.Text,80,' ','D');
    INST3  := FRMPRINCIPAL.texto_justifica(Edit3.Text,80,' ','D');
    INST4  := FRMPRINCIPAL.texto_justifica('',80,' ','D');
    INST5  := FRMPRINCIPAL.texto_justifica('',80,' ','D');
    INST6  := FRMPRINCIPAL.texto_justifica('',80,' ','D');


    CEDENTE := FRMPRINCIPAL.texto_justifica(FRMMODULO.QRCLIENTE.FIELDBYNAME('NOME').ASSTRING+'  CPF/CNPJ: '+FRMMODULO.QRCLIENTE.FIELDBYNAME('CPF').ASSTRING,90,' ','D');
    cedente_ender := FRMPRINCIPAL.texto_justifica(FRMMODULO.QRCLIENTE.FIELDBYNAME('ENDERECO').ASSTRING+', '+FRMMODULO.QRCLIENTE.FIELDBYNAME('BAIRRO').ASSTRING+' - '+FRMMODULO.QRCLIENTE.FIELDBYNAME('CIDADE').ASSTRING+'/'+FRMMODULO.QRCLIENTE.FIELDBYNAME('UF').ASSTRING+'  CEP '+FRMMODULO.QRCLIENTE.FIELDBYNAME('CEP').ASSTRING,90,' ','D');



  for Y := 1 to 50 do
  begin
     linhas[Y] := '                                                                                                               ';
  end;
  // vencimento
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_VENCIMENTO').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_VENCIMENTO').ASinteger,10);
  insert(vencimento,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_VENCIMENTO').ASinteger);
  linhas[y] := texto;
  // data do documento
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_DATADOC').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_DATADOC').ASinteger,10);
  insert(data_doc,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_DATADOC').ASinteger);
  linhas[y] := texto;
  // numero do documento
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_numero').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_numero').ASinteger,20);
  insert(numero_doc,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_numero').ASinteger);
  linhas[y] := texto;
  // especie do documento
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_espdoc').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_espdoc').ASinteger,7);
  insert(especie_doc,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_espdoc').ASinteger);
  linhas[y] := texto;
  // aceite
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_aceite').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_aceite').ASinteger,6);
  insert(aceite,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_aceite').ASinteger);
  linhas[y] := texto;
  // especie
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_esp').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_esp').ASinteger,10);
  insert(especie,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_esp').ASinteger);
  linhas[y] := texto;
  // quantidade
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_qtde').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_qtde').ASinteger,10);
  insert(qtde,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_qtde').ASinteger);
  linhas[y] := texto;
  // valor
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_valor').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_valor').ASinteger,10);
  insert(valor,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_valor').ASinteger);
  linhas[y] := texto;
  // valor do documento
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_valordoc').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_valordoc').ASinteger,10);
  insert(valor_doc,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_valordoc').ASinteger);
  linhas[y] := texto;
  // desconto
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_desconto').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_desconto').ASinteger,10);
  insert(desconto,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_desconto').ASinteger);
  linhas[y] := texto;
  // outras
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_outras').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_outras').ASinteger,10);
  insert(outras,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_outras').ASinteger);
  linhas[y] := texto;
  // mora
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_mora').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_mora').ASinteger,10);
  insert(mora,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_mora').ASinteger);
  linhas[y] := texto;
  // outros
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_outros').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_outros').ASinteger,10);
  insert(outros,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_outros').ASinteger);
  linhas[y] := texto;
  // valor
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_cobrado').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cobrado').ASinteger,10);
  insert(valor_cobrado,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cobrado').ASinteger);
  linhas[y] := texto;
  // sacado
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_cedente').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cedente').ASinteger,90);
  insert(cedente,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cedente').ASinteger);
  linhas[y] := texto;
  // sacado endereco
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_cedenteender').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cedenteender').ASinteger,90);
  insert(cedente_ender,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_cedenteender').ASinteger);
  linhas[y] := texto;
  // instrucoes
  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst1').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger,80);
  insert(inst1,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger);
  linhas[y] := texto;

  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst2').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger,80);
  insert(inst2,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger);
  linhas[y] := texto;

  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst3').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger,80);
  insert(inst3,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger);
  linhas[y] := texto;

  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst4').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger,80);
  insert(inst4,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger);
  linhas[y] := texto;

  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst5').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger,80);
  insert(inst5,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger);
  linhas[y] := texto;

  y := frmmodulo.qrconfig_cobrebem.FIELDBYNAME('LIN_inst6').ASinteger;
  texto := linhas[Y];
  delete(texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger,80);
  insert(inst6,texto,frmmodulo.qrconfig_cobrebem.FIELDBYNAME('COL_instrucoes').ASinteger);
  linhas[y] := texto;


  for y := 1 to 50 do
  begin
     writeln(f,#27+#51+#15+#27#72,linhas[y]);
  end;
  IF LINHA_ACERTO <> 0 THEN
  BEGIN
    x := frmmodulo.qrconfig_cobrebem.fieldbyname('entre_linhas').asinteger+LINHA_ACERTO;
    LINHA_ACERTO := 0;
  END
  ELSE
  BEGIN
    x := frmmodulo.qrconfig_cobrebem.fieldbyname('entre_linhas').asinteger;
  END;
  while x <> 0 do begin   writeln(f,#27+#51+#15+#27#72,'                                                                                                               '); x := x - 1;END;

             frmcontasreceber.qrcontasreceber.Close;
             frmcontasreceber.qrcontasreceber.sql.clear;
             frmcontasreceber.qrcontasreceber.sql.add('select * from c000049 where codigo = '''+frmcontasreceber.qrcr.fieldbyname('codigo').asstring+'''');
             frmcontasreceber.qrcontasreceber.open;


             frmcontasreceber.qrcontasreceber.Edit;
             FRMCONTASRECEBER.qrcontasreceber.FIELDBYNAME('CODCEDENTE').ASSTRING  := FRMMODULO.qrconfig_cobrebem.FIELDBYNAME('CODIGO').ASSTRING;
             frmcontasreceber.qrcontasreceber.post;

    end; // se estiver marcado
    FRMCONTASRECEBER.qrcr.NEXT;
  END;

  writeln(f,#12);
  closefile(f);

  frmmodulo.conexao.commit;

end;

end.
