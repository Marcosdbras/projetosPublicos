unit pedido_fechar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, StdCtrls, Mask, ToolEdit, CurrEdit,
  TFlatPanelUnit, Buttons, Menus, wwdbedit, Wwdotdot, Wwdbcomb, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, AdvShapeButton,
  AdvGlowButton, IBDatabase, IBCustomDataSet, IBQuery, MemDS, DBAccess, IBC,
  RzEdit, RzSpnEdt, frxDesgn, frxClass, frxDBSet, RxMemDS;

type
  Tfrmpedido_fechar = class(TForm)
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
    Panel4: TPanel;
    Bevel2: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    AdvShapeButton1: TAdvShapeButton;
    Bevel3: TBevel;
    rrodape: TPanel;
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
    FlatPanel2: TFlatPanel;
    lbl1: TLabel;
    rbrcaixa: TRadioButton;
    rbanco: TRadioButton;
    btn1: TBitBtn;
    rmeio: TPanel;
    eshp1: TShape;
    eshp2: TShape;
    eshp3: TShape;
    eshp4: TShape;
    eshp5: TShape;
    eshp6: TShape;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    edinheiro: TShape;
    echequeav: TShape;
    echequeap: TShape;
    ecartaocred: TShape;
    ecartaodeb: TShape;
    ecrediario: TShape;
    eshp7: TShape;
    eshp8: TShape;
    lbl8: TLabel;
    lbl9: TLabel;
    eshp9: TShape;
    lbl10: TLabel;
    econvenio: TShape;
    eshp10: TShape;
    lbl11: TLabel;
    efinanceira: TShape;
    lb_credito: TLabel;
    lb_debito: TLabel;
    rchequeav: TRxCalcEdit;
    rchequeap: TRxCalcEdit;
    rcartaocred: TRxCalcEdit;
    rcartaodeb: TRxCalcEdit;
    rcrediario: TRxCalcEdit;
    rconvenio: TRxCalcEdit;
    rfinanceira: TRxCalcEdit;
    PTEF1: TFlatPanel;
    ptef2: TFlatPanel;
    BCH_TECBAN: TButton;
    BCH_REDECARD: TButton;
    bcartao: TButton;
    bpgto: TButton;
    cb_credito: TComboBox;
    spin_credito: TRzSpinEdit;
    cb_debito: TComboBox;
    spin_debito: TRzSpinEdit;
    rdinheiro: TRxCalcEdit;
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
    procedure rbrcaixaClick(Sender: TObject);
    procedure rbancoClick(Sender: TObject);
  private
    function retorna_letra(numero:Integer):string;
    { Private declarations }
  public
    iOrdem : integer;
    sNumero : string;
    rValor : real;
    continua_banco : boolean;
    { Public declarations }
  end;

var
  frmpedido_fechar: Tfrmpedido_fechar;
  porta_impressora : string;



  // FTEF
  cons_cheque : boolean;
  JA_ABERTO : BOOLEAN;


implementation

uses pedido, modulo, principal, pedido_contasreceber, pedido_troco, pedido_impressao,
  extenso1,pedido_obs, cheque, ecf, xloc_cliente,   cheque_avulso, pedido_entrega, pedido_financeira,
  consulta_cheque, unFuncoesTEF, duplicata_impressao, contasreceber_banco;

{$R *.dfm}

function Tfrmpedido_fechar.retorna_letra(numero:Integer):string;
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

procedure Tfrmpedido_fechar.rdesconto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmpedido_fechar.racrescimo2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then rdinheiro.SetFocus;
end;

procedure Tfrmpedido_fechar.rdesconto1Enter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
end;

procedure Tfrmpedido_fechar.rdesconto1Exit(Sender: TObject);
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

procedure Tfrmpedido_fechar.rdesconto2Exit(Sender: TObject);
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

procedure Tfrmpedido_fechar.racrescimo1Exit(Sender: TObject);
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

procedure Tfrmpedido_fechar.racrescimo2Exit(Sender: TObject);
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

procedure Tfrmpedido_fechar.rdinheiroExit(Sender: TObject);
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

procedure Tfrmpedido_fechar.bgravarClick(Sender: TObject);
var texto : pansichar;
desconto_acrescimo : real;
tp_desconto_acrescimo,formasp : string;
nome_cliente, documento : string;
v_dinheiro:real;
//forma_pgto : string;
 //FTEF
 y : integer;
 ecf_ok : boolean;
 qtef:integer;
 cvinc : boolean;
 //
 iparcela, itotal_parcela : integer;
 vpis, vcofins : Double;
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


      if frmmodulo.qrcliente.FieldByName('situacao').asinteger = 3 then
      begin
        application.messagebox('Cliente com crédito bloqueado! Não será possível prosseguir com o fechamento!','Atenção',mb_ok+mb_iconerror);
        rcrediario.setfocus;
        exit;
      end;


      if (  frmmodulo.qrcliente.Locate('codigo',frmpedido.ecliente.Text,[]) )  and (frmmodulo.qrcliente.FieldByName('situacao').asinteger = 2) then
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




      if  (  frmmodulo.qrcliente.Locate('codigo',frmpedido.ecliente.Text,[]) ) and (frmmodulo.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT <> 0) then
      begin
        IF rcrediario.Value > limite_disponivel  THEN
        BEGIN
          texto := pansichar('Este cliente possue um limite disponível de:'+#13+' ---> R$ '+ FormatFloat('###,###,##0.00', frmmodulo.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT)+'  <--- '+#13+'É necessário autorização para prosseguir! '+#13+'Deseja continuar?');
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
      frmpedido_troco := tfrmpedido_troco.create(self);
      frmpedido_troco.ltroco.caption := FORMATFLOAT('###,###,##0.00',(RDIFERENCA.VALUE)*(-1));
      frmpedido_troco.showmodal;

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
        CHEQUE_CODCLIENTE := FRMpedido.ecliente.Text;
        CHEQUE_VENDA := FRMpedido.DBEdit1.Text;
        frmcheque_avulso := Tfrmcheque_avulso.CREATE(SELF);
        frmcheque_avulso.SHOWMODAL;
    end;
  end;





  IF NOT CONTINUAR THEN EXIT;


  if ecf_impressao = 1 then ecf_abre_gaveta(ecf_modelo);





  IF RFINANCEIRA.Value <> 0 THEN
  BEGIN
    FI_CODIGO := '';
    frmpedido_FINANCEIRA := Tfrmpedido_FINANCEIRA.CREATE(SELF);
    frmpedido_FINANCEIRA.SHOWMODAL;
    IF FI_CODIGO = '' THEN
    BEGIN
      application.messagebox('É necessário informar a Instituição Financeira para prosseguir com esta forma de pagamento!','Erro',mb_ok+mb_iconerror);
      exit;
    END;
  END;


  IF NOT CONTINUAR THEN EXIT;

  FRMMODULO.QRCAIXA_MOV.CLOSE;
  FRMMODULO.QRCAIXA_MOV.SQL.CLEAR;
  FRMMODULO.QRCAIXA_MOV.SQL.ADD('select * from c000044 where codigo = ''999999''');
  frmmodulo.qrcaixa_mov.open;

  if rbanco.Checked then
     begin
       rsoma.value := rtotal.Value;
       rdiferenca.value := 0;
       continua_banco := false;
       frmcontasreceber_banco := tfrmcontasreceber_banco.create(self);
       frmcontasreceber_banco.dateedit1.date := date; //frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
       frmcontasreceber_banco.Edit1.Text :=  'Venda No.'+ frmpedido.DBEdit1.Text+' '+nome_cliente;  //+frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring;
       frmcontasreceber_banco.showmodal;
       if not continua_banco then exit;


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

       ibquery1.parambyname('codigo').asstring          := frmpedido.dbedit1.text+'/00';
       ibquery1.parambyname('codvenda').asstring        := 'P'+frmpedido.dbedit1.text;
       ibquery1.parambyname('codcliente').asstring      := frmpedido.ecliente.text;
       ibquery1.parambyname('codregiao').asstring       := frmmodulo.qrcliente.fieldbyname('codregiao').asstring;
       ibquery1.parambyname('codvendedor').asstring     := frmpedido.evendedor.text;
       ibquery1.parambyname('codcaixa').asstring        := FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
       ibquery1.parambyname('data_emissao').asdatetime    := strtodate(frmpedido.dbdateedit1.EditText);
       ibquery1.parambyname('data_vencimento').asdatetime := strtodate(frmpedido.dbdateedit1.EditText);
       ibquery1.parambyname('valor_original').asfloat   := rtotal.VALUE;
       ibquery1.parambyname('valor_pago').asfloat       := rtotal.VALUE;
       ibquery1.parambyname('valor_atual').asfloat      := rtotal.VALUE;
       ibquery1.parambyname('documento').asstring       := 'Venda No.'+ frmpedido.DBEdit1.Text+' '+nome_cliente;
       ibquery1.parambyname('tipo').asstring            := frmpedido.qrpedido_contasreceber.fieldbyname('tipo').asstring;
       ibquery1.parambyname('situacao').asinteger       := 2;
       ibquery1.parambyname('filtro').asinteger         := 0;
       //ibquery1.parambyname('numero_cupom').asstring    := frmpedido.lvenda_cupom.caption;
       ibquery1.ExecSQL;






     end;



  if rcrediario.Value <> 0 then
  begin

       frmpedido_contasreceber := tfrmpedido_contasreceber.create(self);
       frmpedido_contasreceber.showmodal;

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

              if ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,frmpedido_fechar.rtotal.value) = 'ERRO' then
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
              bcartaoclick(frmpedido_fechar);
              IF NOT CONTINUA THEN
              BEGIN
                application.messagebox('Não foi possível prosseguir com a venda no cartão! Vafor verificar...','Erro - TEF',mb_ok+mb_iconerror);
                exit;
              END;

              if stefretorno = '0' then
              begin
                bpgtoclick(frmpedido_fechar);
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
                     BCH_REDECARDClick(FRMpedido_FECHAR);

                  if ret_cheque = 2 then // TECBAN
                     BCH_TECBANClick(FRMpedido_FECHAR);

                  if stefretorno = '0' then
                  begin
                    bpgtoClick(frmpedido_fechar);
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



           if frmmodulo.qrcliente.Locate('codigo',frmpedido.ecliente.Text,[]) then
              begin

                 if ecf_termina_fechamento_especial(ecf_modelo,frmmodulo.qrcliente.fieldbyname('nome').asstring,
                                                         frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring,
                                                         frmmodulo.qrcliente.fieldbyname('cpf').asstring) = 'ERRO' then exit else ecf_ok := true;


              end;




         end
         else
         begin
           ECF_OK := FALSE;

           repeat


           if frmmodulo.qrcliente.Locate('codigo',frmpedido.ecliente.Text,[]) then
              begin

                 if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('codigo').AsString+'-'+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')+#10+
                                              frmprincipal.Texto_Justifica(('ENDERECO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring),48,' ','D')+#10+
                                              frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring + ' RG/INSC: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,48,' ','D')+#10+
                                              frmprincipal.Texto_Justifica('VENDEDOR: '+frmpedido.evendedor.Text+'-'+frmpedido.DBEdit5.Text,42,' ','D')+#10+
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

                         frmpedido.qrpedido_produto.first;
                         while not frmpedido.qrpedido_produto.eof do
                           begin
                             if ecf_usa_CNFV(ecf_modelo,frmPrincipal.texto_justifica(frmpedido.qrpedido_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmPrincipal.texto_justifica(frmpedido.qrpedido_produto.fieldbyname('produto').asstring,15,' ','D')+
                                    frmPrincipal.texto_justifica(formatfloat('######0.000',frmpedido.qrpedido_produto.fieldbyname('qtde').asfloat),8,' ','E')+
                                    frmPrincipal.texto_justifica(formatfloat('######0.00',frmpedido.qrpedido_produto.fieldbyname('unitario').asfloat),9,' ','E')+
                                    frmPrincipal.texto_justifica(formatfloat('######0.00',frmpedido.qrpedido_produto.fieldbyname('total').asfloat),9,' ','E')) = 'ERRO' then exit;
                             frmpedido.qrpedido_produto.Next;
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


                      

                      if frmmodulo.qrcliente.Locate('codigo',frmpedido.ecliente.Text,[]) then
                        begin
                          if ecf_usa_CNFV(ecf_modelo,'CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('codigo').asstring+' '+frmmodulo.qrcliente.fieldbyname('nome').asstring) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,'ENDEREÇO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR: '+frmpedido.evendedor.Text+'-'+frmpedido.dbedit5.Text,48,' ','D')) = 'ERRO' then exit;
                        end
                      else
                        begin
                          if ecf_usa_CNFV(ecf_modelo,'CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('codigo').asstring+' '+frmmodulo.qrcliente.fieldbyname('nome').asstring) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,'ENDEREÇO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
                          if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR: '+frmpedido.evendedor.Text+'-'+frmpedido.dbedit5.Text,48,' ','D')) = 'ERRO' then exit;
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



                             frmpedido.qrpedido_contasreceber.First;
                             while not frmpedido.qrpedido_contasreceber.Eof do
                               begin
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'            COMPROVANTE DE DÉBITO               ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CUPOM.....: '+NUMERO_CUPOMx,48,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('DOCUMENTO.: '+frmpedido.qrpedido_contasreceber.FieldByName('documento').asstring,48,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR..: '+frmpedido.evendedor.Text+'-'+frmpedido.dbedit5.Text,48,' ','D')) = 'ERRO' then exit;
                                 if rconvenio.Value > 0 then
                                   if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CONVENIO..: '+econvenio_codconvenio.Text+'-'+econvenio_convenio.Text,42,' ','D')) = 'ERRO' then exit;

                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;




                                if frmmodulo.qrcliente.Locate('codigo',frmpedido.ecliente.Text,[])then
                                begin
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE...: '+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'-'+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO..: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring),48,' ','D')) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ..: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('IE/RG.....: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,42,' ','D')) = 'ERRO' then exit;
                                end
                                else
                                begin
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE...: '+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'-'+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO..: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring),48,' ','D')) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ..: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
                                  if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('IE/RG.....: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,42,' ','D')) = 'ERRO' then exit;
                                end;

                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'   Este comprovante não é um documento fiscal   ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('PARCELA...: '+frmPrincipal.zerarcodigo(frmpedido.qrpedido_contasreceber.fieldbyname('prestacao').asstring,6),42,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENCIMENTO: '+frmpedido.qrpedido_contasreceber.FieldByName('vencimento').AsString,42,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VALOR.....: '+formatfloat('#,###,##0.00',frmpedido.qrpedido_contasreceber.FieldByName('valor').AsFloat),38,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;

                                 frmpedido.qrpedido_contasreceber.Next;
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
                             frmpedido.qrpedido_produto.First;
                             while not frmpedido.qrpedido_produto.Eof do
                               begin
                                 if ecf_usa_CNFV(ecf_modelo,frmPrincipal.texto_justifica(frmpedido.qrpedido_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                      frmPrincipal.texto_justifica(frmpedido.qrpedido_produto.fieldbyname('produto').asstring,19,' ','D')+
                                      frmPrincipal.texto_justifica(formatfloat('######0',frmpedido.qrpedido_produto.fieldbyname('qtde').asfloat),4,' ','E')+
                                      frmPrincipal.texto_justifica(formatfloat('######0.00',frmpedido.qrpedido_produto.fieldbyname('unitario').asfloat),9,' ','E')+
                                      frmPrincipal.texto_justifica(formatfloat('######0.00',frmpedido.qrpedido_produto.fieldbyname('total').asfloat),9,' ','E')) = 'ERRO' then exit;
                                 frmpedido.qrpedido_produto.Next;
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
                         if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring),48,' ','D')) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
                         if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR: '+frmpedido.evendedor.text+'-'+frmpedido.lvendedor_nome.Caption,42,' ','D')) = 'ERRO' then exit;
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
                               frmpedido.qrpedido_contasreceber.First;
                               while not frmpedido.qrpedido_contasreceber.Eof do
                               begin
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'            COMPROVANTE DE DÉBITO               ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CUPOM.....: '+NUMERO_CUPOMx,48,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('DOCUMENTO.: '+frmpedido.qrpedido_contasreceber.FieldByName('documento').asstring,48,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR..: '+frmpedido.evendedor.text+'-'+frmpedido.lvendedor_nome.Caption,48,' ','D')) = 'ERRO' then exit;
                                 if rconvenio.Value > 0 then
                                   if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CONVENIO..: '+econvenio_codconvenio.Text+'-'+econvenio_convenio.Text,42,' ','D')) = 'ERRO' then exit;

                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE...: '+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'-'+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO..: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring),48,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ..: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring + ' RG/INSC: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('IE/RG.....: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,42,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'   Este comprovante não é um documento fiscal   ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('PARCELA...: '+frmPrincipal.zerarcodigo(frmpedido.qrpedido_contasreceber.fieldbyname('prestacao').asstring,6),42,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENCIMENTO: '+frmpedido.qrpedido_contasreceber.FieldByName('vencimento').AsString,42,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VALOR.....: '+formatfloat('#,###,##0.00',frmpedido.qrpedido_contasreceber.FieldByName('valor').AsFloat),38,' ','D')) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                                 if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;

                                 frmpedido.qrpedido_contasreceber.Next;
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
    qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico,codvenda)');
    qrcaixa_mov.sql.add('values');
    qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico,:codvenda)');

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
    qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. '+frmpedido.dbedit1.Text+ ' - '+frmpedido.enomecliente.Text   ,1,60);

    qrcaixa_mov.parambyname('codvenda').asstring := 'P'+frmpedido.dbedit1.text;


    qrcaixa_mov.ExecSQL;


  end;
  if rchequeav.Value <> 0 then
  begin

    qrcaixa_mov.close;
    qrcaixa_mov.sql.clear;
    qrcaixa_mov.sql.add('insert into c000044');
    qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico,codvenda)');
    qrcaixa_mov.sql.add('values');
    qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico, :codvenda)');

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
    qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. '+frmpedido.dbedit1.Text+' - '+frmpedido.enomecliente.Text,1,60);


    qrcaixa_mov.parambyname('codvenda').asstring := 'P'+frmpedido.dbedit1.text;

    qrcaixa_mov.ExecSQL;

  end;
  if rchequeap.Value <> 0 then
  begin


    qrcaixa_mov.close;
    qrcaixa_mov.sql.clear;
    qrcaixa_mov.sql.add('insert into c000044');
    qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico,codvenda)');
    qrcaixa_mov.sql.add('values');
    qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico,:codvenda)');

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
    qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. '+frmpedido.dbedit1.Text+' - '+frmpedido.enomecliente.text,1,60);

    qrcaixa_mov.parambyname('codvenda').asstring := 'P'+frmpedido.dbedit1.text;

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
    qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico,codvenda)');
    qrcaixa_mov.sql.add('values');
    qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico,:codvenda)');


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
    qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. '+frmpedido.dbedit1.text+' - '+frmpedido.enomecliente.text,1,60);

    qrcaixa_mov.parambyname('codvenda').asstring := 'P'+frmpedido.dbedit1.text;

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
    qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico,codvenda)');
    qrcaixa_mov.sql.add('values');
    qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico, :codvenda)');

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
    qrcaixa_mov.parambyname('historico').asstring := copy('Venda No. '+frmpedido.dbedit1.text+' - '+frmpedido.enomecliente.text,1,60);

    qrcaixa_mov.parambyname('codvenda').asstring := 'P'+frmpedido.dbedit1.text;

    qrcaixa_mov.execsql;

  end;

  if rcrediario.Value <> 0 then
  begin
    qrcaixa_mov.close;
    qrcaixa_mov.sql.clear;
    qrcaixa_mov.sql.add('insert into c000044');
    qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico,codvenda)');
    qrcaixa_mov.sql.add('values');
    qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico,:codvenda)');

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
    qrcaixa_mov.parambyname('historico').asstring := copy('Venda Crediario No. '+frmpedido.dbedit1.text+' - '+frmpedido.enomecliente.text,1,60);

    qrcaixa_mov.parambyname('codvenda').asstring := 'P'+frmpedido.dbedit1.text;
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

      ibquery1.parambyname('codigo').asstring          := frmpedido.dbedit1.text+'/00';
      ibquery1.parambyname('codvenda').asstring        := 'P'+frmpedido.dbedit1.text;
      ibquery1.parambyname('codcliente').asstring      := frmpedido.ecliente.text;
      ibquery1.parambyname('codregiao').asstring       := frmmodulo.qrcliente.fieldbyname('codregiao').asstring;
      ibquery1.parambyname('codvendedor').asstring     := frmpedido.evendedor.text;
      ibquery1.parambyname('codcaixa').asstring        := FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      ibquery1.parambyname('data_emissao').asdatetime    := strtodate(frmpedido.dbdateedit1.EditText);
      ibquery1.parambyname('data_vencimento').asdatetime := strtodate(frmpedido.dbdateedit1.EditText);
      ibquery1.parambyname('valor_original').asfloat   := RDINHEIRO.VALUE;
      ibquery1.parambyname('valor_pago').asfloat       := RDINHEIRO.VALUE;
      ibquery1.parambyname('valor_atual').asfloat      := 0;
      ibquery1.parambyname('documento').asstring       := 'ENTRADA';
      ibquery1.parambyname('tipo').asstring            := frmpedido.qrpedido_contasreceber.fieldbyname('tipo').asstring;
      ibquery1.parambyname('situacao').asinteger       := 2;
      ibquery1.parambyname('filtro').asinteger         := 0;
      //ibquery1.parambyname('numero_cupom').asstring    := frmpedido.lvenda_cupom.caption;
      ibquery1.ExecSQL;
    end;


    frmpedido.qrpedido_contasreceber.First;
    while not frmpedido.qrpedido_contasreceber.eof do
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


      ibquery1.parambyname('codigo').asstring          := frmpedido.dbedit1.text+'/'+frmprincipal.zerarcodigo(frmpedido.qrpedido_contasreceber.fieldbyname('prestacao').asstring,2);
      ibquery1.parambyname('codvenda').asstring        := 'P'+frmpedido.dbedit1.text;
      ibquery1.parambyname('codcliente').asstring      := frmpedido.ecliente.text;
      ibquery1.parambyname('codregiao').asstring       := frmmodulo.qrcliente.fieldbyname('codregiao').asstring;
      ibquery1.parambyname('codvendedor').asstring     := frmpedido.evendedor.text;
      ibquery1.parambyname('codcaixa').asstring        := FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      ibquery1.parambyname('data_emissao').asdatetime    := strtodate(frmpedido.dbdateedit1.EditText);
      ibquery1.parambyname('data_vencimento').asdatetime := frmpedido.qrpedido_contasreceber.fieldbyname('vencimento').asdatetime;
      ibquery1.parambyname('valor_original').asfloat   := frmpedido.qrpedido_contasreceber.fieldbyname('valor').asfloat;
      ibquery1.parambyname('valor_atual').asfloat      := frmpedido.qrpedido_contasreceber.fieldbyname('valor').asfloat;
      ibquery1.parambyname('documento').asstring       := frmpedido.qrpedido_contasreceber.fieldbyname('documento').asstring;
      ibquery1.parambyname('tipo').asstring            := frmpedido.qrpedido_contasreceber.fieldbyname('tipo').asstring;
      ibquery1.parambyname('situacao').asinteger       := 1;
      ibquery1.parambyname('filtro').asinteger         := 0;
//      ibquery1.parambyname('numero_cupom').asstring    := frmpedido.lvenda_cupom.caption;
      ibquery1.ExecSQL;

      frmpedido.qrpedido_contasreceber.next;
    end;



    //

  end;





if rconvenio.Value <> 0 then
  begin

    qrcaixa_mov.close;
    qrcaixa_mov.sql.clear;
    qrcaixa_mov.sql.add('insert into c000044');
    qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico,codvenda)');
    qrcaixa_mov.sql.add('values');
    qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico,:codvenda)');

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
    qrcaixa_mov.parambyname('historico').asstring := 'Venda Convenio No. '+frmpedido.dbedit1.text+' - '+frmpedido.enomecliente.text;

    qrcaixa_mov.parambyname('codvenda').asstring := 'P'+frmpedido.dbedit1.text;

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

      ibquery1.parambyname('codigo').asstring          := frmpedido.dbedit1.text+'/00';
      ibquery1.parambyname('codvenda').asstring        := 'P'+frmpedido.dbedit1.text;
      ibquery1.parambyname('codcliente').asstring      := frmpedido.ecliente.text;
      ibquery1.parambyname('codregiao').asstring       := frmmodulo.qrcliente.fieldbyname('codregiao').asstring;
      ibquery1.parambyname('codvendedor').asstring     := frmpedido.evendedor.text;
      ibquery1.parambyname('codcaixa').asstring        := FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      ibquery1.parambyname('data_emissao').asdatetime    := strtodate(frmpedido.dbdateedit1.EditText);
      ibquery1.parambyname('data_vencimento').asdatetime := strtodate(frmpedido.dbdateedit1.EditText);
      ibquery1.parambyname('valor_original').asfloat   := RDINHEIRO.VALUE;
      ibquery1.parambyname('valor_pago').asfloat       := RDINHEIRO.VALUE;
      ibquery1.parambyname('valor_atual').asfloat      := 0;
      ibquery1.parambyname('documento').asstring       := 'ENTRADA';
      ibquery1.parambyname('tipo').asstring            := frmpedido.qrpedido_contasreceber.fieldbyname('tipo').asstring;
      ibquery1.parambyname('situacao').asinteger       := 2;
      ibquery1.parambyname('filtro').asinteger         := 0;
      //ibquery1.parambyname('numero_cupom').asstring    := frmpedido.lvenda_cupom.caption;

      ibquery1.ExecSQL;
    end;


    frmpedido.qrpedido_contasreceber.First;
    while not frmpedido.qrpedido_contasreceber.eof do
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
      ibquery1.parambyname('codigo').asstring          := frmpedido.dbedit1.text+'/'+frmprincipal.zerarcodigo(frmpedido.qrpedido_contasreceber.fieldbyname('prestacao').asstring,2);
      ibquery1.parambyname('codvenda').asstring        := 'P'+frmpedido.dbedit1.text;
      ibquery1.parambyname('codcliente').asstring      := frmpedido.ecliente.text;
      ibquery1.parambyname('codregiao').asstring       := frmmodulo.qrcliente.fieldbyname('codregiao').asstring;
      ibquery1.parambyname('codvendedor').asstring     := frmpedido.evendedor.text;
      ibquery1.parambyname('codcaixa').asstring        := FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      ibquery1.parambyname('data_emissao').asdatetime    := strtodate(frmpedido.dbdateedit1.EditText);
      ibquery1.parambyname('data_vencimento').asdatetime := frmpedido.qrpedido_contasreceber.fieldbyname('vencimento').asdatetime;
      ibquery1.parambyname('valor_original').asfloat   := frmpedido.qrpedido_contasreceber.fieldbyname('valor').asfloat;
      ibquery1.parambyname('valor_atual').asfloat      := frmpedido.qrpedido_contasreceber.fieldbyname('valor').asfloat;
      ibquery1.parambyname('documento').asstring       := frmpedido.qrpedido_contasreceber.fieldbyname('documento').asstring;
      ibquery1.parambyname('tipo').asstring            := frmpedido.qrpedido_contasreceber.fieldbyname('tipo').asstring;
      ibquery1.parambyname('situacao').asinteger       := 1;
      ibquery1.parambyname('filtro').asinteger         := 0;
      //ibquery1.parambyname('numero_cupom').asstring    := frmpedido.lvenda_cupom.caption;
      ibquery1.ExecSQL;

      frmpedido.qrpedido_contasreceber.next;
    end;




    //

  end;



  if rFINANCEIRA.Value <> 0 then
  begin
    qrcaixa_mov.close;
    qrcaixa_mov.sql.clear;
    qrcaixa_mov.sql.add('insert into c000044');
    qrcaixa_mov.SQL.add('(codigo,codcaixa,codoperador,data,saida,entrada,valor,codconta,movimento,historico,codvenda)');
    qrcaixa_mov.sql.add('values');
    qrcaixa_mov.SQL.add('(:codigo,:codcaixa,:codoperador,:data,:saida,:entrada,:valor,:codconta,:movimento,:historico,:codvenda)');


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
    qrcaixa_mov.parambyname('historico').asstring := copy('Venda Financeira '+FI_NOME+' No. '+frmpedido.dbedit1.text+' - '+frmpedido.enomecliente.text,1,60);

    qrcaixa_mov.parambyname('codvenda').asstring := 'P'+frmpedido.dbedit1.text;


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
      ibquery1.parambyname('data').asdatetime    := strtodate(frmpedido.dbdateedit1.EditText);
      ibquery1.ParamByName('CODCLIENTE').ASSTRING :=  frmpedido.ecliente.text;
      ibquery1.ParamByName('VALOR').ASFLOAT :=  rfinanceira.VALUE;
      ibquery1.ParamByName('SITUACAO').ASSTRING :=  '1';
      ibquery1.ParamByName('DATA_PGTO').ASDATETIME :=  STRTODATE(FI_VENCIMENTO);
      ibquery1.ParamByName('VALOR_PAGO').ASFLOAT :=  0;
      ibquery1.ParamByName('BORDERO').ASSTRING :=  FI_BORDERO;
      ibquery1.ParamByName('PROPOSTA').ASSTRING :=  FI_PROPOSTA;
      ibquery1.ParamByName('OBS').ASSTRING :=  '';
      ibquery1.ParamByName('CODVENDA').ASSTRING :=  'P'+frmpedido.dbedit1.text;
      ibquery1.ExecSQL;
  end;





    // lancamento da venda

      ibquery1.close;
      ibquery1.SQL.clear;
      ibquery1.sql.add('insert into c000048');
      ibquery1.sql.add('(codigo,data,codcliente,codvendedor,codcaixa,');
      ibquery1.sql.add(' total,subtotal,meio_dinheiro,meio_chequeav,meio_chequeap,');
      ibquery1.sql.add(' meio_cartaocred,meio_cartaodeb,meio_crediario,meio_convenio,meio_financeira,');
      ibquery1.sql.add(' desconto,acrescimo,obs,NUMERO_CUPOM_FISCAL,cupom_fiscal,retirado,cod_financeira,cod_financeira_lancto,codvenda)');
      ibquery1.sql.add('values');
      ibquery1.sql.add('(:codigo,:data,:codcliente,:codvendedor,:codcaixa,');
      ibquery1.sql.add(' :total,:subtotal,:meio_dinheiro,:meio_chequeav,:meio_chequeap,:meio_financeira,');
      ibquery1.sql.add(' :meio_cartaocred,:meio_cartaodeb,:meio_crediario,:meio_convenio,');
      ibquery1.sql.add(' :desconto,:acrescimo,:obs,:NUMERO_CUPOM_FISCAL,:cupom_fiscal,:retirado,:cod_financeira,:cod_financeira_lancto,:codvenda)');

      ibquery1.parambyname('codigo').asstring := frmpedido.dbedit1.text;
      ibquery1.parambyname('codcaixa').asstring        := FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      ibquery1.parambyname('data').asdatetime    := strtodate(frmpedido.dbdateedit1.EditText);
      ibquery1.parambyname('codcliente').asstring := frmpedido.ecliente.text;
      ibquery1.parambyname('codvendedor').asstring := frmpedido.evendedor.text;
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
      ibquery1.parambyname('OBS').asstring := frmpedido.observ;
      ibquery1.parambyname('COD_FINANCEIRA').asstring := FI_CODIGO;
      ibquery1.parambyname('COD_FINANCEIRA_LANCTO').asstring := FI_LANCTO;


      ibquery1.parambyname('NUMERO_CUPOM_FISCAL').ASSTRING := numero_cupomx;

      ibquery1.ParamByName('CODVENDA').ASSTRING :=  'P'+frmpedido.dbedit1.text;


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
            ibquery1.parambyname('cod_venda').AsString := 'P'+frmpedido.dbedit1.text;
            ibquery1.parambyname('banco').asstring := copy(cb_credito.Text,1,3);
            ibquery1.ParamByName('cod_cliente').asstring := frmpedido.ecliente.text;



            ibquery1.parambyname('data_venda').asdatetime    := strtodate(frmpedido.dbdateedit1.EditText);




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
            ibquery1.ParamByName('data_recebimento').asdatetime :=  strtodate(frmpedido.dbdateedit1.EditText) + (query.fieldbyname('rec_credito').asinteger * iparcela);
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
            ibquery1.parambyname('cod_venda').AsString := 'P'+frmpedido.dbedit1.text;
            ibquery1.parambyname('banco').asstring := copy(cb_DEBITO.Text,1,3);
            ibquery1.ParamByName('cod_cliente').asstring := frmpedido.ecliente.text;
            ibquery1.ParamByName('data_venda').asdatetime := strtodate(frmpedido.dbdateedit1.EditText);
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
            ibquery1.ParamByName('data_recebimento').asdatetime :=  strtodate(frmpedido.dbdateedit1.EditText) + (query.fieldbyname('rec_DEBITO').asinteger * iparcela);
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
       ibquery1.sql.add('select * from c000048 where codigo = '''+frmpedido.dbedit1.text+'''');
       ibquery1.open;

      if ecf_impressao = 2 then
      begin
        if ecf_modelo <> '' then
        begin
          frmpedido_impressao := tfrmpedido_impressao.create(self);
          if rcrediario.value > 0 then frmpedido_impressao.combo_modelo.ItemIndex := 1 else    frmpedido_impressao.combo_modelo.ItemIndex := 0;
          frmpedido_impressao.showmodal;
        end
        else
        begin


          //frmpedido_impressaoCP := tfrmpedido_impressaoCP.create(self);
          //frmpedido_impressaoCP.showmodal;
        end;
      end;



      FRMMODULO.QRCONFIG.OPEN;
      IF FRMMODULO.QRCONFIG.FieldByName('CONTROLA_ENTREGA').ASINTEGER = 1 THEN
      BEGIN
        frmpedido_ENTREGA := Tfrmpedido_ENTREGA.CREATE(self);
        frmpedido_entrega.qrEntrega.open;
        while frmpedido_entrega.qrentrega.RecordCount > 0 do frmpedido_entrega.qrEntrega.delete;


        frmpedido.qrpedido_produto.First;
        while not frmpedido.qrpedido_produto.Eof do
        begin
          if frmpedido.qrpedido_produto.fieldbyname('qtde').asfloat > 0 then
          begin
            frmpedido_entrega.qrEntrega.Insert;
            frmpedido_entrega.qrEntrega.FieldByName('codigo').asstring := frmpedido.qrpedido_produto.fieldbyname('codproduto').asstring;
            frmpedido_entrega.qrEntrega.FieldByName('produto').asstring := frmpedido.qrpedido_produto.fieldbyname('produto').asstring;
            frmpedido_entrega.qrEntrega.FieldByName('unidade').asstring := frmpedido.qrpedido_produto.fieldbyname('numeracao').asstring;
            frmpedido_entrega.qrEntrega.FieldByName('qtde_vendida').asfloat := frmpedido.qrpedido_produto.fieldbyname('qtde').asfloat;
            frmpedido_entrega.qrEntrega.FieldByName('qtde_entregue').asfloat := frmpedido.qrpedido_produto.fieldbyname('qtde').asfloat;
            frmpedido_entrega.qrEntrega.FieldByName('qtde_saldo').asfloat := 0;
            frmpedido_entrega.qrEntrega.FieldByName('item').asstring := frmpedido.qrpedido_produto.fieldbyname('item').asstring;
            frmpedido_entrega.qrEntrega.post;
          end;
          frmpedido.qrpedido_produto.next;
        end;
        frmpedido_ENTREGA.qrEntrega.IndexFieldNames := 'ITEM';

        //entregar
        //frmpedido_entrega.showmodal;
      END;








//+      FRMMODULO.QRPRODUTO_MOV.OPEN;
      frmpedido.qrpedido_produto.First;
      while not frmpedido.qrpedido_produto.Eof do
      begin

          ibquery1.CLOSE;
          ibquery1.SQL.CLEAR;
          ibquery1.SQL.Add('insert into c000032');
          ibquery1.SQL.add('(codigo,codnota,numeronota,');
          ibquery1.SQL.add('codproduto,qtde,unitario,');
          ibquery1.SQL.add('total,desconto,acrescimo,unidade,aliquota,cst,');
          ibquery1.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
          ibquery1.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,');
          ibquery1.sql.add('serial,codgrade,movimento_estoque,pis,cofins,credito_icms,codsubgrupo,codbarra,cfop, codvenda)');
          ibquery1.SQL.add('values');
          ibquery1.SQL.add('(:xcodigo,:xcodnota,:xnumeronota,');
          ibquery1.SQL.add(':xcodproduto,:xqtde,:xunitario,');
          ibquery1.SQL.add(':xtotal,:xdesconto,:xacrescimo,:xunidade,:xaliquota,:xcst,');
          ibquery1.SQL.add(':xcupom_item,:xcupom_numero,:xcupom_modelo,');
          ibquery1.SQL.add(':xecf_serie,:xecf_caixa,:xcodcliente,:xcodvendedor,:xmovimento,:xdata,');
          ibquery1.sql.add(':xserial,:xcodgrade,:xmovimento_estoque,:xpis,:xcofins,:xcredito_icms,:xsubgrupo,:xcodbarra,:xcfop,:xcodvenda)');

          ibquery1.params.parambyname('xcodigo').AsString           := frmprincipal.codifica('000032');
          ibquery1.params.parambyname('xcodnota').AsString          := copy(frmpedido.dbedit1.text,1,6);
          ibquery1.params.parambyname('xnumeronota').AsString       := frmpedido.dbedit1.text;
          ibquery1.params.parambyname('xcodvenda').AsString       := 'P'+frmpedido.dbedit1.text;

          ibquery1.params.parambyname('xcodproduto').asstring       := frmpedido.qrpedido_produto.fieldbyname('codproduto').asstring;
          ibquery1.params.parambyname('xqtde').asfloat              := frmpedido.qrpedido_produto.fieldbyname('qtde').asfloat;
          ibquery1.params.parambyname('xunitario').asfloat          := frmpedido.qrpedido_produto.fieldbyname('unitario').asfloat;
          ibquery1.params.parambyname('xtotal').asfloat             := frmpedido.qrpedido_produto.fieldbyname('total').asfloat;
          ibquery1.params.parambyname('xdesconto').asfloat          := frmpedido.qrpedido_produto.fieldbyname('desconto').asfloat;
          ibquery1.params.parambyname('xacrescimo').asfloat         := frmpedido.qrpedido_produto.fieldbyname('acrescimo').asfloat;
          ibquery1.params.parambyname('xunidade').asstring          := frmpedido.qrpedido_produto.fieldbyname('numeracao').AsString;
          ibquery1.params.parambyname('xALIQUOTA').asFLOAT          := frmpedido.qrpedido_PRODUTO.fieldbyname('aliquota').asFLOAT;
          ibquery1.params.parambyname('xCST').asSTRING              := frmpedido.qrpedido_PRODUTO.fieldbyname('CST').asSTRING ;
          ibquery1.params.parambyname('xcupom_item').asstring       := FRMPRINCIPAL.zerarcodigo(frmpedido.qrpedido_PRODUTO.fieldbyname('item').asstring,3);
          ibquery1.params.parambyname('xcfop').asstring             := '5102';
          ibquery1.params.parambyname('xcupom_numero').asstring     := numero_cupomx;
          ibquery1.params.parambyname('xcupom_modelo').asstring     := '2D';
          ibquery1.params.parambyname('xSERIAL').Asstring           := '';
          ibquery1.params.parambyname('xcodgrade').Asstring         := '';
          ibquery1.params.parambyname('xmovimento_estoque').asfloat := frmpedido.qrpedido_produto.fieldbyname('qtde').asfloat * (-1);
          ibquery1.params.parambyname('xcredito_icms').asfloat      := 0;
          ibquery1.params.parambyname('xsubgrupo').asstring         := frmpedido.qrpedido_produto.fieldbyname('codsubgrupo').asstring;
          ibquery1.params.parambyname('xcodbarra').asstring         := frmpedido.qrpedido_produto.fieldbyname('codbarras').asstring;



          {



          if frmpedido.qrpedido_produtopiscofins.AsString = 'S' then
            begin
              ibquery1.params.parambyname('xpis').asfloat := frmpedido.qrpedido_produto.fieldbyname('total').asfloat * vpis / 100;
              ibquery1.params.parambyname('xcofins').asfloat := frmpedido.qrpedido_produto.fieldbyname('total').asfloat * vcofins / 100;
            end
          else
            begin
              ibquery1.params.parambyname('xpis').asfloat := 0;
              ibquery1.params.parambyname('xcofins').asfloat := 0;
            end;


          }


          if ecf_modelo <> '' then
          begin
            ibquery1.params.parambyname('xecf_serie').asstring := frmprincipal.pstatus.Panels[11].Text;
            ibquery1.params.parambyname('xecf_caixa').asstring := frmprincipal.pstatus.Panels[9].Text;
          end;
          ibquery1.params.parambyname('xcodcliente').AsString := frmpedido.ecliente.text;
          ibquery1.params.parambyname('xcodvendedor').AsString := frmpedido.evendedor.text;

          CASE frmpedido.qrpedido_produto.FieldByName('tipo').asinteger of
          0 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA
          1 : BEGIN
              ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA SERIAL
              ibquery1.params.parambyname('xSERIAL').Asstring    := frmpedido.qrpedido_produto.fieldbyname('serial').asstring;
              END;
          2 : begin
                ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA grade
                ibquery1.params.parambyname('xcodgrade').Asstring    := frmpedido.qrpedido_produto.fieldbyname('codgrade').asstring;
              end;

          7 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// devolucao de VENDA


          10 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// VENDA
          11 : BEGIN
                ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// VENDA SERIAL
                ibquery1.params.parambyname('xSERIAL').Asstring    := frmpedido.qrpedido_produto.fieldbyname('serial').asstring;
              END;
          12 : begin
                ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 7;// VENDA grade
                ibquery1.params.parambyname('xcodgrade').Asstring    := frmpedido.qrpedido_produto.fieldbyname('codgrade').asstring;
              end;

          20 : ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA
          21 : BEGIN
                ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA SERIAL
                ibquery1.params.parambyname('xSERIAL').Asstring    := frmpedido.qrpedido_produto.fieldbyname('serial').asstring;
              END;
          22 : begin
                ibquery1.params.parambyname('xMOVIMENTO').AsINTEGER := 2;// VENDA grade
                ibquery1.params.parambyname('xcodgrade').Asstring    := frmpedido.qrpedido_produto.fieldbyname('codgrade').asstring;
              end;
          end;
          ibquery1.params.parambyname('xdata').asdatetime :=  strtodate(frmpedido.dbdateedit1.text);

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
          'ibquery1.params.parambyname(xmovimento_estoque).asfloat := '+frmpedido.qrpedido_produto.fieldbyname('qtde').asstring);

           }

          ibquery1.ExecSQL;

          frmpedido.qrpedido_produto.next;
      end;

      ibquery1.close;
      ibquery1.sql.clear;
      ibquery1.sql.add('update c000007 set data_ultimacompra = :data where codigo = '''+frmpedido.ecliente.text+'''');
      ibquery1.parambyname('data').Asdatetime := strtodate(frmpedido.dbdateedit1.text);
      ibquery1.ExecSQL;

      frmmodulo.qrPedido.FieldByName('SITUACAO').AsString := 'LANÇADO';


      frmpedido.bgravar.Click;


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
            bduplicataclick(frmpedido_fechar);
          end
          else
          begin
            Button1Click(frmpedido_fechar);
          end;
        end;
      end;
    end;

  finalizou := true;



  close;

  finally
    bgravar.Enabled := true;
  end;



end;

procedure Tfrmpedido_fechar.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmpedido_fechar.FormShow(Sender: TObject);
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

  rsubtotal.value := frmpedido.rtotal.value;
  rtotal.value := frmpedido.rtotal.value;

  pconvenio.Visible := false;
  
  rdesconto1.SetFocus;

end;

procedure Tfrmpedido_fechar.rdinheiroEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
  edinheiro.Brush.Color := $00A8FFFF;;
end;

procedure Tfrmpedido_fechar.rchequeavEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
  echequeav.Brush.Color := $00A8FFFF;;
end;

procedure Tfrmpedido_fechar.rchequeapEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
  echequeap.Brush.Color := $00A8FFFF;;
end;

procedure Tfrmpedido_fechar.rcartaocredEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
  ecartaocred.Brush.Color := $00A8FFFF;;
end;

procedure Tfrmpedido_fechar.rcartaodebEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
  ecartaodeb.Brush.Color := $00A8FFFF;;
end;

procedure Tfrmpedido_fechar.rcrediarioEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
  ecrediario.Brush.Color := $00A8FFFF;;
end;

procedure Tfrmpedido_fechar.rcrediarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmpedido_fechar.Cancelar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmpedido_fechar.rchequeavExit(Sender: TObject);
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

procedure Tfrmpedido_fechar.rchequeapExit(Sender: TObject);
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

procedure Tfrmpedido_fechar.rcartaocredExit(Sender: TObject);
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

procedure Tfrmpedido_fechar.rcartaodebExit(Sender: TObject);
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

procedure Tfrmpedido_fechar.rcrediarioExit(Sender: TObject);
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

procedure Tfrmpedido_fechar.BitBtn1Click(Sender: TObject);
begin
  frmpedido_obs := tfrmpedido_obs.create(self);
  frmpedido_obs.edit1.text := frmpedido.observ;
  frmpedido_obs.showmodal;
end;

procedure Tfrmpedido_fechar.rconvenioEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
  econvenio.Brush.Color := $00A8FFFF;;

end;

procedure Tfrmpedido_fechar.rconvenioExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  econvenio.Brush.Color := clwindow;


  ////////////////////




  if rconvenio.Value > 0 then
  begin

    if rcrediario.value > 0 then exit;


        frmpedido_contasreceber := tfrmpedido_contasreceber.create(self);
        frmpedido_contasreceber.showmodal;

     query2.close;
     query2.sql.clear;
     query2.sql.add('select * from c000007 where codigo = '''+frmpedido.ecliente.text+'''');
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
       IF frmpedido_fechar.rdesconto1.value > 0 then
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
         rconvenio_liquido.value := frmpedido_fechar.rsubtotal.Value - (frmpedido_fechar.rsubtotal.Value * ( (rconvenio_desconto.value+frmpedido_fechar.rdesconto1.value)/100));
       end
       else
         rconvenio_liquido.value := frmpedido_fechar.rtotal.Value;
     end;
  end;

{
    query3.Close;
    query3.SQL.clear;
    query3.SQL.add('select * from c000070 where codcliente = '''+frmpedido.ecliente.text+''' order by nome');
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

procedure Tfrmpedido_fechar.rconvenioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then   perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmpedido_fechar.econvenio_codclienteEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;

end;

procedure Tfrmpedido_fechar.econvenio_codclienteExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  //econvenio_coDcliente.text := frmprincipal.zerarcodigo(frmpedido_inicio.ECLIENTE.Text,6);
  if econvenio_coDcliente.text <> '000000' then
  begin
     query2.close;
     query2.sql.clear;
     query2.sql.add('select * from c000007 where codigo = '''+econvenio_codcliente.text+'''');
     query2.open;
     if query2.RecordCount = 0 then
     begin
        application.messagebox('Cliente não encontrado!','Atenção!',mb_ok+mb_iconwarning);
        bconvenio_clienteclick(frmpedido_fechar);
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
       IF frmpedido_fechar.rdesconto1.value > 0 then
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
         rconvenio_liquido.value := frmpedido_fechar.rsubtotal.Value - (frmpedido_fechar.rsubtotal.Value * ( (rconvenio_desconto.value+frmpedido_fechar.rdesconto1.value)/100));
       end
       else
         rconvenio_liquido.value := frmpedido_fechar.rtotal.Value;

       convenio_combo.SetFocus;
     end;
  end
  else
  begin
    bconvenio_cliente.setfocus;
  end;

end;

procedure Tfrmpedido_fechar.econvenio_codclienteKeyPress(
  Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);

end;

procedure Tfrmpedido_fechar.bconvenio_clienteClick(Sender: TObject);
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
    IF frmpedido_fechar.rdesconto1.value > 0 then
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
      rconvenio_liquido.value := frmpedido_fechar.rsubtotal.Value - (frmpedido_fechar.rsubtotal.Value * ( (rconvenio_desconto.value+frmpedido_fechar.rdesconto1.value)/100));
    end
    else
      rconvenio_liquido.value := frmpedido_fechar.rtotal.Value;



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

procedure Tfrmpedido_fechar.convenio_comboExit(Sender: TObject);
begin
  pconvenio.Visible := true;
end;

procedure Tfrmpedido_fechar.Button1Click(Sender: TObject);
VAR F : TEXTFILE;
DI, ME, AN, CID, TEXTO : STRING;
ITEM : INTEGER;
begin
  ITEM := 1;


  IF frmpedido.qrpedido_contasreceber.RECORDCOUNT > 0 THEN
  BEGIN
    ASSIGNFILE(F,porta_impressora);
    REWRITE(F);
    frmpedido.qrpedido_contasreceber.FIRST;
    WHILE NOT frmpedido.qrpedido_CONTASRECEBER.EOF DO
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
        di := copy(frmpedido.dbdateedit1.text,1,2);me := copy(frmpedido.dbdateedit1.text,4,2);an := copy(frmpedido.dbdateedit1.text,7,4);
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
        FRMPRINCIPAL.texto_justifica(formatfloat('###,###,###,##0.00',frmpedido.qrpedido_CONTASRECEBER.fieldbyname('VALOR').asfloat),10,' ','E')+
                  '   '+FRMPRINCIPAL.texto_justifica(NUMERO_NOTAZ+'/'+FRMPRINCIPAL.zerarcodigo(INTTOSTR(ITEM),2),10,' ','D')+
                  ' '+FRMPRINCIPAL.texto_justifica(datetostr(frmpedido.qrpedido_CONTASRECEBER.fieldbyname('vencimento').asdatetime),10,' ','D'));

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
        Writeln(f,'                             '+frmmodulo.qrcliente.fieldbyname('nome').asstring);//31
        Writeln(f, '');
        Writeln(f,'                             '+frmmodulo.qrcliente.fieldbyname('ENDERECO').asstring);
        Writeln(f,'');
        Writeln(f,'');
        cid := frmmodulo.qrcliente.fieldbyname('Cidade').asstring;
        texto := cid+frmmodulo.qrcliente.fieldbyname('uf').asstring;
        while length(texto) < 36 do
        begin
          cid := cid + ' ';
          texto := cid + frmmodulo.qrcliente.fieldbyname('uf').asstring;
        end;
        texto := texto+'    '+frmmodulo.qrcliente.fieldbyname('cep').asstring;
        Writeln(f, '                             '+texto);//31
        Writeln(f, '');
        Writeln(f, '                               '+EMITENTE_CIDADE); // 31
        Writeln(f, '');
        Writeln(f, '                               '+frmmodulo.qrcliente.fieldbyname('cpf').asstring); //31
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

        TEXTO := AnsiUpperCase(extenso(frmpedido.qrpedido_CONTASRECEBER.fieldbyname('VALOR').asfloat));
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


      frmpedido.qrpedido_CONTASRECEBER.NEXT;
      ITEM := ITEM + 1;

    end;
          CLOSEFILE(F);



  END;

end;

procedure Tfrmpedido_fechar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmpedido_fechar.rfinanceiraEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;;
  efinanceira.Brush.Color := $00A8FFFF;;
end;

procedure Tfrmpedido_fechar.rfinanceiraExit(Sender: TObject);
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

procedure Tfrmpedido_fechar.rfinanceiraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmpedido_fechar.BCH_TECBANClick(Sender: TObject);
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

procedure Tfrmpedido_fechar.BCH_REDECARDClick(Sender: TObject);
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

procedure Tfrmpedido_fechar.bcartaoClick(Sender: TObject);
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

procedure Tfrmpedido_fechar.bpgtoClick(Sender: TObject);
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

procedure Tfrmpedido_fechar.cb_creditoKeyPress(Sender: TObject;
  var Key: Char);
begin
IF KEY = #13 THEN SPIN_CREDITO.SETFOCUS;
end;

procedure Tfrmpedido_fechar.spin_creditoKeyPress(Sender: TObject;
  var Key: Char);
begin
IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmpedido_fechar.cb_debitoKeyPress(Sender: TObject;
  var Key: Char);
begin
IF KEY = #13 THEN SPIN_DEBITO.SETFOCUS;
end;

procedure Tfrmpedido_fechar.spin_debitoKeyPress(Sender: TObject;
  var Key: Char);
begin
IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmpedido_fechar.Gravar1Click(Sender: TObject);
begin
  bgravarClick(frmpedido_fechar);
end;

procedure Tfrmpedido_fechar.bduplicataClick(Sender: TObject);
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
            frmDuplicata_Impressao.ed_fatura_numero.Text := frmpedido.dbedit1.text; //NUMERO_VENDAx;

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

              frmpedido.qrpedido_contasreceber.first;
              while not frmpedido.qrpedido_contasreceber.Eof do
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

//                  qrduplicata.fieldbyname('duplicata_numero').asstring   := qrduplicata.fieldbyname('FATURA_NUMERO').asstring+'/'+frmpedido.qrpedido_contasreceber.fieldbyname('prestacao').asstring;




                  qrduplicata.fieldbyname('duplicata_numero').asstring :=  sOrdem+'/'+sAno+retorna_letra(StrToInt(frmpedido.qrpedido_contasreceber.fieldbyname('prestacao').asstring));
                  qrduplicata.fieldbyname('duplicata_valor').asstring    := formatfloat('###,###,##0.00',frmpedido.qrpedido_contasreceber.fieldbyname('valor').asfloat);
                  qrduplicata.fieldbyname('data_vencimento').asdatetime    := frmpedido.qrpedido_contasreceber.fieldbyname('vencimento').asdatetime;
                  qrduplicata.fieldbyname('data_emissao').asdatetime       := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
                  qrduplicata.fieldbyname('extenso').asstring            := AnsiUpperCase(extenso(frmpedido.qrpedido_contasreceber.fieldbyname('valor').asfloat));

                  qrcliente.close;
                  qrcliente.sql.clear;
//                  qrcliente.sql.add('select * from c000007 where codigo = '''+frmmodulo.qrvenda.fieldbyname('codcliente').asstring+'''');
                  qrcliente.sql.add('select * from c000007 where codigo = '''+frmpedido.ecliente.text+'''');
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

                frmpedido.qrpedido_contasreceber.next;
              end;

              qrduplicata.SortOnFields('duplicata_numero');


              FXduplicata.LoadFromFile('\DATASAC\server\rel\f000150.fr3');
              FXduplicata.ShowReport;

end;

procedure Tfrmpedido_fechar.rbrcaixaClick(Sender: TObject);
begin
  Height := 527;
  rmeio.visible := true;
  rrodape.Visible := True;

end;

procedure Tfrmpedido_fechar.rbancoClick(Sender: TObject);
begin
  Height := 229;
  rmeio.visible := false;
  rrodape.Visible := False;

end;

end.
