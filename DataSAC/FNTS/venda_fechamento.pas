unit venda_fechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, StdCtrls, Mask, ToolEdit, CurrEdit,
  TFlatPanelUnit, Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, jpeg, RXCtrls, ZSqlUpdate, AdvGlowButton;

type
  Tfrmvenda_fechamento = class(TForm)
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    DataSource1: TDataSource;
    qrcontasreceber: TZQuery;
    Image1: TImage;
    lsubtotal: TRxLabel;
    rdesconto1: TRxCalcEdit;
    rdesconto2: TRxCalcEdit;
    racrescimo1: TRxCalcEdit;
    racrescimo2: TRxCalcEdit;
    Shape7: TShape;
    Shape8: TShape;
    rsubtotal: TRxCalcEdit;
    rtotal: TRxCalcEdit;
    ltotal: TRxLabel;
    rdinheiro: TRxCalcEdit;
    rchequeav: TRxCalcEdit;
    rchequeap: TRxCalcEdit;
    rcartaocred: TRxCalcEdit;
    rcartaodeb: TRxCalcEdit;
    rcrediario: TRxCalcEdit;
    rsoma: TRxCalcEdit;
    rdiferenca: TRxCalcEdit;
    lsoma: TRxLabel;
    ldiferenca: TRxLabel;
    Confirmar1: TMenuItem;
    idinheiro: TImage;
    ichequeav: TImage;
    ichequeap: TImage;
    icrediario: TImage;
    idebito: TImage;
    icredito: TImage;
    bcartao: TButton;
    bpgto: TButton;
    BCH_TECBAN: TButton;
    BCH_REDECARD: TButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    procedure rdesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure racrescimo2KeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1Exit(Sender: TObject);
    procedure rdesconto2Exit(Sender: TObject);
    procedure racrescimo1Exit(Sender: TObject);
    procedure racrescimo2Exit(Sender: TObject);
    procedure rdinheiroExit(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure rcrediarioKeyPress(Sender: TObject; var Key: Char);
    procedure Cancelar1Click(Sender: TObject);
    procedure rchequeavExit(Sender: TObject);
    procedure rchequeapExit(Sender: TObject);
    procedure rcartaocredExit(Sender: TObject);
    procedure rcartaodebExit(Sender: TObject);
    procedure rcrediarioExit(Sender: TObject);
    procedure rsubtotalChange(Sender: TObject);
    procedure rtotalChange(Sender: TObject);
    procedure rsomaChange(Sender: TObject);
    procedure rdiferencaChange(Sender: TObject);
    procedure Confirmar1Click(Sender: TObject);
    procedure rdinheiroEnter(Sender: TObject);
    procedure rchequeavEnter(Sender: TObject);
    procedure rchequeapEnter(Sender: TObject);
    procedure rcartaocredEnter(Sender: TObject);
    procedure rcartaodebEnter(Sender: TObject);
    procedure rcrediarioEnter(Sender: TObject);
    procedure bcartaoClick(Sender: TObject);
    procedure bpgtoClick(Sender: TObject);
    procedure BCH_TECBANClick(Sender: TObject);
    procedure BCH_REDECARDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_fechamento: Tfrmvenda_fechamento;
  texto_final : string;

  cons_cheque : boolean;


implementation

uses modulo, principal, venda_contasreceber, troco, consumidor, loc_cliente, venda_impressao,
  ecf_daruma, ecf_bematech, ecf_sweda, ecf_urano, ecf_yanco, veiculo_ident,
  cheque, unFuncoesTEF, consulta_cheque;

{$R *.dfm}

procedure Tfrmvenda_fechamento.rdesconto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmvenda_fechamento.racrescimo2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then rdinheiro.SetFocus;
end;

procedure Tfrmvenda_fechamento.rdesconto1Exit(Sender: TObject);
begin



  if rdesconto1.value <> 0 then
  begin
    if rdesconto1.value > frmmodulo.qrconfig_server.fieldbyname('DESCONTO_TOTALNOTA').asfloat then
    begin
      IF not frmprincipal.autentica('Permitir Desconto',3) then
      begin
        rdesconto1.value := 0;
        rdesconto2.Value := 0;
        rdesconto1.setfocus;
        exit;
      end;
    end;
    rdesconto2.Value := rsubtotal.value * (rdesconto1.Value / 100);
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.Value;

  if rdesconto2.value <> 0 then racrescimo1.SetFocus;
end;

procedure Tfrmvenda_fechamento.rdesconto2Exit(Sender: TObject);
begin
  if rsubtotal.value <> 0 then
  begin
    rdesconto1.Value := (rdesconto2.Value * 100)/rsubtotal.value;
  end;

    if rdesconto1.value > frmmodulo.qrconfig_server.fieldbyname('DESCONTO_TOTALNOTA').asfloat then
    begin
      IF not frmprincipal.autentica('Permitir Desconto',3) then
      begin
        rdesconto1.value := 0;
        rdesconto2.Value := 0;
        rdesconto2.setfocus;
        exit;
      end;
    end;


  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmvenda_fechamento.racrescimo1Exit(Sender: TObject);
begin

  if racrescimo1.value <> 0 then
  begin

    if (racrescimo1.value * (-1)) > frmmodulo.qrconfig_server.fieldbyname('DESCONTO_TOTALNOTA').asfloat then
    begin
      IF not frmprincipal.autentica('Permitir Desconto',4) then
      begin
        rdesconto1.value := 0;
        rdesconto2.Value := 0;
        rdesconto1.setfocus;
        exit;
      end;
    end;
    racrescimo2.Value := rsubtotal.value * (racrescimo1.Value / 100);
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.Value;

  if racrescimo2.value <> 0 then rdinheiro.setfocus;
end;

procedure Tfrmvenda_fechamento.racrescimo2Exit(Sender: TObject);
begin

  if rsubtotal.value <> 0 then
  begin
    racrescimo1.Value := (racrescimo2.Value * 100)/rsubtotal.value;
  end;
    if (racrescimo1.value * (-1)) > frmmodulo.qrconfig_server.fieldbyname('DESCONTO_TOTALNOTA').asfloat then
    begin
      IF not frmprincipal.autentica('Permitir Desconto',4) then
      begin
        rdesconto1.value := 0;
        rdesconto2.Value := 0;
        rdesconto1.setfocus;
        exit;
      end;
    end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmvenda_fechamento.rdinheiroExit(Sender: TObject);
begin

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rcrediario.Value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmvenda_fechamento.bgravarClick(Sender: TObject);
var texto : pansichar;
 texto2, texto3, forma_pgto : string;
 desconto_acrescimo : real;
 tp_desconto_acrescimo, cod_cliente : string;
 vt : integer;
 v_dinheiro:real;
 Data: TDateTime;
 dia, mes, ano: Word;
 vlimite : double;

 ecf_ok : boolean;

 qtef:integer;

 cvinc : boolean;


begin

  if (rdiferenca.value * (-1)) > (rdinheiro.value+rchequeav.value+rchequeap.value) then
  begin
    application.messagebox('Impossível voltar troco pelas formas de pagamento lançadas!','Erro',mb_ok+mb_iconerror);
    exit;
  end;

  cons_cheque := false;
  TEFFINAL := FALSE;
  elcheque := false;

  IF USA_TEF THEN
  BEGIN

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



  vlimite := 0;

  bgravar.Enabled := false;


  if rtotal.value = 0 then
  begin
    application.messagebox('Venda zerada! Impossível prosseguir!','Erro',mb_ok+mb_iconerror);
    rdinheiro.setfocus;
    bgravar.Enabled := true;
    exit;
  end;

  IF rsoma.Value = 0 then
  begin
    rdinheiro.Value := rtotal.Value;
    rdiferenca.Value := 0;
  end;

   consumidor_codigo := '';


  idinheiro.visible := false;
  ichequeav.Visible := false;
  ichequeap.visible := false;
  icredito.visible := false;
  idebito.Visible := false;
  icrediario.Visible := false;




  MUDOU_2 := 'NAO';

  v_dinheiro := rdinheiro.value;

  if rdiferenca.Value <> 0 then
  begin
    IF RDINHEIRO.VALUE > RDIFERENCA.VALUE THEN
    BEGIN
      frmvenda_troco := tfrmvenda_troco.create(self);
      frmvenda_troco.ltroco.caption := FORMATFLOAT('###,###,##0.00',(RDIFERENCA.VALUE)*(-1));
      frmvenda_troco.showmodal;

//      RDINHEIRO.VALUE := RDINHEIRO.VALUE + RDIFERENCA.VALUE;
//      RDIFERENCA.VALUE := 0;
//      APPLICATION.ProcessMessages;
    END
    ELSE
    BEGIN
      application.MessageBox('Os valores informados nas formas de pagamento não confere com o valor total desta venda! Favor verificar!','Atenção',mb_ok+MB_ICONWARNING);
      rdinheiro.setfocus;
      bgravar.Enabled := true;
      exit;
    END;
  end;

  CONTINUAR := TRUE;


  if rcrediario.Value <> 0 then
  begin
    codcliente := '';
    frmloc_cliente := tfrmloc_cliente.create(self);
    frmloc_cliente.showmodal;

  if CODCLIENTE <> '' then
  begin

    FRMMODULO.QRCONFIG_complus.OPEN;
    IF FRMMODULO.QRCONFIG_complus.FieldByName('VENDA_LIMITE_CLIENTE').ASINTEGER = 1 THEN
    BEGIN
       IF frmmodulo.qrcliente.FieldByName('SITUACAO').ASINTEGER > 1 THEN
       BEGIN
         IF frmmodulo.qrcliente.FieldByName('SITUACAO').ASINTEGER = 2 THEN
         BEGIN

              texto := pansichar('Este cliente está com o cadastro com observações: '+#13+
                                  frmmodulo.qrcliente.fieldbyname('obs1').asstring+#13+
                                  frmmodulo.qrcliente.fieldbyname('obs2').asstring+#13+
                                  frmmodulo.qrcliente.fieldbyname('obs3').asstring+#13+
                                  frmmodulo.qrcliente.fieldbyname('obs4').asstring+#13+
                                  'Deseja prosseguir com esta venda?');

              if application.messagebox(texto,'Atenção',mb_yesno+mb_iconwarning) = idyes then
              begin
               qrcontasreceber.close;
               qrcontasreceber.sql.clear;
               //qrcontasreceber.sql.add('select codcliente,situacao,data_vencimento,SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' and situacao = 1');
               qrcontasreceber.sql.add('select codcliente,situacao,data_vencimento,SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' and situacao = 1');
               qrcontasreceber.sql.add('GROUP BY codcliente,situacao,DATA_VENCIMENTO');
               qrcontasreceber.Open;

                 while not qrcontasreceber.Eof do
                 begin
                   vlimite := vlimite+qrcontasreceber.fieldbyname('total_cliente').AsFloat;
                   qrcontasreceber.Next;
                 end;

               qrcontasreceber.First;



  if verifica_prestacao_atrazo = '1' then // prestação em atrazo
  begin
    while not qrcontasreceber.Eof do
    begin
      Data := date - qrcontasreceber.FieldByName('DATA_VENCIMENTO').AsDateTime;
      DecodeDate( Data, ano, mes, dia);

      if data > 30 then
        begin
          texto := pansichar('Cliente com Prestação vencida a ' + FloatToStr(Data)+' Dias!, Deseja continuar?');
          if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
            begin
              if not frmPrincipal.autentica('Liberar venda',4) then
                begin
                  application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
                  bgravar.Enabled := true;
                  exit;
                end;
            end
          else
            begin
              bgravar.Enabled := true;

              exit;
            end;

          Break;

        end;
        qrcontasreceber.Next;
    end;
  end;

                limite_disponivel := FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - vlimite;

                IF (frmvenda_fechamento.rcrediario.Value > limite_disponivel) then
                BEGIN
                  texto := pansichar('Este cliente possue um limite disponível de:'+#13+' ---> R$ '+formatfloat('###,###,##0.00',limite_disponivel)+'  <--- '+#13+'É necessário autorização para prosseguir! '+#13+'Deseja continuar?');
                  if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
                  begin
                    if not frmPrincipal.autentica('Liberar venda',4) then
                    begin
                      application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
                      bgravar.Enabled := true;
                      close;
                      exit;
                    end;
                  end
                  else
                  begin
                    close;
                    bgravar.Enabled := true;
                    exit;
                  end;
                END
                else
                begin
                    if not frmPrincipal.autentica('Liberar venda',4) then
                    begin
                      application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
                      bgravar.Enabled := true;
                      close;
                      exit;
                    end;
                end;
              end
              else
              begin
                bgravar.Enabled := true;
                exit;
              end;
         END
         ELSE
         BEGIN
           APPLICATION.MESSAGEBOX('Cliente com cadastro bloqueado! Favor contactar a gerência!','Atenção!',MB_OK+MB_ICONERROR);
           bgravar.Enabled := true;
           exit;
         END;
       END
       ELSE
       BEGIN
               qrcontasreceber.close;
               qrcontasreceber.sql.clear;
               //qrcontasreceber.sql.add('select codcliente,situacao,data_vencimento,SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' and situacao = 1');
               qrcontasreceber.sql.add('select codcliente,situacao,data_vencimento,SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' and situacao = 1');
               qrcontasreceber.sql.add('GROUP BY codcliente,situacao,DATA_VENCIMENTO');
               qrcontasreceber.Open;

                while not qrcontasreceber.Eof do
                 begin
                   vlimite := vlimite+qrcontasreceber.fieldbyname('total_cliente').AsFloat;
                   qrcontasreceber.Next;
                 end;

               qrcontasreceber.First;

  if verifica_prestacao_atrazo = '1' then // prestação em atrazo
  begin
    while not qrcontasreceber.Eof do
    begin
      Data := date - qrcontasreceber.FieldByName('DATA_VENCIMENTO').AsDateTime;
      DecodeDate( Data, ano, mes, dia);

      if data > 30 then
        begin
          texto := pansichar('Cliente com Prestação vencida a ' + FloatToStr(Data)+' Dias!, Deseja continuar?');
          if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
            begin
              if not frmPrincipal.autentica('Liberar venda',4) then
                begin
                  application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
                  bgravar.Enabled := true;

                  exit;
                end;
            end
          else
            begin
              bgravar.Enabled := true;

              exit;
            end;

          Break;

        end;
        qrcontasreceber.Next;
    end;
  end;

         limite_disponivel := FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - vlimite;
         IF frmvenda_fechamento.rcrediario.Value > limite_disponivel then
         BEGIN
           texto := pansichar('Este cliente possue um limite disponível de:'+#13+' ---> R$ '+formatfloat('###,###,##0.00',limite_disponivel)+'  <--- '+#13+'É necessário autorização para prosseguir! '+#13+'Deseja continuar?');
           if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
           begin
             if not frmPrincipal.autentica('Liberar venda',4) then
             begin
               application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
               bgravar.Enabled := true;
               close;
               exit;
             end;
           end
           else
           begin
             bgravar.Enabled := true;
             close;
             exit;
           end;
         END;
       END;
    END;
  end;


    IF CODCLIENTE = '' THEN
    BEGIN
      APPLICATION.MessageBox('VENDA EM CREDIÁRIO --> Favor informar um cliente válido!','Atenção',mb_ok+MB_ICONERROR);
      bgravar.Enabled := true;
      exit;
    END;

    consumidor_nome := FRMMODULO.QRCLIENTE.FIELDBYNAME('NOME').ASSTRING;
    consumidor_codigo:= FRMMODULO.QRCLIENTE.FIELDBYNAME('codigo').ASSTRING;
    consumidor_endereco := FRMMODULO.QRCLIENTE.FIELDBYNAME('ENDERECO').ASSTRING+' '+FRMMODULO.QRCLIENTE.FIELDBYNAME('BAIRRO').ASSTRING;
    consumidor_cidade := FRMMODULO.QRCLIENTE.FIELDBYNAME('CIDADE').ASSTRING;;
    consumidor_uf := FRMMODULO.QRCLIENTE.FIELDBYNAME('UF').ASSTRING;;
    consumidor_cpf := FRMMODULO.QRCLIENTE.FIELDBYNAME('CPF').ASSTRING;;


    frmvenda_contasreceber := tfrmvenda_contasreceber.create(self);
    frmvenda_contasreceber.showmodal;
  end
  else
  begin
    sel_cliente := false;
    frmconsumidor := tfrmconsumidor.create(self);
    frmconsumidor.showmodal;
    if not sel_cliente then
    begin
       bgravar.Enabled := true;
       exit;
    end;
  end;


  CONTINUAR := TRUE;

  numero_venda := frmprincipal.codifica('000048',7);


  if (rchequeav.Value <> 0) or (rchequeap.Value <> 0 ) then
  begin
  frmmodulo.qrconfig.open;

  if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
  begin

      CHEQUE_CODCLIENTE := '';
      CHEQUE_VENDA := numero_venda;

      FRMCHEQUE := TFRMCHEQUE.CREATE(SELF);
      FRMCHEQUE.SHOWMODAL;
  end;
  end;
  IF NOT CONTINUAR THEN EXIT;

  IF NOT CONTINUAR THEN
  begin
    bgravar.Enabled := true;
    EXIT;
  end;

  ////  LANCAMENTOS ESPECIFICOS DE CADA FORMA DE PAGAMENTO



  if informa_veiculo = '1' then
  begin
    frmveiculo_ident := tfrmveiculo_ident.create(self);
    frmveiculo_ident.showmodal;
  end
  else
  begin
    texto_final :=  '              OBRIGADO!! VOLTE SEMPRE!!         ';
  end;





  IF ECF_MODELO = '' THEN
  BEGIN
//
  END
  ELSE
  BEGIN
//    try

    //***************************************************************************\\
    //***************************************************************************\\
    //   ENVIA COMANDO PARA O ECF


      (*********** ABRIR GAVETA ***********)

      ecf_ok := false;

      repeat

        IF ECF_MODELO = 'DARUMA'   THEN
        begin
          if  FRMECF_DARUMA.ecf_abre_gaveta(ecf_modelo)   = 'ERRO' then
          begin
            BLOCKINPUT(false);
            if application.messagebox('Impressora não responde! Tentar novamente?','Erro',mb_yesno+MB_ICONWARNING) = idno then
            begin
              bgravar.Enabled := true;
              exit;
            end
            else
              BLOCKINPUT(true);
          end
          else
            ecf_ok := true;
        end;

        IF ECF_MODELO = 'BEMATECH' THEN
        BEGIN
          if  FRMECF_BEMATECH.ecf_abre_gaveta(ecf_modelo) = 'ERRO' then
          begin
            BLOCKINPUT(false);
            if application.messagebox('Impressora não responde! Tentar novamente?','Erro',mb_yesno+MB_ICONWARNING) = idno then
            begin
              bgravar.Enabled := true;
              exit;
            end
            else
              BLOCKINPUT(true);
          end
          else
            ecf_ok := true;
        END;

        IF ECF_MODELO = 'SWEDA'    THEN if  FRMECF_SWEDA.ecf_abre_gaveta(ecf_modelo)    = 'ERRO' then begin bgravar.Enabled := true; exit; end;
        IF ECF_MODELO = 'URANO'    THEN if  FRMECF_URANO.ecf_abre_gaveta(ecf_modelo)    = 'ERRO' then begin bgravar.Enabled := true; exit; end;
        IF ECF_MODELO = 'YANCO'    THEN if  FRMECF_YANCO.ecf_abre_gaveta(ecf_modelo)    = 'ERRO' then begin bgravar.Enabled := true; exit; end;


      until ecf_ok = true;

      BLOCKINPUT(false);












        IF ECF_MODELO = '' THEN
        BEGIN
          FRMMODULO.QRCONFIG.Open;
          IF FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring = 'DARUMA'   then FRMECF_DARUMA.ecf_abre_gaveta(FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring);
          IF FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring = 'BEMATECH' then FRMECF_bematech.ecf_abre_gaveta(FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring);
          IF FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring = 'SWEDA'    then FRMECF_sweda.ecf_abre_gaveta(FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring);
          IF FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring = 'URANO'    then FRMECF_urano.ecf_abre_gaveta(FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring);
          IF FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring = 'YANCO'    then FRMECF_yanco.ecf_abre_gaveta(FRMMODULO.qrconfig.fieldbyname('ecf_modelo').asstring);
        END;




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


      if not jafinalizado then
      begin
          ecf_ok := false;
        repeat

          IF ECF_MODELO = 'DARUMA'   THEN
          begin
            if FRMECF_DARUMA.ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,frmvenda_fechamento.rtotal.value) = 'ERRO' then
            begin
              BLOCKINPUT(false);
              if application.messagebox('Impressora não responde! Tentar novamente?','Erro',mb_yesno+MB_ICONWARNING) = idno then
              begin
                bgravar.Enabled := true;
                exit;
              end
              else
                BLOCKINPUT(true);
            end
            else
              ecf_ok := true;


          end;


          IF ECF_MODELO = 'BEMATECH' THEN
          begin
            if FRMECF_BEMATECH.ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,frmvenda_fechamento.rtotal.value) = 'ERRO' then
            begin
              BLOCKINPUT(false);
              if application.messagebox('Impressora não responde! Tentar novamente?','Erro',mb_yesno+MB_ICONWARNING) = idno then
              begin
                bgravar.Enabled := true;
                exit;
              end
              else
                BLOCKINPUT(true);
            end
            else
              ecf_ok := true;
          end;


          IF ECF_MODELO = 'SWEDA'    THEN if FRMECF_SWEDA.ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,frmvenda_fechamento.rtotal.value) = 'ERRO' then begin bgravar.Enabled := true; exit; end;
          IF ECF_MODELO = 'YANCO'    THEN if FRMECF_URANO.ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,frmvenda_fechamento.rtotal.value) = 'ERRO' then begin bgravar.Enabled := true; exit; end;
          IF ECF_MODELO = 'URANO'    THEN if FRMECF_YANCO.ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,frmvenda_fechamento.rtotal.value) = 'ERRO' then begin bgravar.Enabled := true; exit; end;


        Until ecf_ok = true;

        BLOCKINPUT(false);




        jafinalizado := true;
      end;


      (*---------------------------------------------------------------------*)


      (*---------------- LANÇAR AS FORMAS DE PAGAMENTO ----------------------*)



          if ecf_modelo = 'SWEDA' then if FRMECF_SWEDA.ecf_efetua_forma_pgto_especial(ecf_modelo,'',v_dinheiro,'',rchequeav.value,'',rchequeap.value,'',rcartaocred.value,'',rcartaodeb.value,'',rcrediario.value) = 'ERRO' then begin bgravar.Enabled := true; exit; end;

          if ecf_modelo = 'DARUMA' then
          begin
            if RDINHEIRO.VALUE   > 0 then begin  forma_pgto := FDINHEIRO;  if FRMECF_DARUMA.ecf_efetua_forma_pgto(ecf_modelo,FDINHEIRO,v_dinheiro) = 'ERRO'       then begin bgravar.Enabled := true; exit;END;end;
            if RCREDIARIO.VALUE  > 0 then begin  forma_pgto := Fpromisso;  if FRMECF_DARUMA.ecf_efetua_forma_pgto(ecf_modelo,FPROMISSO,RCREDIARIO.VALUE) = 'ERRO' then begin bgravar.Enabled := true; exit;END;end;
            IF (RCHEQUEAV.VALUE + RCHEQUEAP.VALUE) > 0 THEN
            BEGIN
              IF NOT cons_cheque THEN
              BEGIN
                forma_pgto := FCHEQUEAV;
                IF FRMECF_daruma.ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAV,RCHEQUEAV.VALUE+RCHEQUEAP.VALUE) = 'ERRO' then
                begin bgravar.Enabled := true;
                  exit;
                END;
              END;
            END;
          end;

          IF ECF_MODELO = 'BEMATECH' THEN if RDINHEIRO.VALUE > 0 then begin    forma_pgto := FDINHEIRO;  if FRMECF_BEMATECH.ecf_efetua_forma_pgto(ecf_modelo,FDINHEIRO,v_dinheiro) = 'ERRO' then begin bgravar.Enabled := true; exit;END;end;
          IF ECF_MODELO = 'BEMATECH' THEN if RCREDIARIO.VALUE > 0 then begin   forma_pgto := Fpromisso; if FRMECF_BEMATECH.ecf_efetua_forma_pgto(ecf_modelo,FPROMISSO,RCREDIARIO.VALUE) = 'ERRO' then begin bgravar.Enabled := true; exit;END;end;


          IF ECF_MODELO = 'YANCO' THEN if RDINHEIRO.VALUE > 0 then begin       forma_pgto := FDINHEIRO; if FRMECF_YANCO.ecf_efetua_forma_pgto(ecf_modelo,FDINHEIRO,v_dinheiro) = 'ERRO' then begin bgravar.Enabled := true; exit;END;end;
          IF ECF_MODELO = 'YANCO' THEN if RCHEQUEAV.VALUE > 0 then begin       forma_pgto := Fchequeav; if FRMECF_YANCO.ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAV,RCHEQUEAV.VALUE) = 'ERRO' then begin bgravar.Enabled := true; exit;END;end;
          IF ECF_MODELO = 'YANCO' THEN if RCHEQUEAP.VALUE > 0 then begin       forma_pgto := Fchequeap; if FRMECF_YANCO.ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAP,RCHEQUEAP.value) = 'ERRO' then begin bgravar.Enabled := true; exit;END;end;
          IF ECF_MODELO = 'YANCO' THEN if RCARTAOCRED.VALUE > 0 then begin     forma_pgto := Fcartaocr; if FRMECF_YANCO.ecf_efetua_forma_pgto(ecf_modelo,FCARTAOCR,RCARTAOCRED.VALUE) = 'ERRO' then begin bgravar.Enabled := true; exit;END;end;
          IF ECF_MODELO = 'YANCO' THEN if RCARTAODEB.VALUE > 0 then begin      forma_pgto := Fcartaodb; if FRMECF_YANCO.ecf_efetua_forma_pgto(ecf_modelo,FCARTAODB,RCARTAODEB.VALUE) = 'ERRO' then begin bgravar.Enabled := true; exit;END;end;
          IF ECF_MODELO = 'YANCO' THEN if RCREDIARIO.VALUE > 0 then begin      forma_pgto := Fpromisso; if FRMECF_YANCO.ecf_efetua_forma_pgto(ecf_modelo,FPROMISSO,RCREDIARIO.VALUE) = 'ERRO' then begin bgravar.Enabled := true; exit;END;end;


          IF ECF_MODELO = 'URANO' THEN if RDINHEIRO.VALUE > 0 then begin       forma_pgto := FDINHEIRO; if FRMECF_URANO.ecf_efetua_forma_pgto(ecf_modelo,FDINHEIRO,v_dinheiro) = 'ERRO' then begin bgravar.Enabled := true; exit;END;end;
          IF ECF_MODELO = 'URANO' THEN if RCHEQUEAV.VALUE > 0 then begin       forma_pgto := Fchequeav;  if FRMECF_URANO.ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAV,RCHEQUEAV.VALUE) = 'ERRO' then begin bgravar.Enabled := true; exit;END;end;
          IF ECF_MODELO = 'URANO' THEN if RCHEQUEAP.VALUE > 0 then begin       forma_pgto := Fchequeap; if FRMECF_URANO.ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAP,RCHEQUEAP.value) = 'ERRO' then begin bgravar.Enabled := true; exit;END;end;
          IF ECF_MODELO = 'URANO' THEN if RCARTAOCRED.VALUE > 0 then begin     forma_pgto := Fcartaocr; if FRMECF_URANO.ecf_efetua_forma_pgto(ecf_modelo,FCARTAOCR,RCARTAOCRED.VALUE) = 'ERRO' then begin bgravar.Enabled := true; exit;END;end;
          IF ECF_MODELO = 'URANO' THEN if RCARTAODEB.VALUE > 0 then begin      forma_pgto := Fcartaodb; if FRMECF_URANO.ecf_efetua_forma_pgto(ecf_modelo,FCARTAODB,RCARTAODEB.VALUE) = 'ERRO' then begin bgravar.Enabled := true; exit;END;end;
          IF ECF_MODELO = 'URANO' THEN if RCREDIARIO.VALUE > 0 then begin      forma_pgto := Fpromisso;  if FRMECF_URANO.ecf_efetua_forma_pgto(ecf_modelo,FPROMISSO,RCREDIARIO.VALUE) = 'ERRO' then begin bgravar.Enabled := true; exit;END;end;






          if usa_tef then
          begin
            if (RCARTAOCRED.VALUE > 0) or (RCARTAODEB.VALUE > 0) then
            begin
              bcartaoclick(Frmvenda_fechamento);
              IF NOT CONTINUA THEN
              BEGIN
                application.messagebox('Não foi possível prosseguir com a venda no cartão! Vafor verificar...','Erro - TEF',mb_ok+mb_iconerror);
                bgravar.Enabled := true;
                exit;
              END;

              if stefretorno = '0' then
              begin
                bpgtoclick(frmvenda_fechamento);
                if NOT continua then
                begin
                  TEFVerificaGerenciadorAtivo;
                  TEFNaoConfirmaOperacao;
                  bgravar.Enabled := true;
                  exit;
                end;
              end
              else
              begin
                application.messagebox('Não foi possível prosseguir com a venda no cartão! Vafor verificar...','Erro - TEF',mb_ok+mb_iconerror);
                rcartaocred.setfocus;
                bgravar.Enabled := true;
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
                     BCH_REDECARDClick(FRMVENDA_FECHAMENTO);

                  if ret_cheque = 2 then // TECBAN
                     BCH_TECBANClick(FRMVENDA_FECHAMENTO);

                  if stefretorno = '0' then
                  begin
                    bpgtoClick(frmvenda_fechamento);
                    if NOT continua then
                    begin
                      TEFVerificaGerenciadorAtivo;
                      TEFNaoConfirmaOperacao;
                      bgravar.Enabled := true;
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
                IF ECF_MODELO = 'DARUMA'   THEN if RCHEQUEAV.VALUE   > 0 then begin  forma_pgto := Fchequeav; if FRMECF_DARUMA.ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAV,RCHEQUEAV.VALUE) = 'ERRO'  then begin bgravar.Enabled := true; exit;END;end;
                IF ECF_MODELO = 'DARUMA'   THEN if RCHEQUEAP.VALUE   > 0 then begin  forma_pgto := Fchequeap; if FRMECF_DARUMA.ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAP,RCHEQUEAP.value) = 'ERRO'  then begin bgravar.Enabled := true; exit;END;end;
                IF ECF_MODELO = 'BEMATECH'   THEN if RCHEQUEAV.VALUE   > 0 then begin  forma_pgto := Fchequeav; if FRMECF_BEMATECH.ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAV,RCHEQUEAV.VALUE) = 'ERRO'  then begin bgravar.Enabled := true; exit;END;end;
                IF ECF_MODELO = 'BEMATECH'   THEN if RCHEQUEAP.VALUE   > 0 then begin  forma_pgto := Fchequeap; if FRMECF_BEMATECH.ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAP,RCHEQUEAP.value) = 'ERRO'  then begin bgravar.Enabled := true; exit;END;end;
              END;
            end;
          end
          else
          begin
            IF ECF_MODELO = 'DARUMA'   THEN if RCHEQUEAV.VALUE   > 0 then begin  forma_pgto := Fchequeav; if FRMECF_DARUMA.ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAV,RCHEQUEAV.VALUE) = 'ERRO'  then begin bgravar.Enabled := true; exit;END;end;
            IF ECF_MODELO = 'DARUMA'   THEN if RCHEQUEAP.VALUE   > 0 then begin  forma_pgto := Fchequeap; if FRMECF_DARUMA.ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAP,RCHEQUEAP.value) = 'ERRO'  then begin bgravar.Enabled := true; exit;END;end;
            IF ECF_MODELO = 'DARUMA'   THEN if RCARTAOCRED.VALUE > 0 then begin  forma_pgto := Fcartaocr; if FRMECF_DARUMA.ecf_efetua_forma_pgto(ecf_modelo,FCARTAOCR,RCARTAOCRED.VALUE) = 'ERRO' then begin bgravar.Enabled := true; exit;END;end;
            IF ECF_MODELO = 'DARUMA'   THEN if RCARTAODEB.VALUE  > 0 then begin  forma_pgto := Fcartaodb; if FRMECF_DARUMA.ecf_efetua_forma_pgto(ecf_modelo,FCARTAODB,RCARTAODEB.VALUE) = 'ERRO' then begin bgravar.Enabled := true; exit;END;end;

            IF ECF_MODELO = 'BEMATECH'   THEN if RCHEQUEAV.VALUE   > 0 then begin  forma_pgto := Fchequeav; if FRMECF_BEMATECH.ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAV,RCHEQUEAV.VALUE) = 'ERRO'  then begin bgravar.Enabled := true; exit;END;end;
            IF ECF_MODELO = 'BEMATECH'   THEN if RCHEQUEAP.VALUE   > 0 then begin  forma_pgto := Fchequeap; if FRMECF_BEMATECH.ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAP,RCHEQUEAP.value) = 'ERRO'  then begin bgravar.Enabled := true; exit;END;end;
            IF ECF_MODELO = 'BEMATECH'   THEN if RCARTAOCRED.VALUE > 0 then begin  forma_pgto := Fcartaocr; if FRMECF_BEMATECH.ecf_efetua_forma_pgto(ecf_modelo,FCARTAOCR,RCARTAOCRED.VALUE) = 'ERRO' then begin bgravar.Enabled := true; exit;END;end;
            IF ECF_MODELO = 'BEMATECH'   THEN if RCARTAODEB.VALUE  > 0 then begin  forma_pgto := Fcartaodb; if FRMECF_BEMATECH.ecf_efetua_forma_pgto(ecf_modelo,FCARTAODB,RCARTAODEB.VALUE) = 'ERRO' then begin bgravar.Enabled := true; exit;END;end;
          end;





      (*---------------------------------------------------------------------*)


      (*---------------- IDENTIFICACAO DO CONSUMIDOR-------------------------*)

      if consumidor_nome = 'CLIENTE ESPECIAL' then
      begin

         ECF_OK := FALSE;

         REPEAT
           IF ECF_MODELO = 'SWEDA'    THEN TEXTO2 := FRMECF_SWEDA.ecf_termina_fechamento_especial(ecf_modelo,'','','');
           if ECF_MODELO = 'DARUMA'   THEN TEXTO2 := FRMECF_DARUMA.ecf_termina_fechamento(ecf_modelo, '------------------------------------------------'+#10+TEXTO_FINAL);
           If ECF_MODELO = 'BEMATECH' THEN TEXTO2 := FRMECF_BEMATECH.ecf_termina_fechamento(ecf_modelo, '------------------------------------------------'+#10+TEXTO_FINAL);
           if ECF_MODELO = 'YANCO'    THEN TEXTO2 := FRMECF_YANCO.ecf_termina_fechamento(ecf_modelo, '------------------------------------------------'+#10+TEXTO_FINAL);
           if ECF_MODELO = 'URANO'    THEN TEXTO2 := FRMECF_URANO.ecf_termina_fechamento(ecf_modelo, '------------------------------------------------'+#10+TEXTO_FINAL);

           IF TEXTO2 = 'ERRO' THEN
           BEGIN
             BLOCKINPUT(false);
             IF APPLICATION.MESSAGEBOX('Impressora não responde! Tentar novamente?','Erro no ECF',mb_yesno+mb_iconerror) = idno then
             begin
               if usa_tef then
               begin
                 if ((rcartaocred.Value+rcartaodeb.value) > 0) or cons_cheque then
                 begin
                  TEFVerificaGerenciadorAtivo;
                  TEFNaoConfirmaOperacao;
                 end;
               end;
               bgravar.enabled := true;
               exit;
             end
             else
               BLOCKINPUT(true);
           END
           ELSE
           BEGIN
             ECF_OK := TRUE;
           END;



         UNTIL ECF_OK = TRUE;

         BLOCKINPUT(false);



      end
      else
      begin
         ECF_OK := FALSE;

         REPEAT
           IF ECF_MODELO = 'SWEDA'    THEN TEXTO2 := FRMECF_SWEDA.ecf_termina_fechamento_especial(ecf_modelo,CONSUMIDOR_NOME,consumidor_endereco+' '+consumidor_cidade+'/'+consumidor_uf,CONSUMIDOR_CPF);
           if ECF_MODELO = 'DARUMA'   THEN TEXTO2 := FRMECF_DARUMA.ecf_termina_fechamento(ecf_modelo,#10+#10+#10+'---------------------------------------------'+#10+
                                              frmprincipal.Texto_Justifica('CLIENTE.: '+consumidor_codigo+' '+consumidor_nome,45,' ','D')+#10+
                                              frmprincipal.Texto_Justifica(('ENDERECO: '+consumidor_endereco+' '+consumidor_cidade+'/'+consumidor_uf),45,' ','D')+#10+
                                              frmprincipal.Texto_Justifica('CPF/CNPJ: '+consumidor_cpf,42,' ','D')+#10+
                                              TEXTO_FINAL+#10+
                                              '---------------------------------------------');
           If ECF_MODELO = 'BEMATECH' THEN TEXTO2 := FRMECF_BEMATECH.ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+consumidor_codigo+' '+consumidor_nome,48,' ','D')+#10+
                                              frmprincipal.Texto_Justifica(('ENDERECO: '+consumidor_endereco+' '+consumidor_cidade+'/'+consumidor_uf),48,' ','D')+#10+
                                              frmprincipal.Texto_Justifica('CPF/CNPJ: '+consumidor_cpf,42,' ','D')+#10+
                                                 '------------------------------------------------'+#10+
                                                 TEXTO_FINAL);
           if ECF_MODELO = 'YANCO'    THEN TEXTO2 :=FRMECF_YANCO.ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+consumidor_codigo+' '+consumidor_nome,48,' ','D')+#10+
                                              frmprincipal.Texto_Justifica(('ENDERECO: '+consumidor_endereco+' '+consumidor_cidade+'/'+consumidor_uf),48,' ','D')+#10+
                                              frmprincipal.Texto_Justifica('CPF/CNPJ: '+consumidor_cpf,42,' ','D')+#10+
                                                 '------------------------------------------------'+#10+
                                                 TEXTO_FINAL);
           if ECF_MODELO = 'URANO'    THEN TEXTO2 := FRMECF_URANO.ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+consumidor_codigo+' '+consumidor_nome,48,' ','D')+#10+
                                              frmprincipal.Texto_Justifica(('ENDERECO: '+consumidor_endereco+' '+consumidor_cidade+'/'+consumidor_uf),48,' ','D')+#10+
                                              frmprincipal.Texto_Justifica('CPF/CNPJ: '+consumidor_cpf,42,' ','D')+#10+
                                                 '------------------------------------------------'+#10+
                                                 TEXTO_FINAL);

           IF TEXTO2 = 'ERRO' THEN
           BEGIN
             BLOCKINPUT(false);
             IF APPLICATION.MESSAGEBOX('Impressora não responde! Tentar novamente??','Erro no ECF',mb_yesno+mb_iconerror) = idno then
             begin
               if usa_tef then
               begin
                 if ((rcartaocred.Value+rcartaodeb.value) > 0) or cons_cheque then
                 begin
                  TEFVerificaGerenciadorAtivo;
                  TEFNaoConfirmaOperacao;
                 end;
               end;
               bgravar.enabled := true;
               exit;
             end
             else
               BLOCKINPUT(true);
           END
           ELSE
           BEGIN
             ECF_OK := TRUE;
           END;



         UNTIL ECF_OK = TRUE;

         BLOCKINPUT(false);














      if ecf_cupom_vinculado = '1' then
      begin
        cvinc := true;
        if usa_tef then
        begin
          if ((rcartaocred.value + rcartaodeb.value) > 0) or cons_cheque then
          begin
            cvinc := false;
          end;
        end;

        if cvinc then
        begin




         if ECF_MODELO = 'DARUMA' THEN

           begin

             // --------------------- EMISSAO DO COMPROVANTE NAO FISCAL VINCULADO COMO NOTA DE VENDA --------------------------\\

             application.ProcessMessages;

             if frmecf_daruma.ecf_abre_CNFV(ecf_modelo,forma_pgto,'','') = 'ERRO' then exit;
             if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'COMPROVANTE DE DÉBITO   CUPOM FISCAL No: '+NUMERO_CUPOM) = 'ERRO' then exit;

             if ecf_cupom_vinculado_produtos = '1' then
               begin
                 if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                 if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'PRODUTO                    QTDE   VALOR    TOTAL' ) = 'ERRO' then exit;
                 if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                 frmmodulo.qritem.First;
                 while not frmmodulo.qritem.Eof do
                   begin
                     if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,frmPrincipal.texto_justifica(frmmodulo.qritem.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                          frmPrincipal.texto_justifica(frmmodulo.qritem.fieldbyname('produto').asstring,19,' ','D')+
                          frmPrincipal.texto_justifica(formatfloat('######0',frmmodulo.qritem.fieldbyname('qtde').asfloat),4,' ','E')+
                          frmPrincipal.texto_justifica(formatfloat('######0.00',frmmodulo.qritem.fieldbyname('unitario').asfloat),9,' ','E')+
                          frmPrincipal.texto_justifica(formatfloat('######0.00',frmmodulo.qritem.fieldbyname('total').asfloat),9,' ','E')) = 'ERRO' then exit;
                    frmmodulo.qritem.Next;
                  end;
               end;
             if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
             if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'TOTAL DOS PRODUTOS .................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rsubtotal.value),9,' ','E')) = 'ERRO' then exit;
             if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'DESCONTO ...........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rdesconto2.value),9,' ','E')) = 'ERRO' then exit;
             if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'T O T A L ..........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rtotal.value),9,' ','E')) = 'ERRO' then exit;
             if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
             if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'' ) = 'ERRO' then exit;
             if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'' ) = 'ERRO' then exit;
             if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'' ) = 'ERRO' then exit;
             if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
             if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+consumidor_codigo+' '+consumidor_nome,48,' ','D')) = 'ERRO' then exit;
             if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO: '+consumidor_endereco+' '+consumidor_cidade+'/'+consumidor_uf),48,' ','D')) = 'ERRO' then exit;
             if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ: '+consumidor_cpf,42,' ','D')) = 'ERRO' then exit;
             if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
             if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'Reconheço e pagarei a divida aqui apresentada.  ' ) = 'ERRO' then exit;

             if ecf_cupom_vinculado_carne = '1' then // carne
               begin
                 frmmodulo.qrvenda_contasreceber.First;
                 while not frmmodulo.qrvenda_contasreceber.Eof do
                 begin
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'' ) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'' ) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'            COMPROVANTE DE DÉBITO               ' ) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CUPOM.....: '+NUMERO_CUPOM,48,' ','D')) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('DOCUMENTO.: '+frmmodulo.qrvenda_contasreceber.FieldByName('documento').asstring,48,' ','D')) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR..: '+FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING+'-'+FRMMODULO.QRCAIXA_OPERADOR.FIELDBYNAME('NOME').ASSTRING,48,' ','D')) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE...: '+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'-'+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO..: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring),48,' ','D')) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ..: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring,42,' ','D')) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('IE/RG.....: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,42,' ','D')) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'   Este comprovante não é um documento fiscal   ' ) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('PARCELA...: '+frmPrincipal.zerarcodigo(frmmodulo.qrvenda_contasreceber.fieldbyname('prestacao').asstring,6),42,' ','D')) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENCIMENTO: '+frmmodulo.qrvenda_contasreceber.FieldByName('vencimento').AsString,42,' ','D')) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VALOR.....: '+formatfloat('#,###,##0.00',frmmodulo.qrvenda_contasreceber.FieldByName('valor').AsFloat),38,' ','D')) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'' ) = 'ERRO' then exit;
                   if frmecf_daruma.ecf_usa_CNFV(ecf_modelo,'' ) = 'ERRO' then exit;

                   frmmodulo.qrvenda_contasreceber.Next;
                 end;
               end;
               if frmecf_daruma.ecf_fecha_CNFV(ecf_modelo) = 'ERRO' then exit;

          end;

         if ECF_MODELO = 'BEMATECH' THEN
           begin

             // --------------------- EMISSAO DO COMPROVANTE NAO FISCAL VINCULADO COMO NOTA DE VENDA --------------------------\\

             application.ProcessMessages;

             if frmecf_Bematech.ecf_abre_CNFV(ecf_modelo,forma_pgto,'','') = 'ERRO' then exit;
             if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'COMPROVANTE DE DÉBITO   CUPOM FISCAL No: '+NUMERO_CUPOM) = 'ERRO' then exit;
             if ecf_cupom_vinculado_produtos = '1' then
               begin
                 if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                 if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'PRODUTO                    QTDE   VALOR    TOTAL' ) = 'ERRO' then exit;
                 if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                 frmmodulo.qritem.First;
                 while not frmmodulo.qritem.Eof do
                   begin
                     if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,frmPrincipal.texto_justifica(frmmodulo.qritem.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                          frmPrincipal.texto_justifica(frmmodulo.qritem.fieldbyname('produto').asstring,19,' ','D')+
                          frmPrincipal.texto_justifica(formatfloat('######0',frmmodulo.qritem.fieldbyname('qtde').asfloat),4,' ','E')+
                          frmPrincipal.texto_justifica(formatfloat('######0.00',frmmodulo.qritem.fieldbyname('unitario').asfloat),9,' ','E')+
                          frmPrincipal.texto_justifica(formatfloat('######0.00',frmmodulo.qritem.fieldbyname('total').asfloat),9,' ','E')) = 'ERRO' then exit;
                     frmmodulo.qritem.Next;
                  end;
               end;
             if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
             if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'TOTAL DOS PRODUTOS .................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rsubtotal.value),9,' ','E')) = 'ERRO' then exit;
             if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'DESCONTO ...........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rdesconto2.value),9,' ','E')) = 'ERRO' then exit;
             if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'T O T A L ..........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rtotal.value),9,' ','E')) = 'ERRO' then exit;
             if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
             if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'.' ) = 'ERRO' then exit;
             if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'.' ) = 'ERRO' then exit;
             if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'.' ) = 'ERRO' then exit;
             if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
             if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+consumidor_codigo+' '+consumidor_nome,48,' ','D')) = 'ERRO' then exit;
             if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO: '+consumidor_endereco+' '+consumidor_cidade+'/'+consumidor_uf),48,' ','D')) = 'ERRO' then exit;
             if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ: '+consumidor_cpf,42,' ','D')) = 'ERRO' then exit;
             if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
             if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'Reconheço e pagarei a divida aqui apresentada.  ' ) = 'ERRO' then exit;

             if ecf_cupom_vinculado_carne = '1' then // carne
               begin
                 frmmodulo.qrvenda_contasreceber.First;
                 while not frmmodulo.qrvenda_contasreceber.Eof do
                 begin
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'.' ) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'.' ) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'            COMPROVANTE DE DÉBITO               ' ) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CUPOM.....: '+NUMERO_CUPOM,48,' ','D')) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('DOCUMENTO.: '+frmmodulo.qrvenda_contasreceber.FieldByName('documento').asstring,48,' ','D')) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR..: '+FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING+'-'+FRMMODULO.QRCAIXA_OPERADOR.FIELDBYNAME('NOME').ASSTRING,48,' ','D')) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE...: '+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'-'+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO..: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring),48,' ','D')) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ..: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring,42,' ','D')) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('IE/RG.....: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,42,' ','D')) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'   Este comprovante não é um documento fiscal   ' ) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('PARCELA...: '+frmPrincipal.zerarcodigo(frmmodulo.qrvenda_contasreceber.fieldbyname('prestacao').asstring,6),42,' ','D')) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENCIMENTO: '+frmmodulo.qrvenda_contasreceber.FieldByName('vencimento').AsString,42,' ','D')) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VALOR.....: '+formatfloat('#,###,##0.00',frmmodulo.qrvenda_contasreceber.FieldByName('valor').AsFloat),38,' ','D')) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'.' ) = 'ERRO' then exit;
                   if frmecf_Bematech.ecf_usa_CNFV(ecf_modelo,'.' ) = 'ERRO' then exit;

                   frmmodulo.qrvenda_contasreceber.Next;
                 end;
               end;
               if frmecf_Bematech.ecf_fecha_CNFV(ecf_modelo) = 'ERRO' then exit;

           end;

         if ECF_MODELO = 'SWEDA' THEN
           begin

             // --------------------- EMISSAO DO COMPROVANTE NAO FISCAL VINCULADO COMO NOTA DE VENDA --------------------------\\

             application.ProcessMessages;

             if frmecf_Sweda.ecf_abre_CNFV(ecf_modelo,forma_pgto,'','') = 'ERRO' then exit;
             if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'COMPROVANTE DE DÉBITO   CUPOM FISCAL No: '+NUMERO_CUPOM) = 'ERRO' then exit;
             if ecf_cupom_vinculado_produtos = '1' then
               begin
                 if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                 if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'PRODUTO                    QTDE   VALOR    TOTAL' ) = 'ERRO' then exit;
                 if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                 frmmodulo.qritem.First;
                 while not frmmodulo.qritem.Eof do
                   begin
                     if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,frmPrincipal.texto_justifica(frmmodulo.qritem.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                          frmPrincipal.texto_justifica(frmmodulo.qritem.fieldbyname('produto').asstring,19,' ','D')+
                          frmPrincipal.texto_justifica(formatfloat('######0',frmmodulo.qritem.fieldbyname('qtde').asfloat),4,' ','E')+
                          frmPrincipal.texto_justifica(formatfloat('######0.00',frmmodulo.qritem.fieldbyname('unitario').asfloat),9,' ','E')+
                          frmPrincipal.texto_justifica(formatfloat('######0.00',frmmodulo.qritem.fieldbyname('total').asfloat),9,' ','E')) = 'ERRO' then exit;
                     frmmodulo.qritem.Next;
                  end;
               end;
             if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
             if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'TOTAL DOS PRODUTOS .................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rsubtotal.value),9,' ','E')) = 'ERRO' then exit;
             if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'DESCONTO ...........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rdesconto2.value),9,' ','E')) = 'ERRO' then exit;
             if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'T O T A L ..........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rtotal.value),9,' ','E')) = 'ERRO' then exit;
             if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
             if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'.' ) = 'ERRO' then exit;
             if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'.' ) = 'ERRO' then exit;
             if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'.' ) = 'ERRO' then exit;
             if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
             if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+consumidor_codigo+' '+consumidor_nome,48,' ','D')) = 'ERRO' then exit;
             if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO: '+consumidor_endereco+' '+consumidor_cidade+'/'+consumidor_uf),48,' ','D')) = 'ERRO' then exit;
             if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ: '+consumidor_cpf,42,' ','D')) = 'ERRO' then exit;
             if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
             if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'Reconheço e pagarei a divida aqui apresentada.  ' ) = 'ERRO' then exit;

             if ecf_cupom_vinculado_carne = '1' then // carne
               begin
                 frmmodulo.qrvenda_contasreceber.First;
                 while not frmmodulo.qrvenda_contasreceber.Eof do
                 begin
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'.' ) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'.' ) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'            COMPROVANTE DE DÉBITO               ' ) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CUPOM.....: '+NUMERO_CUPOM,48,' ','D')) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('DOCUMENTO.: '+frmmodulo.qrvenda_contasreceber.FieldByName('documento').asstring,48,' ','D')) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR..: '+FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING+'-'+FRMMODULO.QRCAIXA_OPERADOR.FIELDBYNAME('NOME').ASSTRING,48,' ','D')) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE...: '+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'-'+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO..: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring),48,' ','D')) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ..: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring,42,' ','D')) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('IE/RG.....: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,42,' ','D')) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'   Este comprovante não é um documento fiscal   ' ) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('PARCELA...: '+frmPrincipal.zerarcodigo(frmmodulo.qrvenda_contasreceber.fieldbyname('prestacao').asstring,6),42,' ','D')) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENCIMENTO: '+frmmodulo.qrvenda_contasreceber.FieldByName('vencimento').AsString,42,' ','D')) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VALOR.....: '+formatfloat('#,###,##0.00',frmmodulo.qrvenda_contasreceber.FieldByName('valor').AsFloat),38,' ','D')) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'.' ) = 'ERRO' then exit;
                   if frmecf_Sweda.ecf_usa_CNFV(ecf_modelo,'.' ) = 'ERRO' then exit;

                   frmmodulo.qrvenda_contasreceber.Next;
                 end;
               end;
               if frmecf_Sweda.ecf_fecha_CNFV(ecf_modelo) = 'ERRO' then exit;

           end;
         end; // cvinc
      end;



    END;



 END;



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



  if ecf_modelo = '' then
  begin
      FRMVENDA_IMPRESSAO := TFRMVENDA_IMPRESSAO.CREATE(SELF);
      FRMVENDA_IMPRESSAO.SHOWMODAL;
  end;





    try

      if rdiferenca.Value <> 0 then
      begin
        IF RDINHEIRO.VALUE > RDIFERENCA.VALUE THEN
        BEGIN
          RDINHEIRO.VALUE := RDINHEIRO.VALUE + RDIFERENCA.VALUE;
          RDIFERENCA.VALUE := 0;
          APPLICATION.ProcessMessages;
        END
      end;




       //numero_venda := frmprincipal.codifica('000048',7);



      IF CODCLIENTE <> '' THEN
        COD_CLIENTE := frmmodulo.qrcliente.fieldbyname('codigo').asstring
      else
        COD_CLIENTE := 'S/CLIE';




      frmmodulo.qrvenda.close;
      frmmodulo.qrvenda.sql.clear;
      frmmodulo.qrvenda.sql.add('insert into c000048');
      frmmodulo.qrvenda.sql.add('(codigo,data,codcliente,codvendedor,');
      frmmodulo.qrvenda.sql.add('codcaixa,total,subtotal,meio_dinheiro,');
      frmmodulo.qrvenda.sql.add('meio_chequeav, meio_chequeap,meio_cartaocred,');
      frmmodulo.qrvenda.SQL.add('meio_cartaodeb,meio_crediario,desconto,acrescimo,');
      frmmodulo.qrvenda.sql.add('cupom_fiscal,numero_cupom_fiscal)');
      frmmodulo.qrvenda.sql.add('values');
      frmmodulo.qrvenda.sql.add('('''+numero_venda+''',:datax,'''+cod_cliente+''',''S/VEND'',');
      frmmodulo.qrvenda.sql.add(''''+CODIGO_CAIXA+''',:TOTAL,:SUBTOTAL,:DINHEIRO,');
      frmmodulo.qrvenda.sql.add(':CHEQUEAV,:CHEQUEAP,:CARTAOCRED,');
      frmmodulo.qrvenda.SQL.add(':CARTAODEB,:CREDIARIO,:DESCONTO,:ACRESCIMO,');
      frmmodulo.qrvenda.sql.add('1,'''+FRMPRINCIPAL.zerarcodigo(numero_cupom,7)+''')');
      frmmodulo.qrvenda.Params.ParamByName('datax').asdatetime := strtodate(data_caixa);
      frmmodulo.qrvenda.Params.ParamByName('TOTAL').asFLOAT := RTOTAL.VALUE;
      frmmodulo.qrvenda.Params.ParamByName('SUBTOTAL').asFLOAT := RTOTAL.VALUE;
      frmmodulo.qrvenda.Params.ParamByName('DINHEIRO').asFLOAT := RDINHEIRO.VALUE;
      frmmodulo.qrvenda.Params.ParamByName('CHEQUEAV').asFLOAT := RCHEQUEAV.VALUE;
      frmmodulo.qrvenda.Params.ParamByName('CHEQUEAP').asFLOAT := RCHEQUEAP.VALUE;
      frmmodulo.qrvenda.Params.ParamByName('CARTAODEB').asFLOAT := RCARTAODEB.VALUE;
      frmmodulo.qrvenda.Params.ParamByName('CARTAOCRED').asFLOAT := RCARTAOCRED.VALUE;
      frmmodulo.qrvenda.Params.ParamByName('CREDIARIO').asFLOAT := RCREDIARIO.VALUE;
      frmmodulo.qrvenda.Params.ParamByName('DESCONTO').asFLOAT := RDESCONTO2.VALUE;
      frmmodulo.qrvenda.Params.ParamByName('ACRESCIMO').asFLOAT := RACRESCIMO2.VALUE;
      FRMMODULO.QRVENDA.ExecSQL;

      if rdinheiro.value <> 0 then
      begin
        frmmodulo.qrcaixa_mov.close;
        frmmodulo.qrcaixa_mov.sql.clear;
        frmmodulo.qrcaixa_mov.sql.add('insert into c000044');
        frmmodulo.qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
        frmmodulo.qrcaixa_mov.sql.add('values');
        frmmodulo.qrcaixa_mov.sql.add('('''+frmprincipal.codifica('000044',7)+''','''+codigo_caixa+''','''+codigo_caixa+''',:datax,');
        frmmodulo.qrcaixa_mov.sql.add(':VALOR,:VALOR,''100001'',3,''Venda ECF No. '+numero_venda+' - '+COPY(consumidor_nome,1,25)+''')');
        frmmodulo.qrcaixa_mov.Params.ParamByName('datax').asdatetime := strtodate(data_caixa);
        FRMMODULO.QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := rdinheiro.value;
        FRMMODULO.qrcaixa_mov.ExecSQL;
      end;
      if rchequeav.value <> 0 then
      begin
        frmmodulo.qrcaixa_mov.close;
        frmmodulo.qrcaixa_mov.sql.clear;
        frmmodulo.qrcaixa_mov.sql.add('insert into c000044');
        frmmodulo.qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
        frmmodulo.qrcaixa_mov.sql.add('values');
        frmmodulo.qrcaixa_mov.sql.add('('''+frmprincipal.codifica('000044',7)+''','''+codigo_caixa+''','''+codigo_caixa+''',:datax,');
        frmmodulo.qrcaixa_mov.sql.add('0,:VALOR,''100001'',5,''Venda ECF No. '+numero_venda+' - '+COPY(consumidor_nome,1,25)+''')');
        frmmodulo.qrcaixa_mov.Params.ParamByName('datax').asdatetime := strtodate(data_caixa);
         FRMMODULO.QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := rCHEQUEAV.value;
        FRMMODULO.qrcaixa_mov.ExecSQL;
      end;
      if rchequeap.value <> 0 then
      begin
        frmmodulo.qrcaixa_mov.close;
        frmmodulo.qrcaixa_mov.sql.clear;
        frmmodulo.qrcaixa_mov.sql.add('insert into c000044');
        frmmodulo.qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
        frmmodulo.qrcaixa_mov.sql.add('values');
        frmmodulo.qrcaixa_mov.sql.add('('''+frmprincipal.codifica('000044',7)+''','''+codigo_caixa+''','''+codigo_caixa+''',:datax,');
        frmmodulo.qrcaixa_mov.sql.add('0,:VALOR,''100001'',6,''Venda ECF No. '+numero_venda+' - '+COPY(consumidor_nome,1,25)+''')');
        frmmodulo.qrcaixa_mov.Params.ParamByName('datax').asdatetime := strtodate(data_caixa);
         FRMMODULO.QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := rCHEQUEAP.value;

        FRMMODULO.qrcaixa_mov.ExecSQL;
      end;
      if rcartaocred.value <> 0 then
      begin
        frmmodulo.qrcaixa_mov.close;
        frmmodulo.qrcaixa_mov.sql.clear;
        frmmodulo.qrcaixa_mov.sql.add('insert into c000044');
        frmmodulo.qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
        frmmodulo.qrcaixa_mov.sql.add('values');
        frmmodulo.qrcaixa_mov.sql.add('('''+frmprincipal.codifica('000044',7)+''','''+codigo_caixa+''','''+codigo_caixa+''',:datax,');
        frmmodulo.qrcaixa_mov.sql.add('0,:VALOR,''100001'',7,''Venda ECF No. '+numero_venda+' - '+COPY(consumidor_nome,1,25)+''')');
        frmmodulo.qrcaixa_mov.Params.ParamByName('datax').asdatetime := strtodate(data_caixa);
         FRMMODULO.QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := rCARTAOCRED.value;

        FRMMODULO.qrcaixa_mov.ExecSQL;
      end;
      if rcartaodeb.value <> 0 then
      begin
        frmmodulo.qrcaixa_mov.close;
        frmmodulo.qrcaixa_mov.sql.clear;
        frmmodulo.qrcaixa_mov.sql.add('insert into c000044');
        frmmodulo.qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
        frmmodulo.qrcaixa_mov.sql.add('values');
        frmmodulo.qrcaixa_mov.sql.add('('''+frmprincipal.codifica('000044',7)+''','''+codigo_caixa+''','''+codigo_caixa+''',:datax,');
        frmmodulo.qrcaixa_mov.sql.add('0,:VALOR,''100001'',8,''Venda ECF No. '+numero_venda+' - '+COPY(consumidor_nome,1,25)+''')');
        frmmodulo.qrcaixa_mov.Params.ParamByName('datax').asdatetime := strtodate(data_caixa);
         FRMMODULO.QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := rCARTAODEB.value;

        FRMMODULO.qrcaixa_mov.ExecSQL;
      end;
      if rcrediario.value <> 0 then
      begin
        frmmodulo.qrcaixa_mov.close;
        frmmodulo.qrcaixa_mov.sql.clear;
        frmmodulo.qrcaixa_mov.sql.add('insert into c000044');
        frmmodulo.qrcaixa_mov.sql.add('(codigo,codcaixa,codoperador,data,entrada,valor,codconta,movimento,historico)');
        frmmodulo.qrcaixa_mov.sql.add('values');
        frmmodulo.qrcaixa_mov.sql.add('('''+frmprincipal.codifica('000044',7)+''','''+codigo_caixa+''','''+codigo_caixa+''',:datax,');
        frmmodulo.qrcaixa_mov.sql.add('0,:VALOR,''100001'',4,''Venda ECF No. '+numero_venda+' - '+COPY(consumidor_nome,1,25)+''')');
        frmmodulo.qrcaixa_mov.Params.ParamByName('datax').asdatetime := strtodate(data_caixa);
         FRMMODULO.QRCAIXA_MOV.Params.ParamByName('VALOR').ASFLOAT := rCREDIARIO.value;

        FRMMODULO.qrcaixa_mov.ExecSQL;


        frmmodulo.qrvenda_contasreceber.First;
        while not frmmodulo.qrvenda_contasreceber.eof do
        begin
          frmmodulo.qrcontasreceber.Close;
          frmmodulo.qrcontasreceber.SQL.clear;
          frmmodulo.qrcontasreceber.SQL.add('insert into c000049');
          frmmodulo.qrcontasreceber.SQL.add('(codigo,codvenda,codcliente,codvendedor,codcaixa,data_emissao,data_vencimento,valor_original,');
          frmmodulo.qrcontasreceber.SQL.add('valor_atual,documento,tipo,situacao,filtro)');
          frmmodulo.qrcontasreceber.SQL.add('values');
          frmmodulo.qrcontasreceber.SQL.add('('''+numero_venda+'/'+frmprincipal.zerarcodigo(frmmodulo.qrvenda_contasreceber.fieldbyname('prestacao').asstring,2)+''','''+numero_venda+''','''+cod_cliente+''',''S/VEND'',');
          frmmodulo.qrcontasreceber.sql.add(''''+codIGO_caixa+''',:data_e,:data_v,:VALOR,');
          frmmodulo.qrcontasreceber.SQL.add(':VALOR,'''+frmmodulo.qrvenda_contasreceber.fieldbyname('documento').asstring+''','''+frmmodulo.qrvenda_contasreceber.fieldbyname('tipo').asstring+''',1,0)');
          frmmodulo.qrcontasreceber.Params.ParamByName('data_v').asdatetime := FRMMODULO.QRVENDA_CONTASRECEBER.FIELDBYNAME('VENCIMENTO').ASDATETIME;
          frmmodulo.qrcontasreceber.Params.ParamByName('data_e').asdatetime := strtodate(data_caixa);
          FRMMODULO.QRCONTASRECEBER.PARAMS.ParamByName('VALOR').ASFLOAT := frmmodulo.qrvenda_contasreceber.fieldbyname('valor').asfloat;
          frmmodulo.qrcontasreceber.ExecSQL;
         frmmodulo.qrvenda_contasreceber.next;
      end;

    end;
            if ecf_modelo <> '' then
            begin
                TEXTO2 :=frmprincipal.lecf_serie.caption;
                TEXTO3 :=frmprincipal.lecf_caixa.caption;
            end;

        frmmodulo.qritem.First;
        while not frmmodulo.qritem.Eof do
        begin
          FRMMODULO.QRPRODUTO_MOV.CLOSE;
          FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
          FRMMODULO.QRPRODUTO_MOV.SQL.Add('insert into c000032');
          frmmodulo.qrproduto_mov.SQL.add('(codigo,codnota,serial,numeronota,');
          frmmodulo.qrproduto_mov.SQL.add('codproduto,qtde,movimento_estoque,unitario,');
          frmmodulo.qrproduto_mov.SQL.add('total,unidade,aliquota,');
          frmmodulo.qrproduto_mov.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
          frmmodulo.qrproduto_mov.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst)');
          frmmodulo.qrproduto_mov.SQL.add('values');
          frmmodulo.qrproduto_mov.SQL.add('('''+frmprincipal.codifica('000032',8)+''','''+numero_venda+''','''+frmmodulo.qritem.fieldbyname('ITEM').asstring+''','''+numero_cupom+''',');
          frmmodulo.qrproduto_mov.SQL.add(''''+frmmodulo.qritem.fieldbyname('codproduto').asstring+''',:QTDE,:qtde_mov,:UNITARIO,');
          frmmodulo.qrproduto_mov.SQL.add(':TOTAL,'''+frmmodulo.qritem.fieldbyname('unidade').AsString+''',:ALIQUOTA,');
          frmmodulo.qrproduto_mov.SQL.add(''''+frmmodulo.qritem.fieldbyname('item').asstring+''','''+numero_cupom+''',''2D'',');
          frmmodulo.qrproduto_mov.SQL.add(''''+TEXTO2+''','''+TEXTO3+''','''+cod_cliente+''',''S/VEND'',2,:datax,'''+frmmodulo.qritem.fieldbyname('CST').asSTRING+''')');
          FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('datax').asdatetime := strtodate(data_caixa);
          FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('TOTAL').ASFLOAT := frmmodulo.qritem.fieldbyname('total').asfloat;
          FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('UNITARIO').ASFLOAT := frmmodulo.qritem.fieldbyname('UNITARIO').asfloat;
          FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('QTDE').ASFLOAT := frmmodulo.qritem.fieldbyname('QTDE').asfloat;
          FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('QTDE_mov').ASFLOAT := frmmodulo.qritem.fieldbyname('QTDE').asfloat * (-1);
          FRMMODULO.QRPRODUTO_MOV.Params.ParamByName('ALIQUOTA').ASFLOAT := frmmodulo.qritem.fieldbyname('ALIQUOTA').asfloat;
          frmmodulo.qrproduto_mov.ExecSQL;
          frmmodulo.qritem.next;
        end;


  frmmodulo.Conexao.Commit;
  frmmodulo.conexaoproduto.commit;






  if MUDOU_2 = 'SIM' then ecf_modelo := '';






  close;

  except
  end;



  WITH FRMPRINCIPAL DO
  BEGIN

        rqtde.value := 0;
        runitario.value := 0;
        rtotal.value := 0;
        rtotalgeral.Value := 0;
        pcupom.visible := false;
        eproduto.text := '';
        Estatus.TEXT := '...';
        LTOTAL.Caption := '';
        lproduto.CAPTION := '';
        venda_aberta := FALSE;

  END;



bgravar.Enabled := true;

end;

procedure Tfrmvenda_fechamento.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_fechamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmvenda_fechamento.FormShow(Sender: TObject);
begin



  rdiferenca.Value := FRMPRINCIPAL.rtotalGERAL.value;
  rsubtotal.value := frmPRINCIPAL.rtotalGERAL.value;
  rtotal.value := FRMPRINCIPAL.rtotalGERAL.value;
  rdesconto1.SetFocus;
end;

procedure Tfrmvenda_fechamento.rcrediarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmvenda_fechamento.Cancelar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_fechamento.rchequeavExit(Sender: TObject);
begin

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rcrediario.Value;


  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmvenda_fechamento.rchequeapExit(Sender: TObject);
begin

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rcrediario.Value;


  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmvenda_fechamento.rcartaocredExit(Sender: TObject);
begin

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rcrediario.Value;

                 
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmvenda_fechamento.rcartaodebExit(Sender: TObject);
begin
  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rcrediario.Value;

  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmvenda_fechamento.rcrediarioExit(Sender: TObject);
begin
  if rcrediario.Value > rtotal.Value then
  begin
    application.messagebox('O valor desta forma de pagamento não pode ser maior que a do total da venda!','Erro!',mb_ok+MB_ICONERROR);
    rcrediario.setfocus;
    exit;
  end;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rcrediario.Value;

  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmvenda_fechamento.rsubtotalChange(Sender: TObject);
begin
  try
  lsubtotal.caption := 'R$ '+formatfloat('###,###,##0.00',rsubtotal.value);
  except
  end;
end;

procedure Tfrmvenda_fechamento.rtotalChange(Sender: TObject);
begin
  try
  ltotal.caption := 'R$ '+formatfloat('###,###,##0.00',rtotal.value);
  except
  end;
end;

procedure Tfrmvenda_fechamento.rsomaChange(Sender: TObject);
begin
  try
  lsoma.caption := 'R$ '+formatfloat('###,###,##0.00',rsoma.value);
  except
  end;

end;

procedure Tfrmvenda_fechamento.rdiferencaChange(Sender: TObject);
begin
  try
  ldiferenca.caption := 'R$ '+formatfloat('###,###,##0.00',rdiferenca.value);
  except
  end;

end;

procedure Tfrmvenda_fechamento.Confirmar1Click(Sender: TObject);
begin
  bgravar.setfocus;
  bgravarClick(frmvenda_fechamento);
end;

procedure Tfrmvenda_fechamento.rdinheiroEnter(Sender: TObject);
begin


  idinheiro.visible := true;
  ichequeav.Visible := false;
  ichequeap.visible := false;
  icredito.visible := false;
  idebito.Visible := false;
  icrediario.Visible := false;
end;

procedure Tfrmvenda_fechamento.rchequeavEnter(Sender: TObject);
begin
  idinheiro.visible := false;
  ichequeav.Visible := true;
  ichequeap.visible := false;
  icredito.visible := false;
  idebito.Visible := false;
  icrediario.Visible := false;
end;

procedure Tfrmvenda_fechamento.rchequeapEnter(Sender: TObject);
begin
  idinheiro.visible := false;
  ichequeav.Visible := false;
  ichequeap.visible := true;
  icredito.visible := false;
  idebito.Visible := false;
  icrediario.Visible := false;
end;

procedure Tfrmvenda_fechamento.rcartaocredEnter(Sender: TObject);
begin
  idinheiro.visible := false;
  ichequeav.Visible := false;
  ichequeap.visible := false;
  icredito.visible := true;
  idebito.Visible := false;
  icrediario.Visible := false;
end;

procedure Tfrmvenda_fechamento.rcartaodebEnter(Sender: TObject);
begin
  idinheiro.visible := false;
  ichequeav.Visible := false;
  ichequeap.visible := false;
  icredito.visible := false;
  idebito.Visible := true;
  icrediario.Visible := false;
end;

procedure Tfrmvenda_fechamento.rcrediarioEnter(Sender: TObject);
begin
  idinheiro.visible := false;
  ichequeav.Visible := false;
  ichequeap.visible := false;
  icredito.visible := false;
  idebito.Visible := false;
  icrediario.Visible := true;
end;

procedure Tfrmvenda_fechamento.bcartaoClick(Sender: TObject);
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
          if ecf_MODELO = 'BEMATECH' then
          BEGIN
             sTEFDoctoVinculado := FRMECF_BEMATECH.ecf_numero_cupom('BEMATECH');
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
          END;


          if ecf_MODELO = 'DARUMA'   then
          begin
             sTEFDoctoVinculado := FRMECF_DARUMA.ecf_numero_cupom('DARUMA');
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
          END;

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

procedure Tfrmvenda_fechamento.bpgtoClick(Sender: TObject);
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
          if ecf_MODELO = 'BEMATECH' then
          BEGIN
             if FRMECF_BEMATECH.ecf_efetua_forma_pgto(ecf_modelo,FCARTAOCR,RCARTAOCRED.VALUE+RCARTAODEB.VALUE) = 'ERRO' then
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
          END;

          if ecf_MODELO = 'DARUMA'   then
          begin
             if FRMECF_daruma.ecf_efetua_forma_pgto(ecf_modelo,FCARTAOCR,RCARTAOCRED.VALUE+RCARTAODEB.VALUE) = 'ERRO' then
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

          end;
          if ecf_MODELO = ''  then
          begin
            ecf_ok := true;
          end;

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
          if ecf_MODELO = 'BEMATECH' then
          BEGIN
             if FRMECF_BEMATECH.ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAV,RCHEQUEAV.VALUE+RCHEQUEAP.VALUE) = 'ERRO' then
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
          END;

          if ecf_MODELO = 'DARUMA'   then
          begin
             BLOCKINPUT(false);
             if FRMECF_daruma.ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAV,RCHEQUEAV.VALUE+RCHEQUEAP.VALUE) = 'ERRO' then
             begin
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

          end;
          if ecf_MODELO = ''  then
          begin
            ecf_ok := true;
          end;

        until ecf_ok = true;

        BLOCKINPUT(false);

    end;



  end;
end;

procedure Tfrmvenda_fechamento.BCH_TECBANClick(Sender: TObject);
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

procedure Tfrmvenda_fechamento.BCH_REDECARDClick(Sender: TObject);
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

end.
