unit venda_fechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, StdCtrls, Mask, rxtooledit, rxcurredit,
  TFlatPanelUnit, Buttons, Menus, wwdbedit, Wwdotdot, Wwdbcomb, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvShapeButton,
  AdvGlowButton, IBDatabase, IBCustomDataSet, IBQuery, MemDS, DBAccess, IBC,
  RzEdit, RzSpnEdt, frxDesgn, frxClass, frxDBSet, RxMemDS, SayPrint;

type
  Tfrmvenda_fechamento = class(TForm)
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    Observaes1: TMenuItem;
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
    Button1: TButton;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    rdesconto2: TRxCalcEdit;
    racrescimo2: TRxCalcEdit;
    rdesconto1: TRxCalcEdit;
    racrescimo1: TRxCalcEdit;
    Panel1: TPanel;
    rsubtotal: TRxCalcEdit;
    Panel2: TPanel;
    rtotal: TRxCalcEdit;
    Bevel1: TBevel;
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
    rdinheiro: TRxCalcEdit;
    rchequeav: TRxCalcEdit;
    rchequeap: TRxCalcEdit;
    rcartaocred: TRxCalcEdit;
    rcartaodeb: TRxCalcEdit;
    rcrediario: TRxCalcEdit;
    rconvenio: TRxCalcEdit;
    Panel4: TPanel;
    Bevel2: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    AdvShapeButton1: TAdvShapeButton;
    Bevel3: TBevel;
    Panel5: TPanel;
    Shape15: TShape;
    Shape16: TShape;
    Label13: TLabel;
    Shape17: TShape;
    Shape18: TShape;
    Label14: TLabel;
    rsoma: TRxCalcEdit;
    rdiferenca: TRxCalcEdit;
    bgrava_fiscal: TButton;
    query: TzQuery;
    qrcaixa_mov: TzQuery;
    IBQuery1: TzQuery;
    query1: TzQuery;
    Query2: TzQuery;
    query3: TzQuery;
    Shape8: TShape;
    Label22: TLabel;
    efinanceira: TShape;
    rfinanceira: TRxCalcEdit;
    PTEF1: TFlatPanel;
    ptef2: TFlatPanel;
    BCH_TECBAN: TButton;
    BCH_REDECARD: TButton;
    bcartao: TButton;
    bpgto: TButton;
    lb_credito: TLabel;
    cb_credito: TComboBox;
    spin_credito: TRzSpinEdit;
    cb_debito: TComboBox;
    lb_debito: TLabel;
    spin_debito: TRzSpinEdit;
    Gravar1: TMenuItem;
    bduplicata: TButton;
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
    qrcliente: TZQuery;
    fxduplicata: TfrxReport;
    SayPrint1: TSayPrint;
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
    procedure FormShow(Sender: TObject);
    procedure rdinheiroEnter(Sender: TObject);
    procedure rchequeavEnter(Sender: TObject);
    procedure rchequeapEnter(Sender: TObject);
    procedure rcartaocredEnter(Sender: TObject);
    procedure rcartaodebEnter(Sender: TObject);
    procedure rcrediarioEnter(Sender: TObject);
    procedure rcrediarioKeyPress(Sender: TObject; var Key: Char);
    procedure Cancelar1Click(Sender: TObject);
    procedure rchequeavExit(Sender: TObject);
    procedure rchequeapExit(Sender: TObject);
    procedure rcartaocredExit(Sender: TObject);
    procedure rcartaodebExit(Sender: TObject);
    procedure rcrediarioExit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure rconvenioEnter(Sender: TObject);
    procedure rconvenioExit(Sender: TObject);
    procedure rconvenioKeyPress(Sender: TObject; var Key: Char);
    procedure econvenio_codclienteEnter(Sender: TObject);
    procedure econvenio_codclienteExit(Sender: TObject);
    procedure econvenio_codclienteKeyPress(Sender: TObject; var Key: Char);
    procedure bconvenio_clienteClick(Sender: TObject);
    procedure convenio_comboExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rfinanceiraEnter(Sender: TObject);
    procedure rfinanceiraExit(Sender: TObject);
    procedure rfinanceiraKeyPress(Sender: TObject; var Key: Char);
    procedure BCH_TECBANClick(Sender: TObject);
    procedure BCH_REDECARDClick(Sender: TObject);
    procedure bcartaoClick(Sender: TObject);
    procedure bpgtoClick(Sender: TObject);
    procedure cb_creditoKeyPress(Sender: TObject; var Key: Char);
    procedure spin_creditoKeyPress(Sender: TObject; var Key: Char);
    procedure cb_debitoKeyPress(Sender: TObject; var Key: Char);
    procedure spin_debitoKeyPress(Sender: TObject; var Key: Char);
    procedure Gravar1Click(Sender: TObject);
    procedure bduplicataClick(Sender: TObject);


    procedure limpa_s;

    procedure avanca;

    

    procedure divisor_duplo;

    procedure divisor_simples;


  private
    function retorna_letra(numero:Integer):string;
    { Private declarations }
  public
    iOrdem : integer;
    sNumero : string;
    rValor : real;
    { Public declarations }
  end;

var
  frmvenda_fechamento: Tfrmvenda_fechamento;
  porta_impressora : string;

  // FTEF
  cons_cheque : boolean;
  JA_ABERTO : BOOLEAN;

  s1,s2,s3,s4,s5,s0:string;
  x:integer;


implementation

uses venda, modulo, principal, venda_contasreceber, troco, venda_impressao,
  extenso1,venda_obs, cheque, ecf, xloc_cliente, venda_inicio,
  cheque_avulso, venda_impressaoCP, venda_entrega, venda_financeira,
  consulta_cheque, unFuncoesTEF, duplicata_impressao, UFuncoes;

{$R *.dfm}

function Tfrmvenda_fechamento.retorna_letra(numero:Integer):string;
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

procedure Tfrmvenda_fechamento.rdesconto1Enter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
end;

procedure Tfrmvenda_fechamento.rdesconto1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if rdesconto1.value <> 0 then
  begin
    rdesconto2.Value := rsubtotal.value * (rdesconto1.Value / 100);
  end
  ELSE
    rdesconto2.value := 0;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.Value;
end;

procedure Tfrmvenda_fechamento.rdesconto2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if rsubtotal.value <> 0 then
  begin
    rdesconto1.Value := (rdesconto2.Value * 100)/rsubtotal.value;
  end
  ELSE
    RDESCONTO1.VALUE := 0;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmvenda_fechamento.racrescimo1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if racrescimo1.value <> 0 then
  begin
    racrescimo2.Value := rsubtotal.value * (racrescimo1.Value / 100);
  end
  ELSE
    RACRESCIMO2.VALUE := 0;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.Value;
end;

procedure Tfrmvenda_fechamento.racrescimo2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if rsubtotal.value <> 0 then
  begin
    racrescimo1.Value := (racrescimo2.Value * 100)/rsubtotal.value;
  end
  ELSE
    RACRESCIMO1.VALUE := 0;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmvenda_fechamento.rdinheiroExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  edinheiro.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rconvenio.Value +
                 rcrediario.Value+
                 rfinanceira.value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmvenda_fechamento.bgravarClick(Sender: TObject);
var texto : pansichar;
desconto_acrescimo : real;
tp_desconto_acrescimo,formasp : string;
v_dinheiro:real;
//forma_pgto : string;
 //FTEF
 y : integer;
 ecf_ok : boolean;
 qtef:integer;
 cvinc : boolean;

 ilin, icol:integer;
 //
 iparcela, itotal_parcela : integer;
 vpis, vcofins : Double;


 Sqtde, Svalor, Sdesconto,  stotal, scodigo, sproduto:string;


begin

  frmmodulo.qrFilial.Open;
  vpis := frmmodulo.qrFilial.FieldByName('pis').AsFloat;
  vcofins := frmmodulo.qrFilial.FieldByName('cofins').AsFloat;

  if rsoma.Value = 0 then
    begin
      rdinheiro.Value := rtotal.Value;
      rsoma.Value     := rtotal.Value;
      Application.ProcessMessages;
    end;

 try

    frmmodulo.qrconfig.open;
    if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CARTAO').asinteger = 1 then
    begin
      if rcartaocred.Value > 0 then
      begin
        if cb_credito.ItemIndex < 1 then
        begin
          application.messagebox('Favor selecionar a bandeira do cartão de Crédito!','Atenção',
                                  mb_ok+mb_iconerror);
          cb_credito.setfocus;
          exit;
        end;
      end;
      if rcartaodeb.Value > 0 then
      begin
        if cb_debito.ItemIndex < 1 then
        begin
          application.messagebox('Favor selecionar a bandeira do cartão de Débito!','Atenção',
                                  mb_ok+mb_iconerror);
          cb_debito.setfocus;
          exit;
        end;
      end;
    end;


  cons_cheque := false;
  IF USA_TEF THEN
  BEGIN

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



   if (rconvenio.Value + rcrediario.value) > (rtotal.value + (0.10))  then
   begin
     application.MessageBox('Os lançamentos em crediário/convênio não pode ultrapassar o valor total da venda! Favor verificar!','Atenção',mb_ok+MB_ICONWARNING);
     rcrediario.setfocus;
     exit;
   end;



   IF RDIFERENCA.VALUE > 0.001 THEN
   BEGIN
     APPLICATION.MESSAGEBOX('O Somatório dos valores pagos é inferior ao total da venda!','Erro',mb_ok+mb_iconerror);
     exit;
   END;



//  try

     IF RDESCONTO1.VALUE > 0 THEN
     BEGIN
         FRMMODULO.QRCONFIG.OPEN;
         IF FRMMODULO.QRCONFIG.FIELDBYNAME('DESCONTO_TOTALNOTA').ASFLOAT > 0 THEN
         BEGIN
           IF RDESCONTO1.VALUE > FRMMODULO.QRCONFIG.FIELDBYNAME('DESCONTO_TOTALNOTA').ASFLOAT THEN
           BEGIN
             if frmprincipal.autentica('Desconto Nota',3) then
             begin
//
             end
             else
             begin
               Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
             end;
           END;
         END;
     END;



   if rcrediario.Value > 0 then
   begin
    if rconvenio.value > 0 then
    begin
      application.messagebox('Não é possível efetuar pagamento de convênio em conjunto com crediário! Favor verificar','Erro',mb_ok+mb_iconerror);
      rconvenio.setfocus;
      exit;
    end;

    FRMMODULO.QRCONFIG.OPEN;
    IF FRMMODULO.QRCONFIG.FieldByName('VENDA_LIMITE_CLIENTE').ASINTEGER = 1 THEN
    BEGIN

    {
      if frmvenda.qrcliente.FieldByName('situacao').asinteger = 3 then
      begin
        application.messagebox('Cliente com crédito bloqueado! Não será possível prosseguir com o fechamento!','Atenção',mb_ok+mb_iconerror);
        rcrediario.setfocus;
        exit;
      end;
     }

      if frmvenda.qrcliente.FieldByName('situacao').asinteger = 2 then
      begin
        texto := pansichar('Cliente está com cadastro em observação: '+#13+
                 frmvenda.qrcliente.fieldbyname('obs1').asstring+#13+
                 frmvenda.qrcliente.fieldbyname('obs2').asstring+#13+
                 frmvenda.qrcliente.fieldbyname('obs3').asstring+#13+
                 frmvenda.qrcliente.fieldbyname('obs4').asstring+#13+
                 ''+#13+
                 'Deseja prosseguir com a venda?');


        if application.messagebox(Texto,'Crédito em Observação',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
        begin
          rcrediario.setfocus;
          exit;
        end;
      end;




      if frmvenda.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT <> 0 then
      begin
        IF rcrediario.Value > limite_disponivel  THEN
        BEGIN
          texto := pansichar('Este cliente possue um limite disponível de:'+#13+' ---> R$ '+frmvenda.lcliente_limite.caption+'  <--- '+#13+'É necessário autorização para prosseguir! '+#13+'Deseja continuar?');
          if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
          begin
            if not frmPrincipal.autentica('Liberar venda',3) then
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
        CHEQUE_CODCLIENTE := FRMVENDA.lcliente_codigo.Caption;
        CHEQUE_VENDA := FRMVENDA.lvenda_codigo.CAPTION;
        frmcheque_avulso := Tfrmcheque_avulso.CREATE(SELF);
        frmcheque_avulso.SHOWMODAL;
    end;
  end;





  IF NOT CONTINUAR THEN EXIT;


  if ecf_impressao = 1 then ecf_abre_gaveta(ecf_modelo);





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

  if rcrediario.Value <> 0 then
  begin

       frmvenda_contasreceber := tfrmvenda_contasreceber.create(self);
       frmvenda_contasreceber.showmodal;

  end;

  IF NOT CONTINUAR THEN EXIT;

 bgravar.enabled := false;

  if ecf_impressao = 1 then
  begin

//    try

    //***************************************************************************\\
    //***************************************************************************\\
    //   ENVIA COMANDO PARA O ECF                                                \\


      ecf_abre_gaveta(ecf_modelo);



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

              if ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,frmvenda_fechamento.rtotal.value) = 'ERRO' then
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














      (*---------------------------------------------------------------------*)


      (*---------------- LANÇAR AS FORMAS DE PAGAMENTO ----------------------*)

      if ecf_modelo = 'SWEDA' then
      begin
        if ecf_efetua_forma_pgto_especial(ecf_modelo,'',v_dinheiro,'',rchequeav.value,'',rchequeap.value,'',rcartaocred.value,'',rcartaodeb.value,'',rcrediario.value,'',rconvenio.value) = 'ERRO' then exit;
      end
      else
      begin

            if RDINHEIRO.VALUE > 0 then
            begin
              //ShowMessage('C '+ecf_modelo+ ' ' +FDINHEIRO + ' ' +FLOATTOSTR(v_dinheiro));
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
              bcartaoclick(Frmvenda_fechamento);
              IF NOT CONTINUA THEN
              BEGIN
                application.messagebox('Não foi possível prosseguir com a venda no cartão! Vafor verificar...','Erro - TEF',mb_ok+mb_iconerror);
                exit;
              END;

              if stefretorno = '0' then
              begin
                bpgtoclick(frmvenda_fechamento);
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
                     BCH_REDECARDClick(FRMVENDA_FECHAMENTO);

                  if ret_cheque = 2 then // TECBAN
                     BCH_TECBANClick(FRMVENDA_FECHAMENTO);

                  if stefretorno = '0' then
                  begin
                    bpgtoClick(frmVenda_fechamento);
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
                  IF RCHEQUEAV.VALUE  > 0 THEN
                  BEGIN
                      formasp := FCHEQUEAV;
                      if ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAV,RCHEQUEAV.VALUE) = 'ERRO' then exit;
                  END;
                  IF RCHEQUEAP.VALUE  > 0 THEN
                  BEGIN
                      formasp := FCHEQUEAP;
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



           if ecf_termina_fechamento_especial(ecf_modelo,frmvenda.qrcliente.fieldbyname('nome').asstring,
                                                         frmvenda.qrcliente.fieldbyname('endereco').asstring+' '+frmvenda.qrcliente.fieldbyname('cidade').asstring+'/'+frmvenda.qrcliente.fieldbyname('uf').asstring,
                                                         frmvenda.qrcliente.fieldbyname('cpf').asstring) = 'ERRO' then exit else ecf_ok := true;



         end
         else
         begin
           ECF_OK := FALSE;

           repeat



           if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmvenda.qrcliente.fieldbyname('codigo').AsString+'-'+frmvenda.qrcliente.fieldbyname('nome').asstring,48,' ','D')+#10+
                                              frmprincipal.Texto_Justifica(('ENDERECO: '+frmvenda.qrcliente.fieldbyname('endereco').asstring+' '+frmvenda.qrcliente.fieldbyname('cidade').asstring+'/'+frmvenda.qrcliente.fieldbyname('uf').asstring),48,' ','D')+#10+
                                              frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmvenda.qrcliente.fieldbyname('cpf').asstring + ' RG/INSC: '+frmvenda.qrcliente.fieldbyname('rg').asstring,48,' ','D')+#10+
                                              frmprincipal.Texto_Justifica('VENDEDOR: '+frmvenda.lvendedor_codigo.Caption+'-'+frmvenda.lvendedor_nome.Caption,42,' ','D')+#10+
                                                 '------------------------------------------------'+#10+
                                                 '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT else ecf_ok := true;



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




              if ( ecf_cupom_vinculado = '1' ) and ( (rtotal.Value - rdinheiro.Value) > 0 ) then
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

                         frmvenda.qrvenda_produto.first;
                         while not FRMVENDA.qrvenda_produto.eof do
                           begin
                             if ecf_usa_CNFV(ecf_modelo,frmPrincipal.texto_justifica(frmvenda.qrvenda_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmPrincipal.texto_justifica(frmvenda.qrvenda_produto.fieldbyname('produto').asstring,15,' ','D')+
                                    frmPrincipal.texto_justifica(formatfloat('######0.000',frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat),8,' ','E')+
                                    frmPrincipal.texto_justifica(formatfloat('######0.00',frmvenda.qrvenda_produto.fieldbyname('unitario').asfloat),9,' ','E')+
                                    frmPrincipal.texto_justifica(formatfloat('######0.00',frmvenda.qrvenda_produto.fieldbyname('total').asfloat),9,' ','E')) = 'ERRO' then exit;
                             frmvenda.qrvenda_produto.Next;
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


                      FRMVENDA.qrcliente.Open;

                      if FRMVENDA.qrcliente.RecordCount = 0 then
                        begin
                          if ecf_usa_CNFV(ecf_modelo,'CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('codigo').asstring+' '+frmmodulo.qrcliente.fieldbyname('nome').asstring) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,'ENDEREÇO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR: '+frmvenda.lvendedor_codigo.Caption+'-'+frmvenda.lvendedor_nome.Caption,48,' ','D')) = 'ERRO' then exit;
                        end
                      else
                        begin
                          if ecf_usa_CNFV(ecf_modelo,'CLIENTE.: '+FRMVENDA.qrcliente.fieldbyname('codigo').asstring+' '+FRMVENDA.qrcliente.fieldbyname('nome').asstring) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,'ENDEREÇO: '+FRMVENDA.qrcliente.fieldbyname('endereco').asstring) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ: '+FRMVENDA.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+FRMVENDA.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR: '+frmvenda.lvendedor_codigo.Caption+'-'+frmvenda.lvendedor_nome.Caption,48,' ','D')) = 'ERRO' then exit;
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



                             FRMVENDA.qrvenda_contasreceber.First;
                             while not FRMVENDA.qrvenda_contasreceber.Eof do
                               begin
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'            COMPROVANTE DE DÉBITO               ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CUPOM.....: '+NUMERO_CUPOMx,48,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('DOCUMENTO.: '+FRMVENDA.qrvenda_contasreceber.FieldByName('documento').asstring,48,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR..: '+frmvenda.lvendedor_codigo.Caption+'-'+frmvenda.lvendedor_nome.Caption,48,' ','D')) = 'ERRO' then exit;
                                 if rconvenio.Value > 0 then
                                   if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CONVENIO..: '+econvenio_codconvenio.Text+'-'+econvenio_convenio.Text,42,' ','D')) = 'ERRO' then exit;

                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;

                                   FRMVENDA.qrcliente.Open;


                                if FRMVENDA.qrcliente.RecordCount = 0 then
                                begin
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE...: '+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'-'+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO..: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring),48,' ','D')) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ..: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('IE/RG.....: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,42,' ','D')) = 'ERRO' then exit;
                                end
                                else
                                begin
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE...: '+FRMVENDA.qrcliente.fieldbyname('codigo').asstring+'-'+FRMVENDA.qrcliente.fieldbyname('nome').asstring,48,' ','D')) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO..: '+FRMVENDA.qrcliente.fieldbyname('endereco').asstring+' '+FRMVENDA.qrcliente.fieldbyname('cidade').asstring+'/'+FRMVENDA.qrcliente.fieldbyname('uf').asstring),48,' ','D')) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ..: '+FRMVENDA.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+FRMVENDA.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('IE/RG.....: '+FRMVENDA.qrcliente.fieldbyname('rg').asstring,42,' ','D')) = 'ERRO' then exit;
                                end;

                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'   Este comprovante não é um documento fiscal   ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('PARCELA...: '+frmPrincipal.zerarcodigo(FRMVENDA.qrvenda_contasreceber.fieldbyname('prestacao').asstring,6),42,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENCIMENTO: '+FRMVENDA.qrvenda_contasreceber.FieldByName('vencimento').AsString,42,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VALOR.....: '+formatfloat('#,###,##0.00',FRMVENDA.qrvenda_contasreceber.FieldByName('valor').AsFloat),38,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;

                                 FRMVENDA.qrvenda_contasreceber.Next;
                               end;
                           end;
                         end;

                      if ecf_fecha_CNFV(ecf_modelo) = 'ERRO' then exit;

                   end;
                end;





                                {

                if ecf_cupom_vinculado = '1' then // segunda via
                  begin
                   if application.messagebox('Deseja imprimir segunda via (Comprovante Não Fiscal Vinculado)?','Aviso',mb_yesno+mb_iconquestion) = idyes then
                     begin

                     // --------------------- EMISSAO DO COMPROVANTE NAO FISCAL VINCULADO COMO NOTA DE VENDA --------------------------\\

                     if ecf_abre_CNFV(ecf_modelo,FORMASP,'',NUMERO_CUPOMx) <> 'ERRO' then
                     BEGIN
                         if ecf_usa_CNFV(ecf_modelo,'COMPROVANTE DE DÉBITO   CUPOM FISCAL No: '+NUMERO_CUPOMx) = 'ERRO' then exit;

                         if ecf_cupom_vinculado_produtos = '1' then
                           begin
                             if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                             if ecf_usa_CNFV(ecf_modelo,'PRODUTO                    QTDE   VALOR    TOTAL' ) = 'ERRO' then exit;
                             if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                             frmvenda.qrvenda_produto.First;
                             while not frmvenda.qrvenda_produto.Eof do
                               begin
                                 if ecf_usa_CNFV(ecf_modelo,frmPrincipal.texto_justifica(frmvenda.qrvenda_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                      frmPrincipal.texto_justifica(frmvenda.qrvenda_produto.fieldbyname('produto').asstring,19,' ','D')+
                                      frmPrincipal.texto_justifica(formatfloat('######0',frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat),4,' ','E')+
                                      frmPrincipal.texto_justifica(formatfloat('######0.00',frmvenda.qrvenda_produto.fieldbyname('unitario').asfloat),9,' ','E')+
                                      frmPrincipal.texto_justifica(formatfloat('######0.00',frmvenda.qrvenda_produto.fieldbyname('total').asfloat),9,' ','E')) = 'ERRO' then exit;
                                 frmvenda.qrvenda_produto.Next;
                               end;
                           end;
                         if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,'TOTAL DOS PRODUTOS .................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rsubtotal.value),9,' ','E')) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,'DESCONTO ...........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rdesconto2.value),9,' ','E')) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,'T O T A L ..........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',rtotal.value),9,' ','E')) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmvenda.qrcliente.fieldbyname('nome').asstring,48,' ','D')) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO: '+frmvenda.qrcliente.fieldbyname('endereco').asstring+' '+frmvenda.qrcliente.fieldbyname('cidade').asstring+'/'+frmvenda.qrcliente.fieldbyname('uf').asstring),48,' ','D')) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmvenda.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmvenda.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR: '+frmvenda.lvendedor_codigo.Caption+'-'+frmvenda.lvendedor_nome.Caption,42,' ','D')) = 'ERRO' then exit;
                         if rconvenio.Value > 0 then
                           begin
                             if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CONVENIO: '+econvenio_codconvenio.Text+'-'+econvenio_convenio.Text,42,' ','D')) = 'ERRO' then exit;
                             if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                             if ecf_usa_CNFV(ecf_modelo,'Autorizo descontar em folha o valor da compra.' ) = 'ERRO' then exit;
                           end
                         else
                           begin
                             if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                             if ecf_usa_CNFV(ecf_modelo,'Reconheço e pagarei a divida aqui apresentada.  ' ) = 'ERRO' then exit;
                           end;


                           if (rcrediario.value + rconvenio.value) > 0 then
                           begin
                             if ecf_cupom_vinculado_carne = '1' then // carne
                             begin
                               frmvenda.qrvenda_contasreceber.First;
                               while not frmvenda.qrvenda_contasreceber.Eof do
                               begin
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'            COMPROVANTE DE DÉBITO               ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CUPOM.....: '+NUMERO_CUPOMx,48,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('DOCUMENTO.: '+frmvenda.qrvenda_contasreceber.FieldByName('documento').asstring,48,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR..: '+frmvenda.lvendedor_codigo.Caption+'-'+frmvenda.lvendedor_nome.Caption,48,' ','D')) = 'ERRO' then exit;
                                 if rconvenio.Value > 0 then
                                   if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CONVENIO..: '+econvenio_codconvenio.Text+'-'+econvenio_convenio.Text,42,' ','D')) = 'ERRO' then exit;

                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE...: '+frmvenda.qrcliente.fieldbyname('codigo').asstring+'-'+frmvenda.qrcliente.fieldbyname('nome').asstring,48,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO..: '+frmvenda.qrcliente.fieldbyname('endereco').asstring+' '+frmvenda.qrcliente.fieldbyname('cidade').asstring+'/'+frmvenda.qrcliente.fieldbyname('uf').asstring),48,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ..: '+frmvenda.qrcliente.fieldbyname('cpf').asstring + ' RG/INSC: '+frmvenda.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('IE/RG.....: '+frmvenda.qrcliente.fieldbyname('rg').asstring,42,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'   Este comprovante não é um documento fiscal   ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('PARCELA...: '+frmPrincipal.zerarcodigo(frmvenda.qrvenda_contasreceber.fieldbyname('prestacao').asstring,6),42,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENCIMENTO: '+frmvenda.qrvenda_contasreceber.FieldByName('vencimento').AsString,42,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VALOR.....: '+formatfloat('#,###,##0.00',frmvenda.qrvenda_contasreceber.FieldByName('valor').AsFloat),38,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;

                                 frmvenda.qrvenda_contasreceber.Next;
                               end;
                             end;
                           end;
                      end;

                      //if ecf_fecha_CNFV(ecf_modelo) = 'ERRO' then exit;
                      if ecf_fecha_CNFV(ecf_modelo) = 'ERRO' then
                        application.messagebox('Cupom Vinculado Impossibilitado de ser Impresso!','Atenção', mb_ok+mb_iconerror);

                   end;
                end;
                }



         END;



    //***************************************************************************\\
    //***************************************************************************\\
    //***************************************************************************\\
//    except
//      application.messagebox('Houve falha na impressao do cupom! Todo o procedimento será abortado!','Erro!',mb_ok+mb_iconerror);
//      frmmodulo.Conexao.Rollback;
//      close;
//      exit;
//    end;

  end;







  ////  LANCAMENTOS ESPECIFICOS DE CADA FORMA DE PAGAMENTO











  if rdinheiro.Value <> 0 then
  begin


    qrcaixa_mov.close;
    qrcaixa_mov.sql.clear;
    qrcaixa_mov.sql.add('insert into c000044');
    qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
    qrcaixa_mov.sql.add('values');
    qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

    qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
    qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
    qrcaixa_mov.parambyname('saida').asfloat := 0;
    qrcaixa_mov.parambyname('entrada').asfloat := rdinheiro.value;
    qrcaixa_mov.parambyname('valor').asfloat := rdinheiro.value;

    frmmodulo.qrconfig.open;
    qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
    qrcaixa_mov.parambyname('movimento').asINTEGER := 3; // venda em dinheiro
    qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. '+frmvenda.lvenda_codigo.Caption+' - '+frmvenda.lcliente_nome.caption,1,60);

    qrcaixa_mov.ExecSQL;


  end;
  if rchequeav.Value <> 0 then
  begin

    qrcaixa_mov.close;
    qrcaixa_mov.sql.clear;
    qrcaixa_mov.sql.add('insert into c000044');
    qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
    qrcaixa_mov.sql.add('values');
    qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

    qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
    qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
    qrcaixa_mov.parambyname('saida').asfloat := 0;
    qrcaixa_mov.parambyname('entrada').asfloat := 0;
    qrcaixa_mov.parambyname('valor').asfloat := rchequeav.value;
    frmmodulo.qrconfig.open;
    qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AV').asstring;
    qrcaixa_mov.parambyname('movimento').asINTEGER := 5; // venda em cheque a vista
    qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. '+frmvenda.lvenda_codigo.Caption+' - '+frmvenda.lcliente_nome.caption,1,60);

    qrcaixa_mov.ExecSQL;

  end;
  if rchequeap.Value <> 0 then
  begin


    qrcaixa_mov.close;
    qrcaixa_mov.sql.clear;
    qrcaixa_mov.sql.add('insert into c000044');
    qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
    qrcaixa_mov.sql.add('values');
    qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

    qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
    qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
    qrcaixa_mov.parambyname('saida').asfloat := 0;
    qrcaixa_mov.parambyname('entrada').asfloat := 0;
    qrcaixa_mov.parambyname('valor').asfloat := rchequeap.value;
    frmmodulo.qrconfig.open;
    qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
    qrcaixa_mov.parambyname('movimento').asINTEGER := 6; // venda em cheque a prazo
    qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. '+frmvenda.lvenda_codigo.Caption+' - '+frmvenda.lcliente_nome.caption,1,60);

    qrcaixa_mov.ExecSQL;



  end;
  if rcartaocred.Value <> 0 then
  begin
    frmmodulo.qrconfig.open;
    if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CARTAO').asinteger = 1 then
    begin
      // cadastrar cartoes de credito
    end;

    qrcaixa_mov.close;
    qrcaixa_mov.sql.clear;
    qrcaixa_mov.sql.add('insert into c000044');
    qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
    qrcaixa_mov.sql.add('values');
    qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');


    qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
    qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
    qrcaixa_mov.parambyname('saida').asfloat := 0;
    qrcaixa_mov.parambyname('entrada').asfloat := 0;
    qrcaixa_mov.parambyname('valor').asfloat := rcartaocred.value;
    frmmodulo.qrconfig.open;
    qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
    qrcaixa_mov.parambyname('movimento').asINTEGER := 7; // venda em cartao de credito
    qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. '+frmvenda.lvenda_codigo.Caption+' - '+frmvenda.lcliente_nome.caption,1,60);

    qrcaixa_mov.ExecSQL;

  end;
  if rcartaodeb.Value <> 0 then
  begin
    frmmodulo.qrconfig.open;
    if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CARTAO').asinteger = 1 then
    begin
      // cadastrar cartoes de debito
    end;

    qrcaixa_mov.close;
    qrcaixa_mov.sql.clear;
    qrcaixa_mov.sql.add('insert into c000044');
    qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
    qrcaixa_mov.sql.add('values');
    qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

    qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
    qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
    qrcaixa_mov.parambyname('saida').asfloat := 0;
    qrcaixa_mov.parambyname('entrada').asfloat := 0;
    qrcaixa_mov.parambyname('valor').asfloat := rcartaoDEB.value;
    frmmodulo.qrconfig.open;
    qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
    qrcaixa_mov.parambyname('movimento').asINTEGER := 8; // venda em cartao de debito
    qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. '+frmvenda.lvenda_codigo.Caption+' - '+frmvenda.lcliente_nome.caption,1,60);

    qrcaixa_mov.execsql;

  end;

  if rcrediario.Value <> 0 then
  begin
    qrcaixa_mov.close;
    qrcaixa_mov.sql.clear;
    qrcaixa_mov.sql.add('insert into c000044');
    qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
    qrcaixa_mov.sql.add('values');
    qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');

    qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
    qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
    qrcaixa_mov.parambyname('saida').asfloat := 0;
    qrcaixa_mov.parambyname('entrada').asfloat := 0;
    qrcaixa_mov.parambyname('valor').asfloat := rcrediario.value;
    frmmodulo.qrconfig.open;
    qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;

    qrcaixa_mov.parambyname('movimento').asINTEGER := 4; // venda crediario
    qrcaixa_mov.parambyname('historico').asstring := copy('Venda Crediario No. '+frmvenda.lvenda_codigo.Caption+' - '+frmvenda.lcliente_nome.caption,1,60);

    begin
    qrcaixa_mov.ExecSQL;

    // lancamento do contas a receber


    if rdinheiro.value <> 0 then

      ibquery1.close;
      ibquery1.SQL.clear;
      ibquery1.sql.add('insert into c000049');
      ibquery1.sql.add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
      ibquery1.sql.add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
      ibquery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom)');
      ibquery1.sql.add('values');
      ibquery1.sql.add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
      ibquery1.sql.add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
      ibquery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom)');

      ibquery1.parambyname('codigo').asstring          := frmvenda.lvenda_codigo.Caption+'/00';
      ibquery1.parambyname('codvenda').asstring        := frmvenda.lvenda_codigo.Caption;
      ibquery1.parambyname('codcliente').asstring      := frmvenda.lcliente_codigo.Caption;
      ibquery1.parambyname('codregiao').asstring       := frmvenda.qrcliente.fieldbyname('codregiao').asstring;
      ibquery1.parambyname('codvendedor').asstring     := frmvenda.lvendedor_codigo.Caption;
      ibquery1.parambyname('codcaixa').asstring        := frmvenda.lcaixa_codigo.Caption;
      ibquery1.parambyname('data_emissao').asdatetime    := strtodate(frmvenda.lvenda_data.Caption);
      ibquery1.parambyname('data_vencimento').asdatetime := strtodate(frmvenda.lvenda_data.Caption);
      ibquery1.parambyname('valor_original').asfloat   := RDINHEIRO.VALUE;
      ibquery1.parambyname('valor_pago').asfloat       := RDINHEIRO.VALUE;
      ibquery1.parambyname('valor_atual').asfloat      := 0;
      ibquery1.parambyname('documento').asstring       := 'ENTRADA';
      ibquery1.parambyname('tipo').asstring            := frmvenda.qrvenda_contasreceber.fieldbyname('tipo').asstring;
      ibquery1.parambyname('situacao').asinteger       := 2;
      ibquery1.parambyname('filtro').asinteger         := 0;
      ibquery1.parambyname('numero_cupom').asstring    := frmvenda.lvenda_cupom.caption;
      ibquery1.ExecSQL;
    end;


    frmvenda.qrvenda_contasreceber.First;
    while not frmvenda.qrvenda_contasreceber.eof do
    begin

      ibquery1.close;
      ibquery1.SQL.clear;
      ibquery1.sql.add('insert into c000049');
      ibquery1.sql.add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
      ibquery1.sql.add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
      ibquery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom)');
      ibquery1.sql.add('values');
      ibquery1.sql.add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
      ibquery1.sql.add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
      ibquery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom)');


      ibquery1.parambyname('codigo').asstring          := frmvenda.lvenda_codigo.Caption+'/'+frmprincipal.zerarcodigo(frmvenda.qrvenda_contasreceber.fieldbyname('prestacao').asstring,2);
      ibquery1.parambyname('codvenda').asstring        := frmvenda.lvenda_codigo.Caption;
      ibquery1.parambyname('codcliente').asstring      := frmvenda.lcliente_codigo.Caption;
      ibquery1.parambyname('codregiao').asstring       := frmvenda.qrcliente.fieldbyname('codregiao').asstring;
      ibquery1.parambyname('codvendedor').asstring     := frmvenda.lvendedor_codigo.Caption;
      ibquery1.parambyname('codcaixa').asstring        := frmvenda.lcaixa_codigo.Caption;
      ibquery1.parambyname('data_emissao').asdatetime    := strtodate(frmvenda.lvenda_data.Caption);
      ibquery1.parambyname('data_vencimento').asdatetime := frmvenda.qrvenda_contasreceber.fieldbyname('vencimento').asdatetime;
      ibquery1.parambyname('valor_original').asfloat   := frmvenda.qrvenda_contasreceber.fieldbyname('valor').asfloat;
      ibquery1.parambyname('valor_atual').asfloat      := frmvenda.qrvenda_contasreceber.fieldbyname('valor').asfloat;
      ibquery1.parambyname('documento').asstring       := frmvenda.qrvenda_contasreceber.fieldbyname('documento').asstring;
      ibquery1.parambyname('tipo').asstring            := frmvenda.qrvenda_contasreceber.fieldbyname('tipo').asstring;
      ibquery1.parambyname('situacao').asinteger       := 1;
      ibquery1.parambyname('filtro').asinteger         := 0;
      ibquery1.parambyname('numero_cupom').asstring    := frmvenda.lvenda_cupom.caption;
      ibquery1.ExecSQL;

      frmvenda.qrvenda_contasreceber.next;
    end;



    //

  end;





if rconvenio.Value <> 0 then
  begin

    qrcaixa_mov.close;
    qrcaixa_mov.sql.clear;
    qrcaixa_mov.sql.add('insert into c000044');
    qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
    qrcaixa_mov.sql.add('values');
    qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');



    qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
    qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
    qrcaixa_mov.parambyname('saida').asfloat := 0;
    qrcaixa_mov.parambyname('entrada').asfloat := 0;
    qrcaixa_mov.parambyname('valor').asfloat := rconvenio.value;
    frmmodulo.qrconfig.open;
    qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;

    qrcaixa_mov.parambyname('movimento').asINTEGER := 40; // venda convenio
    qrcaixa_mov.parambyname('historico').asstring := 'Venda Convenio No. '+frmvenda.lvenda_codigo.Caption+' - '+frmvenda.lcliente_nome.caption;

    qrcaixa_mov.execsql;


    // lancamento do contas a receber


    if rdinheiro.value <> 0 then
    begin

      ibquery1.close;
      ibquery1.SQL.clear;
      ibquery1.sql.add('insert into c000049');
      ibquery1.sql.add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
      ibquery1.sql.add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
      ibquery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom)');
      ibquery1.sql.add('values');
      ibquery1.sql.add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
      ibquery1.sql.add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
      ibquery1.sql.Add(' :documento, :tipo, :situacao, :filtro,:numero_cupom)');

      ibquery1.parambyname('codigo').asstring          := frmvenda.lvenda_codigo.Caption+'/00';
      ibquery1.parambyname('codvenda').asstring        := frmvenda.lvenda_codigo.Caption;
      ibquery1.parambyname('codcliente').asstring      := frmvenda.lcliente_codigo.Caption;
      ibquery1.parambyname('codregiao').asstring       := frmvenda.qrcliente.fieldbyname('codregiao').asstring;
      ibquery1.parambyname('codvendedor').asstring     := frmvenda.lvendedor_codigo.Caption;
      ibquery1.parambyname('codcaixa').asstring        := frmvenda.lcaixa_codigo.Caption;
      ibquery1.parambyname('data_emissao').asstring    := frmvenda.lvenda_data.Caption;
      ibquery1.parambyname('data_vencimento').asstring := frmvenda.lvenda_data.Caption;
      ibquery1.parambyname('valor_original').asfloat   := RDINHEIRO.VALUE;
      ibquery1.parambyname('valor_pago').asfloat       := RDINHEIRO.VALUE;
      ibquery1.parambyname('valor_atual').asfloat      := 0;
      ibquery1.parambyname('documento').asstring       := 'ENTRADA';
      ibquery1.parambyname('tipo').asstring            := frmvenda.qrvenda_contasreceber.fieldbyname('tipo').asstring;
      ibquery1.parambyname('situacao').asinteger       := 2;
      ibquery1.parambyname('filtro').asinteger         := 0;
      ibquery1.parambyname('numero_cupom').asstring    := frmvenda.lvenda_cupom.caption;

      ibquery1.ExecSQL;
    end;


    frmvenda.qrvenda_contasreceber.First;
    while not frmvenda.qrvenda_contasreceber.eof do
    begin
      ibquery1.close;
      ibquery1.SQL.clear;
      ibquery1.sql.add('insert into c000049');
      ibquery1.sql.add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
      ibquery1.sql.add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
      ibquery1.sql.Add(' documento, tipo, situacao, filtro, numero_cupom)');
      ibquery1.sql.add('values');
      ibquery1.sql.add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
      ibquery1.sql.add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
      ibquery1.sql.Add(' :documento, :tipo, :situacao, :filtro, :numero_cupom)');
      ibquery1.parambyname('codigo').asstring          := frmvenda.lvenda_codigo.Caption+'/'+frmprincipal.zerarcodigo(frmvenda.qrvenda_contasreceber.fieldbyname('prestacao').asstring,2);
      ibquery1.parambyname('codvenda').asstring        := frmvenda.lvenda_codigo.Caption;
      ibquery1.parambyname('codcliente').asstring      := frmvenda.lcliente_codigo.Caption;
      ibquery1.parambyname('codregiao').asstring       := frmvenda.qrcliente.fieldbyname('codregiao').asstring;
      ibquery1.parambyname('codvendedor').asstring     := frmvenda.lvendedor_codigo.Caption;
      ibquery1.parambyname('codcaixa').asstring        := frmvenda.lcaixa_codigo.Caption;
      ibquery1.parambyname('data_emissao').asdatetime    := strtodate(frmvenda.lvenda_data.Caption);
      ibquery1.parambyname('data_vencimento').asdatetime := frmvenda.qrvenda_contasreceber.fieldbyname('vencimento').asdatetime;
      ibquery1.parambyname('valor_original').asfloat   := frmvenda.qrvenda_contasreceber.fieldbyname('valor').asfloat;
      ibquery1.parambyname('valor_atual').asfloat      := frmvenda.qrvenda_contasreceber.fieldbyname('valor').asfloat;
      ibquery1.parambyname('documento').asstring       := frmvenda.qrvenda_contasreceber.fieldbyname('documento').asstring;
      ibquery1.parambyname('tipo').asstring            := frmvenda.qrvenda_contasreceber.fieldbyname('tipo').asstring;
      ibquery1.parambyname('situacao').asinteger       := 1;
      ibquery1.parambyname('filtro').asinteger         := 0;
      ibquery1.parambyname('numero_cupom').asstring    := frmvenda.lvenda_cupom.caption;
      ibquery1.ExecSQL;

      frmvenda.qrvenda_contasreceber.next;
    end;




    //

  end;



  if rFINANCEIRA.Value <> 0 then
  begin
    qrcaixa_mov.close;
    qrcaixa_mov.sql.clear;
    qrcaixa_mov.sql.add('insert into c000044');
    qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico)');
    qrcaixa_mov.sql.add('values');
    qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico)');


    qrcaixa_mov.parambyname('codigo').asstring := frmprincipal.codifica('000044');
    qrcaixa_mov.parambyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    qrcaixa_mov.parambyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    qrcaixa_mov.parambyname('data').asdatetime := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
    qrcaixa_mov.parambyname('saida').asfloat := 0;
    qrcaixa_mov.parambyname('entrada').asfloat := 0;
    qrcaixa_mov.parambyname('valor').asfloat := rFINANCEIRA.value;
    frmmodulo.qrconfig.open;
    qrcaixa_mov.parambyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
    qrcaixa_mov.parambyname('movimento').asINTEGER := 42; // VENDA NA FINANCEIRA
    qrcaixa_mov.parambyname('historico').asstring := copy('Venda Financeira '+FI_NOME+' No. '+frmvenda.lvenda_codigo.Caption+' - '+frmvenda.lcliente_nome.caption,1,60);

    qrcaixa_mov.ExecSQL;

    // lancamento de financeira
      FI_LANCTO := FRMPRINCIPAL.codifica('000123');

      ibquery1.close;
      ibquery1.sql.clear;
      ibquery1.sql.add('insert into c000123');
      ibquery1.sql.add('(CODIGO, CODBANCO, DATA, CODCLIENTE, VALOR, SITUACAO, DATA_PGTO, VALOR_PAGO, BORDERO, PROPOSTA, OBS, CODVENDA)');
      ibquery1.sql.add('values');
      ibquery1.sql.add('(:CODIGO, :CODBANCO, :DATA, :CODCLIENTE, :VALOR, :SITUACAO, :DATA_PGTO, :VALOR_PAGO, :BORDERO, :PROPOSTA, :OBS, :CODVENDA)');

      ibquery1.ParamByName('CODIGO').ASSTRING :=  FI_LANCTO;
      ibquery1.ParamByName('CODbanco').ASSTRING :=  FI_CODIGO;
      ibquery1.ParamByName('DATA').ASDATETIME :=  STRTODATE(frmvenda.lvenda_data.Caption);
      ibquery1.ParamByName('CODCLIENTE').ASSTRING :=  FRMVENDA.lcliente_codigo.Caption;
      ibquery1.ParamByName('VALOR').ASFLOAT :=  rfinanceira.VALUE;
      ibquery1.ParamByName('SITUACAO').ASSTRING :=  '1';
      ibquery1.ParamByName('DATA_PGTO').ASDATETIME :=  STRTODATE(FI_VENCIMENTO);
      ibquery1.ParamByName('VALOR_PAGO').ASFLOAT :=  0;
      ibquery1.ParamByName('BORDERO').ASSTRING :=  FI_BORDERO;
      ibquery1.ParamByName('PROPOSTA').ASSTRING :=  FI_PROPOSTA;
      ibquery1.ParamByName('OBS').ASSTRING :=  '';
      ibquery1.ParamByName('CODVENDA').ASSTRING :=  FRMVENDA.lvenda_codigo.CAPTION;
      ibquery1.ExecSQL;
  end;





    // lancamento da venda

      ibquery1.close;
      ibquery1.SQL.clear;
      ibquery1.sql.add('insert into c000048');
      ibquery1.sql.add('(codigo,data,codcliente,codvendedor,codcaixa,');
      ibquery1.sql.add(' total,subtotal,meio_dinheiro,meio_chequeav,meio_chequeap,');
      ibquery1.sql.add(' meio_cartaocred,meio_cartaodeb,meio_crediario,meio_convenio,meio_financeira,');
      ibquery1.sql.add(' desconto,acrescimo,obs,NUMERO_CUPOM_FISCAL,cupom_fiscal,retirado,cod_financeira,cod_financeira_lancto)');
      ibquery1.sql.add('values');
      ibquery1.sql.add('(:codigo,:data,:codcliente,:codvendedor,:codcaixa,');
      ibquery1.sql.add(' :total,:subtotal,:meio_dinheiro,:meio_chequeav,:meio_chequeap,:meio_financeira,');
      ibquery1.sql.add(' :meio_cartaocred,:meio_cartaodeb,:meio_crediario,:meio_convenio,');
      ibquery1.sql.add(' :desconto,:acrescimo,:obs,:NUMERO_CUPOM_FISCAL,:cupom_fiscal,:retirado,:cod_financeira,:cod_financeira_lancto)');

      ibquery1.parambyname('codigo').asstring := frmvenda.lvenda_codigo.Caption;
      ibquery1.parambyname('data').asdatetime := strtodate(frmvenda.lvenda_data.Caption);
      ibquery1.parambyname('codcliente').asstring := frmvenda.lcliente_codigo.Caption;
      ibquery1.parambyname('codvendedor').asstring := frmvenda.lvendedor_codigo.Caption;
      ibquery1.parambyname('codcaixa').asstring := frmvenda.lcaixa_codigo.Caption;
      ibquery1.parambyname('TOTAL').asfloat := rtotal.value;
      ibquery1.parambyname('SUBTOTAL').asfloat := rsubtotal.value;
      ibquery1.parambyname('meio_dinheiro').asfloat := rdinheiro.Value;
      ibquery1.parambyname('meio_chequeav').asfloat := rchequeav.Value;
      ibquery1.parambyname('meio_chequeap').asfloat := rchequeap.Value;
      ibquery1.parambyname('meio_cartaocred').asfloat := rcartaocred.Value;
      ibquery1.parambyname('meio_cartaodeb').asfloat := rcartaodeb.Value;
      ibquery1.parambyname('meio_crediario').asfloat := rcrediario.Value;
      ibquery1.parambyname('meio_convenio').AsFloat := rconvenio.Value;
      ibquery1.parambyname('meio_financeira').AsFloat := rconvenio.Value;

      ibquery1.parambyname('desconto').asfloat := rdesconto2.Value;
      ibquery1.parambyname('acrescimo').asfloat := racrescimo2.Value;
      ibquery1.parambyname('OBS').asstring := observ;
      ibquery1.parambyname('COD_FINANCEIRA').asstring := FI_CODIGO;
      ibquery1.parambyname('COD_FINANCEIRA_LANCTO').asstring := FI_LANCTO;


      ibquery1.parambyname('NUMERO_CUPOM_FISCAL').ASSTRING := numero_cupomx;
      if numero_cupomx <> '' then ibquery1.parambyname('cupom_fiscal').asinteger := 1
      else ibquery1.parambyname('cupom_fiscal').asinteger := 0;

      ibquery1.execsql;



    frmmodulo.qrconfig.open;
    if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CARTAO').asinteger = 1 then
    begin
      if rcartaocred.Value > 0 then
      begin
        query.close;
        query.sql.clear;
        query.sql.add('select * from c000013');
        query.sql.add('where numero = '''+copy(cb_credito.Text,1,3)+'''');
        query.open;
        if query.RecordCount > 0 then
        begin
          itotal_parcela := spin_credito.IntValue;

          for iparcela := 1 to itotal_parcela do
          begin
            ibquery1.close;
            ibquery1.sql.clear;
            ibquery1.sql.add('insert into c000124');
            ibquery1.sql.add('(codigo, cod_venda, banco, cod_cliente, data_venda, valor, comissao,');
            ibquery1.sql.add('liquido, data_recebimento, situacao, tipo, parcela, valor_total)');
            ibquery1.sql.Add('values');
            ibquery1.sql.add('(:codigo, :cod_venda, :banco, :cod_cliente, :data_venda, :valor, :comissao,');
            ibquery1.sql.add(':liquido, :data_recebimento, :situacao, :tipo, :parcela, :valor_total)');
            ibquery1.parambyname('codigo').asstring := FRMPRINCIPAL.codifica('000124');
            ibquery1.parambyname('cod_venda').AsString := frmvenda.lvenda_codigo.Caption;
            ibquery1.parambyname('banco').asstring := copy(cb_credito.Text,1,3);
            ibquery1.ParamByName('cod_cliente').asstring := frmvenda.lcliente_codigo.Caption;
            ibquery1.ParamByName('data_venda').asdatetime := strtodate(frmvenda.lvenda_data.caption);
            // valor da parcela
            ibquery1.ParamByName('valor').asfloat := rcartaocred.value / itotal_parcela;
            if query.fieldbyname('comissao_credito').asfloat > 0 then
            begin
               ibquery1.ParamByName('comissao').asfloat := (rcartaocred.value/itotal_parcela) * (query.fieldbyname('comissao_credito').asfloat/100);
               ibquery1.parambyname('liquido').asfloat := (rcartaocred.value/itotal_parcela) - ((rcartaocred.value/itotal_parcela) * (query.fieldbyname('comissao_credito').asfloat/100));
            end
            else
            begin
               ibquery1.ParamByName('comissao').asfloat := 0;
               ibquery1.ParamByName('liquido').asfloat := (rcartaocred.value/itotal_parcela);
            end;
            //
            ibquery1.ParamByName('data_recebimento').asdatetime :=  strtodate(frmvenda.lvenda_data.caption) + (query.fieldbyname('rec_credito').asinteger * iparcela);
            ibquery1.Parambyname('situacao').asSTRING := 'ABERTO';
            ibquery1.parambyname('tipo').asstring := 'CREDITO';
            ibquery1.parambyname('parcela').asinteger := iparcela;
            ibquery1.parambyname('valor_total').asfloat := rcartaocred.value;
            ibquery1.execsql;
          end;
        end;
      end;
      if rcartaodeb.Value > 0 then
      begin
        query.close;
        query.sql.clear;
        query.sql.add('select * from c000013');
        query.sql.add('where numero = '''+copy(cb_DEBITO.Text,1,3)+'''');
        query.open;
        if query.RecordCount > 0 then
        begin

          itotal_parcela := spin_DEBITO.IntValue;

          for iparcela := 1 to itotal_parcela do
          begin
            ibquery1.close;
            ibquery1.sql.clear;
            ibquery1.sql.add('insert into c000124');
            ibquery1.sql.add('(codigo, cod_venda, banco, cod_cliente, data_venda, valor, comissao,');
            ibquery1.sql.add('liquido, data_recebimento, situacao, tipo, parcela, valor_total)');
            ibquery1.sql.Add('values');
            ibquery1.sql.add('(:codigo, :cod_venda, :banco, :cod_cliente, :data_venda, :valor, :comissao,');
            ibquery1.sql.add(':liquido, :data_recebimento, :situacao, :tipo, :parcela, :valor_total)');
            ibquery1.parambyname('codigo').asstring := FRMPRINCIPAL.codifica('000124');
            ibquery1.parambyname('cod_venda').AsString := frmvenda.lvenda_codigo.Caption;
            ibquery1.parambyname('banco').asstring := copy(cb_DEBITO.Text,1,3);
            ibquery1.ParamByName('cod_cliente').asstring := frmvenda.lcliente_codigo.Caption;
            ibquery1.ParamByName('data_venda').asdatetime := strtodate(frmvenda.lvenda_data.caption);
            // valor da parcela
            ibquery1.ParamByName('valor').asfloat := rcartaoDEB.value / itotal_parcela;
            if query.fieldbyname('comissao_DEBITO').asfloat > 0 then
            begin
               ibquery1.ParamByName('comissao').asfloat := (rcartaoDEB.value/itotal_parcela) * (query.fieldbyname('comissao_DEBITO').asfloat/100);
               ibquery1.parambyname('liquido').asfloat := (rcartaoDEB.value/itotal_parcela) - ((rcartaoDEB.value/itotal_parcela) * (query.fieldbyname('comissao_DEBITO').asfloat/100));
            end
            else
            begin
               ibquery1.ParamByName('comissao').asfloat := 0;
               ibquery1.ParamByName('liquido').asfloat := (rcartaoDEB.value/itotal_parcela);
            end;
            //
            ibquery1.ParamByName('data_recebimento').asdatetime :=  strtodate(frmvenda.lvenda_data.caption) + (query.fieldbyname('rec_DEBITO').asinteger * iparcela);
            ibquery1.Parambyname('situacao').asstring := 'ABERTO';
            ibquery1.parambyname('tipo').asstring := 'DEBITO';
            ibquery1.parambyname('parcela').asinteger := iparcela;
            ibquery1.parambyname('valor_total').asfloat := rcartaoDEB.value;
            ibquery1.execsql;
          end;
        end;

      end;
    end;






       ibquery1.Close;
       ibquery1.sql.clear;
       ibquery1.sql.add('select * from c000048 where codigo = '''+frmvenda.lvenda_codigo.Caption+'''');
       ibquery1.open;

      if ecf_impressao = 2 then
      begin
        if ecf_modelo <> '' then
        begin
          frmvenda_impressao := tfrmvenda_impressao.create(self);
          if rcrediario.value > 0 then frmvenda_impressao.combo_modelo.ItemIndex := 1 else    frmvenda_impressao.combo_modelo.ItemIndex := 0;
          frmvenda_impressao.showmodal;
        end
        else
        begin


          frmvenda_impressaoCP := tfrmvenda_impressaoCP.create(self);
          frmvenda_impressaoCP.showmodal;
        end;
      end;



      FRMMODULO.QRCONFIG.OPEN;
      IF FRMMODULO.QRCONFIG.FieldByName('CONTROLA_ENTREGA').ASINTEGER = 1 THEN
      BEGIN
        FRMVENDA_ENTREGA := TFRMVENDA_ENTREGA.CREATE(self);
        frmvenda_entrega.qrEntrega.open;
        while frmvenda_entrega.qrentrega.RecordCount > 0 do frmvenda_entrega.qrEntrega.delete;


        frmvenda.qrvenda_produto.First;
        while not frmvenda.qrvenda_produto.Eof do
        begin
          if frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat > 0 then
          begin
            frmvenda_entrega.qrEntrega.Insert;
            frmvenda_entrega.qrEntrega.FieldByName('codigo').asstring := frmvenda.qrvenda_produto.fieldbyname('codproduto').asstring;
            frmvenda_entrega.qrEntrega.FieldByName('produto').asstring := frmvenda.qrvenda_produto.fieldbyname('produto').asstring;
            frmvenda_entrega.qrEntrega.FieldByName('unidade').asstring := frmvenda.qrvenda_produto.fieldbyname('numeracao').asstring;
            frmvenda_entrega.qrEntrega.FieldByName('qtde_vendida').asfloat := frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat;
            frmvenda_entrega.qrEntrega.FieldByName('qtde_entregue').asfloat := frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat;
            frmvenda_entrega.qrEntrega.FieldByName('qtde_saldo').asfloat := 0;
            frmvenda_entrega.qrEntrega.FieldByName('item').asstring := frmvenda.qrvenda_produto.fieldbyname('item').asstring;
            frmvenda_entrega.qrEntrega.post;
          end;
          frmvenda.qrvenda_produto.next;
        end;
        FRMVENDA_ENTREGA.qrEntrega.IndexFieldNames := 'ITEM';
        frmvenda_entrega.showmodal;
      END;








//+      FRMMODULO.QRPRODUTO_MOV.OPEN;
      frmvenda.qrvenda_produto.First;
      while not frmvenda.qrvenda_produto.Eof do
      begin

          ibquery1.CLOSE;
          ibquery1.SQL.CLEAR;
          ibquery1.SQL.Add('insert into c000032');
          ibquery1.SQL.add('(codigo,codnota,numeronota,');
          ibquery1.SQL.add('codproduto,qtde,unitario,');
          ibquery1.SQL.add('total,desconto,acrescimo,unidade,aliquota,cst,');
          ibquery1.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
          ibquery1.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,');
          ibquery1.sql.add('serial,codgrade,movimento_estoque,pis,cofins,credito_icms,codsubgrupo,codbarra,cfop)');
          ibquery1.SQL.add('values');
          ibquery1.SQL.add('(:xcodigo,:xcodnota,:xnumeronota,');
          ibquery1.SQL.add(':xcodproduto,:xqtde,:xunitario,');
          ibquery1.SQL.add(':xtotal,:xdesconto,:xacrescimo,:xunidade,:xaliquota,:xcst,');
          ibquery1.SQL.add(':xcupom_item,:xcupom_numero,:xcupom_modelo,');
          ibquery1.SQL.add(':xecf_serie,:xecf_caixa,:xcodcliente,:xcodvendedor,:xmovimento,:xdata,');
          ibquery1.sql.add(':xserial,:xcodgrade,:xmovimento_estoque,:xpis,:xcofins,:xcredito_icms,:xsubgrupo,:xcodbarra,:xcfop)');

          ibquery1.params.parambyname('xcodigo').AsString           := frmprincipal.codifica('000032');
          ibquery1.params.parambyname('xcodnota').AsString          := copy(frmvenda.lvenda_codigo.Caption,1,6);
          ibquery1.params.parambyname('xnumeronota').AsString       := frmvenda.lvenda_codigo.Caption;
          ibquery1.params.parambyname('xcodproduto').asstring       := frmvenda.qrvenda_produto.fieldbyname('codproduto').asstring;
          ibquery1.params.parambyname('xqtde').asfloat              := frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat;
          ibquery1.params.parambyname('xunitario').asfloat          := frmvenda.qrvenda_produto.fieldbyname('unitario').asfloat;
          ibquery1.params.parambyname('xtotal').asfloat             := frmvenda.qrvenda_produto.fieldbyname('total').asfloat;
          ibquery1.params.parambyname('xdesconto').asfloat          := frmvenda.qrvenda_produto.fieldbyname('desconto').asfloat;
          ibquery1.params.parambyname('xacrescimo').asfloat         := frmvenda.qrvenda_produto.fieldbyname('acrescimo').asfloat;
          ibquery1.params.parambyname('xunidade').asstring          := frmvenda.qrvenda_produto.fieldbyname('numeracao').AsString;
          ibquery1.params.parambyname('xALIQUOTA').asFLOAT          := FRMVENDA.QRVENDA_PRODUTO.fieldbyname('aliquota').asFLOAT;
          ibquery1.params.parambyname('xCST').asSTRING              := FRMVENDA.QRVENDA_PRODUTO.fieldbyname('CST').asSTRING ;
          ibquery1.params.parambyname('xcupom_item').asstring       := FRMPRINCIPAL.zerarcodigo(FRMVENDA.QRVENDA_PRODUTO.fieldbyname('item').asstring,3);
          ibquery1.params.parambyname('xcfop').asstring             := '5102';
          ibquery1.params.parambyname('xcupom_numero').asstring     := numero_cupomx;
          ibquery1.params.parambyname('xcupom_modelo').asstring     := '2D';
          ibquery1.params.parambyname('xSERIAL').Asstring           := '';
          ibquery1.params.parambyname('xcodgrade').Asstring         := '';
          ibquery1.params.parambyname('xmovimento_estoque').asfloat := frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat * (-1);
          ibquery1.params.parambyname('xcredito_icms').asfloat      := 0;
          ibquery1.params.parambyname('xsubgrupo').asstring         := frmvenda.qrvenda_produto.fieldbyname('codsubgrupo').asstring;
          ibquery1.params.parambyname('xcodbarra').asstring         := frmvenda.qrvenda_produto.fieldbyname('codbarras').asstring;

          if frmvenda.qrvenda_produtopiscofins.AsString = 'S' then
            begin
              ibquery1.params.parambyname('xpis').asfloat := frmvenda.qrvenda_produto.fieldbyname('total').asfloat * vpis / 100;
              ibquery1.params.parambyname('xcofins').asfloat := frmvenda.qrvenda_produto.fieldbyname('total').asfloat * vcofins / 100;
            end
          else
            begin
              ibquery1.params.parambyname('xpis').asfloat := 0;
              ibquery1.params.parambyname('xcofins').asfloat := 0;
            end;

          if ecf_modelo <> '' then
          begin
            ibquery1.params.parambyname('xecf_serie').asstring := frmprincipal.pstatus.Panels[11].Text;
            ibquery1.params.parambyname('xecf_caixa').asstring := frmprincipal.pstatus.Panels[9].Text;
          end;
          ibquery1.params.parambyname('xcodcliente').AsString := frmvenda.lcliente_codigo.Caption;
          ibquery1.params.parambyname('xcodvendedor').AsString := frmvenda.lvendedor_codigo.Caption;

          CASE FRMVENDA.qrvenda_produto.FieldByName('tipo').asinteger of
          0 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA
          1 : BEGIN
              ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA SERIAL
              ibquery1.params.parambyname('xSERIAL').Asstring    := FRMVENDA.qrvenda_produto.fieldbyname('serial').asstring;
              END;
          2 : begin
                ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA grade
                ibquery1.params.parambyname('xcodgrade').Asstring    := FRMVENDA.qrvenda_produto.fieldbyname('codgrade').asstring;
              end;

          7 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// devolucao de VENDA


          10 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// VENDA
          11 : BEGIN
                ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// VENDA SERIAL
                ibquery1.params.parambyname('xSERIAL').Asstring    := FRMVENDA.qrvenda_produto.fieldbyname('serial').asstring;
              END;
          12 : begin
                ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// VENDA grade
                ibquery1.params.parambyname('xcodgrade').Asstring    := FRMVENDA.qrvenda_produto.fieldbyname('codgrade').asstring;
              end;

          20 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA
          21 : BEGIN
                ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA SERIAL
                ibquery1.params.parambyname('xSERIAL').Asstring    := FRMVENDA.qrvenda_produto.fieldbyname('serial').asstring;
              END;
          22 : begin
                ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA grade
                ibquery1.params.parambyname('xcodgrade').Asstring    := FRMVENDA.qrvenda_produto.fieldbyname('codgrade').asstring;
              end;
          end;
          ibquery1.params.parambyname('xdata').asdatetime :=  strtodate(frmvenda.lvenda_data.Caption);

          {
          SHOWMESSAGE('ibquery1.params.parambyname(xdata).asdatetime = '+ibquery1.params.parambyname('xdata').asSTRING+#13+
          'ibquery1.params.parambyname(xcodigo).AsString = '+ibquery1.params.parambyname('xcodigo').AsString+#13+
          'ibquery1.params.parambyname(xcodnota).AsString = '+ibquery1.params.parambyname('xcodnota').AsString+#13+
          'ibquery1.params.parambyname(xnumeronota).AsString = '+ibquery1.params.parambyname('xnumeronota').AsString+#13+
          'ibquery1.params.parambyname(xnumeronota).AsString = '+ibquery1.params.parambyname('xnumeronota').AsString+#13+
          'ibquery1.params.parambyname(xqtde).asfloat = '+ibquery1.params.parambyname('xqtde').asstring+#13+
          'ibquery1.params.parambyname(xunitario).asfloat = '+ibquery1.params.parambyname('xunitario').asstring+#13+
          'ibquery1.params.parambyname(xtotal).asfloat = '+ibquery1.params.parambyname('xtotal').asstring+#13+
          'ibquery1.params.parambyname(xdesconto).asfloat = '+ibquery1.params.parambyname('xdesconto').asstring+#13+
          'ibquery1.params.parambyname(xacrescimo).asfloat = '+ibquery1.params.parambyname('xacrescimo').asstring+#13+
          'ibquery1.params.parambyname(xunidade).asstring = '+ibquery1.params.parambyname('xunidade').asstring+#13+
          'ibquery1.params.parambyname(xALIQUOTA).asFLOAT = '+ibquery1.params.parambyname('xALIQUOTA').asstring+#13+
          'ibquery1.params.parambyname(xCST).asSTRING = '+ibquery1.params.parambyname('xCST').asstring+#13+
          'ibquery1.params.parambyname(xcupom_item).asstring = '+ibquery1.params.parambyname('xcupom_item').asstring+#13+
          'ibquery1.params.parambyname(xcupom_numero).asstring = '+ibquery1.params.parambyname('xcupom_numero').asstring+#13+
          'ibquery1.params.parambyname(xcupom_modelo).asstring = '+ibquery1.params.parambyname('xcupom_modelo').asstring+#13+
          'ibquery1.params.parambyname(xSERIAL).Asstring = '+ibquery1.params.parambyname('xSERIAL').Asstring+#13+
          'ibquery1.params.parambyname(xcodgrade).Asstring = '+ibquery1.params.parambyname('xcodgrade').Asstring+#13+
          'ibquery1.params.parambyname(xmovimento_estoque).asfloat := '+frmvenda.qrvenda_produto.fieldbyname('qtde').asstring);

           }

          ibquery1.ExecSQL;

          frmvenda.qrvenda_produto.next;
      end;

      ibquery1.close;
      ibquery1.sql.clear;
      ibquery1.sql.add('update c000007 set data_ultimacompra = :data where codigo = '''+frmvenda.lcliente_codigo.caption+'''');
      ibquery1.parambyname('data').Asdatetime := strtodate(frmvenda.lvenda_data.Caption);
      ibquery1.ExecSQL;


      frmmodulo.Conexao.Commit;

  VALOR_NOTAZ := rtotal.Value;
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
            bduplicataclick(Frmvenda_fechamento);
          end
          else
          begin
            Button1Click(frmvenda_fechamento);
          end;
        end;
      end;
    end;

    if frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').AsString = 'LPT1'  then
       begin
         sayprint1.Porta := LPT1;
         sayprint1.OutputFile := '.txt';
       end;
    //endi
    if frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').AsString = 'LPT2'  then
       begin
         sayprint1.Porta := LPT2;
         sayprint1.OutputFile := '.txt';
       end;
    //endi
    if frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').AsString = 'LPT3'  then
       begin
         sayprint1.Porta := LPT3;
         sayprint1.OutputFile := '.txt';
       end;
    //endi
    if frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').AsString = 'LPT4'  then
       begin
         sayprint1.Porta := LPT4;
         sayprint1.OutputFile := '.txt';
       end;
    //endi
    if pos(   ':\',frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').AsString)>0 then
       begin
         sayprint1.Porta :=  PrnFile;
         sayprint1.OutputFile := frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').AsString;
       end;
    //endi



    if frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').AsString <> 'Nenhuma' then
       begin


          sayprint1.BeginPrn;
          divisor_simples;
          sayprint1.Condensed(True);
          sayprint1.Say(0,0,s1);
          sayprint1.Say(1,0,'Nome: '+frmvenda.qrcliente.fieldbyname('codigo').AsString+'-'+frmvenda.qrcliente.fieldbyname('nome').asstring);
          sayprint1.Say(2,0,'Endereço: '+frmvenda.qrcliente.fieldbyname('endereco').AsString);
          sayprint1.Say(3,0,'Venda nº: '+frmvenda.lvenda_codigo.Caption);
          sayprint1.Say(4,0,s1);


          ilin := 5;
          frmvenda.qrvenda_produto.First;
          while not frmvenda.qrvenda_produto.Eof do
            begin

              sproduto := trimleft(TrimRight(copy(frmvenda.qrvenda_produto.fieldbyname('produto').AsString,1,25)));
              scodigo := frmvenda.qrvenda_produto.fieldbyname('codproduto').AsString;
              Sqtde :=  padr(  formatfloat('###,###,##0.000',frmvenda.qrvenda_produto.fieldbyname('qtde').Asfloat),10);
              Svalor := padr(formatfloat('###,###,##0.00', frmvenda.qrvenda_produto.fieldbyname('unitario').Asfloat ),10);
              //Sacrescimo := padr(formatfloat('###,###,##0.00',frmvenda.qrvenda_produto.fieldbyname('').Asfloat),10);
              //Sdesconto := padr(formatfloat('###,###,##0.00',frmvenda.qrvenda_produto.fieldbyname('').Asfloat),10);
              stotal :=  padr(  formatfloat('###,###,##0.00',frmvenda.qrvenda_produto.fieldbyname('qtde').Asfloat * frmvenda.qrvenda_produto.fieldbyname('unitario').Asfloat),10);

              sayprint1.Say(ilin,0,scodigo);
              sayprint1.Say(ilin,7,sproduto);
              sayprint1.Say(ilin,33,sqtde);
              sayprint1.Say(ilin,43,svalor);
              sayprint1.Say(ilin,54,stotal);


              ilin := ilin + 1;
              frmvenda.qrvenda_produto.Next;

            end;
          //endw




        sayprint1.Say(ilin,0,s1);

        ilin := ilin + 1;
        sayprint1.Say(ilin,45,'Total.:');
        Svalor := padr(formatfloat('###,###,##0.00', rsubtotal.Value ),10);
        sayprint1.Say(ilin,54,Svalor);

        if (rdesconto2.Value > 0) then
           begin

              ilin := ilin + 1;
              sayprint1.Say(ilin,45,'Desc..:');
              Svalor := padr(formatfloat('###,###,##0.00', rdesconto2.Value ),10);
              sayprint1.Say(ilin,54,Svalor);

           end;
        //endi

        if (racrescimo2.Value > 0) then
           begin

              ilin := ilin + 1;
              sayprint1.Say(ilin,45,'Acres.:');
              Svalor := padr(formatfloat('###,###,##0.00', racrescimo2.Value ),10);
              sayprint1.Say(ilin,54,Svalor);

           end;
        //endi

        if (rdesconto2.Value > 0) or (racrescimo2.Value > 0) then
           begin
              ilin := ilin + 1;
              sayprint1.Say(ilin,45,'Pagar.:');
              Svalor := padr(formatfloat('###,###,##0.00', rtotal.Value ),10);
              sayprint1.Say(ilin,54,Svalor);

           end;
        //endi




        sayprint1.EndPrn;


       end;
    //endi






  finalizou := true;

  frmvenda.Close;

  close;

  finally
    bgravar.Enabled := true;

    
  end;



end;

procedure Tfrmvenda_fechamento.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_fechamento.FormShow(Sender: TObject);
begin

    frmmodulo.qrconfig.open;
    if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CARTAO').asinteger = 1 then
    begin
      cb_debito.Visible := true;
      cb_credito.Visible := true;
      lb_credito.visible := true;
      lb_debito.visible := true;
      spin_credito.visible := true;
      spin_debito.Visible := true;


      query.close;
      query.sql.clear;
      query.sql.add('select * from c000013');
      query.sql.add('where cartao_credito = 1');
      query.sql.add('order by banco');
      query.open;
      query.first;
      cb_debito.Items.Clear;
      cb_credito.Items.Clear;
      cb_debito.items.Add('Bandeira');
      cb_credito.items.add('Bandeira');
      while not query.eof do
      begin
        cb_debito.Items.Add(frmPrincipal.zerarcodigo(query.fieldbyname('numero').asstring,3)+' - '+query.fieldbyname('banco').asstring);
        cb_credito.Items.Add(frmPrincipal.zerarcodigo(query.fieldbyname('numero').asstring,3)+' - '+query.fieldbyname('banco').asstring);
        query.next;
      end;
      cb_debito.ItemIndex := 0;
      cb_credito.ItemIndex := 0;

    end
    else
    begin
      cb_debito.Visible := false;
      cb_credito.Visible := false;
      lb_credito.visible := false;
      lb_debito.visible := false;
      spin_credito.visible := false;
      spin_debito.Visible := false;

    end;



  // FTEF
  if usa_tef then
  begin
    ptef1.visible := true;
    ptef2.visible := true;
  end;


  frmmodulo.qrconfig.open;
  porta_impressora := frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').asstring;

  rsubtotal.value := frmvenda.rtotal.value;
  rtotal.value := frmvenda.rtotal.value;

  pconvenio.Visible := false;
  
  rdesconto1.SetFocus;

end;

procedure Tfrmvenda_fechamento.rdinheiroEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
  edinheiro.Brush.Color := $00A8FFFF;;
end;

procedure Tfrmvenda_fechamento.rchequeavEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
  echequeav.Brush.Color := $00A8FFFF;;
end;

procedure Tfrmvenda_fechamento.rchequeapEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
  echequeap.Brush.Color := $00A8FFFF;;
end;

procedure Tfrmvenda_fechamento.rcartaocredEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
  ecartaocred.Brush.Color := $00A8FFFF;;
end;

procedure Tfrmvenda_fechamento.rcartaodebEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
  ecartaodeb.Brush.Color := $00A8FFFF;;
end;

procedure Tfrmvenda_fechamento.rcrediarioEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
  ecrediario.Brush.Color := $00A8FFFF;;
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
  tedit(sender).color := clwindow;
  echequeav.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rconvenio.Value +
                 rcrediario.Value+
                 rfinanceira.value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmvenda_fechamento.rchequeapExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  echequeap.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rconvenio.Value +
                 rcrediario.Value+
                 rfinanceira.value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmvenda_fechamento.rcartaocredExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  ecartaocred.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rconvenio.Value +
                 rcrediario.Value+
                 rfinanceira.value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmvenda_fechamento.rcartaodebExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  ecartaodeb.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rconvenio.Value +
                 rcrediario.Value+
                 rfinanceira.value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmvenda_fechamento.rcrediarioExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  ecrediario.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rconvenio.Value +
                 rcrediario.Value+
                 rfinanceira.value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmvenda_fechamento.BitBtn1Click(Sender: TObject);
begin
  frmvenda_obs := tfrmvenda_obs.create(self);
  frmvenda_obs.edit1.text := observ;
  frmvenda_obs.showmodal;
end;

procedure Tfrmvenda_fechamento.rconvenioEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
  econvenio.Brush.Color := $00A8FFFF;;

end;

procedure Tfrmvenda_fechamento.rconvenioExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  econvenio.Brush.Color := clwindow;


  ////////////////////




  if rconvenio.Value > 0 then
  begin

    if rcrediario.value > 0 then exit;


        frmvenda_contasreceber := tfrmvenda_contasreceber.create(self);
        frmvenda_contasreceber.showmodal;

     query2.close;
     query2.sql.clear;
     query2.sql.add('select * from c000007 where codigo = '''+frmvenda.lcliente_codigo.Caption+'''');
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
       IF frmvenda_fechamento.rdesconto1.value > 0 then
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
         rconvenio_liquido.value := frmvenda_fechamento.rsubtotal.Value - (frmvenda_fechamento.rsubtotal.Value * ( (rconvenio_desconto.value+frmvenda_fechamento.rdesconto1.value)/100));
       end
       else
         rconvenio_liquido.value := frmvenda_fechamento.rtotal.Value;
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
                 rcrediario.Value+
                 rfinanceira.value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;

end;

procedure Tfrmvenda_fechamento.rconvenioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then   perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmvenda_fechamento.econvenio_codclienteEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;

end;

procedure Tfrmvenda_fechamento.econvenio_codclienteExit(Sender: TObject);
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
        bconvenio_clienteclick(frmvenda_fechamento);
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
       IF frmvenda_fechamento.rdesconto1.value > 0 then
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
         rconvenio_liquido.value := frmvenda_fechamento.rsubtotal.Value - (frmvenda_fechamento.rsubtotal.Value * ( (rconvenio_desconto.value+frmvenda_fechamento.rdesconto1.value)/100));
       end
       else
         rconvenio_liquido.value := frmvenda_fechamento.rtotal.Value;

       convenio_combo.SetFocus;
     end;
  end
  else
  begin
    bconvenio_cliente.setfocus;
  end;

end;

procedure Tfrmvenda_fechamento.econvenio_codclienteKeyPress(
  Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);

end;

procedure Tfrmvenda_fechamento.bconvenio_clienteClick(Sender: TObject);
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
    IF frmvenda_fechamento.rdesconto1.value > 0 then
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
      rconvenio_liquido.value := frmvenda_fechamento.rsubtotal.Value - (frmvenda_fechamento.rsubtotal.Value * ( (rconvenio_desconto.value+frmvenda_fechamento.rdesconto1.value)/100));
    end
    else
      rconvenio_liquido.value := frmvenda_fechamento.rtotal.Value;



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

procedure Tfrmvenda_fechamento.convenio_comboExit(Sender: TObject);
begin
  pconvenio.Visible := true;
end;

procedure Tfrmvenda_fechamento.Button1Click(Sender: TObject);
VAR F : TEXTFILE;
DI, ME, AN, CID, TEXTO : STRING;
ITEM : INTEGER;
begin
  ITEM := 1;


  IF FRMVENDA.qrvenda_contasreceber.RECORDCOUNT > 0 THEN
  BEGIN
    ASSIGNFILE(F,porta_impressora);
    REWRITE(F);
    FRMVENDA.qrvenda_contasreceber.FIRST;
    WHILE NOT FRMVENDA.QRVENDA_CONTASRECEBER.EOF DO
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
        di := copy(frmvenda.lvenda_data.Caption,1,2);me := copy(frmvenda.lvenda_data.Caption,4,2);an := copy(frmvenda.lvenda_data.Caption,7,4);
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
        FRMPRINCIPAL.texto_justifica(formatfloat('###,###,###,##0.00',FRMVENDA.QRVENDA_CONTASRECEBER.fieldbyname('VALOR').asfloat),10,' ','E')+
                  '   '+FRMPRINCIPAL.texto_justifica(NUMERO_NOTAZ+'/'+FRMPRINCIPAL.zerarcodigo(INTTOSTR(ITEM),2),10,' ','D')+
                  ' '+FRMPRINCIPAL.texto_justifica(datetostr(FRMVENDA.QRVENDA_CONTASRECEBER.fieldbyname('vencimento').asdatetime),10,' ','D'));

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
        Writeln(f,'                             '+frmvenda.qrcliente.fieldbyname('nome').asstring);//31
        Writeln(f, '');
        Writeln(f,'                             '+frmvenda.qrcliente.fieldbyname('ENDERECO').asstring);
        Writeln(f,'');
        Writeln(f,'');
        cid := frmvenda.qrcliente.fieldbyname('Cidade').asstring;
        texto := cid+frmvenda.qrcliente.fieldbyname('uf').asstring;
        while length(texto) < 36 do
        begin
          cid := cid + ' ';
          texto := cid + frmvenda.qrcliente.fieldbyname('uf').asstring;
        end;
        texto := texto+'    '+frmvenda.qrcliente.fieldbyname('cep').asstring;
        Writeln(f, '                             '+texto);//31
        Writeln(f, '');
        Writeln(f, '                               '+EMITENTE_CIDADE); // 31
        Writeln(f, '');
        Writeln(f, '                               '+frmvenda.qrcliente.fieldbyname('cpf').asstring); //31
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

        TEXTO := AnsiUpperCase(extenso(frMVENDA.qrvenda_CONTASRECEBER.fieldbyname('VALOR').asfloat));
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


      FRMVENDA.QRVENDA_CONTASRECEBER.NEXT;
      ITEM := ITEM + 1;

    end;
          CLOSEFILE(F);



  END;

end;

procedure Tfrmvenda_fechamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   frmmodulo.qrvenda.close;
  action := cafree;
end;

procedure Tfrmvenda_fechamento.rfinanceiraEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
  efinanceira.Brush.Color := $00A8FFFF;;
end;

procedure Tfrmvenda_fechamento.rfinanceiraExit(Sender: TObject);
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

procedure Tfrmvenda_fechamento.rfinanceiraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
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

procedure Tfrmvenda_fechamento.cb_creditoKeyPress(Sender: TObject;
  var Key: Char);
begin
IF KEY = #13 THEN SPIN_CREDITO.SETFOCUS;
end;

procedure Tfrmvenda_fechamento.spin_creditoKeyPress(Sender: TObject;
  var Key: Char);
begin
IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmvenda_fechamento.cb_debitoKeyPress(Sender: TObject;
  var Key: Char);
begin
IF KEY = #13 THEN SPIN_DEBITO.SETFOCUS;
end;

procedure Tfrmvenda_fechamento.spin_debitoKeyPress(Sender: TObject;
  var Key: Char);
begin
IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmvenda_fechamento.Gravar1Click(Sender: TObject);
begin
  bgravarClick(frmvenda_fechamento);
end;

procedure Tfrmvenda_fechamento.bduplicataClick(Sender: TObject);
var
  sano : string;
  sOrdem : string;
  d, m, a : word;
begin
          qrduplicata.open;

          frmduplicata_impressao := tfrmduplicata_impressao.create(Self);
          if numero_cupomX <> '' then
            frmDuplicata_Impressao.ed_fatura_numero.Text :=  numero_cupomX //numero_cupomX
          else
            frmDuplicata_Impressao.ed_fatura_numero.Text := FRMVENDA.lvenda_codigo.CAPTION; //NUMERO_VENDAx;

          frmDuplicata_Impressao.ed_fatura_valor.value := RTOTAL.VALUE;
          frmduplicata_impressao.showmodal;

          sNumero := frmDuplicata_Impressao.ed_fatura_numero.Text;
          rValor  := frmDuplicata_Impressao.ed_fatura_valor.Value;
          iOrdem  := StrToInt(FloatToStr(frmDuplicata_Impressao.ed_ordem.Value));

          sOrdem := IntToStr(iOrdem);
          while Length(sOrdem) < 6 do sOrdem := '0'+sOrdem;

          DecodeDate(frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime,a,m,d);
          sano := copy(IntToStr(a),3,2);
          while qrduplicata.recordcount <> 0 do qrduplicata.delete;
          qrduplicata.Refresh;

              frmvenda.qrvenda_contasreceber.first;
              while not frmvenda.qrvenda_contasreceber.Eof do
              begin

                  qrduplicata.insert;
                  qrduplicata.fieldbyname('emitente_fantasia').asstring  := emitente_fantasia;
                  qrduplicata.fieldbyname('emitente_RAZAO').asstring     := emitente_nome;
                  qrduplicata.fieldbyname('emitente_telefone').asstring  := 'Fone: '+emitente_telefone;
                  qrduplicata.fieldbyname('emitente_endereco').asstring  := emitente_endereco+' - '+emitente_cidade+' - '+emitente_cep;
                  qrduplicata.fieldbyname('emitente_cnpj').asstring      := emitente_cnpj;
                  qrduplicata.fieldbyname('emitente_ie').asstring        := emitente_ie;

                  qrduplicata.fieldbyname('FATURA_NUMERO').asstring    := sNumero;

                  qrduplicata.fieldbyname('fatura_valor').asstring       := formatfloat('###,###,##0.00',rValor);

//                  qrduplicata.fieldbyname('duplicata_numero').asstring   := qrduplicata.fieldbyname('FATURA_NUMERO').asstring+'/'+frmvenda.qrvenda_contasreceber.fieldbyname('prestacao').asstring;




                  qrduplicata.fieldbyname('duplicata_numero').asstring :=  sOrdem+'/'+sAno+retorna_letra(StrToInt(frmvenda.qrvenda_contasreceber.fieldbyname('prestacao').asstring));
                  qrduplicata.fieldbyname('duplicata_valor').asstring    := formatfloat('###,###,##0.00',frmvenda.qrvenda_contasreceber.fieldbyname('valor').asfloat);
                  qrduplicata.fieldbyname('data_vencimento').asdatetime    := frmvenda.qrvenda_contasreceber.fieldbyname('vencimento').asdatetime;
                  qrduplicata.fieldbyname('data_emissao').asdatetime       := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
                  qrduplicata.fieldbyname('extenso').asstring            := AnsiUpperCase(extenso(frmvenda.qrvenda_contasreceber.fieldbyname('valor').asfloat));

                  qrcliente.close;
                  qrcliente.sql.clear;
//                  qrcliente.sql.add('select * from c000007 where codigo = '''+frmmodulo.qrvenda.fieldbyname('codcliente').asstring+'''');
                  qrcliente.sql.add('select * from c000007 where codigo = '''+frmvenda.lcliente_codigo.Caption+'''');
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

                frmvenda.qrvenda_contasreceber.next;
              end;

              qrduplicata.SortOnFields('duplicata_numero');


              FXduplicata.LoadFromFile('\DATASAC\server\rel\f000150.fr3');
              FXduplicata.ShowReport;

end;


procedure Tfrmvenda_fechamento.limpa_s;
begin
  s0:='';
  s1:='';
  s2:='';
  s3:='';
  s4:='';
  s5:='';


end;

procedure Tfrmvenda_fechamento.divisor_duplo;
var
  col:integer;
begin
  col := 64;

  for x := 1 to col do
      begin
        s1 := s1 + '=';
      end;
  //endi

end;


procedure Tfrmvenda_fechamento.divisor_simples;
var
  col:integer;
begin
  col := 64;

  for x := 1 to col do
      begin
        s1 := s1 + '-';
      end;
    //endi

end;

procedure Tfrmvenda_fechamento.avanca;
begin





  {
   if pos('\:',frmprincipal.sportaimp) > 0 then
      exit;

   assignfile(frmprincipal.arq, frmprincipal.sportaimp);
   rewrite(frmprincipal.arq);



   for x := 0 to frmvenda.iavanca do
    begin

      writeln(frmprincipal.arq,'');

    end;

   closefile(frmprincipal.arq);
  }

end;


end.
