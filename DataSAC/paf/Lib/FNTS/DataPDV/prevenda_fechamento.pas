unit prevenda_fechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, StdCtrls, Mask, ToolEdit, CurrEdit,
  TFlatPanelUnit, Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, wwdbedit, Wwdotdot, Wwdbcomb, AdvShapeButton, AdvGlowButton,
  RxMemDS, MemDS, DBAccess, IBC;

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
    qrcliente: TZQuery;
    Shape8: TShape;
    efinanceira: TShape;
    rfinanceira: TRxCalcEdit;
    Label22: TLabel;
    ibquery1: TIBCQuery;
    PTEF1: TFlatPanel;
    ptef2: TFlatPanel;
    BCH_TECBAN: TButton;
    BCH_REDECARD: TButton;
    bcartao: TButton;
    bpgto: TButton;
    qrvenda: TIBCQuery;
    qrCaixa_mov: TIBCQuery;
    qrcontasreceber: TIBCQuery;
    qrproduto: TIBCQuery;
    qrproduto_mov: TIBCQuery;
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
    procedure rfinanceiraExit(Sender: TObject);
    procedure rfinanceiraEnter(Sender: TObject);
    procedure rfinanceiraKeyPress(Sender: TObject; var Key: Char);
    procedure BCH_TECBANClick(Sender: TObject);
    procedure BCH_REDECARDClick(Sender: TObject);
    procedure bcartaoClick(Sender: TObject);
    procedure bpgtoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprevenda_fechamento: Tfrmprevenda_fechamento;

  porta_impressora : string;
  cons_cheque : boolean;


  JA_ABERTO : BOOLEAN;

  

implementation

uses principal, modulo, funcoes, unECF, unTEF, prevenda, senha_supervisor,
  cheque_avulso, venda_financeira, prevenda_contasreceber, Tef_bandeira;

{$R *.dfm}

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




  IF bTef THEN
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
    frmPrevenda.qrconfig.OPEN;
    IF frmPrevenda.qrconfig.FieldByName('VENDA_LIMITE_CLIENTE').ASINTEGER = 1 THEN
    BEGIN
      if frmPrevenda.qrcliente.FieldByName('situacao').asinteger = 3 then
      begin
        application.messagebox('Cliente com crédito bloqueado! Não será possível prosseguir com o fechamento!','Atenção',mb_ok+mb_iconerror);
        rcrediario.setfocus;
        exit;
      end;
      if frmPrevenda.qrcliente.FieldByName('situacao').asinteger = 5 then
      begin
        application.messagebox('Cliente no SPC! Não será possível prosseguir com o fechamento!','Atenção',mb_ok+mb_iconerror);
        rcrediario.setfocus;
        exit;
      end;

      if frmPrevenda.qrcliente.FieldByName('situacao').asinteger = 2 then
      begin
        texto := pansichar('Cliente está com cadastro em observação: '+#13+
                 frmPrevenda.qrcliente.fieldbyname('obs1').asstring+#13+
                 frmPrevenda.qrcliente.fieldbyname('obs2').asstring+#13+
                 frmPrevenda.qrcliente.fieldbyname('obs3').asstring+#13+
                 frmPrevenda.qrcliente.fieldbyname('obs4').asstring+#13+
                 ''+#13+
                 'Deseja prosseguir com a venda?');


        if application.messagebox(Texto,'Crédito em Observação',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
        begin
          rcrediario.setfocus;
          exit;
        end;
      end;




      if frmPrevenda.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT <> 0 then
      begin
        IF rcrediario.Value > limite_disponivel  THEN
        BEGIN
          texto := pansichar('Este cliente possue um limite disponível de:'+#13+' ---> R$ '+  formatfloat('###,###,##0.00',limite_disponivel)  +'  <--- '+#13+'É necessário autorização para prosseguir! '+#13+'Deseja continuar?');
          if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
          begin
            // abrir o formulario solicitando a senha do supervisor
            frmsenha_supervisor := tfrmsenha_supervisor.create(self);
            frmsenha_supervisor.showmodal;
            // verisificar se o supervisor foi logado
            if bSupervisor_autenticado then
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
      application.messagebox(pansichar('T R O C O'+#13+FORMATFLOAT('R$ ###,###,##0.00',(RDIFERENCA.VALUE)*(-1))),
      'Aviso',mb_ok+MB_ICONINFORMATION);

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
    frmPrevenda.qrconfig.open;
    if frmPrevenda.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
    begin
        CHEQUE_CODCLIENTE := frmPrevenda.qrcliente.fieldbyname('codigo').asstring;
        CHEQUE_VENDA := numero_vendax;

        frmcheque_avulso := Tfrmcheque_avulso.CREATE(SELF);
        frmcheque_avulso.SHOWMODAL;
    end;
  end;
  IF NOT CONTINUAR THEN EXIT;




  frmPrevenda.qrconfig.open;
  if frmPrevenda.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
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

  IF NOT JA_ABERTO THEN
  BEGIN

       // abrir o cupom fiscal
       repeat
         sMsg := cECF_Abre_Cupom(iECF_Modelo,'','','');
         if sMsg <> 'OK' then
         begin
           if application.Messagebox(pansichar('Erro ao abrir o cupom fiscal!'+#13+
                                            'Mensagem: '+sMsg+#13+
                                            'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                            MB_ICONQUESTION) = IdNo then break;


         end;
       until sMsg = 'OK';
       // numero do cupom fiscal
       if sMsg = 'OK' then
       begin
         repeat
           sNumero_contador_cupom := cECF_Numero_Contador_Cupom(iECF_Modelo);
           sMsg := cECF_Numero_Cupom(iECF_Modelo);
           if sMsg = 'ERRO' then
           begin
             if application.Messagebox(pansichar('Erro ao extrair o número do cupom fiscal!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                              MB_ICONQUESTION) = IdNo then break;


           end
           else
           BEGIN
             numero_cupomx := sMsg;
             sNumero_Cupom := numero_cupomx;
           END;
         until sMsg <> 'ERRO';
       end;

       if sMsg = 'ERR0' then EXIT;



        FRMPREVENDA.qrorcamento_produto.FIRST;
        WHILE NOT FRMPREVENDA.qrorcamento_produto.EOF DO
        BEGIN
              IF FRMPREVENDA.QRORCAMENTO_PRODUTO.FIELDBYNAME('SITUACAO').ASSTRING = '2' THEN
                TIPO_DESCONTO := '%' ELSE TIPO_DESCONTO := '$';


                FRMPREvenda.QROrcamento_produto.FIELDBYNAME('CST').ASSTRING;
                FRMPREvenda.QROrcamento_produto.fieldbyname('aliquota').asfloat;


                // VENDER ITEM NO ECF


                repeat
                  sMsg := cECF_Vende_item(iECF_Modelo,
                                          frmPrevenda.qrorcamento_produto.fieldbyname('codproduto').asstring,
                                          frmPrevenda.qrorcamento_produto.fieldbyname('produto').asstring,
                                          frmprevenda.qrorcamento_produto.fieldbyname('unidade').asstring,
                                          Retorna_aliquota(frmprevenda.qrorcamento_produto.fieldbyname('cst').asstring,
                                                           frmprevenda.qrorcamento_produto.fieldbyname('aliquota').asfloat),
                                          frmprevenda.qrorcamento_produto.fieldbyname('qtde').asfloat,
                                          frmprevenda.qrorcamento_produto.fieldbyname('unitario').asfloat,
                                          frmprevenda.qrorcamento_produto.fieldbyname('desconto').asfloat,
                                          tipo_desconto,
                                          frmprevenda.qrorcamento_produto.fieldbyname('total').asfloat);
                  if sMsg <> 'OK' then
                  begin
                    if application.MessageBox(pansichar('Erro ao imprimir item!'+#13+
                                                        'Mensagem: '+sMsg+#13+
                                                        'Deseja tentar outra vez?'),'Erro',mb_yesno+mb_iconquestion) = idno then
                    begin
                      Break;
                    end;

                  end;
                until sMsg = 'OK';


                if sMsg <> 'OK' then break;

                frmprevenda.qrorcamento_produto.next;

        END;

        if sMsg <> 'OK' then exit;

        // abrir a gaveta
        cECF_Abre_Gaveta(iECF_Modelo);

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

              sMsg := cECF_Inicia_Fechamento(iECF_Modelo,tp_desconto_acrescimo,'$',desconto_acrescimo);


              if sMsg <> 'OK' then
              begin
                BLOCKINPUT(false);
                if application.messagebox('Impressora não responde! Tentar novamente?','Erro - 1',mb_yesno+MB_ICONWARNING) = idno then
                begin
                  break;
                end;
              end;

              (*---------------------------------------------------------------------*)
        Until sMsg = 'OK';
        BLOCKINPUT(false);
        jafinalizado := true
      END;

      if sMsg <> 'OK' then exit;


      (*---------------- LANÇAR AS FORMAS DE PAGAMENTO ----------------------*)


            if RDINHEIRO.VALUE > 0 then
            begin
              formasp := lForma_dinheiro[0];
              repeat
                sMsg := cECF_Forma_Pgto(iECF_Modelo,lForma_dinheiro[0],v_dinheiro);
                BLOCKINPUT(false);
                if sMsg <> 'OK' then
                begin
                  if application.messagebox('Impressora não responde! Tentar novamente?','Erro - 2',mb_yesno+MB_ICONWARNING) = idno then
                  begin
                    break;
                  end;
                end;
              until sMsg = 'OK';
            end;
            if sMsg <> 'OK' then exit;

            if RCREDIARIO.VALUE > 0 then
            begin
              FORMASP := lForma_Crediario[0];
              repeat
                sMsg := cECF_Forma_Pgto(iECF_Modelo,lForma_Crediario[0],rcrediario.value);
                BLOCKINPUT(false);

                if sMsg <> 'OK' then
                begin
                  if application.messagebox('Impressora não responde! Tentar novamente?','Erro - 3',mb_yesno+MB_ICONWARNING) = idno then
                  begin
                    break;
                  end;
                end;
              until sMsg = 'OK';
            end;
            if RCONVENIO.VALUE > 0 then
            begin
              FORMASP := lForma_Convenio[0];
              repeat
                sMsg := cECF_Forma_Pgto(iECF_Modelo,lForma_Convenio[0],rconvenio.value);
                BLOCKINPUT(false);
                if sMsg <> 'OK' then
                begin
                  if application.messagebox('Impressora não responde! Tentar novamente?','Erro - 4',mb_yesno+MB_ICONWARNING) = idno then
                  begin
                    break;
                  end;
                end;
              until sMsg = 'OK';
            end;
            if smsg <> 'OK' then exit;

            if RFINANCEIRA.VALUE > 0 then
            begin
              formasp := 'FINANCEIRA' ;
              repeat
                sMsg := cECF_Forma_Pgto(iECF_Modelo,'FINANCEIRA',rfinanceira.value);
                BLOCKINPUT(false);

                if sMsg <> 'OK' then
                begin
                  if application.messagebox('Impressora não responde! Tentar novamente?','Erro - 5',mb_yesno+MB_ICONWARNING) = idno then
                  begin
                    break;
                  end;
                end;
              until sMsg = 'OK';
            end;



           if sMsg <> 'OK' then exit;

          if bTEF then
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
                frmTef_Bandeira := TfrmTef_Bandeira.create(self);
                frmTef_Bandeira.ShowModal;


                  if (Tef_Bandeira_escolhida = Tef_Redecard) then // REDECARD
                     BCH_REDECARDClick(FRMpreVENDA_FECHAMENTO);

                  if (Tef_Bandeira_escolhida = Tef_Tecban) then // TECBAN
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

              end
              ELSE
              BEGIN
                  IF (RCHEQUEAV.VALUE + RCHEQUEAP.VALUE) > 0 THEN
                  BEGIN
                      formasp := lForma_Cheque[0];

                      repeat
                        sMsg := cECF_Forma_Pgto(iECF_Modelo,lforma_cheque[0],RCHEQUEAV.VALUE+rchequeap.value);
                        BLOCKINPUT(false);

                        if sMsg <> 'OK' then
                        begin
                          if application.messagebox('Impressora não responde! Tentar novamente?','Erro - 1',mb_yesno+MB_ICONWARNING) = idno then
                          begin
                            break;
                          end;
                        end;
                      until sMsg = 'OK';
                  END;
              END;
            end;
          end
          else
          begin
                  IF (RCHEQUEAV.VALUE ) > 0 THEN
                  BEGIN
                      formasp := lForma_Cheque[0];


                      repeat
                        sMsg := cECF_Forma_Pgto(iECF_Modelo,lForma_Cheque[0],RCHEQUEAV.VALUE);
                        BLOCKINPUT(false);
                        if sMsg <> 'OK' then
                        begin
                          if application.messagebox('Impressora não responde! Tentar novamente?','Erro - 1',mb_yesno+MB_ICONWARNING) = idno then
                          begin
                            break;
                          end;
                        end;
                      until sMsg = 'OK';
                  END;
                  if sMsg <> 'OK' then exit;


                  IF (RCHEQUEAp.VALUE ) > 0 THEN
                  BEGIN
                      formasp := lForma_Cheque[0];
                      repeat
                        sMsg := cECF_Forma_Pgto(iECF_Modelo,lForma_Cheque[0],RCHEQUEAp.VALUE);
                        BLOCKINPUT(false);
                        if sMsg <> 'OK' then
                        begin
                          if application.messagebox('Impressora não responde! Tentar novamente?','Erro - 1',mb_yesno+MB_ICONWARNING) = idno then
                          begin
                            break;
                          end;
                        END;
                      until sMsg = 'OK';
                  END;

                  if sMsg <> 'OK' then exit;

                  if Rcartaodeb.VALUE > 0 then
                  begin
                    formasp := lForma_Cartao[0];

                    repeat
                      sMsg := cECF_Forma_Pgto(iECF_Modelo,lForma_Cartao[0],rcartaodeb.VALUE);
                      BLOCKINPUT(false);
                      if sMsg <> 'OK' then
                      begin
                        if application.messagebox('Impressora não responde! Tentar novamente?','Erro - 1',mb_yesno+MB_ICONWARNING) = idno then
                        begin
                          break;
                        end;
                      END;
                    until sMsg = 'OK';
                  end;

                  if sMsg <> 'OK' then exit;

                  if Rcartaocred.VALUE > 0 then
                  begin
                    formasp := lForma_Cartao[0];
                    repeat
                      sMsg := cECF_Forma_Pgto(iECF_Modelo,lForma_Cartao[0],rcartaocred.VALUE);
                      BLOCKINPUT(false);

                      if sMsg <> 'OK' then
                      begin
                        if application.messagebox('Impressora não responde! Tentar novamente?','Erro - 1',mb_yesno+MB_ICONWARNING) = idno then
                        begin
                          break;
                        end;
                      END;
                    until sMsg = 'OK';

                  end;

                  if sMsg <> 'OK' then exit;

          end;


      (*---------------------------------------------------------------------*)






      (*---------------- IDENTIFICACAO DO CONSUMIDOR-------------------------*)


           repeat


                frmPrevenda.qrcliente.Open;
                if frmPrevenda.qrcliente.RecordCount = 0 then
                begin
                   sMsg := cECF_Termina_Fechamento(iECF_Modelo, Texto_justifica('CLIENTE.: '+frmPrevenda.qrcliente.fieldbyname('codigo').AsString+'-'+frmPrevenda.qrcliente.fieldbyname('nome').asstring,48,' ',taEsquerda)+#10+
                                                                Texto_justifica(('ENDERECO: '+frmPrevenda.qrcliente.fieldbyname('endereco').asstring+' '+frmPrevenda.qrcliente.fieldbyname('cidade').asstring+'/'+frmPrevenda.qrcliente.fieldbyname('uf').asstring),48,' ',taEsquerda)+#10+
                                                                Texto_justifica('CPF/CNPJ: '+frmPrevenda.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmPrevenda.qrcliente.fieldbyname('rg').asstring,48,' ',taEsquerda)+#10+
                                                                Texto_justifica('VENDEDOR: '+frmPrevenda.qrorcamento.fieldbyname('codvendedor').AsString+'-'+frmPrevenda.qrorcamento.fieldbyname('vendedor').AsString,42,' ',taEsquerda)+#10+
                                                                '------------------------------------------------'+#10+
                                                                '              OBRIGADO!! VOLTE SEMPRE!!         ');
                end
                else
                begin
                  sMsg := cECF_Termina_Fechamento(iECF_Modelo,Texto_justifica('CLIENTE.: '+frmPrevenda.qrcliente.fieldbyname('codigo').AsString+'-'+frmPrevenda.qrcliente.fieldbyname('nome').asstring,48,' ',taEsquerda)+#10+
                                                    Texto_justifica(('ENDERECO: '+frmPrevenda.qrcliente.fieldbyname('endereco').asstring+' '+frmPrevenda.qrcliente.fieldbyname('cidade').asstring+'/'+frmPrevenda.qrcliente.fieldbyname('uf').asstring),48,' ',taEsquerda)+#10+
                                                    Texto_justifica('CPF/CNPJ: '+frmPrevenda.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmPrevenda.qrcliente.fieldbyname('rg').asstring,48,' ',taEsquerda)+#10+
                                                    Texto_justifica('VENDEDOR: '+frmPrevenda.qrorcamento.fieldbyname('codvendedor').AsString+'-'+frmPrevenda.qrorcamento.fieldbyname('vendedor').AsString,42,' ',taEsquerda)+#10+
                                                       '------------------------------------------------'+#10+
                                                       '              OBRIGADO!! VOLTE SEMPRE!!         ') ;
                end;

                if sMsg <> 'OK' then
                begin

                  if application.messagebox('Impressora não responde! Tentar novamente?','Erro - 1',mb_yesno+MB_ICONWARNING) = idno then
                  begin
                    break;
                  end;
                END;

           until sMsg = 'OK';


           if sMsg <> 'OK' then exit;




         if btef then
         begin

            IF TEFFINAL THEN
            BEGIN

              if (FileExists(sTEFTemp_Path + 'TEF.Imp')) then
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

{
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
                             if ecf_usa_CNFV(ecf_modelo,Texto_justifica(FRMPREvenda.QROrcamento_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    Texto_justifica(FRMPREvenda.QROrcamento_produto.fieldbyname('produto').asstring,19,' 'taEsquerda)+
                                    Texto_justifica(formatfloat('######0',FRMPREvenda.QROrcamento_produto.fieldbyname('qtde').asfloat),4,' ','E')+
                                    Texto_justifica(formatfloat('######0.00',FRMPREvenda.QROrcamento_produto.fieldbyname('unitario').asfloat),9,' ','E')+
                                    Texto_justifica(formatfloat('######0.00',FRMPREvenda.QROrcamento_produto.fieldbyname('total').asfloat),9,' ','E')) = 'ERRO' then exit;
                             FRMPREvenda.QROrcamento_produto.Next;
                           end;
                        end;
                     if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                     if ecf_usa_CNFV(ecf_modelo,'TOTAL DOS PRODUTOS .................R$ '+Texto_justifica(formatfloat('######0.00',RSUBTOTAL.VALUE),9,' ','E')) = 'ERRO' then exit;
                     if ecf_usa_CNFV(ecf_modelo,'DESCONTO ...........................R$ '+Texto_justifica(formatfloat('######0.00',rdesconto2.VALUE),9,' ','E')) = 'ERRO' then exit;
                     if ecf_usa_CNFV(ecf_modelo,'T O T A L ..........................R$ '+Texto_justifica(formatfloat('######0.00',rtotal.VALUE),9,' ','E')) = 'ERRO' then exit;
                     if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                     if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                     if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                     if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                     if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;


                      frmPrevenda.qrcliente.Open;

                      if frmPrevenda.qrcliente.RecordCount = 0 then
                        begin
                          if ecf_usa_CNFV(ecf_modelo,'CLIENTE.: '+frmPrevenda.qrcliente.fieldbyname('codigo').asstring+' '+frmPrevenda.qrcliente.fieldbyname('nome').asstring) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,'ENDEREÇO: '+frmPrevenda.qrcliente.fieldbyname('endereco').asstring) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,Texto_justifica('CPF/CNPJ: '+frmPrevenda.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmPrevenda.qrcliente.fieldbyname('rg').asstring,48,' 'taEsquerda)) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,Texto_justifica('VENDEDOR: '+frmPrevenda.qrorcamento.fieldbyname('codvendedor').asstring+'-'+frmPrevenda.qrorcamento.fieldbyname('vendedor').asstring,48,' 'taEsquerda)) = 'ERRO' then exit;
                        end
                      else
                        begin
                          if ecf_usa_CNFV(ecf_modelo,'CLIENTE.: '+frmPrevenda.qrcliente.fieldbyname('codigo').asstring+' '+frmPrevenda.qrcliente.fieldbyname('nome').asstring) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,'ENDEREÇO: '+frmPrevenda.qrcliente.fieldbyname('endereco').asstring) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,Texto_justifica('CPF/CNPJ: '+frmPrevenda.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmPrevenda.qrcliente.fieldbyname('rg').asstring,48,' 'taEsquerda)) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,Texto_justifica('VENDEDOR: '+frmPrevenda.qrorcamento.fieldbyname('codvendedor').asstring+'-'+frmPrevenda.qrorcamento.fieldbyname('vendedor').asstring,48,' 'taEsquerda)) = 'ERRO' then exit;
                        end;

                         if rconvenio.Value > 0 then
                           begin
                             //if ecf_usa_CNFV(ecf_modelo,Texto_justifica('CONVENIO: '+econvenio_codconvenio.Text+'-'+econvenio_convenio.Text,42,' 'taEsquerda)) = 'ERRO' then exit;
                             if ecf_usa_CNFV(ecf_modelo,Texto_justifica('CONVENIO: '+econvenio_codconvenio.Text+'-'+econvenio_convenio.Text,42,' 'taEsquerda)) = 'ERRO' then exit;
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
                                 if ecf_usa_CNFV(ecf_modelo,Texto_justifica('CUPOM.....: '+NUMERO_CUPOMx,48,' 'taEsquerda)) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,Texto_justifica('DOCUMENTO.: '+frmPrevenda.qrvenda_contasreceber.FieldByName('documento').asstring,48,' 'taEsquerda)) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,Texto_justifica('VENDEDOR..: '+frmPrevenda.qrorcamentoCODVENDEDOR.AsString+'-'+frmPrevenda.qrorcamentovendedor.AsString,48,' 'taEsquerda)) = 'ERRO' then exit;
                                 if rconvenio.Value > 0 then
                                   if ecf_usa_CNFV(ecf_modelo,Texto_justifica('CONVENIO..: '+econvenio_codconvenio.Text+'-'+econvenio_convenio.Text,42,' 'taEsquerda)) = 'ERRO' then exit;

                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;

                                   frmPrevenda.qrcliente.Open;


                                if frmPrevenda.qrcliente.RecordCount = 0 then
                                begin
                                  if ecf_usa_CNFV(ecf_modelo,Texto_justifica('CLIENTE...: '+frmPrevenda.qrcliente.fieldbyname('codigo').asstring+'-'+frmPrevenda.qrcliente.fieldbyname('nome').asstring,48,' 'taEsquerda)) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,Texto_justifica(('ENDERECO..: '+frmPrevenda.qrcliente.fieldbyname('endereco').asstring+' '+frmPrevenda.qrcliente.fieldbyname('cidade').asstring+'/'+frmPrevenda.qrcliente.fieldbyname('uf').asstring),48,' 'taEsquerda)) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,Texto_justifica('CPF/CNPJ..: '+frmPrevenda.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmPrevenda.qrcliente.fieldbyname('rg').asstring,48,' 'taEsquerda)) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,Texto_justifica('IE/RG.....: '+frmPrevenda.qrcliente.fieldbyname('rg').asstring,42,' 'taEsquerda)) = 'ERRO' then exit;
                                end
                                else
                                begin
                                  if ecf_usa_CNFV(ecf_modelo,Texto_justifica('CLIENTE...: '+frmPrevenda.qrcliente.fieldbyname('codigo').asstring+'-'+frmPrevenda.qrcliente.fieldbyname('nome').asstring,48,' 'taEsquerda)) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,Texto_justifica(('ENDERECO..: '+frmPrevenda.qrcliente.fieldbyname('endereco').asstring+' '+frmPrevenda.qrcliente.fieldbyname('cidade').asstring+'/'+frmPrevenda.qrcliente.fieldbyname('uf').asstring),48,' 'taEsquerda)) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,Texto_justifica('CPF/CNPJ..: '+frmPrevenda.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmPrevenda.qrcliente.fieldbyname('rg').asstring,48,' 'taEsquerda)) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,Texto_justifica('IE/RG.....: '+frmPrevenda.qrcliente.fieldbyname('rg').asstring,42,' 'taEsquerda)) = 'ERRO' then exit;
                                end;

                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'   Este comprovante não é um documento fiscal   ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,Texto_justifica('PARCELA...: '+frmPrincipal.zerarcodigo(frmPrevenda.qrvenda_contasreceber.fieldbyname('prestacao').asstring,6),42,' 'taEsquerda)) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,Texto_justifica('VENCIMENTO: '+frmPrevenda.qrvenda_contasreceber.FieldByName('vencimento').AsString,42,' 'taEsquerda)) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,Texto_justifica('VALOR.....: '+formatfloat('#,###,##0.00',frmPrevenda.qrvenda_contasreceber.FieldByName('valor').AsFloat),38,' 'taEsquerda)) = 'ERRO' then exit;
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


          }
         end;


    //***************************************************************************\\
    //***************************************************************************\\
    //***************************************************************************\\


    // lancamento da venda

    FI_LANCTO := FRMPRINCIPAL.codifica('000123');
















    qrcontasreceber.open;
    if rdinheiro.value <> 0 then
    begin
      qrcontasreceber.insert;
      qrcontasreceber.fieldbyname('codigo').asstring          := numero_vendax+'/00';
      qrcontasreceber.fieldbyname('codvenda').asstring        := numero_vendax;
      qrcontasreceber.fieldbyname('codcliente').asstring      := frmPrevenda.qrcliente.fieldbyname('codigo').asstring;
      qrcontasreceber.fieldbyname('codregiao').asstring       := frmPrevenda.qrcliente.fieldbyname('codregiao').asstring;
      qrcontasreceber.fieldbyname('codvendedor').asstring     := frmprevenda.qrorcamento.fieldbyname('codvendedor').asstring;
      qrcontasreceber.fieldbyname('codcaixa').asstring        := '000099';
      qrcontasreceber.fieldbyname('data_emissao').asdatetime    := ddata_sistema;
      qrcontasreceber.fieldbyname('data_vencimento').asdatetime := ddata_sistema;
      qrcontasreceber.fieldbyname('valor_original').asfloat   := RDINHEIRO.VALUE;
      qrcontasreceber.fieldbyname('valor_pago').asfloat       := RDINHEIRO.VALUE;
      qrcontasreceber.fieldbyname('valor_atual').asfloat      := 0;
      qrcontasreceber.fieldbyname('documento').asstring       := 'ENTRADA';
      qrcontasreceber.fieldbyname('tipo').asstring            := frmPREvenda.qrvenda_contasreceber.fieldbyname('tipo').asstring;
      qrcontasreceber.FieldByName('situacao').asinteger       := 2;
      qrcontasreceber.FieldByName('filtro').asinteger         := 0;
      qrcontasreceber.fieldbyname('numero_cupom').asstring    := numero_cupomX;
      qrcontasreceber.post;

    end;

         y := 1;
    frmPREvenda.qrvenda_contasreceber.First;
    while not frmPREvenda.qrvenda_contasreceber.eof do
    begin
      qrcontasreceber.insert;
      qrcontasreceber.fieldbyname('codigo').asstring          := numero_vendax+'/'+zerar(inttostr(y),2);
      qrcontasreceber.fieldbyname('codvenda').asstring        := numero_vendax;
      qrcontasreceber.fieldbyname('codcliente').asstring      := frmPrevenda.qrcliente.fieldbyname('codigo').asstring;
      qrcontasreceber.fieldbyname('codregiao').asstring       := frmPrevenda.qrcliente.fieldbyname('codregiao').asstring;
      qrcontasreceber.fieldbyname('codvendedor').asstring     := frmprevenda.qrorcamento.fieldbyname('codvendedor').asstring;
      qrcontasreceber.fieldbyname('codcaixa').asstring        := '000099';
      qrcontasreceber.fieldbyname('data_emissao').asdatetime    := ddata_sistema;
      qrcontasreceber.fieldbyname('data_vencimento').asdatetime := frmPREvenda.qrvenda_contasreceber.fieldbyname('vencimento').asdatetime;
      qrcontasreceber.fieldbyname('valor_original').asfloat   := frmPREvenda.qrvenda_contasreceber.fieldbyname('valor').asfloat;
      qrcontasreceber.fieldbyname('valor_atual').asfloat      := frmPREvenda.qrvenda_contasreceber.fieldbyname('valor').asfloat;
      qrcontasreceber.fieldbyname('documento').asstring       := frmPREvenda.qrvenda_contasreceber.fieldbyname('documento').asstring;
      qrcontasreceber.fieldbyname('tipo').asstring            := frmPREvenda.qrvenda_contasreceber.fieldbyname('tipo').asstring;
      qrcontasreceber.FieldByName('situacao').asinteger       := 1;
      qrcontasreceber.FieldByName('filtro').asinteger         := 0;
      qrcontasreceber.fieldbyname('numero_cupom').asstring    := numero_cupomX;
      qrcontasreceber.post;
      frmPREvenda.qrvenda_contasreceber.next;
      y := y + 1;
    end;


    //




      frmprevenda.qrorcamento.Delete;
  except
    application.MessageBox('Esta venda não poder ser concluída por ter gerado erros! Todos os lançamentos feitos nela serão cancelados!','Erro',mb_ok+MB_ICONERROR);
//    ecf_cancela_cupom(ecf_modelo,'V');
//    frmmodulo.Conexao.Rollback;
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
  if bTEF then
  begin
    ptef1.visible := true;
    ptef2.visible := true;
  end;
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

(*
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

  *)

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
(*  tedit(sender).Color := clwindow;
  //econvenio_coDcliente.text := zerar(frmvenda_inicio.ECLIENTE.Text,6);
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

  *)

end;

procedure Tfrmprevenda_fechamento.econvenio_codclienteKeyPress(
  Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);

end;

procedure Tfrmprevenda_fechamento.bconvenio_clienteClick(Sender: TObject);
begin
(*  frmXloc_cliente := tfrmXloc_cliente.create(self);
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

   *)
end;

procedure Tfrmprevenda_fechamento.convenio_comboExit(Sender: TObject);
begin
  pconvenio.Visible := true;

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
{  assignfile(f,sTEFTemp_Path+'gp.tmp');
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
}
end;

procedure Tfrmprevenda_fechamento.BCH_REDECARDClick(Sender: TObject);
var vlr : string;
i : integer;
F : TEXTFILE;
begin
{  assignfile(f,sTEFTemp_Path+'gp.tmp');
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
}
end;

procedure Tfrmprevenda_fechamento.bcartaoClick(Sender: TObject);
var i : integer;
F : TEXTFILE;
vlr : string;
ECF_OK : BOOLEAN;
begin
{    if (rcartaocred.value > 0) or (rcartaodeb.value > 0) then
    begin
    TEFFINAL := FALSE;

      if rcartaocred.value > 0 then
      begin
        assignfile(f,sTEFTemp_Path+'gp.tmp');
        rewrite(f);
        writeln(f,'REDECARD');
        closefile(f);
        iTEFTecban := 0
      end
      else
      begin
        if frmprincipal.msgcard() then
        BEGIN
          assignfile(f,sTEFTemp_Path+'gp.tmp');
          rewrite(f);
          writeln(f,'REDECARD');
          closefile(f);
          iTEFTecban := 0
        END
        else
        BEGIN
          assignfile(f,sTEFTemp_Path+'gp.tmp');
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

}

end;

procedure Tfrmprevenda_fechamento.bpgtoClick(Sender: TObject);
var ret : integer;
ecf_ok : boolean;
begin
{
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
}

end;

end.
