unit prevenda_fechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, StdCtrls, Mask, ToolEdit, CurrEdit,
  TFlatPanelUnit, Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, wwdbedit, Wwdotdot, Wwdbcomb, AdvShapeButton, AdvGlowButton,
  frxDesgn, frxClass, frxDBSet, RxMemDS, MemDS, DBAccess, IBC;

type
  Tfrmprevenda_fechamento = class(TForm)
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    pconvenio: TFlatPanel;
    HeaderView3: THeaderView;
    Label16: TLabel;
    FlatPanel7: TFlatPanel;
    Label17: TLabel;
    Label18: TLabel;
    econvenio_codcliente: TEdit;
    bconvenio_cliente: TBitBtn;
    econvenio_cliente: TEdit;
    convenio_combo: TwwDBComboBox;
    FlatPanel4: TFlatPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    econvenio_codconvenio: TEdit;
    econvenio_convenio: TEdit;
    rconvenio_desconto: TRxCalcEdit;
    rconvenio_liquido: TRxCalcEdit;
    QUERY1: TZQuery;
    query2: TZQuery;
    query3: TZQuery;
    Button1: TButton;
    bcancela_cupom: TBitBtn;
    Cancela1: TMenuItem;
    Shape6: TShape;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edinheiro: TShape;
    echequeav: TShape;
    echequeap: TShape;
    ecartaocred: TShape;
    ecartaodeb: TShape;
    ecrediario: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Label11: TLabel;
    Label12: TLabel;
    Shape7: TShape;
    Label15: TLabel;
    econvenio: TShape;
    Bevel2: TBevel;
    rdinheiro: TRxCalcEdit;
    rchequeav: TRxCalcEdit;
    rchequeap: TRxCalcEdit;
    rcartaocred: TRxCalcEdit;
    rcartaodeb: TRxCalcEdit;
    rcrediario: TRxCalcEdit;
    rconvenio: TRxCalcEdit;
    Panel4: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Panel5: TPanel;
    Shape15: TShape;
    Shape16: TShape;
    Label13: TLabel;
    Shape17: TShape;
    Shape18: TShape;
    Label14: TLabel;
    rsoma: TRxCalcEdit;
    rdiferenca: TRxCalcEdit;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    AdvShapeButton1: TAdvShapeButton;
    Bevel3: TBevel;
    rdesconto2: TRxCalcEdit;
    racrescimo2: TRxCalcEdit;
    rdesconto1: TRxCalcEdit;
    racrescimo1: TRxCalcEdit;
    Panel1: TPanel;
    rsubtotal: TRxCalcEdit;
    Panel2: TPanel;
    rtotal: TRxCalcEdit;
    Bevel1: TBevel;
    fxduplicata: TfrxReport;
    qrduplicata: TRxMemoryData;
    qrduplicataemitente_fantasia: TStringField;
    qrduplicataemitente_razao: TStringField;
    qrduplicataemitente_slogan: TStringField;
    qrduplicataemitente_telefone: TStringField;
    qrduplicataemitente_endereco: TStringField;
    qrduplicataemitente_cnpj: TStringField;
    qrduplicataemitente_ie: TStringField;
    qrduplicatadata_emissao: TStringField;
    qrduplicatafatura_numero: TStringField;
    qrduplicatafatura_valor: TStringField;
    qrduplicataduplicata_numero: TStringField;
    qrduplicataduplicata_valor: TStringField;
    qrduplicatadata_vencimento: TStringField;
    qrduplicatadesconto: TStringField;
    qrduplicatadesconto_ate: TStringField;
    qrduplicatacondicoes_especiais: TStringField;
    qrduplicatasacado_nome: TStringField;
    qrduplicatasacado_endereco: TStringField;
    qrduplicatasacado_municipio: TStringField;
    qrduplicatasacado_uf: TStringField;
    qrduplicatasacado_cep: TStringField;
    qrduplicatasacado_praca: TStringField;
    qrduplicatasacado_cnpj: TStringField;
    qrduplicatasacado_ie: TStringField;
    qrduplicatanotas_ficais: TStringField;
    qrduplicataextenso: TStringField;
    fsduplicata: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    bduplicata: TButton;
    qrcliente: TZQuery;
    Shape8: TShape;
    efinanceira: TShape;
    rfinanceira: TRxCalcEdit;
    Label22: TLabel;
    IBQuery1: TzQuery;
    PTEF1: TFlatPanel;
    ptef2: TFlatPanel;
    BCH_TECBAN: TButton;
    BCH_REDECARD: TButton;
    bcartao: TButton;
    bpgto: TButton;
    procedure rdesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure racrescimo2KeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1Enter(Sender: TObject);
    procedure rdesconto1Exit(Sender: TObject);
    procedure rdesconto2Exit(Sender: TObject);
    procedure racrescimo1Exit(Sender: TObject);
    procedure racrescimo2Exit(Sender: TObject);
    procedure rdinheiroExit(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rdinheiroEnter(Sender: TObject);
    procedure rchequeavEnter(Sender: TObject);
    procedure rchequeapEnter(Sender: TObject);
    procedure rcartaocredEnter(Sender: TObject);
    procedure rcartaodebEnter(Sender: TObject);
    procedure rcrediarioEnter(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure rchequeavExit(Sender: TObject);
    procedure rchequeapExit(Sender: TObject);
    procedure rcartaocredExit(Sender: TObject);
    procedure rcartaodebExit(Sender: TObject);
    procedure rcrediarioExit(Sender: TObject);
    procedure rconvenioEnter(Sender: TObject);
    procedure rconvenioExit(Sender: TObject);
    procedure rconvenioKeyPress(Sender: TObject; var Key: Char);
    procedure econvenio_codclienteEnter(Sender: TObject);
    procedure econvenio_codclienteExit(Sender: TObject);
    procedure econvenio_codclienteKeyPress(Sender: TObject; var Key: Char);
    procedure bconvenio_clienteClick(Sender: TObject);
    procedure convenio_comboExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bcancela_cupomClick(Sender: TObject);
    procedure Cancela1Click(Sender: TObject);
    procedure bduplicataClick(Sender: TObject);
    procedure rfinanceiraExit(Sender: TObject);
    procedure rfinanceiraEnter(Sender: TObject);
    procedure rfinanceiraKeyPress(Sender: TObject; var Key: Char);
    procedure BCH_TECBANClick(Sender: TObject);
    procedure BCH_REDECARDClick(Sender: TObject);
    procedure bcartaoClick(Sender: TObject);
    procedure bpgtoClick(Sender: TObject);
  private
    { Private declarations }
    function retorna_letra(numero:Integer):string;
  public
    { Public declarations }
  end;

var
  frmprevenda_fechamento: Tfrmprevenda_fechamento;

  porta_impressora : string;
  cons_cheque : boolean;


  JA_ABERTO : BOOLEAN;

  iOrdem : integer;
  sNumero : string;
  rValor : real;




implementation

uses modulo, principal, prevenda_contasreceber, troco, venda_impressao,
  extenso1,venda_obs, cheque, ecf, venda, prevenda, xloc_cliente,
  cheque_avulso, venda_financeira, unFuncoesTEF, consulta_cheque,
  duplicata_impressao, prevenda_cliente;

{$R *.dfm}
function Tfrmprevenda_fechamento.retorna_letra(numero:Integer):string;
begin
  case numero of
  1 : result := 'A';
  2 : result := 'B';
  3 : result := 'C';
  4 : result := 'D';
  5 : result := 'E';
  6 : result := 'F';
  7 : result := 'G';
  8 : result := 'H';
  9 : result := 'I';
  10: result := 'J';
  11: result := 'K';
  12: result := 'L';
  13: result := 'M';
  14: result := 'N';
  15: result := 'O';
  16: result := 'P';
  17: result := 'Q';
  18: result := 'R';
  19: result := 'S';
  20: result := 'T';
  21: result := 'U';
  22: result := 'V';
  23: result := 'W';
  24: result := 'X';
  25: result := 'Y';
  26: result := 'Z';
  end;
end;

procedure Tfrmprevenda_fechamento.rdesconto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmprevenda_fechamento.racrescimo2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then rdinheiro.SetFocus;
end;

procedure Tfrmprevenda_fechamento.rdesconto1Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento.rdesconto1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if rdesconto1.value <> 0 then
  begin
    rdesconto2.Value := rsubtotal.value * (rdesconto1.Value / 100);
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.Value;
end;

procedure Tfrmprevenda_fechamento.rdesconto2Exit(Sender: TObject);
var qc : integer;
begin
  tedit(sender).color := clwindow;
  if rsubtotal.value <> 0 then
  begin
    rdesconto1.Value := (rdesconto2.Value * 100)/rsubtotal.value;
  end;
  qc := 0;


  IF rdinheiro.value   > 0 then qc := 1;
  if rchequeav.value   > 0 then qc := qc + 1;
  if rchequeap.value   > 0 then qc := qc + 1;
  if rcartaocred.value > 0 then qc := qc + 1;
  if rcartaodeb.value  > 0 then qc := qc + 1;
  if rcrediario.value  > 0 then qc := qc + 1;
  if rconvenio.value   > 0 then qc := qc + 1;


  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.value;

  if qc = 1 then
  begin
    IF rdinheiro.value   > 0 then rdinheiro.Value   := rtotal.Value; //rdinheiro.Value-rdesconto2.Value;
    if rchequeav.value   > 0 then rchequeav.Value   := rtotal.Value; //rchequeav.Value-rdesconto2.Value;
    if rchequeap.value   > 0 then rchequeap.Value   := rtotal.Value; //rchequeap.Value-rdesconto2.Value;
    if rcartaocred.value > 0 then rcartaocred.Value := rtotal.Value; //rcartaocred.Value-rdesconto2.Value;
    if rcartaodeb.value  > 0 then rcartaodeb.Value  := rtotal.Value; //rcartaodeb.Value-rdesconto2.Value;
    if rcrediario.value  > 0 then rcrediario.Value  := rtotal.Value; //rcrediario.Value-rdesconto2.Value;
    if rconvenio.value   > 0 then rconvenio.Value   := rtotal.Value; //rconvenio.Value-rdesconto2.Value;
  end;

  //rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmprevenda_fechamento.racrescimo1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if racrescimo1.value <> 0 then
  begin
    racrescimo2.Value := rsubtotal.value * (racrescimo1.Value / 100);
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.Value;
end;

procedure Tfrmprevenda_fechamento.racrescimo2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if rsubtotal.value <> 0 then
  begin
    racrescimo1.Value := (racrescimo2.Value * 100)/rsubtotal.value;
  end;

  {
  IF rdinheiro.value > 0 then rdinheiro.Value := rdinheiro.Value+
  +rdesconto2.Value;
  if rchequeav.value > 0 then rchequeav.Value := rchequeav.Value-rdesconto2.Value;
  if rchequeap.value > 0 then rchequeap.Value := rchequeap.Value-rdesconto2.Value;
  if rcartaocred.value > 0 then rcartaocred.Value := rcartaocred.Value-rdesconto2.Value;
  if rcartaodeb.value > 0 then rcartaodeb.Value := rcartaodeb.Value-rdesconto2.Value;
  if rcrediario.value > 0 then rcrediario.Value := rcrediario.Value-rdesconto2.Value;
  if rconvenio.value > 0 then rconvenio.Value := rconvenio.Value-rdesconto2.Value;
  }

  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmprevenda_fechamento.rdinheiroExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  edinheiro.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rconvenio.Value +
                 rcrediario.Value +
                 rfinanceira.value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmprevenda_fechamento.bgravarClick(Sender: TObject);
var texto : pansichar;
desconto_acrescimo : real;
tp_desconto_acrescimo : string;
v_dinheiro:real;
item : integer;
ALIQUOTA, formasp, TIPO_DESCONTO : STRING;
y : integer;

 ecf_ok : boolean;
 qtef:integer;
 cvinc : boolean;
begin

  IF USA_TEF THEN
  BEGIN
    cons_cheque := false;
    TEFFINAL := FALSE;
    elcheque := false;

    if (rchequeap.value + rchequeav.value) > 0 then
    begin
      if application.messagebox('Deseja consultar o Cheque?','Consulta Cheque',mb_yesno+mb_iconquestion+MB_DEFBUTTON2) = idyes then
      begin
         qtef:=0;
         if rcartaocred.value > 0 then qtef := 1;
         if rcartaodeb.value  > 0 then qtef := qtef+1;
         if rchequeav.value   > 0 then qtef := qtef+1;
         if rchequeap.value   > 0 then qtef := qtef+1;
         if qtef > 1 then
         BEGIN
           APPLICATION.MESSAGEBOX('Não é possível prosseguir com duas ou mais formas de pagamento que utilizam TEF!','Erro',mb_ok+mb_iconerror);
           exit;
         END
         ELSE
         BEGIN
           CONS_CHEQUE := TRUE;
         END;
      end
      else
      begin
        IF (RCARTAOCRED.VALUE > 0) AND (RCARTAODEB.Value > 0) THEN
        BEGIN
          APPLICATION.MESSAGEBOX('Não é possível prosseguir com duas ou mais formas de pagamento que utilizam TEF!','Erro',mb_ok+mb_iconerror);
          exit;
        END;
      end;
    end
    else
    begin
      IF (RCARTAOCRED.VALUE > 0) AND (RCARTAODEB.Value > 0) THEN
      BEGIN
        APPLICATION.MESSAGEBOX('Não é possível prosseguir com duas ou mais formas de pagamento que utilizam TEF!','Erro',mb_ok+mb_iconerror);
        exit;
      END;
    end;
  END;

  TEFFINAL := FALSE;
  elcheque := false;












   FI_LANCTO := '';
   FI_CODIGO := '';
   FI_BORDERO:= '';
   FI_PROPOSTA:= '';
   FI_VENCIMENTO:='';
   FI_NOME := '';

   numero_cupomx := '';


  try
   if (rcrediario.Value > 0) or (rconvenio.Value > 0) then
   begin
    FRMMODULO.QRCONFIG.OPEN;
    IF FRMMODULO.QRCONFIG.FieldByName('VENDA_LIMITE_CLIENTE').ASINTEGER = 1 THEN
    BEGIN
      if frmmodulo.qrcliente.FieldByName('situacao').asinteger = 3 then
      begin
        application.messagebox('Cliente com crédito bloqueado! Não será possível prosseguir com o fechamento!','Atenção',mb_ok+mb_iconerror);
        rcrediario.setfocus;
        exit;
      end;
      //if frmmodulo.qrcliente.FieldByName('situacao').asinteger = 4 then
      //begin
      //  application.messagebox('Cliente INATIVO! Não será possível prosseguir com o fechamento!','Atenção',mb_ok+mb_iconerror);
      //  rcrediario.setfocus;
      //  exit;
      //end;
      if frmmodulo.qrcliente.FieldByName('situacao').asinteger = 5 then
      begin
        application.messagebox('Cliente no SPC! Não será possível prosseguir com o fechamento!','Atenção',mb_ok+mb_iconerror);
        rcrediario.setfocus;
        exit;
      end;

      if frmmodulo.qrcliente.FieldByName('situacao').asinteger = 2 then
      begin
        texto := pansichar('Cliente está com cadastro em observação: '+#13+
                 frmmodulo.qrcliente.fieldbyname('obs1').asstring+#13+
                 frmmodulo.qrcliente.fieldbyname('obs2').asstring+#13+
                 frmmodulo.qrcliente.fieldbyname('obs3').asstring+#13+
                 frmmodulo.qrcliente.fieldbyname('obs4').asstring+#13+
                 ''+#13+
                 'Deseja prosseguir com a venda?');


        if application.messagebox(Texto,'Crédito em Observação',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
        begin
          rcrediario.setfocus;
          exit;
        end;
      end;




      if FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT <> 0 then
      begin
        IF rcrediario.Value > limite_disponivel  THEN
        BEGIN
          texto := pansichar('Este cliente possue um limite disponível de:'+#13+' ---> R$ '+  formatfloat('###,###,##0.00',limite_disponivel)  +'  <--- '+#13+'É necessário autorização para prosseguir! '+#13+'Deseja continuar?');
          if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
          begin
            if not frmPrincipal.autentica('Liberar venda',4) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              rcrediario.SetFocus;
             exit;
            end;
          end
          else
          begin
            rcrediario.SetFocus;
            exit;
          end;
        END;
      end;
    END;
   end;





    v_dinheiro := rdinheiro.value;

  if rdiferenca.Value <> 0 then
  begin
    IF RDINHEIRO.VALUE > RDIFERENCA.VALUE THEN
    BEGIN
      frmvenda_troco := tfrmvenda_troco.create(self);
      frmvenda_troco.ltroco.caption := FORMATFLOAT('###,###,##0.00',(RDIFERENCA.VALUE)*(-1));
      frmvenda_troco.showmodal;
      RDINHEIRO.VALUE := RDINHEIRO.VALUE + RDIFERENCA.VALUE;
      RDIFERENCA.VALUE := 0;
    END
    ELSE
    BEGIN
      application.MessageBox('Os valores informados nas formas de pagamento não confere com o valor total desta venda! Favor verificar!','Atenção',mb_ok+MB_ICONWARNING);
      rdinheiro.setfocus;
      exit;
    END;
  end;

  CONTINUAR := TRUE;




  if (rchequeav.Value <> 0) or (rchequeap.Value <> 0 ) then
  begin
  frmmodulo.qrconfig.open;
  if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
  begin
      CHEQUE_CODCLIENTE := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
      CHEQUE_VENDA := numero_vendax;

      frmcheque_avulso := Tfrmcheque_avulso.CREATE(SELF);
      frmcheque_avulso.SHOWMODAL;
  end;
  end;
  IF NOT CONTINUAR THEN EXIT;

  frmmodulo.qrconfig.open;
  if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
  begin
      // cadastrar cheques
  end;

  IF RFINANCEIRA.Value <> 0 THEN
  BEGIN
    FI_CODIGO := '';
    FRMVENDA_FINANCEIRA := TFRMVENDA_FINANCEIRA.CREATE(SELF);
    FRMVENDA_FINANCEIRA.SHOWMODAL;
    IF FI_CODIGO = '' THEN
    BEGIN
      application.messagebox('É necessário informar a Instituição Financeira para prosseguir com esta forma de pagamento!','Erro',mb_ok+mb_iconerror);
      exit;
    END;
  END;

  IF NOT CONTINUAR THEN EXIT;

  if (rcrediario.Value <> 0) or (rconvenio.Value <> 0) then
  begin
    frmprevenda_contasreceber := tfrmprevenda_contasreceber.create(self);
    if frmprevenda.qrorcamento.fieldbyname('obs').asstring <> '' then
    frmprevenda_contasreceber.rqtde.text := frmprevenda.qrorcamento.fieldbyname('obs').asstring;
    frmprevenda_contasreceber.showmodal;
  end;

  IF NOT CONTINUAR THEN EXIT;

  bgravar.Enabled := false;

  IF NOT JA_ABERTO THEN
  BEGIN


          if ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;
          numero_cupomx := ecf_numero_cupom(ecf_modelo);

        application.ProcessMessages;

        FRMPREVENDA.qrorcamento_produto.FIRST;
        WHILE NOT FRMPREVENDA.qrorcamento_produto.EOF DO
        BEGIN
              IF FRMPREVENDA.QRORCAMENTO_PRODUTO.FIELDBYNAME('SITUACAO').ASSTRING = '2' THEN
                TIPO_DESCONTO := '%' ELSE TIPO_DESCONTO := '$';

              IF (FRMPREvenda.QROrcamento_produto.FIELDBYNAME('CST').ASSTRING = '060') OR (FRMPREvenda.QROrcamento_produto.FIELDBYNAME('CST').ASSTRING = '010') OR (FRMPREvenda.QROrcamento_produto.FIELDBYNAME('CST').ASSTRING = '070') THEN ALIQUOTA := 'FF' ELSE
              IF (FRMPREvenda.QROrcamento_produto.FIELDBYNAME('CST').ASSTRING = '040') OR (FRMPREvenda.QROrcamento_produto.FIELDBYNAME('CST').ASSTRING = '030') THEN ALIQUOTA := 'II' ELSE
              IF (FRMPREvenda.QROrcamento_produto.FIELDBYNAME('CST').ASSTRING = '041') OR (FRMPREvenda.QROrcamento_produto.FIELDBYNAME('CST').ASSTRING = '050') OR (FRMPREvenda.QROrcamento_produto.FIELDBYNAME('CST').ASSTRING = '051') OR (FRMPREvenda.QROrcamento_produto.FIELDBYNAME('CST').ASSTRING = '090') THEN ALIQUOTA := 'NN' ELSE
              BEGIN
                 aliquota := formatfloat('00.00',FRMPREvenda.QROrcamento_produto.fieldbyname('aliquota').asfloat);
              end;


                if ecf_vende_item(ecf_modelo,FRMPREvenda.QROrcamento_produto.fieldbyname('codproduto').asstring,
                                        frmprincipal.texto_justifica(frmprincipal.RemoveAcentos(FRMPREvenda.QROrcamento_produto.fieldbyname('produto').asstring),29,' ','D'),
                                        aliquota,
                                        'F',
                                        FRMPREvenda.QROrcamento_produto.fieldbyname('QTDE').asFLOAT,
                                        2,
                                        FRMPREvenda.QROrcamento_produto.fieldbyname('UNITARIO').asFLOAT,
                                        TIPO_DESCONTO,
                                        FRMPREvenda.QROrcamento_produto.fieldbyname('DESCONTO').asFLOAT,
                                        'D',
                                        FRMPREvenda.QROrcamento_produto.fieldbyname('TOTAL').asFLOAT) = 'ERRO' THEN
                BEGIN
                  application.messagebox('Houve erro na impressão do item! Favor verificar!','Atenção',mb_ok+mb_iconerror);
                  exit;
                END;
                frmprevenda.qrorcamento_produto.next;

        END;




            ecf_abre_gaveta(ecf_modelo);

        JA_ABERTO := TRUE;
        JAFINALIZADO := FALSE;

  END;


      if not jafinalizado then
      begin
        ecf_ok := false;
        repeat


              (*-----------------INICIAR FECHAMENTO DO CUPOM-------------------------*)
              desconto_acrescimo := RDESCONTO2.VALUE -
                                    RACRESCIMO2.VALUE;
              if desconto_acrescimo < 0 then
              begin
                tp_desconto_acrescimo := 'A';
                DESCONTO_ACRESCIMO := DESCONTO_ACRESCIMO * (-1);
              end
              else
                tp_desconto_acrescimo := 'D';

              if ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,frmprevenda_fechamento.rtotal.value) = 'ERRO' then
              begin
                BLOCKINPUT(false);
                if application.messagebox('Impressora não responde! Tentar novamente?','Erro - 1',mb_yesno+MB_ICONWARNING) = idno then
                begin
                  exit;
                end
                else
                  BLOCKINPUT(FALSE);
              end
              else
                ecf_ok := true;

              (*---------------------------------------------------------------------*)
        Until ecf_ok = true;
        BLOCKINPUT(false);
        jafinalizado := true
      END;


      (*---------------- LANÇAR AS FORMAS DE PAGAMENTO ----------------------*)

      if ecf_modelo = 'SWEDA' then
      begin
        if ecf_efetua_forma_pgto_especial(ecf_modelo,'',v_dinheiro,'',rchequeav.value,'',rchequeap.value,'',rcartaocred.value,'',rcartaodeb.value,'',rcrediario.value,'',rconvenio.value) = 'ERRO' then exit;
      end
      else
      begin

            if RDINHEIRO.VALUE > 0 then
            begin
              formasp := FDINHEIRO;
              if ecf_efetua_forma_pgto(ecf_modelo,FDINHEIRO,v_dinheiro) = 'ERRO' then exit;
            end;
            if RCREDIARIO.VALUE > 0 then
            begin
              FORMASP := FPROMISSO;
              if ecf_efetua_forma_pgto(ecf_modelo,FPROMISSO,RCREDIARIO.VALUE) = 'ERRO' then exit;
            end;
            if RCONVENIO.VALUE > 0 then
            begin
              FORMASP := FCONVENIO;
              if ecf_efetua_forma_pgto(ecf_modelo,FCONVENIO,RCONVENIO.VALUE) = 'ERRO' then exit;
            end;
            if RFINANCEIRA.VALUE > 0 then
            begin
              if ecf_efetua_forma_pgto(ecf_modelo,FFINANCEI,RFINANCEIRA.VALUE) = 'ERRO' then exit;
              formasp := FFINANCEI ;
            end;





          if usa_tef then
          begin
            if (RCARTAOCRED.VALUE > 0) or (RCARTAODEB.VALUE > 0) then
            begin
              bcartaoclick(Frmprevenda_fechamento);
              IF NOT CONTINUA THEN
              BEGIN
                application.messagebox('Não foi possível prosseguir com a venda no cartão! Vafor verificar...','Erro - TEF',mb_ok+mb_iconerror);
                exit;
              END;

              if stefretorno = '0' then
              begin
                bpgtoclick(frmPREvenda_fechamento);
                if NOT continua then
                begin
                  TEFVerificaGerenciadorAtivo;
                  TEFNaoConfirmaOperacao;
                  exit;
                end;
              end
              else
              begin
                application.messagebox('Não foi possível prosseguir com a venda no cartão! Vafor verificar...','Erro - TEF',mb_ok+mb_iconerror);
                rcartaocred.setfocus;
                exit;
              end;
            end
            else
            begin
              if cons_cheque then
              begin
                FRMconsulta_cheque := tfrmconsulta_cheque.create(self);
                frmconsulta_cheque.showmodal;
                if ret_cheque = 0 then
                begin
                  exit;
                end
                else
                begin

                  if ret_cheque = 1 then // REDECARD
                     BCH_REDECARDClick(FRMpreVENDA_FECHAMENTO);

                  if ret_cheque = 2 then // TECBAN
                     BCH_TECBANClick(FRMpreVENDA_FECHAMENTO);

                  if stefretorno = '0' then
                  begin
                    bpgtoClick(frmprevenda_fechamento);
                    if NOT continua then
                    begin
                      TEFVerificaGerenciadorAtivo;
                      TEFNaoConfirmaOperacao;
                      exit;
                    end;
                  end
                  else
                  begin
                    APPLICATION.MESSAGEBOX('Não foi possível prosseguir com a venda no cheque! Vafor verificar...','Erro',mb_ok+mb_iconerror);
                    rchequeav.setfocus;
                    exit;
                  end;
                end;
              end
              ELSE
              BEGIN
                  IF (RCHEQUEAV.VALUE + RCHEQUEAP.VALUE) > 0 THEN
                  BEGIN
                      formasp := FCHEQUEAV;
                      if ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAV,RCHEQUEAV.VALUE+rchequeap.value) = 'ERRO' then exit;
                  END;
              END;
            end;
          end
          else
          begin
                  IF (RCHEQUEAV.VALUE ) > 0 THEN
                  BEGIN
                      formasp := FCHEQUEAV;
                      if ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAV,RCHEQUEAV.VALUE) = 'ERRO' then exit;
                  END;

                  IF (RCHEQUEAp.VALUE ) > 0 THEN
                  BEGIN
                      formasp := FCHEQUEAp;
                      if ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAp,RCHEQUEAp.VALUE) = 'ERRO' then exit;
                  END;

                  if Rcartaodeb.VALUE > 0 then
                  begin
                    formasp := Fcartaodb;
                    if ecf_efetua_forma_pgto(ecf_modelo,fcartaodb,rcartaodeb.VALUE) = 'ERRO' then exit;
                  end;

                  if Rcartaocred.VALUE > 0 then
                  begin
                    formasp := FCARTAOCR;
                    if ecf_efetua_forma_pgto(ecf_modelo,fcartaocR,RCARTAOCRED.VALUE) = 'ERRO' then exit;
                  end;


          end;




      end;
      (*---------------------------------------------------------------------*)




      (*---------------- IDENTIFICACAO DO CONSUMIDOR-------------------------*)

         if (ecf_modelo = 'SWEDA') OR (ECF_MODELO = 'URANO') then
         begin


          if frmPrevenda.qrcliente.RecordCount = 0 then

            if ecf_termina_fechamento_especial(ecf_modelo,frmmodulo.qrcliente.fieldbyname('nome').asstring,
                                                         frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring,
                                                         frmmodulo.qrcliente.fieldbyname('cpf').asstring) = 'ERRO' then exit else ecf_ok := true
          else
            if ecf_termina_fechamento_especial(ecf_modelo,frmPrevenda.qrcliente.fieldbyname('nome').asstring,
                                                         frmPrevenda.qrcliente.fieldbyname('endereco').asstring+' '+frmPrevenda.qrcliente.fieldbyname('cidade').asstring+'/'+frmPrevenda.qrcliente.fieldbyname('uf').asstring,
                                                         frmPrevenda.qrcliente.fieldbyname('cpf').asstring) = 'ERRO' then exit else ecf_ok := true;


         end
         else
         begin
           ECF_OK := FALSE;

           repeat


                 frmPrevenda.qrcliente.Open;
                if frmPrevenda.qrcliente.RecordCount = 0 then
                begin
                   if frmmodulo.qrcliente.fieldbyname('codigo').asstring = '999999' then
                   begin
                     spvc_nome := '';

                     frmprevenda_cliente := Tfrmprevenda_cliente.create(self);
                     frmprevenda_cliente.showmodal;
                     if spvc_nome <> '' then
                     begin
                      if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+spvc_nome,48,' ','D')+#10+
                                                      frmprincipal.Texto_Justifica(('ENDERECO: '+spvc_endereco+' '+spvc_bairro+' '+spvc_cidade+'/'+spvc_uf),48,' ','D')+#10+
                                                      frmprincipal.Texto_Justifica('CPF/CNPJ: '+spvc_cpf,48,' ','D')+#10+
                                                      frmprincipal.Texto_Justifica('VENDEDOR: '+frmPrevenda.qrorcamento.fieldbyname('codvendedor').AsString+'-'+frmPrevenda.qrorcamento.fieldbyname('vendedor').AsString,42,' ','D')+#10+
                                                         '------------------------------------------------'+#10+
                                                         '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT else ecf_ok := true


                     end
                     else
                     begin
                      if ecf_termina_fechamento(ecf_modelo, frmprincipal.Texto_Justifica('VENDEDOR: '+frmPrevenda.qrorcamento.fieldbyname('codvendedor').AsString+'-'+frmPrevenda.qrorcamento.fieldbyname('vendedor').AsString,42,' ','D')+#10+
                                                         '------------------------------------------------'+#10+
                                                         '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT else ecf_ok := true


                     end;

                   end
                   else
                   begin


                    if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('codigo').AsString+'-'+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')+#10+
                                                    frmprincipal.Texto_Justifica(('ENDERECO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring),48,' ','D')+#10+
                                                    frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,48,' ','D')+#10+
                                                    frmprincipal.Texto_Justifica('VENDEDOR: '+frmPrevenda.qrorcamento.fieldbyname('codvendedor').AsString+'-'+frmPrevenda.qrorcamento.fieldbyname('vendedor').AsString,42,' ','D')+#10+
                                                       '------------------------------------------------'+#10+
                                                       '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT else ecf_ok := true
                    end;
                end
                else
                      begin

                        if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmPrevenda.qrcliente.fieldbyname('codigo').AsString+'-'+frmPrevenda.qrcliente.fieldbyname('nome').asstring,48,' ','D')+#10+
                                                    frmprincipal.Texto_Justifica(('ENDERECO: '+frmPrevenda.qrcliente.fieldbyname('endereco').asstring+' '+frmPrevenda.qrcliente.fieldbyname('cidade').asstring+'/'+frmPrevenda.qrcliente.fieldbyname('uf').asstring),48,' ','D')+#10+
                                                    frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmPrevenda.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmPrevenda.qrcliente.fieldbyname('rg').asstring,48,' ','D')+#10+
                                                    frmprincipal.Texto_Justifica('VENDEDOR: '+frmPrevenda.qrorcamento.fieldbyname('codvendedor').AsString+'-'+frmPrevenda.qrorcamento.fieldbyname('vendedor').AsString,42,' ','D')+#10+
                                                       '------------------------------------------------'+#10+
                                                       '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT else ecf_ok := true;
                      end;

           until ecf_ok = true;
         end;


         if usa_tef then
         begin

            IF TEFFINAL THEN
            BEGIN

              if (FileExists(sTEFKoneKPath + 'TEF.Imp')) then
              begin
                 TEFImprimeTransacao('V');
              end;


              if sTEFRetorno = '0' then
              BEGIN
                 TEFVerificaGerenciadorAtivo;
                 TEFFechaOperacao;
              END
              else
              BEGIN
                TEFVerificaGerenciadorAtivo;
                TEFNaoConfirmaOperacao;

                TEFVerificaArquivosPendentes;
                TEFVerificaOperacaoPendente;

                bgravar.Enabled := true;
                exit;
              END;
            END;




         end
         else
         begin

                if ecf_cupom_vinculado = '1' then
                begin


                   if application.messagebox('Deseja imprimir segunda via (Comprovante Não Fiscal Vinculado)?','Aviso',mb_yesno+mb_iconquestion) = idyes then
                   begin
                     if ecf_abre_CNFV(ecf_modelo,FORMASP,'','') = 'ERRO' then exit;
                     if ecf_usa_CNFV(ecf_modelo,'COMPROVANTE DE DÉBITO   CUPOM FISCAL No: '+NUMERO_CUPOMx) = 'ERRO' then exit;

                     if ecf_cupom_vinculado_produtos = '1' then
                       begin

                         if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,'PRODUTO                    QTDE   VALOR    TOTAL' ) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;

                         FRMPREvenda.QROrcamento_produto.first;
                         while not FRMPREvenda.QROrcamento_produto.eof do
                           begin
                             if ecf_usa_CNFV(ecf_modelo,frmPrincipal.texto_justifica(FRMPREvenda.QROrcamento_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmPrincipal.texto_justifica(FRMPREvenda.QROrcamento_produto.fieldbyname('produto').asstring,19,' ','D')+
                                    frmPrincipal.texto_justifica(formatfloat('######0',FRMPREvenda.QROrcamento_produto.fieldbyname('qtde').asfloat),4,' ','E')+
                                    frmPrincipal.texto_justifica(formatfloat('######0.00',FRMPREvenda.QROrcamento_produto.fieldbyname('unitario').asfloat),9,' ','E')+
                                    frmPrincipal.texto_justifica(formatfloat('######0.00',FRMPREvenda.QROrcamento_produto.fieldbyname('total').asfloat),9,' ','E')) = 'ERRO' then exit;
                             FRMPREvenda.QROrcamento_produto.Next;
                           end;
                        end;
                     if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                     if ecf_usa_CNFV(ecf_modelo,'TOTAL DOS PRODUTOS .................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',RSUBTOTAL.VALUE),9,' ','E')) = 'ERRO' then exit;
                     if ecf_usa_CNFV(ecf_modelo,'DESCONTO ...........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rdesconto2.VALUE),9,' ','E')) = 'ERRO' then exit;
                     if ecf_usa_CNFV(ecf_modelo,'T O T A L ..........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rtotal.VALUE),9,' ','E')) = 'ERRO' then exit;
                     if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                     if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                     if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                     if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                     if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;


                      frmPrevenda.qrcliente.Open;

                      if frmPrevenda.qrcliente.RecordCount = 0 then
                        begin
                          if ecf_usa_CNFV(ecf_modelo,'CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('codigo').asstring+' '+frmmodulo.qrcliente.fieldbyname('nome').asstring) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,'ENDEREÇO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR: '+frmPrevenda.qrorcamento.fieldbyname('codvendedor').asstring+'-'+frmPrevenda.qrorcamento.fieldbyname('vendedor').asstring,48,' ','D')) = 'ERRO' then exit;
                        end
                      else
                        begin
                          if ecf_usa_CNFV(ecf_modelo,'CLIENTE.: '+frmPrevenda.qrcliente.fieldbyname('codigo').asstring+' '+frmPrevenda.qrcliente.fieldbyname('nome').asstring) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,'ENDEREÇO: '+frmPrevenda.qrcliente.fieldbyname('endereco').asstring) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmPrevenda.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmPrevenda.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR: '+frmPrevenda.qrorcamento.fieldbyname('codvendedor').asstring+'-'+frmPrevenda.qrorcamento.fieldbyname('vendedor').asstring,48,' ','D')) = 'ERRO' then exit;
                        end;

                         if rconvenio.Value > 0 then
                           begin
                             //if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CONVENIO: '+econvenio_codconvenio.Text+'-'+econvenio_convenio.Text,42,' ','D')) = 'ERRO' then exit;
                             if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CONVENIO: '+econvenio_codconvenio.Text+'-'+econvenio_convenio.Text,42,' ','D')) = 'ERRO' then exit;
                             if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                             if ecf_usa_CNFV(ecf_modelo,'Autorizo descontar em folha o valor da compra.' ) = 'ERRO' then exit;
                           end
                         else
                           begin
                             if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                             if ecf_usa_CNFV(ecf_modelo,'Reconheço e pagarei a divida aqui apresentada.  ' ) = 'ERRO' then exit;
                           end;


                         if ecf_cupom_vinculado_carne = '1' then // carne
                         begin
                           if (rcrediario.value + rconvenio.value) > 0 then
                           begin



                             frmPrevenda.qrvenda_contasreceber.First;
                             while not frmPrevenda.qrvenda_contasreceber.Eof do
                               begin
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'            COMPROVANTE DE DÉBITO               ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CUPOM.....: '+NUMERO_CUPOMx,48,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('DOCUMENTO.: '+frmPrevenda.qrvenda_contasreceber.FieldByName('documento').asstring,48,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR..: '+frmPrevenda.qrorcamentoCODVENDEDOR.AsString+'-'+frmPrevenda.qrorcamentovendedor.AsString,48,' ','D')) = 'ERRO' then exit;
                                 if rconvenio.Value > 0 then
                                   if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CONVENIO..: '+econvenio_codconvenio.Text+'-'+econvenio_convenio.Text,42,' ','D')) = 'ERRO' then exit;

                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;

                                   frmPrevenda.qrcliente.Open;


                                if frmPrevenda.qrcliente.RecordCount = 0 then
                                begin
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE...: '+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'-'+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO..: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring),48,' ','D')) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ..: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('IE/RG.....: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,42,' ','D')) = 'ERRO' then exit;
                                end
                                else
                                begin
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE...: '+frmPrevenda.qrcliente.fieldbyname('codigo').asstring+'-'+frmPrevenda.qrcliente.fieldbyname('nome').asstring,48,' ','D')) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO..: '+frmPrevenda.qrcliente.fieldbyname('endereco').asstring+' '+frmPrevenda.qrcliente.fieldbyname('cidade').asstring+'/'+frmPrevenda.qrcliente.fieldbyname('uf').asstring),48,' ','D')) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ..: '+frmPrevenda.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmPrevenda.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('IE/RG.....: '+frmPrevenda.qrcliente.fieldbyname('rg').asstring,42,' ','D')) = 'ERRO' then exit;
                                end;

                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'   Este comprovante não é um documento fiscal   ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('PARCELA...: '+frmPrincipal.zerarcodigo(frmPrevenda.qrvenda_contasreceber.fieldbyname('prestacao').asstring,6),42,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENCIMENTO: '+frmPrevenda.qrvenda_contasreceber.FieldByName('vencimento').AsString,42,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VALOR.....: '+formatfloat('#,###,##0.00',frmPrevenda.qrvenda_contasreceber.FieldByName('valor').AsFloat),38,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;

                                 frmPrevenda.qrvenda_contasreceber.Next;
                               end;
                           end;
                         end;

                      if ecf_fecha_CNFV(ecf_modelo) = 'ERRO' then exit;

                   end;
                end;
         end;


    //***************************************************************************\\
    //***************************************************************************\\
    //***************************************************************************\\

    // lancamento da venda

    FI_LANCTO := FRMPRINCIPAL.codifica('000123');
    frmmodulo.qrvenda.open;
    frmmodulo.qrvenda.insert;
    frmmodulo.qrvenda.fieldbyname('codigo').asstring := numero_vendax;
    frmmodulo.qrvenda.fieldbyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
    frmmodulo.qrvenda.fieldbyname('codcliente').asstring := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
    frmmodulo.qrvenda.fieldbyname('codvendedor').asstring := frmprevenda.qrorcamento.fieldbyname('codvendedor').asstring;
    frmmodulo.qrvenda.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrvenda.fieldbyname('TOTAL').asfloat := rtotal.value;
    frmmodulo.qrvenda.fieldbyname('SUBTOTAL').asfloat := rsubtotal.value;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_dinheiro').asfloat := rdinheiro.Value;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeav').asfloat := rchequeav.Value;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeap').asfloat := rchequeap.Value;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaocred').asfloat := rcartaocred.Value;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaodeb').asfloat := rcartaodeb.Value;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_crediario').asfloat := rcrediario.Value;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_cONVENIO').asfloat := rCONVENIO.Value;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_FINANCEIRA').asfloat := rFINANCEIRA.Value;
    FRMMODULO.QRVENDA.FIELDBYNAME('desconto').asfloat := rdesconto2.Value;
    FRMMODULO.QRVENDA.FIELDBYNAME('acrescimo').asfloat := racrescimo2.Value;
    frmmodulo.qrvenda.fieldbyname('OBS').asstring := '';
    FRMMODULO.QRVENDA.FIELDBYNAME('COD_FINANCEIRA').ASSTRING := FI_CODIGO;
    FRMMODULO.QRVENDA.FIELDBYNAME('COD_FINANCEIRA_LANCTO').ASSTRING := FI_LANCTO;

    FRMMODULO.QRVENDA.FIELDBYNAME('NUMERO_CUPOM_FISCAL').ASSTRING := numero_cupomx;
    if numero_cupomx <> '' then frmmodulo.qrvenda.fieldbyname('cupom_fiscal').asinteger := 1;
    frmmodulo.qrvenda.post;





  ////  LANCAMENTOS ESPECIFICOS DE CADA FORMA DE PAGAMENTO
  frmmodulo.qrcaixa_mov.OPEN;



  if rdinheiro.Value <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
    frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
    frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := rdinheiro.value;
    frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := rdinheiro.value;
    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
    frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 3; // venda em dinheiro
    frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'Venda No. '+numero_vendax+' - '+frmmodulo.qrcliente.fieldbyname('nome').asstring;
    frmmodulo.qrcaixa_mov.post;
  end;
  if rchequeav.Value <> 0 then
  begin

    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
    frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
    frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
    frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := rchequeav.value;
    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
    frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 5; // venda em cheque a vista
    frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'Venda No. '+numero_vendax+' - '+frmmodulo.qrcliente.fieldbyname('nome').asstring;
    frmmodulo.qrcaixa_mov.post;
  end;
  if rchequeap.Value <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
    frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
    frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
    frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := rchequeap.value;
    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
    frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 6; // venda em cheque a prazo
    frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'Venda No. '+numero_vendax+' - '+frmmodulo.qrcliente.fieldbyname('nome').asstring;
    frmmodulo.qrcaixa_mov.post;
  end;
  if rcartaocred.Value <> 0 then
  begin
    frmmodulo.qrconfig.open;
    if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CARTAO').asinteger = 1 then
    begin
      // cadastrar cartoes de credito
    end;
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
    frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
    frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
    frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := rcartaocred.value;
    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
    frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 7; // venda em cartao de credito
    frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'Venda No. '+numero_vendax+' - '+frmmodulo.qrcliente.fieldbyname('nome').asstring;
    frmmodulo.qrcaixa_mov.post;
  end;
  if rcartaodeb.Value <> 0 then
  begin
    frmmodulo.qrconfig.open;
    if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CARTAO').asinteger = 1 then
    begin
      // cadastrar cartoes de debito
    end;
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
    frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
    frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
    frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := rcartaoDEB.value;
    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
    frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 8; // venda em cartao de credito
    frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'Venda No. '+numero_vendax+' - '+frmmodulo.qrcliente.fieldbyname('nome').asstring;
    frmmodulo.qrcaixa_mov.post;
  end;

  if rconvenio.Value <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
    frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
    frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
    frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := rconvenio.value;
    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
    frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 40; // venda em cartao de credito
    frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'Venda No. '+numero_vendax+' - '+frmmodulo.qrcliente.fieldbyname('nome').asstring;
    frmmodulo.qrcaixa_mov.post;
  end;

  if rfinanceira.Value <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
    frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
    frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
    frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := rfinanceira.value;
    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
    frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 42; // venda em cartao de credito
    frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'Venda Financeira '+fi_nome+' No. '+numero_vendax+' - '+frmmodulo.qrcliente.fieldbyname('nome').asstring;
    frmmodulo.qrcaixa_mov.post;

    // lancamento de financeira


      ibquery1.close;
      ibquery1.sql.clear;
      ibquery1.sql.add('insert into c000123');
      ibquery1.sql.add('(CODIGO, CODBANCO, DATA, CODCLIENTE, VALOR, SITUACAO, DATA_PGTO, VALOR_PAGO, BORDERO, PROPOSTA, OBS, CODVENDA)');
      ibquery1.sql.add('values');
      ibquery1.sql.add('(:CODIGO, :CODBANCO, :DATA, :CODCLIENTE, :VALOR, :SITUACAO, :DATA_PGTO, :VALOR_PAGO, :BORDERO, :PROPOSTA, :OBS, :CODVENDA)');

      ibquery1.ParamByName('CODIGO').ASSTRING :=  FI_LANCTO;
      ibquery1.ParamByName('CODbanco').ASSTRING :=  FI_CODIGO;
      ibquery1.ParamByName('DATA').ASdatetime :=  frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
      ibquery1.ParamByName('CODCLIENTE').ASSTRING :=  frmmodulo.qrcliente.fieldbyname('codigo').asstring;
      ibquery1.ParamByName('VALOR').ASFLOAT :=  rfinanceira.VALUE;
      ibquery1.ParamByName('SITUACAO').ASSTRING :=  '1';
      ibquery1.ParamByName('DATA_PGTO').ASDATETIME :=  STRTODATE(FI_VENCIMENTO);
      ibquery1.ParamByName('VALOR_PAGO').ASFLOAT :=  0;
      ibquery1.ParamByName('BORDERO').ASSTRING :=  FI_BORDERO;
      ibquery1.ParamByName('PROPOSTA').ASSTRING :=  FI_PROPOSTA;
      ibquery1.ParamByName('OBS').ASSTRING :=  '';
      ibquery1.ParamByName('CODVENDA').ASSTRING :=  numero_vendax;
      ibquery1.ExecSQL;




  end;



  if rcrediario.Value <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
    frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
    frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
    frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := rcrediario.value;
    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;

    frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 4; // venda em cheque a vista
    frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'Venda No. '+numero_vendax+' - '+frmmodulo.qrcliente.fieldbyname('nome').asstring;
    frmmodulo.qrcaixa_mov.post;

    // lancamento do contas a receber


    frmmodulo.qrcontasreceber.open;
    if rdinheiro.value <> 0 then
    begin
      frmmodulo.qrcontasreceber.insert;
      frmmodulo.qrcontasreceber.fieldbyname('codigo').asstring          := numero_vendax+'/00';
      frmmodulo.qrcontasreceber.fieldbyname('codvenda').asstring        := numero_vendax;
      frmmodulo.qrcontasreceber.fieldbyname('codcliente').asstring      := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('codregiao').asstring       := frmmodulo.qrcliente.fieldbyname('codregiao').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('codvendedor').asstring     := frmprevenda.qrorcamento.fieldbyname('codvendedor').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('codcaixa').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      frmmodulo.qrcontasreceber.fieldbyname('data_emissao').asdatetime    := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
      frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
      frmmodulo.qrcontasreceber.fieldbyname('valor_original').asfloat   := RDINHEIRO.VALUE;
      frmmodulo.qrcontasreceber.fieldbyname('valor_pago').asfloat       := RDINHEIRO.VALUE;
      frmmodulo.qrcontasreceber.fieldbyname('valor_atual').asfloat      := 0;
      frmmodulo.qrcontasreceber.fieldbyname('documento').asstring       := 'ENTRADA';
      frmmodulo.qrcontasreceber.fieldbyname('tipo').asstring            := frmPREvenda.qrvenda_contasreceber.fieldbyname('tipo').asstring;
      frmmodulo.qrcontasreceber.FieldByName('situacao').asinteger       := 2;
      frmmodulo.qrcontasreceber.FieldByName('filtro').asinteger         := 0;
      frmmodulo.qrcontasreceber.fieldbyname('numero_cupom').asstring    := numero_cupomX;
      frmmodulo.qrcontasreceber.post;

    end;

         y := 1;
    frmPREvenda.qrvenda_contasreceber.First;
    while not frmPREvenda.qrvenda_contasreceber.eof do
    begin
      frmmodulo.qrcontasreceber.insert;
      frmmodulo.qrcontasreceber.fieldbyname('codigo').asstring          := numero_vendax+'/'+frmprincipal.zerarcodigo(inttostr(y),2);
      frmmodulo.qrcontasreceber.fieldbyname('codvenda').asstring        := numero_vendax;
      frmmodulo.qrcontasreceber.fieldbyname('codcliente').asstring      := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('codregiao').asstring       := frmmodulo.qrcliente.fieldbyname('codregiao').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('codvendedor').asstring     := frmprevenda.qrorcamento.fieldbyname('codvendedor').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('codcaixa').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      frmmodulo.qrcontasreceber.fieldbyname('data_emissao').asdatetime    := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
      frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asdatetime := frmPREvenda.qrvenda_contasreceber.fieldbyname('vencimento').asdatetime;
      frmmodulo.qrcontasreceber.fieldbyname('valor_original').asfloat   := frmPREvenda.qrvenda_contasreceber.fieldbyname('valor').asfloat;
      frmmodulo.qrcontasreceber.fieldbyname('valor_atual').asfloat      := frmPREvenda.qrvenda_contasreceber.fieldbyname('valor').asfloat;
      frmmodulo.qrcontasreceber.fieldbyname('documento').asstring       := frmPREvenda.qrvenda_contasreceber.fieldbyname('documento').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('tipo').asstring            := frmPREvenda.qrvenda_contasreceber.fieldbyname('tipo').asstring;
      frmmodulo.qrcontasreceber.FieldByName('situacao').asinteger       := 1;
      frmmodulo.qrcontasreceber.FieldByName('filtro').asinteger         := 0;
      frmmodulo.qrcontasreceber.fieldbyname('numero_cupom').asstring    := numero_cupomX;
      frmmodulo.qrcontasreceber.post;
      frmPREvenda.qrvenda_contasreceber.next;
      y := y + 1;
    end;


    //

  end;

        item := 1;


    // lancamento dos produtos
      FRMMODULO.QRPRODUTO_MOV.OPEN;
      frmprevenda.qrorcamento_produto.First;
      while not frmprevenda.qrorcamento_produto.Eof do
      begin
        FRMMODULO.QRPRODUTO.CLOSE;
        FRMMODULO.QRPRODUTO.SQL.CLEAR;
        FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+frmprevenda.qrorcamento_produto.fieldbyname('codproduto').asstring+'''');
        FRMMODULO.QRPRODUTO.OPEN;

        frmmodulo.qrproduto_mov.Insert;
        frmmodulo.qrproduto_mov.FieldByName('codigo').AsString     := frmprincipal.codifica('000032');
        frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString    := numero_vendax;
        frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString := numero_vendax;
        frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring := frmprevenda.qrorcamento_produto.fieldbyname('codproduto').asstring;
        frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat        := frmprevenda.qrorcamento_produto.fieldbyname('qtde').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat    := frmprevenda.qrorcamento_produto.fieldbyname('unitario').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('total').asfloat       := frmprevenda.qrorcamento_produto.fieldbyname('total').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat    := frmprevenda.qrorcamento_produto.fieldbyname('desconto').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('acrescimo').asfloat   := frmprevenda.qrorcamento_produto.fieldbyname('acrescimo').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring    := frmprevenda.qrorcamento_produto.fieldbyname('unidade').AsString;

        frmmodulo.qrproduto_mov.fieldbyname('ALIQUOTA').asFLOAT    := frmmodulo.qrproduto.fieldbyname('aliquota').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('CST').asSTRING        := frmmodulo.qrproduto.fieldbyname('CST').asSTRING ;

        frmmodulo.qrproduto_mov.fieldbyname('cupom_item').asstring := FRMPRINCIPAL.zerarcodigo(inttostr(item),3);
        frmmodulo.qrproduto_mov.fieldbyname('cupom_numero').asstring := numero_cupomx;
        frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := '2D';
        if ecf_modelo <> '' then
        begin
           frmmodulo.qrproduto_mov.fieldbyname('ecf_serie').asstring := frmprincipal.pstatus.panels[11].text;
           frmmodulo.qrproduto_mov.fieldbyname('ecf_caixa').asstring := frmprincipal.pstatus.panels[9].text;
        end;
        frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString := FRMMODULO.QRCLIENTE.FIELDBYNAME('CODIGO').ASSTRING;
        frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString := FRMPREVENDA.qrorcamento.FIELDBYNAME('CODVENDEDOR').ASSTRING;
        frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA
        item := item + 1;
        frmmodulo.qrproduto_mov.FieldByName('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;


        FRMMODULO.QRPRODUTO.EDIT;
        frmmodulo.qrproduto.fieldbyname('DATA_ULTIMAVENDA').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
        FRMMODULO.QRPRODUTO.POST;

        frmmodulo.qrproduto_mov.Post;
        frmPREvenda.qrORCAMENTO_produto.next;
      end;
      frmprevenda.qrorcamento.Delete;


      frmmodulo.Conexao.Commit;


  except
    application.MessageBox('Esta venda não poder ser concluída por ter gerado erros! Todos os lançamentos feitos nela serão cancelados!','Erro',mb_ok+MB_ICONERROR);
    ecf_cancela_cupom(ecf_modelo,'V');
    frmmodulo.Conexao.Rollback;
  end;

    VALOR_NOTAZ  := rtotal.Value;
    NUMERO_NOTAZ := numero_cupomx;

    if imp_duplicata = '1' then
    begin
      if rcrediario.value <> 0 then
      begin
        IF APPLICATION.MESSAGEBOX('Deseja imprimir as duplicatas?','Aviso',mb_yesno+mb_iconquestion) = idyes then
        begin
          frmmodulo.qrconfig.open;
          if frmmodulo.qrconfig.fieldbyname('tipo_duplicata').asstring = 'LASER' then
          begin
            bduplicataclick(Frmprevenda_fechamento);
          end
          else
          begin
            Button1Click(frmprevenda_fechamento);
          end;
        end;
      end;
    end;


  JA_ABERTO := FALSE;

  close;


end;

procedure Tfrmprevenda_fechamento.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmprevenda_fechamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmprevenda_fechamento.FormShow(Sender: TObject);
begin
  if usa_tef then
  begin
    ptef1.visible := true;
    ptef2.visible := true;
  end;


  frmmodulo.qrconfig.open;
  porta_impressora := frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').asstring;

  //rsubtotal.value := frmprevenda.qrorcamentoTOTAL.AsFloat;
  //rtotal.value := frmprevenda.qrorcamentoTOTAL.AsFloat;

  numero_vendax := frmprincipal.codifica('000048');


  pconvenio.Visible := false;

  rdesconto1.SetFocus;
end;

procedure Tfrmprevenda_fechamento.rdinheiroEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  edinheiro.Brush.Color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento.rchequeavEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  echequeav.Brush.Color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento.rchequeapEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  echequeap.Brush.Color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento.rcartaocredEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  ecartaocred.Brush.Color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento.rcartaodebEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  ecartaodeb.Brush.Color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento.rcrediarioEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  ecrediario.Brush.Color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento.Cancelar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmprevenda_fechamento.rchequeavExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  echequeav.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rconvenio.Value +
                 rcrediario.Value +
                 rfinanceira.value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmprevenda_fechamento.rchequeapExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  echequeap.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rconvenio.Value +
                 rcrediario.Value +
                 rfinanceira.value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmprevenda_fechamento.rcartaocredExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  ecartaocred.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rconvenio.Value +
                 rcrediario.Value +
                 rfinanceira.value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmprevenda_fechamento.rcartaodebExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  ecartaodeb.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rconvenio.Value +
                 rcrediario.Value +
                 rfinanceira.value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmprevenda_fechamento.rcrediarioExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  ecrediario.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rconvenio.Value +
                 rcrediario.Value +
                 rfinanceira.value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmprevenda_fechamento.rconvenioEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  econvenio.Brush.Color := $00A0FAF8;

end;

procedure Tfrmprevenda_fechamento.rconvenioExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  econvenio.Brush.Color := clwindow;


    ////////////////////


  if rconvenio.Value > 0 then
  begin

    frmPREvenda_contasreceber := tfrmPREvenda_contasreceber.create(self);
    frmprevenda_contasreceber.showmodal;

     query2.close;
     query2.sql.clear;
     query2.sql.add('select * from c000007 where codigo = '''+frmprevenda.qrorcamentoCODCLIENTE.AsString+'''');
     query2.open;
     begin
       econvenio_codcliente.text  := query2.fieldbyname('codigo').asstring;
       econvenio_cliente.TEXT     := query2.fieldbyname('nome').asstring;
       if query2.fieldbyname('codconvenio').asstring <> '' then
         begin
           econvenio_codconvenio.text := query2.fieldbyname('codconvenio').asstring;
           query1.Close;
           query1.SQL.clear;
           query1.SQL.add('select * from c000071 where codigo = '''+query2.fieldbyname('codconvenio').asstring+'''');
           query1.open;
           if query1.RecNo > 0 then
             econvenio_convenio.text := query1.fieldbyname('nome').asstring
           else
           begin
             application.MessageBox('Convênio não encontrado!','Atenção!',mb_ok+MB_ICONERROR);
             rconvenio.setfocus;
             exit;
           end;
         end
       else
         begin
           application.MessageBox('Este cliente não pertence a nenhum convênio!','Atenção!',mb_ok+MB_ICONERROR);
           rconvenio.setfocus;
           exit;
         end;
       IF frmprevenda_fechamento.rdesconto1.value > 0 then
       begin
          if application.messagebox('Foi dado desconto no final desta venda! Acrescentar o desconto do convênio?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
            rconvenio_desconto.Value := query1.fieldbyname('desconto').asfloat
          else
            rconvenio_desconto.Value := 0;
       end
       else
         rconvenio_desconto.Value   := query1.fieldbyname('desconto').asfloat;


       if rconvenio_desconto.Value <> 0 then
       begin
         rconvenio_liquido.value := frmprevenda_fechamento.rsubtotal.Value - (frmprevenda_fechamento.rsubtotal.Value * ( (rconvenio_desconto.value+frmprevenda_fechamento.rdesconto1.value)/100));
       end
       else
         rconvenio_liquido.value := frmprevenda_fechamento.rtotal.Value;
     end;
  end;

{
    query3.Close;
    query3.SQL.clear;
    query3.SQL.add('select * from c000070 where codcliente = '''+frmvenda.lcliente_codigo.Caption+''' order by nome');
    query3.open;
    query3.First;
    convenio_combo.items.Clear;
    convenio_combo.Items.Add('O MESMO');
    while not query3.eof do
    begin
      convenio_combo.Items.Add(query3.FIELDBYNAME('NOME').ASSTRING);
      query3.NEXT;
    end;
    convenio_combo.ItemIndex := 0;
    convenio_combo.SetFocus;
  end
  else
  begin
    econvenio_codcliente.setfocus;
  end;
 }



  ////////////////////



  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rconvenio.Value +
                 rcrediario.Value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;

end;

procedure Tfrmprevenda_fechamento.rconvenioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmprevenda_fechamento.econvenio_codclienteEnter(
  Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;

end;

procedure Tfrmprevenda_fechamento.econvenio_codclienteExit(
  Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  //econvenio_coDcliente.text := frmprincipal.zerarcodigo(frmvenda_inicio.ECLIENTE.Text,6);
  if econvenio_coDcliente.text <> '000000' then
  begin
     query2.close;
     query2.sql.clear;
     query2.sql.add('select * from c000007 where codigo = '''+econvenio_codcliente.text+'''');
     query2.open;
     if query2.RecordCount = 0 then
     begin
        application.messagebox('Cliente não encontrado!','Atenção!',mb_ok+mb_iconwarning);
        bconvenio_clienteclick(frmprevenda_fechamento);
     end
     else
     begin
       econvenio_codcliente.text  := query2.fieldbyname('codigo').asstring;
       econvenio_cliente.TEXT     := query2.fieldbyname('nome').asstring;
       if query2.fieldbyname('codconvenio').asstring <> '' then
       begin
         econvenio_codconvenio.text := query2.fieldbyname('codconvenio').asstring;
         query1.Close;
         query1.SQL.clear;
         query1.SQL.add('select * from c000071 where codigo = '''+query2.fieldbyname('codconvenio').asstring+'''');
         query1.open;
         if query1.RecNo > 0 then
           econvenio_convenio.text := query1.fieldbyname('nome').asstring
         else
         begin
           application.MessageBox('Convênio não encontrado!','Atenção!',mb_ok+MB_ICONERROR);
           econvenio_codcliente.setfocus;
           exit;
         end;
       end
       else
       begin
         application.MessageBox('Este cliente não pertence a nenhum convênio!','Atenção!',mb_ok+MB_ICONERROR);
         econvenio_codcliente.setfocus;
         exit;
       end;
       IF frmprevenda_fechamento.rdesconto1.value > 0 then
       begin
          if application.messagebox('Foi dado desconto no final desta venda! Acrescentar o desconto do convênio?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
            rconvenio_desconto.Value := query1.fieldbyname('desconto').asfloat
          else
            rconvenio_desconto.Value := 0;
       end
       else
         rconvenio_desconto.Value   := query1.fieldbyname('desconto').asfloat;


       if rconvenio_desconto.Value <> 0 then
       begin
         rconvenio_liquido.value := frmprevenda_fechamento.rsubtotal.Value - (frmprevenda_fechamento.rsubtotal.Value * ( (rconvenio_desconto.value+frmprevenda_fechamento.rdesconto1.value)/100));
       end
       else
         rconvenio_liquido.value := frmprevenda_fechamento.rtotal.Value;

       convenio_combo.SetFocus;
     end;
  end
  else
  begin
    bconvenio_cliente.setfocus;
  end;

end;

procedure Tfrmprevenda_fechamento.econvenio_codclienteKeyPress(
  Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);

end;

procedure Tfrmprevenda_fechamento.bconvenio_clienteClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    econvenio_codcliente.text := resultado_pesquisa1;
    econvenio_cliente.text := resultado_pesquisa2;
    if resultado_pesquisa7 <> '' then
    begin
      econvenio_codconvenio.text := resultado_pesquisa7;
      query1.Close;
      query1.SQL.clear;
      query1.SQL.add('select * from c000071 where codigo = '''+resultado_pesquisa7+'''');
      query1.open;

         if query1.RecNo > 0 then
           econvenio_convenio.text := query1.fieldbyname('nome').asstring
         else
         begin
           application.MessageBox('Convênio não encontrado!','Atenção!',mb_ok+MB_ICONERROR);
           econvenio_codcliente.setfocus;
           exit;
         end;
    end
    else
    begin
      application.MessageBox('Este cliente não pertence a nenhum convênio!','Atenção!',mb_ok+MB_ICONERROR);
      econvenio_codcliente.setfocus;
      exit;
    end;
    IF frmprevenda_fechamento.rdesconto1.value > 0 then
    begin
        if application.messagebox('Foi dado desconto no final desta venda! Acrescentar o desconto do convênio?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
          rconvenio_desconto.Value := query1.fieldbyname('desconto').asfloat
        else
          rconvenio_desconto.Value := 0;
    end
    else
      rconvenio_desconto.Value   := query1.fieldbyname('desconto').asfloat;


    if rconvenio_desconto.Value <> 0 then
    begin
      rconvenio_liquido.value := frmprevenda_fechamento.rsubtotal.Value - (frmprevenda_fechamento.rsubtotal.Value * ( (rconvenio_desconto.value+frmprevenda_fechamento.rdesconto1.value)/100));
    end
    else
      rconvenio_liquido.value := frmprevenda_fechamento.rtotal.Value;



    query3.Close;
    query3.SQL.clear;
    query3.SQL.add('select * from c000070 where codcliente = '''+econvenio_codcliente.Text+''' order by nome');
    query3.open;
    query3.First;
    convenio_combo.items.Clear;
    convenio_combo.Items.Add('O MESMO');
    while not query3.eof do
    begin
      convenio_combo.Items.Add(query3.FIELDBYNAME('NOME').ASSTRING);
      query3.NEXT;
    end;
    convenio_combo.ItemIndex := 0;
    convenio_combo.SetFocus;
  end
  else
  begin
    econvenio_codcliente.setfocus;
  end;


end;

procedure Tfrmprevenda_fechamento.convenio_comboExit(Sender: TObject);
begin
  pconvenio.Visible := true;

end;

procedure Tfrmprevenda_fechamento.Button1Click(Sender: TObject);
VAR F : TEXTFILE;
DI, ME, AN, CID, TEXTO : STRING;
ITEM : INTEGER;
begin
  ITEM := 1;


  IF frmPrevenda.qrvenda_contasreceber.RECORDCOUNT > 0 THEN
  BEGIN
    ASSIGNFILE(F,porta_impressora);
    REWRITE(F);
    frmPrevenda.qrvenda_contasreceber.FIRST;
    WHILE NOT frmPrevenda.QRVENDA_CONTASRECEBER.EOF DO
    BEGIN

        writeln(F,#27+#51);
        WRITELN(F,#18+#27#72+#20,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        di := copy(frmPrevenda.lvenda_data.Caption,1,2);me := copy(frmPrevenda.lvenda_data.Caption,4,2);an := copy(frmPrevenda.lvenda_data.Caption,7,4);
        WriteLn(f,'                                                                   '+di+'  '+me+'  '+an);//66
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');



        Writeln(f,'  '+FRMPRINCIPAL.texto_justifica(formatfloat('###,###,###,##0.00',VALOR_NOTAZ),10,' ','E')+'       '+
        FRMPRINCIPAL.texto_justifica(NUMERO_NOTAZ,10,' ','D')+'   '+
        FRMPRINCIPAL.texto_justifica(formatfloat('###,###,###,##0.00',frmPrevenda.QRVENDA_CONTASRECEBER.fieldbyname('VALOR').asfloat),10,' ','E')+
                  '   '+FRMPRINCIPAL.texto_justifica(NUMERO_NOTAZ+'/'+FRMPRINCIPAL.zerarcodigo(INTTOSTR(ITEM),2),10,' ','D')+
                  ' '+FRMPRINCIPAL.texto_justifica(datetostr(frmPrevenda.QRVENDA_CONTASRECEBER.fieldbyname('vencimento').asdatetime),10,' ','D'));

        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');


        Writeln(f,'');
        Writeln(f,'                             '+FRMMODULO.QRCLIENTE.fieldbyname('nome').asstring);//31
        Writeln(f, '');
        Writeln(f,'                             '+FRMMODULO.QRCLIENTE.fieldbyname('ENDERECO').asstring);
        Writeln(f,'');
        Writeln(f,'');
        cid := FRMMODULO.QRCLIENTE.fieldbyname('Cidade').asstring;
        texto := cid+FRMMODULO.QRCLIENTE.fieldbyname('uf').asstring;
        while length(texto) < 36 do
        begin
          cid := cid + ' ';
          texto := cid + FRMMODULO.QRCLIENTE.fieldbyname('uf').asstring;
        end;
        texto := texto+'    '+FRMMODULO.QRCLIENTE.fieldbyname('cep').asstring;
        Writeln(f, '                             '+texto);//31
        Writeln(f, '');
        Writeln(f, '                               '+EMITENTE_CIDADE); // 31
        Writeln(f, '');
        Writeln(f, '                               '+FRMMODULO.QRCLIENTE.fieldbyname('cpf').asstring); //31
        Writeln(f, '');
        Writeln(f, '');
        Writeln(f, '');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f, '');
        Writeln(f, '');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');

        TEXTO := AnsiUpperCase(extenso(frmPrevenda.qrvenda_CONTASRECEBER.fieldbyname('VALOR').asfloat));
        IF COPY(TEXTO,1,2) = ' E' THEN DELETE(TEXTO,1,2);
        Writeln(f, '                          '+#15+#27#72+#20+TEXTO);//28
        Writeln(f, '');
        Writeln(f, '');
        Writeln(f, '');
        Writeln(f, '');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f, '');
        Writeln(f, '');
        Writeln(f, '');
        Writeln(f, '');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
      Writeln(f, '');
        Writeln(f, '');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');
        Writeln(f,'');


      frmPrevenda.QRVENDA_CONTASRECEBER.NEXT;
      ITEM := ITEM + 1;

    end;
          CLOSEFILE(F);



  END;

end;

procedure Tfrmprevenda_fechamento.bcancela_cupomClick(Sender: TObject);
var texto : pansichar;
i : integer;
begin
     frmmodulo.qrconfig.open;
     if frmmodulo.qrconfig.FieldByName('ECF_TIPO').asstring = 'ECF-Remoto' then
     begin
       frmmodulo.qrecf_comando.Open;
       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072') ;
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'CANCELARCUPOM';
       FRMMODULO.QRECF_COMANDO.POST;
       FRMMODULO.CONEXAO.COMMIT;
       frmmodulo.conexao_ecfserver.Commit;
     END
     ELSE
     BEGIN
       if frmprincipal.autentica('Cancel.Cupom',4) then
       begin
        TRY
         i := strtoint(ecf_numero_cupom(ecf_modelo));
         IF (ecf_modelo = 'URANO') then
          //
         else
         i := i - 1;
         texto := pansichar(frmprincipal.zerarcodigo(inttostr(i),6));
         texto := pansichar('Confirma o Cancelamento do Cupom Nº '+texto+'?');
         EXCEPT
          TEXTO := 'Confirma o Cancelamento do Cupom?';
         END;
         if application.messagebox(texto,'Cancelamento de Cupom',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
         begin
            ecf_cancela_cupom(ecf_modelo,'');
         end;
       end
       else
       begin
         Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
       end;
  END;
end;

procedure Tfrmprevenda_fechamento.Cancela1Click(Sender: TObject);
begin
  bcancela_cupomClick(frmprevenda_fechamento);
end;

procedure Tfrmprevenda_fechamento.bduplicataClick(Sender: TObject);
var
  sano : string;
  sOrdem : string;
  d, m, a : word;
begin
          qrduplicata.open;

          frmduplicata_impressao := tfrmduplicata_impressao.create(Self);
          if numero_cupomx <> '' then
            frmDuplicata_Impressao.ed_fatura_numero.Text :=  numero_cupomX
          else
            frmDuplicata_Impressao.ed_fatura_numero.Text := NUMERO_VENDAx;

          frmDuplicata_Impressao.ed_fatura_valor.value := RTOTAL.VALUE;
          frmduplicata_impressao.showmodal;


          sOrdem := IntToStr(iOrdem);
          while Length(sOrdem) < 6 do sOrdem := '0'+sOrdem;

          DecodeDate(frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime,a,m,d);
          sano := copy(IntToStr(a),3,2);
          while qrduplicata.recordcount <> 0 do qrduplicata.delete;
          qrduplicata.Refresh;

              frmprevenda.qrvenda_contasreceber.first;
              while not frmprevenda.qrvenda_contasreceber.Eof do
              begin

                  qrduplicata.insert;
                  qrduplicata.fieldbyname('emitente_fantasia').asstring  := emitente_fantasia;
                  qrduplicata.fieldbyname('emitente_RAZAO').asstring     := emitente_nome;
                  qrduplicata.fieldbyname('emitente_telefone').asstring  := 'Fone: '+emitente_telefone;
                  qrduplicata.fieldbyname('emitente_endereco').asstring  := emitente_endereco+' - '+emitente_cidade+' - '+emitente_cep;
                  qrduplicata.fieldbyname('emitente_cnpj').asstring      := emitente_cnpj;
                  qrduplicata.fieldbyname('emitente_ie').asstring        := emitente_ie;

                  qrduplicata.fieldbyname('FATURA_NUMERO').asstring    := sNumero;

                  qrduplicata.fieldbyname('fatura_valor').asstring       := formatfloat('###,###,##0.00',Rvalor);

//                  qrduplicata.fieldbyname('duplicata_numero').asstring   := qrduplicata.fieldbyname('FATURA_NUMERO').asstring+'/'+frmprevenda.qrvenda_contasreceber.fieldbyname('prestacao').asstring;




                  qrduplicata.fieldbyname('duplicata_numero').asstring :=  sOrdem+'/'+sAno+retorna_letra(StrToInt(frmprevenda.qrvenda_contasreceber.fieldbyname('prestacao').asstring));
                  qrduplicata.fieldbyname('duplicata_valor').asstring    := formatfloat('###,###,##0.00',frmprevenda.qrvenda_contasreceber.fieldbyname('valor').asfloat);
                  qrduplicata.fieldbyname('data_vencimento').asdatetime    := frmprevenda.qrvenda_contasreceber.fieldbyname('vencimento').asdatetime;
                  qrduplicata.fieldbyname('data_emissao').asdatetime       := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
                  qrduplicata.fieldbyname('extenso').asstring            := AnsiUpperCase(extenso(frmprevenda.qrvenda_contasreceber.fieldbyname('valor').asfloat));

                  qrcliente.close;
                  qrcliente.sql.clear;
                  qrcliente.sql.add('select * from c000007 where codigo = '''+frmmodulo.qrvenda.fieldbyname('codcliente').asstring+'''');
                  qrcliente.Open;
                  qrduplicata.fieldbyname('sacado_nome').asstring := qrcliente.fieldbyname('nome').asstring;
                  qrduplicata.fieldbyname('sacado_endereco').asstring := qrcliente.fieldbyname('endereco').asstring + ' '+qrcliente.fieldbyname('bairro').asstring;
                  qrduplicata.fieldbyname('sacado_municipio').asstring := qrcliente.fieldbyname('cidade').asstring;
                  qrduplicata.fieldbyname('sacado_uf').asstring := qrcliente.fieldbyname('uf').asstring;
                  qrduplicata.fieldbyname('sacado_cep').asstring := qrcliente.fieldbyname('cep').asstring;
                  qrduplicata.fieldbyname('sacado_cnpj').asstring := qrcliente.fieldbyname('cpf').asstring;
                  qrduplicata.fieldbyname('sacado_ie').asstring := qrcliente.fieldbyname('rg').asstring;
                  qrduplicata.fieldbyname('sacado_praca').asstring := emitente_cidade;
                  qrduplicata.post;

                frmprevenda.qrvenda_contasreceber.next;
              end;

              qrduplicata.SortOnFields('duplicata_numero');


              FXduplicata.LoadFromFile('\DATASAC\server\rel\f000150.fr3');
              FXduplicata.ShowReport;
end;

procedure Tfrmprevenda_fechamento.rfinanceiraExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  efinanceira.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rconvenio.Value +
                 rcrediario.Value +
                 rfinanceira.value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmprevenda_fechamento.rfinanceiraEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
  efinanceira.Brush.Color := $00A8FFFF;;
end;

procedure Tfrmprevenda_fechamento.rfinanceiraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmprevenda_fechamento.BCH_TECBANClick(Sender: TObject);
var vlr : string;
i : integer;
F : TEXTFILE;
begin
  assignfile(f,sTEFKoneKPath+'gp.tmp');
  rewrite(f);
  writeln(f,'TECBAN');
  closefile(f);
  ITEFTECBAN := 1;
  TEFLimpaVariaveis;
  vlr := formatfloat('#############0.00',rchequeAV.value+rchequeAP.value);
  i := pos(',',vlr);
  if i <> 0 then delete(VLR,i,1);
  sTEFValorTotal := VLR;

  TEFVendaCheque;







  if sTEFRetorno = '0' then
  begin
    elcheque := true;
    TEFFINAL := TRUE;
  end;
end;

procedure Tfrmprevenda_fechamento.BCH_REDECARDClick(Sender: TObject);
var vlr : string;
i : integer;
F : TEXTFILE;
begin
  assignfile(f,sTEFKoneKPath+'gp.tmp');
  rewrite(f);
  writeln(f,'REDECARD');
  closefile(f);
  ITEFTECBAN := 0;
  TEFLimpaVariaveis;
  vlr := formatfloat('#############0.00',rchequeAV.value+rchequeAP.value);
  i := pos(',',vlr);
  if i <> 0 then delete(VLR,i,1);
  sTEFValorTotal := VLR;
  TEFVendaCheque;
  if sTEFRetorno = '0' then
  begin
    elcheque := true;
    TEFFINAL := TRUE;
  end;

end;

procedure Tfrmprevenda_fechamento.bcartaoClick(Sender: TObject);
var i : integer;
F : TEXTFILE;
vlr : string;
ECF_OK : BOOLEAN;
begin
    if (rcartaocred.value > 0) or (rcartaodeb.value > 0) then
    begin
    TEFFINAL := FALSE;

      if rcartaocred.value > 0 then
      begin
        assignfile(f,sTEFKoneKPath+'gp.tmp');
        rewrite(f);
        writeln(f,'REDECARD');
        closefile(f);
        iTEFTecban := 0
      end
      else
      begin
        if frmprincipal.msgcard() then
        BEGIN
          assignfile(f,sTEFKoneKPath+'gp.tmp');
          rewrite(f);
          writeln(f,'REDECARD');
          closefile(f);
          iTEFTecban := 0
        END
        else
        BEGIN
          assignfile(f,sTEFKoneKPath+'gp.tmp');
          rewrite(f);
          writeln(f,'TECBAN');
          closefile(f);
          iTEFTecban := 1;
        END;
      end;



        CONTINUA := TRUE;


        TEFLimpaVariaveis;

        ecf_ok := false;
        repeat
             sTEFDoctoVinculado := ecf_numero_cupom(ecf_modelo);
             if sTEFDoctoVinculado = 'ERRO' then
             begin
               BLOCKINPUT(false);
               if application.messagebox('Impressora não responde! Tentar novamente?','Erro ECF',mb_yesno+mb_iconerror) = idno then
               begin
                  CONTINUA := FALSE;
                  ECF_OK := TRUE;
               end
               else
                 BLOCKINPUT(true);
             END
             else
               ecf_ok := true;


        until ecf_ok = true;
        BLOCKINPUT(false);


        IF CONTINUA THEN
        BEGIN
          for i := 1 to 6 do
            sTEFDoctoVinculado := sTEFDoctoVinculado + ' ';



            for i := 1 to 14 do sTEFValorTotal := sTEFValorTotal + ' ';

            vlr := formatfloat('#############0.00',rcartaoCRED.value+RCARTAODEB.VALUE);
            i := pos(',',vlr);
            if i <> 0 then delete(VLR,i,1);

            sTEFValorTotal := VLR;
            sTEFValorTotal := IntToStr(StrToInt(sTEFValorTotal));
            sTEFMoeda := '0';

            TEFVendaCartao;  // 1 passo


            if sTEFRetorno = '0' then
            begin
              TEFFINAL := TRUE;
            end;
          END;
        END;

end;

procedure Tfrmprevenda_fechamento.bpgtoClick(Sender: TObject);
var ret : integer;
ecf_ok : boolean;
begin
  if NOT CONS_CHEQUE then
  begin




    if (rcartaoCRED.value > 0) OR (rcartaoDEB.value <> 0) then
    begin

        continua := true;
        ecf_ok := false;
        repeat

             if ecf_efetua_forma_pgto(ecf_modelo,FCARTAOCR,RCARTAOCRED.VALUE+RCARTAODEB.VALUE) = 'ERRO' then
             begin
               BLOCKINPUT(false);
               if application.messagebox('Impressora não responde! Tentar novamente?','Erro ECF',mb_yesno+mb_iconerror) = idno then
               begin
                 continua := false;
                 ecf_ok := true;
               end
               else
                 BLOCKINPUT(true);
             END
             else
               ecf_ok := true;

        until ecf_ok = true;

        BLOCKINPUT(false);

    end;




  end
  else
  begin
    if (rchequeav.value > 0) OR (rchequeap.value <> 0) then
    begin
        continua := true;
        ecf_ok := false;
        repeat

             if ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAV,RCHEQUEAV.VALUE+RCHEQUEAP.VALUE) = 'ERRO' then
             begin
               BLOCKINPUT(false);
               if application.messagebox('Impressora não responde! Tentar novamente?','Erro ECF',mb_yesno+mb_iconerror) = idno then
               begin
                 continua := false;
                 ecf_ok := true;
               end
               else
                 BLOCKINPUT(true);
             END
             else
               ecf_ok := true;

        until ecf_ok = true;

        BLOCKINPUT(false);

    end;



  end;

end;

end.
