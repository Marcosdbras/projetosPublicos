unit contasreceber_pgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, ExtCtrls, Collection, Mask, ToolEdit,
  CurrEdit, TFlatPanelUnit,  AdvGlowButton, AdvShapeButton, ComCtrls,
  wwdbdatetimepicker;

type
  Tfrmcontasreceber_pgto = class(TForm)
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    rdesconto2: TRxCalcEdit;
    rjuros: TRxCalcEdit;
    rdesconto1: TRxCalcEdit;
    Panel1: TPanel;
    rliquido: TRxCalcEdit;
    Panel2: TPanel;
    rtotal: TRxCalcEdit;
    Label15: TLabel;
    rdias: TRxCalcEdit;
    FlatPanel2: TFlatPanel;
    Label10: TLabel;
    rcaixa: TRadioButton;
    rbanco: TRadioButton;
    Label16: TLabel;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    AdvShapeButton1: TAdvShapeButton;
    Bevel3: TBevel;
    bitbtn2: TAdvGlowButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    rmeio: TPanel;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    N1: TMenuItem;
    ZerarJuros1: TMenuItem;
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
    edinheiro: TShape;
    echequeav: TShape;
    echequeap: TShape;
    ecartao: TShape;
    eboleto: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Label11: TLabel;
    Label12: TLabel;
    Shape15: TShape;
    Label13: TLabel;
    Shape17: TShape;
    Label14: TLabel;
    rdinheiro: TRxCalcEdit;
    rchequeav: TRxCalcEdit;
    rchequeap: TRxCalcEdit;
    rcartao: TRxCalcEdit;
    rboleto: TRxCalcEdit;
    FlatPanel3: TFlatPanel;
    Shape16: TShape;
    Shape18: TShape;
    rsoma: TRxCalcEdit;
    rdiferenca: TRxCalcEdit;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Bevel4: TBevel;
    Label17: TLabel;
    edata: TwwDBDateTimePicker;
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rdesconto1Enter(Sender: TObject);
    procedure rdesconto1Exit(Sender: TObject);
    procedure rdesconto2Exit(Sender: TObject);
    procedure rdesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure rjurosExit(Sender: TObject);
    procedure rjurosKeyPress(Sender: TObject; var Key: Char);
    procedure rdinheiroExit(Sender: TObject);
    procedure rchequeavExit(Sender: TObject);
    procedure rchequeapExit(Sender: TObject);
    procedure rcartaoExit(Sender: TObject);
    procedure rboletoExit(Sender: TObject);
    procedure rdinheiroEnter(Sender: TObject);
    procedure rchequeavEnter(Sender: TObject);
    procedure rchequeapEnter(Sender: TObject);
    procedure rcartaoEnter(Sender: TObject);
    procedure rboletoEnter(Sender: TObject);
    procedure rboletoKeyPress(Sender: TObject; var Key: Char);
    procedure rcaixaKeyPress(Sender: TObject; var Key: Char);
    procedure rbancoKeyPress(Sender: TObject; var Key: Char);
    procedure rdiasExit(Sender: TObject);
    procedure rbancoClick(Sender: TObject);
    procedure rcaixaClick(Sender: TObject);
    procedure rjurosEnter(Sender: TObject);
    procedure rdiasKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_pgto: Tfrmcontasreceber_pgto;
  continua_banco : boolean;
  JUROS_A_MAIS : REAL;
  valor_anterior : real;

  juros_valor, juros_desconto : real;

implementation

uses contasreceber, modulo, principal,Math, contasreceber_banco, unECF,
  funcoes, extenso1, senha_supervisor;

{$R *.dfm}

procedure Tfrmcontasreceber_pgto.bgravarClick(Sender: TObject);
var texto : pansichar;
qtde_conta : integer;
CREDITO, TROCO : REAL;
nome_cliente, documento : string;
percentual : real;
numero_contas : string;
var i,vqtde_parcelas,vqtde_parcelas1,vgera_parcela,vgera_parcela1 : integer;
vdesconto,vvalor_pago,vvalor_pago1 : double;


diferenca_juro : real;
begin




  try

    FRMMODULO.QRCAIXA_MOV.CLOSE;
    FRMMODULO.QRCAIXA_MOV.SQL.CLEAR;
    FRMMODULO.QRCAIXA_MOV.SQL.ADD('select * from c000044 where codigo = ''999999''');
    frmmodulo.qrcaixa_mov.open;



    FRMMODULO.QRCONFIG.OPEN;
    IF FRMMODULO.QRCONFIG.FieldByName('CONTASRECEBER_DESCONTO_PERMITIR').ASINTEGER = 0 THEN
    BEGIN
      IF RDESCONTO2.VALUE > 0 THEN
      BEGIN
        Application.messagebox('Não é permitido dar desconto no recebimento! Favor se informar com a gerência!','Atenção',mb_ok+MB_ICONWARNING);
        rdesconto2.setfocus;
        EXIT;
      END;
    END
    ELSE
    BEGIN
      IF FRMMODULO.QRCONFIG.FieldByName('CONTASRECEBER_DESCONTO_PERMITIR').ASINTEGER = 1 THEN
      BEGIN
        IF RDESCONTO1.VALUE > FRMMODULO.QRCONFIG.FieldByName('CONTASRECEBER_DESCONTO_percent').ASfloat THEN
        BEGIN
          texto := pansichar('Desconto máximo permito:'+#13+' ---> R$ '+formatfloat('###,###,##0.00',FRMMODULO.QRCONFIG.FieldByName('CONTASRECEBER_DESCONTO_percent').ASfloat)+'%  <--- '+#13+'É necessário autorização para prosseguir! '+#13+'Deseja continuar?');
          if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
          begin
            // verificar se o supervisor foi logado
            frmsenha_supervisor := tfrmsenha_supervisor.create(self);
            frmsenha_supervisor.showmodal;

            if bSupervisor_autenticado then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              rdesconto1.SetFocus;
              exit;
            end;
          end
          else
          begin
            rdesconto1.SetFocus;
            exit;
          end;
        END;
      END;
    END;

    nome_cliente := copy(frmmodulo.qrcliente.fieldbyname('nome').asstring,1,20);

    numero_contas := '''';
    frmcontasreceber.qrcr.First;
    while not frmcontasreceber.qrcr.Eof do
    begin
      if frmcontasreceber.qrcr.FieldByName('filtro').asinteger = 1 then  numero_contas := numero_contas +frmcontasreceber.qrcr.fieldbyname('codigo').asstring+''',''';
      frmcontasreceber.qrcr.Next;

    end;

    i := length(numero_contas);


    delete(numero_contas,i-1,2);

    frmcontasreceber.qrcontasreceber.close;
    frmcontasreceber.qrcontasreceber.sql.clear;
    frmcontasreceber.qrcontasreceber.sql.add('select * from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' and situacao = 1 and codigo in ('+numero_contas+') order by data_vencimento');
    frmcontasreceber.qrcontasreceber.open;

    //#################### 01 conta ############################\\
    //#################### 01 conta ############################\\
    //#################### 01 conta ############################\\
    //#################### 01 conta ############################\\


    if frmcontasreceber.qrcontasreceber.RecordCount = 1  then
    begin
      PRESTACOES := frmcontasreceber.qrcontasreceber.FIELDBYNAME('CODIGO').AsString;
      if rbanco.Checked then
      begin
        rsoma.value := rtotal.Value;
        rdiferenca.value := 0;
        continua_banco := false;
        frmcontasreceber_banco := tfrmcontasreceber_banco.create(self);
        frmcontasreceber_banco.dateedit1.date := edata.DateTime; //frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
        frmcontasreceber_banco.Edit1.Text :=  'Recebto. '+nome_cliente+' - Docto: '+frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring;
        frmcontasreceber_banco.showmodal;
        if not continua_banco then exit;
      end;
      if rcaixa.Checked then
      begin
        if rsoma.Value = 0 then
        begin
          application.messagebox('Favor informar o meio do recebimento!','Atenção',mb_ok+MB_ICONWARNING);
          exit;
        end;
      end;
      frmcontasreceber.qrcontasreceber.edit;
      frmcontasreceber.qrcontasreceber.fieldbyname('DATA_PAGAMENTO').asdatetime := edata.DateTime; //frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;

      if rdiferenca.Value < 0 then
      begin
         if application.messagebox('A diferença será lançada como crédito?','Atenção',mb_YESNO+MB_DEFBUTTON2+mb_iconquestion) = idyes then
         begin
           frmcontasreceber.qrcontasreceber.FieldByName('VALOR_PAGO').ASFLOAT        := frmcontasreceber.qrcontasreceber.FieldByName('VALOR_PAGO').ASFLOAT + RSOMA.VALUE;
           frmcontasreceber.qrcontasreceber.fieldbyname('valor_atual').asfloat       := frmcontasreceber.qrcontasreceber.fieldbyname('valor_atual').asfloat +
                                                                                        rjuros.Value - rdesconto2.value - rsoma.value;
           CREDITO := RDIFERENCA.VALUE * (-1);
           TROCO := 0;
         end
         else
         begin
           Showmessage('T R O C O '+#13+
                       FORMATFLOAT('###,###,##0.00',(RDIFERENCA.VALUE)*(-1)));
           frmcontasreceber.qrcontasreceber.FieldByName('VALOR_PAGO').ASFLOAT        := frmcontasreceber.qrcontasreceber.FieldByName('VALOR_PAGO').ASFLOAT + RSOMA.VALUE + rdiferenca.value;
           frmcontasreceber.qrcontasreceber.fieldbyname('valor_atual').asfloat       := (frmcontasreceber.qrcontasreceber.fieldbyname('valor_atual').asfloat + rjuros.Value)
                                                                                        - (rdesconto2.value + rsoma.value + rdiferenca.value);
           TROCO := RDIFERENCA.VALUE * (-1);
           CREDITO := 0;

          //RDINHEIRO.VALUE := RDINHEIRO.VALUE + RDIFERENCA.VALUE;
          //RDIFERENCA.VALUE := 0;

          //showmessage('deilson '+ floattostr(RDINHEIRO.VALUE));

         end;
      end
      else
      begin
        frmcontasreceber.qrcontasreceber.FieldByName('VALOR_PAGO').ASFLOAT        := frmcontasreceber.qrcontasreceber.FieldByName('VALOR_PAGO').ASFLOAT + RSOMA.VALUE;
        frmcontasreceber.qrcontasreceber.fieldbyname('valor_atual').asfloat       :=
        STRTOFLOAT(FORMATFLOAT('########0.00',(frmcontasreceber.qrcontasreceber.fieldbyname('valor_atual').asfloat +
        rjuros.Value - rdesconto2.value - rsoma.value)));
      end;



      if (frmcontasreceber.qrcontasreceber.fieldbyname('valor_atual').asfloat < 0.02) and
         (frmcontasreceber.qrcontasreceber.fieldbyname('valor_atual').asfloat > (-0.02)) then
      begin
        frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat := 0;
        frmcontasreceber.qrcontasreceber.fieldbyname('situacao').asinteger := 2;
        frmcontasreceber.qrcontasreceber.fieldbyname('filtro').asinteger := 0;
      end;
      WITH FRMCONTASRECEBER.qrcontasreceber_pgto DO
      BEGIN




        close;
        sql.clear;
        sql.add('insert into c000050');
        sql.add('(codconta,data,valor_parcela,valor_juros,valor_desconto,valor_pago,dinheiro,chequeav,chequeap,cartao,boleto,troco,credito,codcliente,caixa_banco)');
        sql.add('values');
        sql.add('(:codconta,:data,:valor_parcela,:valor_juros,:valor_desconto,:valor_pago,:dinheiro,:chequeav,:chequeap,:cartao,:boleto,:troco,:credito,:codcliente,:caixa_banco)');
        params.parambyname('codconta').asstring       := COPY(frmcontasreceber.qrcontasreceber.fieldbyname('codigo').asstring,1,9);
        params.parambyname('data').asdatetime         := edata.DateTime;  //frmcontasreceber.qrcontasreceber.fieldbyname('data_pagamento').asdatetime;
        params.parambyname('valor_parcela').asfloat   := rliquido.value;
        params.parambyname('valor_juros').asfloat     := rjuros.Value;
        params.parambyname('valor_desconto').asfloat  := rdesconto2.value;
        params.parambyname('valor_pago').asfloat      := rsoma.value;
        params.parambyname('dinheiro').asfloat        := rdinheiro.value;
        params.parambyname('chequeav').asfloat        := rchequeav.value;
        params.parambyname('chequeap').asfloat        := rchequeap.value;
        params.parambyname('cartao').asfloat          := rcartao.value;
        params.parambyname('boleto').asfloat          := rboleto.value;
        params.parambyname('troco').asfloat           := troco;
        params.parambyname('credito').asfloat         := credito;
        params.parambyname('CODCLIENTE').ASSTRING     := FRMCONTASRECEBER.qrcontasreceber.FIELDBYNAME('CODCLIENTE').ASSTRING;
        if rcaixa.Checked then
          params.parambyname('CAIXA_BANCO').ASINTEGER := 1
        else
          params.parambyname('CAIXA_BANCO').ASINTEGER := 2;
        execsql;


        
      END;
      if rcaixa.Checked then
      begin
        if (rdinheiro.Value) <> 0 then
        begin
          frmmodulo.qrcaixa_mov.OPEN;
          frmmodulo.qrcaixa_mov.insert;
          frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
          frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
          if troco <> 0 then
          begin
            frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := rdinheiro.value - troco;
            frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat      := rdinheiro.value - troco;
          end
          else
          begin
            frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := rdinheiro.value - troco;
            frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat      := rdinheiro.value - troco;
          end;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

          frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 9;
          frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Recebto. '+nome_cliente+' - Docto: '+frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring;
          frmmodulo.qrcaixa_mov.post;
          troco := 0;
        end;
        if rchequeav.Value <> 0 then
        begin
          frmmodulo.qrcaixa_mov.OPEN;
          frmmodulo.qrcaixa_mov.insert;
          frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
          frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
          frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := rchequeav.value;
          frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat      := 0;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

          frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 10;
          frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Recebto. '+nome_cliente+' - Docto: '+frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring;
          frmmodulo.qrcaixa_mov.post;
          if troco <> 0 then
          begin
            frmmodulo.qrcaixa_mov.OPEN;
            frmmodulo.qrcaixa_mov.insert;
            frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
            frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
            frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
            frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
            frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := troco*(-1);
            frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat      :=  troco;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

            frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 9;
            frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Troco no Recebto. '+nome_cliente+' - Docto: '+frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring;
            frmmodulo.qrcaixa_mov.post;
          end;
          troco := 0;
        end;
        if rchequeap.Value <> 0 then
        begin
          frmmodulo.qrcaixa_mov.OPEN;
          frmmodulo.qrcaixa_mov.insert;
          frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
          frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
          frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := rchequeap.value;
          frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat      := 0;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

          frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 11;
          frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Recebto. '+nome_cliente+' - Docto: '+frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring;
          frmmodulo.qrcaixa_mov.post;
          if troco <> 0 then
          begin
            frmmodulo.qrcaixa_mov.OPEN;
            frmmodulo.qrcaixa_mov.insert;
            frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
            frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
            frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
            frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
            frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := troco*(-1);
            frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat      :=  troco;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

            frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 9;
            frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Troco no Recebto. '+nome_cliente+' - Docto: '+frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring;
            frmmodulo.qrcaixa_mov.post;
          end;
          troco := 0;


        end;
        if rcartao.Value <> 0 then
        begin
          frmmodulo.qrcaixa_mov.OPEN;
          frmmodulo.qrcaixa_mov.insert;
          frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
          frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
          frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := rcartao.value;
          frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat      := 0;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

          frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 12;
          frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Recebto. '+nome_cliente+' - Docto: '+frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring;
          frmmodulo.qrcaixa_mov.post;
          if troco <> 0 then
          begin
            frmmodulo.qrcaixa_mov.OPEN;
            frmmodulo.qrcaixa_mov.insert;
            frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
            frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
            frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
            frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
            frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := troco*(-1);
            frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat      :=  troco;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

            frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 9;
            frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Troco no Recebto. '+nome_cliente+' - Docto: '+frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring;
            frmmodulo.qrcaixa_mov.post;
          end;
          troco := 0;
        end;
        if rBOLETO.Value <> 0 then
        begin
          frmmodulo.qrcaixa_mov.OPEN;
          frmmodulo.qrcaixa_mov.insert;
          frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
          frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
          frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := rBOLETO.value;
          frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat      := 0;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

          frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 15;
          frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Recebto. '+nome_cliente+' - Docto: '+frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring;
          frmmodulo.qrcaixa_mov.post;
          if troco <> 0 then
          begin
            frmmodulo.qrcaixa_mov.OPEN;
            frmmodulo.qrcaixa_mov.insert;
            frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
            frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
            frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
            frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
            frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := troco*(-1);
            frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat      :=  troco;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

            frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 9;
            frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Troco no Recebto. '+nome_cliente+' - Docto: '+frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring;
            frmmodulo.qrcaixa_mov.post;
          end;
          troco := 0;
        end;

        if rDESCONTO2.Value > 0 then
        begin
          frmmodulo.qrcaixa_mov.OPEN;
          frmmodulo.qrcaixa_mov.insert;
          frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
          frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
          frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := rdesconto2.value;
          frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat      := 0;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

          frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 14;
          frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Desc.Recebto. '+nome_cliente+' - Docto: '+frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring;
          frmmodulo.qrcaixa_mov.post;
        end;
        if rjuros.Value > 0 then
        begin
          frmmodulo.qrcaixa_mov.OPEN;
          frmmodulo.qrcaixa_mov.insert;
          frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
          frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
          frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := rjuros.value;
          frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat      := 0;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

          frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 13;
          frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Juros Recebido '+nome_cliente+' - Docto: '+frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring;
          frmmodulo.qrcaixa_mov.post;
        end;
      end; // caixa
      if rbanco.Checked then
      begin
        frmmodulo.qrcaixa_mov.open;
        frmmodulo.qrcaixa_mov.Insert;
        frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring     := frmprincipal.codifica('000044',8);
        frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring   := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring:= frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
        frmmodulo.qrcaixa_mov.fieldbyname('data').asstring       := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
        frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat       := 0;
        frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat     := 0;
        frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat       := Rtotal.VALUE;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

        frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 15; // BOLETO
        frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring  := 'Recebto. '+nome_cliente+' - Docto: '+frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring;
        frmmodulo.qrcaixa_mov.post;
        if rDESCONTO2.Value > 0 then
        begin
          frmmodulo.qrcaixa_mov.OPEN;
          frmmodulo.qrcaixa_mov.insert;
          frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
          frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
          frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := rdesconto2.value;
          frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat      := 0;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

          frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 14;
          frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Desc.Recebto. '+nome_cliente+' - Docto: '+frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring;
          frmmodulo.qrcaixa_mov.post;
        end;
        if rjuros.Value > 0 then
        begin
          frmmodulo.qrcaixa_mov.OPEN;
          frmmodulo.qrcaixa_mov.insert;
          frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
          frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
          frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := rjuros.value;
          frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat      := 0;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

          frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 13;
          frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Juros Recebido '+nome_cliente+' - Docto: '+frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring;
          frmmodulo.qrcaixa_mov.post;
        end;
      end; // banco
      frmcontasreceber.qrcontasreceber.post;

      frmcontasreceber.qrcontasreceber.Refresh;
    end
    else
    begin // apenas 01 conta
       //////////////////////////////////////////////////////////////////////////////
       //////////////////////////////////////////////////////////////////////////////
       //////////////////////////////////////////////////////////////////////////////
       //////////////////////////////////////////////////////////////////////////////
       //////////////////////////////////////////////////////////////////////////////
       //////////////////////////////////////////////////////////////////////////////
       /////////////////  V A R I A S   C O N T A S  ////////////////////////////////
       //////////////////////////////////////////////////////////////////////////////
       //////////////////////////////////////////////////////////////////////////////
       //////////////////////////////////////////////////////////////////////////////
       //////////////////////////////////////////////////////////////////////////////
       //////////////////////////////////////////////////////////////////////////////



       //showmessage(floattostr(frmcontasreceber.qrcontasreceber.fieldbyname('valor_atual').asfloat));

      if vqtde_parcelas > 1 then
        vdesconto := rdesconto2.Value/vqtde_parcelas;


      if rbanco.Checked then
      begin
        rsoma.value := rtotal.Value;
        rdiferenca.value := 0;
        continua_banco := false;
        frmcontasreceber_banco := tfrmcontasreceber_banco.create(self);
        frmcontasreceber_banco.dateedit1.date := edata.DateTime; //frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASdatetime;
        frmcontasreceber_banco.Edit1.Text :=  'Recebto. '+nome_cliente;
        frmcontasreceber_banco.showmodal;
        if not continua_banco then exit;
      end;
      if rcaixa.Checked then
      begin
        if rsoma.Value = 0 then
        begin
          application.messagebox('Favor informar o meio do recebimento!','Atenção',mb_ok+MB_ICONWARNING);
          exit;
        end;
      end;

      if rdiferenca.Value < 0 then
      begin
         if application.messagebox('A diferença será lançada como crédito?','Atenção',mb_YESNO+MB_DEFBUTTON2+mb_iconquestion) = idyes then
         begin
           CREDITO := RDIFERENCA.VALUE * (-1);
           TROCO := 0;
         end
         else
         begin
           SHOWMESSAGE('T R O C O '+#13+
                       FORMATFLOAT('###,###,##0.00',(RDIFERENCA.VALUE)*(-1)));
           TROCO := RDIFERENCA.VALUE * (-1);
           CREDITO := 0;

          RDINHEIRO.VALUE := RDINHEIRO.VALUE + RDIFERENCA.VALUE;
          RDIFERENCA.VALUE := 0;

          //showmessage('deilson '+ floattostr(RDINHEIRO.VALUE));

         end;
      end;

      vgera_parcela := 0;
      vgera_parcela1 := 0;

      if rdiferenca.Value <> 0 then
        begin
            if application.messagebox('Deseja Gerar uma parcela do restante do Débito?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
              vgera_parcela := 1;
        end;


     frmcontasreceber.qrcontasreceber_pgto.close;
     frmcontasreceber.qrcontasreceber_pgto.sql.clear;
     frmcontasreceber.qrcontasreceber_pgto.sql.add('select * from c000050 where codcliente = '''+FRMCONTASRECEBER.qrcontasreceber.FIELDBYNAME('CODCLIENTE').ASSTRING+'''');
     frmcontasreceber.qrcontasreceber_pgto.open;
      // repassar as contas para dar baixa
      PRESTACOES := '';

      vvalor_pago := (rsoma.Value+total_credito) + rdesconto2.value;  // total pago pelo cliente
      vqtde_parcelas := frmcontasreceber.qrcontasreceber.RecordCount;

      vvalor_pago1 := (rsoma.Value+total_credito) + rdesconto2.value;  // total pago pelo cliente

      vqtde_parcelas1 := frmcontasreceber.qrcontasreceber.RecordCount;

      frmcontasreceber.qrcontasreceber.first;



      while not frmcontasreceber.qrcontasreceber.Eof do
      begin
        PRESTACOES := PRESTACOES+', '+frmcontasreceber.qrcontasreceber.FIELDBYNAME('CODIGO').AsString;
        frmcontasreceber.qrcontasreceber.Edit;


        WITH FRMCONTASRECEBER.qrcontasreceber_pgto DO
        BEGIN
          insert;
          fieldbyname('codconta').asstring := frmcontasreceber.qrcontasreceber.fieldbyname('codigo').asstring;
          fieldbyname('data').asdatetime := edata.DateTime; //frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
          fieldbyname('valor_parcela').asfloat := frmcontasreceber.qrcontasreceber.fieldbyname('valor_atual').asfloat;
          if RJUROS.VALUE <> 0 then
          begin
            fieldbyname('valor_juros').asfloat := (FRMCONTASRECEBER.QRCONTASRECEBER.FieldBYNAME('VALOR_ATUAL').asfloat * juros_a_mais)+
                                                   FRMCONTASRECEBER.QRCONTASRECEBER.FieldBYNAME('VALOR_juros').asfloat;
          end
          else
          begin
            fieldbyname('valor_juros').asfloat := 0;
          end;

          if rdesconto1.Value <> 0 then
          begin
            fieldbyname('valor_desconto').asfloat := FRMCONTASRECEBER.QRCONTASRECEBER.FieldBYNAME('VALOR_atual').asfloat * (rdesconto1.Value / 100);
          end
          else
          begin
            fieldbyname('valor_desconto').asfloat;
          end;



          (***********************************)
          if vgera_parcela = 0 then
            begin
              if vvalor_pago1 > 0 then
                begin

                  if (vvalor_pago1 >= frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat) then
                    begin
                      fieldbyname('valor_pago').asfloat := fieldbyname('valor_pago').asfloat+STRTOFLOAT(FORMATFLOAT('##########0.00',frmcontasreceber.qrcontasreceber.fieldbyname('valor_atual').asfloat));
                      vvalor_pago1 := vvalor_pago1 - frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat;
                    end
                    else
                    begin
                      fieldbyname('valor_pago').asfloat := fieldbyname('valor_pago').asfloat+STRTOFLOAT(FORMATFLOAT('##########0.00',vvalor_pago1));
                      vvalor_pago1 := 0;
                    end;
                 end;
            end
            else
            begin
              fieldbyname('valor_pago').asfloat := fieldbyname('valor_pago').asfloat+STRTOFLOAT(FORMATFLOAT('##########0.00',frmcontasreceber.qrcontasreceber.fieldbyname('valor_atual').asfloat));
            end;
           (**********************************)


          percentual := ((frmcontasreceber.qrcontasreceber.fieldbyname('valor_atual').asfloat +fieldbyname('valor_juros').asfloat - fieldbyname('valor_desconto').asfloat)  * 100) / rtotal.value;

          if rdinheiro.Value <> 0 then fieldbyname('dinheiro').asfloat   := (rdinheiro.value * (percentual/100));
          if rchequeav.Value <> 0 then fieldbyname('chequeav').asfloat   := (rchequeav.value * (percentual/100));
          if rchequeap.Value <> 0 then fieldbyname('chequeap').asfloat   := (rchequeap.value * (percentual/100));
          if rcartao.Value   <> 0 then fieldbyname('cartao').asfloat     := (rcartao.value   * (percentual/100));
          if rboleto.Value   <> 0 then fieldbyname('boleto').asfloat     := (rboleto.value   * (percentual/100));
          if rdiferenca.Value<> 0 then fieldbyname('troco').asfloat      := (rdiferenca.value* (percentual/100));
          if credito         <> 0 then fieldbyname('credito').asfloat    := (credito         * (percentual/100));
          FIELDBYNAME('CODCLIENTE').ASSTRING:= FRMCONTASRECEBER.qrcontasreceber.FIELDBYNAME('CODCLIENTE').ASSTRING;
          if rcaixa.Checked then
          FIELDBYNAME('CAIXA_BANCO').ASINTEGER := 1
          else
          FIELDBYNAME('CAIXA_BANCO').ASINTEGER := 2;
          post;

          vqtde_parcelas1 := vqtde_parcelas1-1;

        END;





        if (vgera_parcela = 0) and (rdiferenca.value <> 0 ) then
        begin
          if vvalor_pago > 0 then
          begin


            if rjuros.value > 0 then
              begin





                if ((vvalor_pago + JUROS_DESCONTO)  >= frmcontasreceber.qrcontasreceber.FieldByName('restante').asfloat) then
                begin

                    frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').asfloat :=
                    frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').asfloat +
                    frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat;

                    vvalor_pago := vvalor_pago - frmcontasreceber.qrcontasreceber.FieldByName('RESTANTE').asfloat;
                    frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat := 0;
                    frmcontasreceber.qrcontasreceber.fieldbyname('situacao').asinteger := 2;
                end
                else
                begin

                    frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').asfloat :=
                    frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').asfloat + vvalor_pago;

                    // deilson showmessage(' menor restante DA COMPRA '+floattostr(frmcontasreceber.qrcontasreceber.FieldByName('restante').asfloat)+ ' VALOR PAGP' + floattostr(VVALOR_PAGO));

                    if vvalor_pago < frmcontasreceber.qrcontasreceber.FieldByName('restante').asfloat then
                      begin
                        frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat :=
                        frmcontasreceber.qrcontasreceber.FieldByName('restante').asfloat-vvalor_pago;
                      end
                    else
                      begin
                        vvalor_pago := 0;
                        frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat :=
                        STRTOFLOAT(FORMATFLOAT('##########0.00', frmcontasreceber.qrcontasreceber.FieldByName('restante').asfloat-
                        frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').asfloat));
                      end;

                end;


            end
            else
            begin

              //showmessage(inttostr(vqtde_parcelas));
              //showmessage(' antes ' + floattostr(vvalor_pago)+ ' ' + floattostr(frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat));

                     if (vvalor_pago >= frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat) then
                     begin
                       frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').asfloat := frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').asfloat + frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat;
                       vvalor_pago := vvalor_pago - frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat;
                       frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat := 0;
                       frmcontasreceber.qrcontasreceber.fieldbyname('situacao').asinteger := 2;
                     end
                     else

                     begin

                      frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').asfloat := frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').asfloat + vvalor_pago;

                      vvalor_pago := 0;

                      if frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').asfloat < 0 then
                        begin
                          frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat := 0;
                          frmcontasreceber.qrcontasreceber.fieldbyname('situacao').asinteger := 2;
                          vvalor_pago1 := vvalor_pago1 - (frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat*(-1));

                        end
                      else
                        frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat :=  STRTOFLOAT(FORMATFLOAT('##########0.00', frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat-frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').asfloat));
             end;

            end;





          end;

        end
        else
        begin
          // gerar uma nova prestacao no restante

              frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').asfloat := frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').asfloat + frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat;
              frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat := 0;
              frmcontasreceber.qrcontasreceber.fieldbyname('situacao').asinteger := 2;

        end;


        if frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat < 0 then
          begin
            frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat := 0; //frmcontasreceber.qrcontasreceber.FieldByName('valor_parcela').asfloat - frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').asfloat;
            frmcontasreceber.qrcontasreceber.fieldbyname('situacao').asinteger := 2;
          end;


        //showmessage(' valor atual ' + floattostr(frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat));


       frmcontasreceber.qrcontasreceber.fieldbyname('DATA_PAGAMENTO').asdatetime := edata.DateTime; //frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
       frmcontasreceber.qrcontasreceber.fieldbyname('filtro').asinteger := 0;
       frmcontasreceber.qrcontasreceber.post;

       // aqui

      if (frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat <= 0) and
         (frmcontasreceber.qrcontasreceber.fieldbyname('situacao').asinteger = 1 ) then

         begin

          frmcontasreceber.qrcontasreceber.Edit;
           frmcontasreceber.qrcontasreceber.fieldbyname('situacao').asinteger := 2;
          frmcontasreceber.qrcontasreceber.Post;
         end;


       //showmessage(floattostr(frmcontasreceber.qrcontasreceber.FieldByName('valor_atual').asfloat));
       //showmessage(floattostr(frmcontasreceber.qrcontasreceber.FieldByName('valor_pago').asfloat));

       frmcontasreceber.qrcontasreceber.Next;

       vqtde_parcelas := vqtde_parcelas-1;


      end;

        //if rdiferenca.Value > 0 then
        if vgera_parcela = 1 then
        begin
          if application.messagebox('Será feito um lançamento do restante do débito!','Atenção',MB_okCANCEL+MB_ICONASTERISK) = IDok then
          begin

            frmcontasreceber.qrcontasreceber.insert;
            frmcontasreceber.qrcontasreceber.fieldbyname('codigo').asstring          := FRMPRINCIPAL.codifica('000049',6)+'/RE';
            frmcontasreceber.qrcontasreceber.fieldbyname('codvenda').asstring        := 'RESTAN';
            frmcontasreceber.qrcontasreceber.fieldbyname('codcliente').asstring      := frmmodulo.qrcliente.FIELDBYNAME('CODIGO').ASSTRING;
            frmcontasreceber.qrcontasreceber.fieldbyname('codvendedor').asstring     := '000099';
            frmcontasreceber.qrcontasreceber.fieldbyname('codcaixa').asstring        := FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
            frmcontasreceber.qrcontasreceber.fieldbyname('data_emissao').asstring    := FRMMODULO.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
            frmcontasreceber.qrcontasreceber.fieldbyname('data_vencimento').asstring := FRMMODULO.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
            frmcontasreceber.qrcontasreceber.fieldbyname('valor_original').asfloat   := RDIFERENCA.Value;
            frmcontasreceber.qrcontasreceber.fieldbyname('valor_atual').asfloat      := RDIFERENCA.Value;
            frmcontasreceber.qrcontasreceber.fieldbyname('documento').asstring       := 'RESTANTE DEBITO';
            frmcontasreceber.qrcontasreceber.fieldbyname('tipo').asstring            := 'CARTEIRA';
            frmcontasreceber.qrcontasreceber.FieldByName('situacao').asinteger       := 1;
            frmcontasreceber.qrcontasreceber.FieldByName('filtro').asinteger         := 0;
            frmcontasreceber.qrcontasreceber.post;
          end
          else
          begin
            showmessage('Cancelado pelo usuário.');
            exit;
          end;
        end;


    if rcaixa.Checked then
    begin
       if rdinheiro.Value <> 0 then
       begin
         frmmodulo.qrcaixa_mov.OPEN;
         frmmodulo.qrcaixa_mov.insert;
         frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
         frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
         frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
         frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := rdinheiro.value ;
         frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat      := rdinheiro.value ;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

         frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 9;
         frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Recebto. '+nome_cliente;
         frmmodulo.qrcaixa_mov.post;
       end;
       if rchequeav.Value <> 0 then
       begin
         frmmodulo.qrcaixa_mov.OPEN;
         frmmodulo.qrcaixa_mov.insert;
         frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
         frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
         frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
         frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := rchequeav.value;
         frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat      := 0;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

         frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 10;
         frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Recebto. '+nome_cliente;
         frmmodulo.qrcaixa_mov.post;
       end;
       if rchequeap.Value <> 0 then
       begin
         frmmodulo.qrcaixa_mov.OPEN;
         frmmodulo.qrcaixa_mov.insert;
         frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
         frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
         frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
         frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
         frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := rchequeap.value;
         frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat      := 0;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

         frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 11;
         frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Recebto. '+nome_cliente;
         frmmodulo.qrcaixa_mov.post;
       end;
       if rcartao.Value <> 0 then
       begin
         frmmodulo.qrcaixa_mov.OPEN;
         frmmodulo.qrcaixa_mov.insert;
         frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
         frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
         frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
         frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
         frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := rcartao.value;
         frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat      := 0;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

         frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 12;
         frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Recebto. '+nome_cliente;
         frmmodulo.qrcaixa_mov.post;
       end;
       if rBOLETO.Value <> 0 then
       begin
         frmmodulo.qrcaixa_mov.OPEN;
         frmmodulo.qrcaixa_mov.insert;
         frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
         frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
         frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
         frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
         frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := rBOLETO.value;
         frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat      := 0;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

         frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 15;
         frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Recebto. '+nome_cliente;
         frmmodulo.qrcaixa_mov.post;
       end;
       if rDESCONTO2.Value > 0 then
       begin
         frmmodulo.qrcaixa_mov.OPEN;
         frmmodulo.qrcaixa_mov.insert;
         frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
         frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
         frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
         frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
         frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := rdesconto2.value;
         frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat      := 0;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

         frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 14;
         frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Desc.Recebto. '+nome_cliente;
         frmmodulo.qrcaixa_mov.post;
       end;
       if rjuros.Value > 0 then
       begin
         frmmodulo.qrcaixa_mov.OPEN;
         frmmodulo.qrcaixa_mov.insert;
         frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
         frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
         frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
         frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
         frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := rjuros.value;
         frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat      := 0;

         frmmodulo.qrconfig.open;
         frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

         frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 13;
         frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Juros Recebido '+nome_cliente;
         frmmodulo.qrcaixa_mov.post;
       end;
    end;

    if rbanco.Checked then
    begin
      frmmodulo.qrcaixa_mov.open;
      frmmodulo.qrcaixa_mov.Insert;
      frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring     := frmprincipal.codifica('000044',8);
      frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring   := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring:= frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      frmmodulo.qrcaixa_mov.fieldbyname('data').asstring       := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
      frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat       := 0;
      frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat     := 0;
      frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat       := Rtotal.VALUE;

      frmmodulo.qrconfig.open;
      frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

      frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 15; // BOLETO
      frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring  := 'Recebto. '+nome_cliente;
      frmmodulo.qrcaixa_mov.post;
       if rDESCONTO2.Value > 0 then
       begin
         frmmodulo.qrcaixa_mov.OPEN;
         frmmodulo.qrcaixa_mov.insert;
         frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
         frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
          frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
         frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
         frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := rdesconto2.value;
         frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat      := 0;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

         frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 14;
         frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Desc.Recebto. '+nome_cliente;
         frmmodulo.qrcaixa_mov.post;
       end;
       if rjuros.Value > 0 then
       begin
         frmmodulo.qrcaixa_mov.OPEN;
         frmmodulo.qrcaixa_mov.insert;
         frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044',8);
         frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring    := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
         frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
         frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
         frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := rjuros.value;
         frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat      := 0;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

         frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 13;
         frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Juros Recebido '+nome_cliente;
         frmmodulo.qrcaixa_mov.post;
       end;
    end;
    frmcontasreceber.qrcontasreceber.Refresh;
  end;

      try
          BitBtn1.OnClick(frmcontasreceber_pgto);
      except

      end;

  except
    showmessage('Houve erro no processamento!');
  end;
  close;
end;

procedure Tfrmcontasreceber_pgto.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontasreceber_pgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcontasreceber_pgto.rdesconto1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontasreceber_pgto.rdesconto1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if rdesconto1.value <> 0 then
  begin
    rdesconto2.Value := rliquido.value * (rdesconto1.Value / 100);
  end;
  rtotal.value    := rliquido.value - rdesconto2.value + rjuros.Value;
end;

procedure Tfrmcontasreceber_pgto.rdesconto2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if rliquido.value <> 0 then
  begin
    rdesconto1.Value := (rdesconto2.Value * 100)/rliquido.value;
  end;
  rtotal.value    := rliquido.value - rdesconto2.value + rjuros.value;
end;

procedure Tfrmcontasreceber_pgto.rdesconto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcontasreceber_pgto.rjurosExit(Sender: TObject);
var vj : real;
begin

  tedit(sender).color := clwindow;

  if valor_anterior <> rjuros.value then
  begin
    if rjuros.value <> 0 then
    begin
      vj := rjuros.Value - total_juros;
      vj := vj*100/rliquido.value;
      JUROS_A_MAIS := vj/100;
    end;
    juros_desconto := juros_valor - rjuros.Value;
  end;
  rtotal.value    := rliquido.value - rdesconto2.value + rjuros.value;
end;

procedure Tfrmcontasreceber_pgto.rjurosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then rcaixa.setfocus;
end;

procedure Tfrmcontasreceber_pgto.rdinheiroExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  edinheiro.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartao.value +
                 rboleto.Value ;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmcontasreceber_pgto.rchequeavExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  echequeav.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartao.value +
                 rboleto.Value ;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmcontasreceber_pgto.rchequeapExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  echequeap.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartao.value +
                 rboleto.Value ;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmcontasreceber_pgto.rcartaoExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  ecartao.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartao.value +
                 rboleto.Value ;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmcontasreceber_pgto.rboletoExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  eboleto.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartao.value +
                 rboleto.Value ;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmcontasreceber_pgto.rdinheiroEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  edinheiro.Brush.Color := $00A0FAF8;
end;

procedure Tfrmcontasreceber_pgto.rchequeavEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  echequeav.Brush.Color := $00A0FAF8;

end;

procedure Tfrmcontasreceber_pgto.rchequeapEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  echequeap.Brush.Color := $00A0FAF8;

end;

procedure Tfrmcontasreceber_pgto.rcartaoEnter(Sender: TObject);
begin
    tedit(sender).color := $00A0FAF8;
  ecartao.Brush.Color := $00A0FAF8;

end;

procedure Tfrmcontasreceber_pgto.rboletoEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  eboleto.Brush.Color := $00A0FAF8;

end;

procedure Tfrmcontasreceber_pgto.rboletoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcontasreceber_pgto.rcaixaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then rdinheiro.setfocus;
end;

procedure Tfrmcontasreceber_pgto.rbancoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcontasreceber_pgto.rdiasExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

  // calculo de juros
  rjuros.value := total_juros;

  if rdias.value <> 0 then
  begin
    if juro_taxa <> 0 then
    begin
      JUROS_A_MAIS := (rdias.Value * (juro_taxa/100));
      RJUROS.VALUE := rliquido.value * (rdias.Value * (juro_taxa/100));
      rjuros.value := total_juros + RJUROS.VALUE;
    end;
  end;
  //
  rtotal.value := rliquido.value + rjuros.value - rdesconto2.Value;



end;

procedure Tfrmcontasreceber_pgto.rbancoClick(Sender: TObject);
begin

  Height := 249;
  rmeio.visible := false;
end;

procedure Tfrmcontasreceber_pgto.rcaixaClick(Sender: TObject);
begin

  Height := 451;
  rmeio.visible := true;
end;

procedure Tfrmcontasreceber_pgto.rjurosEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  valor_anterior := rjuros.value;
end;

procedure Tfrmcontasreceber_pgto.rdiasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then rcaixa.setfocus;
end;

procedure Tfrmcontasreceber_pgto.BitBtn1Click(Sender: TObject);
var sCOO_crediario, sGNF_Crediario : string;
begin
        repeat
          sCOO_crediario := cECF_COO_Nao_Fiscal(iECF_Modelo);

          sMsg := cECF_Recebimento(iECF_Modelo,sTotalizador_recebimento,rtotal.value,
          'DINHEIRO');
          sGNF_crediario := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
          if sMsg <> 'OK' then
          begin
            If application.MessageBox(pansichar('Erro no lançamento do Crediário no ECF!'+#13+
                                                'Mensagem: '+sMsg+#13+'Deseja tentar outra vez?'),
                                                'Erro',mb_yesno+MB_ICONERROR) = idno theN
            BEGIN
              break;
            end
            else
            begin
              sTotalizador_Recebimento :=
                inputbox('Recebimento','Informe o nome do Totalizador:',sTotalizador_Crediario);
            end;
          end
          else
          begin
            sNumero_Cupom := scoo_crediario;
            frmmodulo.spNao_Fiscal.close;
            frmmodulo.spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
            frmmodulo.spNao_fiscal.ParamByName('ecf').asstring := sECF_Serial;
            frmmodulo.spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
            frmmodulo.spNao_Fiscal.ParamByName('indice').AsString := sTotalizador_Recebimento;
            frmmodulo.spNao_Fiscal.ParamByName('descricao').AsString := sNome_Totalizador_Recebimento;
            frmmodulo.spNao_fiscal.ParamByName('valor').asfloat := rtotal.value;
            frmmodulo.spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
            frmmodulo.spNao_fiscal.ParamByName('COO').asstring := sCOO_crediario;
            frmmodulo.spNao_fiscal.ParamByName('GNF').asstring := sGNF_Crediario;
            frmmodulo.spNao_fiscal.ParamByName('CDC').Clear;
            frmmodulo.spNao_fiscal.ParamByName('GRG').clear;
            frmmodulo.spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'CN';
            frmmodulo.spnao_fiscal.Prepare;
            frmmodulo.spNao_Fiscal.Execute;

          end;
        until sMsg = 'OK';




       if application.messagebox('Deseja imprimir o recibo?','Aviso',mb_yesno+MB_ICONQUESTION) = idyes then
       begin

          repeat

            sMsg := cECF_Abre_Gerencial(iECF_Modelo,'RECIBO');
            sNumero_Cupom := cECF_Numero_Cupom(iECF_Modelo);
            if sMsg <> 'OK' then
            begin
              if application.messagebox(pansichar('Erro no ECF!'+#13+
                                                  'Mensagem: '+sMsg+#13+
                                                  'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                  mb_iconerror) = idNo then
              begin
                break;
              end;
            end
            else
            begin
              // extrair do ecf o numero dos contadores

              sGNF := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
              sGRG := cECF_Numero_Contador_Relatorio_Gerencial(iECF_Modelo);

            end;
          until sMsg = 'OK';



          if sMsg = 'OK' then
          begin
              repeat
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'<e>   RECIBO DE PAGAMENTO</e>');
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'Cliente: <b>'+copy(frmmodulo.qrcliente.fieldbyname('nome').asstring,1,38)+'</b>');
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'CPF: <b>'+frmmodulo.qrcliente.fieldbyname('cpf').asstring+'</b>');
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'Recebemos do cliente acima informado, a importância'+
                                                    'de <b>('+extenso1.extenso(frmcontasreceber_pgto.rtotal.value)+')</b>'+
                                                    'referente ao recebimento da(s) prestção(ões) abaixo relacionada(s):');
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'Vencimento  Cupom      Documento      Valor - R$');
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');


                frmcontasreceber.qrcr.Open;
                frmcontasreceber.qrcr.First;
                while not frmcontasreceber.qrcr.Eof do begin
                  if frmcontasreceber.qrcr.FIELDBYNAME('FILTRO').AsInteger = 1 then
                  begin
                    sMsg := cECF_Usa_Gerencial(iECF_Modelo,
                    frmcontasreceber.qrcr.fieldbyname('DATA_VENCIMENTO').ASSTRING+'  '+
                    texto_justifica(frmcontasreceber.qrcr.fieldbyname('codvenda').ASSTRING,6,'0',taDireita)+'    '+
                    Texto_justifica(frmcontasreceber.qrcr.fieldbyname('DOCUMENTO').ASSTRING,10,' ',taEsquerda)+'    '+
                    Texto_justifica(FORMATFLOAT('###,###,##0.00',frmcontasreceber.qrcr.fieldbyname('VALOR_ATUAL').ASfloat),12,' ',taDireita));

                  end;
                  frmcontasreceber.qrcr.next;
                end;


                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'                                TOTAL:'+  Texto_justifica(FORMATFLOAT('###,###,##0.00',frmcontasreceber_pgto.rliquido.value  ),10,' ',taDireita));
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'                             DESCONTO:'+  Texto_justifica(FORMATFLOAT('###,###,##0.00',frmcontasreceber_pgto.rdesconto2.value),10,' ',taDireita));
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'                            ACRESCIMO:'+  Texto_justifica(FORMATFLOAT('###,###,##0.00',frmcontasreceber_pgto.rjuros.value    ),10,' ',taDireita));
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'                            PAGAMENTO:'+  Texto_justifica(FORMATFLOAT('###,###,##0.00',frmcontasreceber_pgto.rsoma.value     ),10,' ',taDireita));
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'                             RESTANTE:'+  Texto_justifica(FORMATFLOAT('###,###,##0.00',frmcontasreceber_pgto.rdiferenca.value),10,' ',taDireita));
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'Para maior clareza firmamos o presente.         ');
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'');
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo, FormatDateTime('dddd", "d" de "mmmm" de "yyyy',date)+'.');
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'');
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'');
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'');
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
                 sMsg := cECF_Usa_Gerencial(iECF_Modelo,'          Assinatura do Funcionário');




                if sMsg <> 'OK' then
                begin
                  if application.messagebox(pansichar('Erro no ECF!'+#13+
                                                      'Mensagem: '+sMsg+#13+
                                                      'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                      mb_iconerror) = idNo then
                  begin
                    break;
                  end;
                end
              until sMsg = 'OK';


            end;

            repeat
              sMsg := cECF_Fecha_Gerencial(iECF_Modelo);
              if sMsg <> 'OK' then
              begin
                if application.messagebox(pansichar('Erro no ECF!'+#13+
                                                    'Mensagem: '+sMsg+#13+
                                                    'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                                    mb_iconerror) = idNo then
                begin
                  break;
                end;
              end
              else
              begin
                // registrar Gerencial no banco de dados
                with frmmodulo do
                begin
                  spNao_Fiscal.Close;
                  spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
                  spNao_fiscal.parambyname('ecf').asstring := sECF_Serial;
                  spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
                  spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
                  spNao_fiscal.ParamByName('indice').asstring := 'RG';
                  spNao_fiscal.ParamByName('Descricao').asstring := 'RELATÓRIO GERENCIAL';
                  spNao_fiscal.ParamByName('valor').asfloat := 0;
                  spNao_fiscal.ParamByName('COO').asstring := sNumero_Cupom;
                  spNao_fiscal.ParamByName('GNF').asstring := sGNF;
                  spNao_fiscal.ParamByName('GRG').asstring := sGRG;
                  spNao_fiscal.ParamByName('CDC').Clear;
                  spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'RG';
                  spNao_Fiscal.Prepare;
                  spNao_Fiscal.Execute;
                end;
              end;
            until sMsg = 'OK';
       end; // deseja imprimir



end;

procedure Tfrmcontasreceber_pgto.BitBtn2Click(Sender: TObject);
begin
  // verisificar se o supervisor foi logado
  frmsenha_supervisor := tfrmsenha_supervisor.create(self);
  frmsenha_supervisor.showmodal;
  if bSupervisor_autenticado then
  begin    Application.MessageBox('Não autorizado!','Atenção!',mb_ok+MB_ICONERROR);
    rdinheiro.setfocus;
    exit;
  end;

  rjuros.Enabled := true;
  rjuros.SetFocus;
end;

procedure Tfrmcontasreceber_pgto.FormShow(Sender: TObject);
begin
  juros_valor := rjuros.value;
  juros_desconto := 0;
  edata.DateTime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
  rdesconto1.SetFocus;
end;

end.

