unit prevenda_fechamento_loja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, StdCtrls, Mask, rxtooledit, rxcurredit,
  Menus, Buttons, TFlatPanelUnit, AdvGlowButton, AdvShapeButton;

type
  Tfrmprevenda_fechamento_loja = class(TForm)
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    rdesconto2: TRxCalcEdit;
    Label3: TLabel;
    racrescimo2: TRxCalcEdit;
    Label4: TLabel;
    rdesconto1: TRxCalcEdit;
    racrescimo1: TRxCalcEdit;
    Panel1: TPanel;
    rsubtotal: TRxCalcEdit;
    Panel2: TPanel;
    rtotal: TRxCalcEdit;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    Bevel1: TBevel;
    Bevel3: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Panel4: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    Button1: TButton;
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
    Shape15: TShape;
    Shape16: TShape;
    Label13: TLabel;
    Shape17: TShape;
    Shape18: TShape;
    Label14: TLabel;
    rdinheiro: TRxCalcEdit;
    rchequeav: TRxCalcEdit;
    rchequeap: TRxCalcEdit;
    rcartaocred: TRxCalcEdit;
    rcartaodeb: TRxCalcEdit;
    rcrediario: TRxCalcEdit;
    rsoma: TRxCalcEdit;
    rdiferenca: TRxCalcEdit;
    Gravar1: TMenuItem;
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
    procedure rcrediarioKeyPress(Sender: TObject; var Key: Char);
    procedure Cancelar1Click(Sender: TObject);
    procedure rchequeavExit(Sender: TObject);
    procedure rchequeapExit(Sender: TObject);
    procedure rcartaocredExit(Sender: TObject);
    procedure rcartaodebExit(Sender: TObject);
    procedure rcrediarioExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprevenda_fechamento_loja: Tfrmprevenda_fechamento_loja;
  
  ALIQUOTA, formasp : STRING;

implementation

uses modulo, principal, prevenda_contasreceber, troco,
  venda_obs, cheque, ecf, prevenda, prevenda_impressao_loja, extenso1,
  cheque_avulso;

{$R *.dfm}

procedure Tfrmprevenda_fechamento_loja.rdesconto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmprevenda_fechamento_loja.racrescimo2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then rdinheiro.SetFocus;
end;

procedure Tfrmprevenda_fechamento_loja.rdesconto1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento_loja.rdesconto1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if rdesconto1.value <> 0 then
  begin
    rdesconto2.Value := rsubtotal.value * (rdesconto1.Value / 100);
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.Value;
end;

procedure Tfrmprevenda_fechamento_loja.rdesconto2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if rsubtotal.value <> 0 then
  begin
    rdesconto1.Value := (rdesconto2.Value * 100)/rsubtotal.value;
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmprevenda_fechamento_loja.racrescimo1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if racrescimo1.value <> 0 then
  begin
    racrescimo2.Value := rsubtotal.value * (racrescimo1.Value / 100);
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.Value;
end;

procedure Tfrmprevenda_fechamento_loja.racrescimo2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if rsubtotal.value <> 0 then
  begin
    racrescimo1.Value := (racrescimo2.Value * 100)/rsubtotal.value;
  end;
  rtotal.value    := rsubtotal.value - rdesconto2.value + racrescimo2.value;
end;

procedure Tfrmprevenda_fechamento_loja.rdinheiroExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  edinheiro.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rcrediario.Value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmprevenda_fechamento_loja.bgravarClick(Sender: TObject);
var texto : pansichar;
desconto_acrescimo : real;
tp_desconto_acrescimo : string;
v_dinheiro:real;
item : integer;
ALIQUOTA, formasp : STRING;
COM3, COM5 : REAL;
y : integer;
begin

  try
   if rcrediario.Value > 0 then
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
      APPLICATION.ProcessMessages;
    END
    ELSE
    BEGIN
      application.MessageBox('Os valores informados nas formas de pagamento não confere com o valor total desta venda! Favor verificar!','Atenção',mb_ok+MB_ICONWARNING);
      rdinheiro.setfocus;
      exit;
    END;
  end;

  CONTINUAR := TRUE;


  numero_vendax := frmprincipal.codifica('000048');

  if (rchequeav.Value <> 0) or (rchequeap.Value <> 0 ) then
  begin
  frmmodulo.qrconfig.open;
  if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
  begin
      CHEQUE_CODCLIENTE := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
      CHEQUE_VENDA := numero_vendax;
      FRMCHEQUE_avulso := TFRMCHEQUE_avulso.CREATE(SELF);
      FRMCHEQUE_avulso.SHOWMODAL;
  end;
  end;
  IF NOT CONTINUAR THEN EXIT;







  frmmodulo.qrconfig.open;
  if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
  begin
      // cadastrar cheques
  end;


  IF NOT CONTINUAR THEN EXIT;

  if rcrediario.Value <> 0 then
  begin
    frmprevenda_contasreceber := tfrmprevenda_contasreceber.create(self);
    if frmprevenda.qrorcamento.fieldbyname('obs').asstring <> '' then
    frmprevenda_contasreceber.combocondpgto.Text := frmprevenda.qrorcamento.fieldbyname('obs').asstring;
    frmprevenda_contasreceber.showmodal;
  end;



  IF NOT CONTINUAR THEN EXIT;

       COM3 := 0;
       COM5 := 0;

    FRMPREVENDA.qrorcamento_produto.First;
    WHILE NOT FRMPREVENDA.qrorcamento_produto.EOF DO
    BEGIN
        IF FRMPREVENDA.QRORCAMENTO_PRODUTO.FieldByName('COMISSAO').ASFLOAT < 5 THEN
           COM3 := frmprevenda.qrorcamento_produto.fieldbyname('total').asfloat + COM3
        ELSE
           COM5 := frmprevenda.qrorcamento_produto.fieldbyname('total').asfloat + COM5;
      FRMPREVENDA.qrorcamento_PRODUTO.NEXT;
    END;

      if rsubtotal.value > 0 then
      begin
        com3 := (com3*100)/rsubtotal.value;
        com5 := (com5*100)/rsubtotal.value;
      end;



    // lancamento da venda

    frmmodulo.qrvenda.open;
    frmmodulo.qrvenda.insert;
    frmmodulo.qrvenda.fieldbyname('codigo').asstring := numero_vendax;
    frmmodulo.qrvenda.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
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
    FRMMODULO.QRVENDA.FIELDBYNAME('desconto').asfloat := rdesconto2.Value;
    FRMMODULO.QRVENDA.FIELDBYNAME('acrescimo').asfloat := racrescimo2.Value;
    frmmodulo.qrvenda.fieldbyname('OBS').asstring := '';
    FRMMODULO.QRVENDA.FIELDBYNAME('NUMERO_CUPOM_FISCAL').ASSTRING := numero_cupomx;
    frmmodulo.qrvenda.fieldbyname('cupom_fiscal').asinteger := 1;
    frmmodulo.qrvenda.fieldbyname('p5').asfloat := com5;
    frmmodulo.qrvenda.fieldbyname('p3').asfloat := com3;
    frmmodulo.qrvenda.post;

 
  ////  LANCAMENTOS ESPECIFICOS DE CADA FORMA DE PAGAMENTO
  frmmodulo.qrcaixa_mov.OPEN;



  if rdinheiro.Value <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
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
    frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
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
    frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
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
    frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
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
    frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat := 0;
    frmmodulo.qrcaixa_mov.fieldbyname('entrada').asfloat := 0;
    frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat := rcartaoDEB.value;
    frmmodulo.qrconfig.open;
    frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_VENDA_AP').asstring;
    frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 8; // venda em cartao de credito
    frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'Venda No. '+numero_vendax+' - '+frmmodulo.qrcliente.fieldbyname('nome').asstring;
    frmmodulo.qrcaixa_mov.post;
  end;
  if rcrediario.Value <> 0 then
  begin
    frmmodulo.qrcaixa_mov.insert;
    frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring := frmprincipal.codifica('000044');
    frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmmodulo.qrcaixa_mov.fieldbyname('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
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
      frmmodulo.qrcontasreceber.fieldbyname('codcliente').asstring      := frmmodulo.qrvenda.fieldbyname('codcliente').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('codregiao').asstring       := frmmodulo.qrcliente.fieldbyname('codregiao').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('codvendedor').asstring     := frmprevenda.qrorcamento.fieldbyname('codvendedor').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('codcaixa').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      frmmodulo.qrcontasreceber.fieldbyname('data_emissao').asstring    := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
      frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
      frmmodulo.qrcontasreceber.fieldbyname('valor_original').asfloat   := RDINHEIRO.VALUE;
      frmmodulo.qrcontasreceber.fieldbyname('valor_pago').asfloat       := RDINHEIRO.VALUE;
      frmmodulo.qrcontasreceber.fieldbyname('valor_atual').asfloat      := 0;
      frmmodulo.qrcontasreceber.fieldbyname('documento').asstring       := 'ENTRADA';
      frmmodulo.qrcontasreceber.fieldbyname('tipo').asstring            := frmPREvenda.qrvenda_contasreceber.fieldbyname('tipo').asstring;
      frmmodulo.qrcontasreceber.FieldByName('situacao').asinteger       := 2;
      frmmodulo.qrcontasreceber.FieldByName('filtro').asinteger         := 0;
      frmmodulo.qrcontasreceber.post;
    end;

    frmPREvenda.qrvenda_contasreceber.First;
    y := 1;
    while not frmPREvenda.qrvenda_contasreceber.eof do
    begin
      frmmodulo.qrcontasreceber.insert;
      frmmodulo.qrcontasreceber.fieldbyname('codigo').asstring          := numero_vendax+'/'+frmprincipal.zerarcodigo(inttostr(y),2);
      frmmodulo.qrcontasreceber.fieldbyname('codvenda').asstring        := numero_vendax;
      frmmodulo.qrcontasreceber.fieldbyname('codcliente').asstring      := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('codregiao').asstring       := frmmodulo.qrcliente.fieldbyname('codregiao').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('codvendedor').asstring     := frmprevenda.qrorcamento.fieldbyname('codvendedor').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('codcaixa').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      frmmodulo.qrcontasreceber.fieldbyname('data_emissao').asstring    := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
      frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring := frmPREvenda.qrvenda_contasreceber.fieldbyname('vencimento').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('valor_original').asfloat   := frmPREvenda.qrvenda_contasreceber.fieldbyname('valor').asfloat;
      frmmodulo.qrcontasreceber.fieldbyname('valor_atual').asfloat      := frmPREvenda.qrvenda_contasreceber.fieldbyname('valor').asfloat;
      frmmodulo.qrcontasreceber.fieldbyname('documento').asstring       := frmPREvenda.qrvenda_contasreceber.fieldbyname('documento').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('tipo').asstring            := frmPREvenda.qrvenda_contasreceber.fieldbyname('tipo').asstring;
      frmmodulo.qrcontasreceber.FieldByName('situacao').asinteger       := 1;
      frmmodulo.qrcontasreceber.FieldByName('filtro').asinteger         := 0;
      frmmodulo.qrcontasreceber.FieldByName('p3').asfloat         := com3;
      frmmodulo.qrcontasreceber.FieldByName('p5').asfloat         := com5;
      frmmodulo.qrcontasreceber.post;
      frmPREvenda.qrvenda_contasreceber.next;
      y := y + 1;
    end;
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
        frmmodulo.qrproduto_mov.FieldByName('data').asstring := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;


        if frmprevenda.qrorcamento_produto.fieldbyname('codgrade').asstring <> '' then
        begin

          frmprevenda.qrproduto_grade.close;
          frmprevenda.qrproduto_grade.sql.clear;
          frmprevenda.qrproduto_grade.sql.add('select * from c000021 where codigo = '''+frmprevenda.qrorcamento_produto.fieldbyname('codgrade').asstring+'''');
          frmprevenda.qrproduto_grade.open;

          if frmprevenda.qrproduto_grade.RecordCount > 0 then
          begin
            frmprevenda.qrproduto_grade.edit;
            frmprevenda.qrproduto_grade.fieldbyname('estoque').asfloat :=
            frmprevenda.qrproduto_grade.fieldbyname('estoque').asfloat -
            frmprevenda.qrorcamento_produto.fieldbyname('qtde').asfloat;
            frmprevenda.qrproduto_grade.post;
            frmmodulo.qrproduto_mov.fieldbyname('codgrade').Asstring    := frmprevenda.qrorcamento_produto.fieldbyname('codgrade').asstring;

          end;
        end;





      frmmodulo.qrproduto_mov.Post;

      frmPREvenda.qrORCAMENTO_produto.next;
      end;







if   frmmodulo.qrfilial.fieldbyname('ECF').asstring <> 'N' then
   begin
        frmprevenda_impressao_loja := tfrmprevenda_impressao_loja.create(self);
        if rcrediario.value > 0 then frmprevenda_impressao_loja.combo_modelo.ItemIndex := 1 else    frmprevenda_impressao_loja.combo_modelo.ItemIndex := 0;
        frmprevenda_impressao_loja.showmodal;


      frmprevenda.qrorcamento.Delete;
   end
   else
      frmprevenda.qrorcamento.Delete;


      if rcrediario.value <> 0 then
      begin
        IF APPLICATION.MESSAGEBOX('Deseja imprimir as duplicatas?','Aviso',mb_yesno+mb_iconquestion) = idyes then
           begin
             Button1Click(frmprevenda_fechamento_loja);
           end;
      end;



      frmmodulo.Conexao.Commit;







  except
    application.MessageBox('Esta venda não poder ser concluída por ter gerado erros! Todos os lançamentos feitos nela serão cancelados!','Erro',mb_ok+MB_ICONERROR);
    ecf_cancela_cupom(ecf_modelo,'V');
    frmmodulo.Conexao.Rollback;
  end;

  close;


end;

procedure Tfrmprevenda_fechamento_loja.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmprevenda_fechamento_loja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmprevenda_fechamento_loja.FormShow(Sender: TObject);
begin



  rdesconto1.SetFocus;
end;

procedure Tfrmprevenda_fechamento_loja.rdinheiroEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  edinheiro.Brush.Color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento_loja.rchequeavEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  echequeav.Brush.Color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento_loja.rchequeapEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  echequeap.Brush.Color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento_loja.rcartaocredEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  ecartaocred.Brush.Color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento_loja.rcartaodebEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  ecartaodeb.Brush.Color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento_loja.rcrediarioEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  ecrediario.Brush.Color := $00A0FAF8;
end;

procedure Tfrmprevenda_fechamento_loja.rcrediarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmprevenda_fechamento_loja.Cancelar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmprevenda_fechamento_loja.rchequeavExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  echequeav.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rcrediario.Value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmprevenda_fechamento_loja.rchequeapExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  echequeap.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rcrediario.Value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmprevenda_fechamento_loja.rcartaocredExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  ecartaocred.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rcrediario.Value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmprevenda_fechamento_loja.rcartaodebExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  ecartaodeb.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rcrediario.Value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmprevenda_fechamento_loja.rcrediarioExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  ecrediario.Brush.Color := clwindow;

  rsoma.Value := rdinheiro.value +
                 rchequeav.value +
                 rchequeap.Value +
                 rcartaocred.value +
                 rcartaodeb.Value +
                 rcrediario.Value;
  rdiferenca.Value := rtotal.Value - rsoma.Value;
end;

procedure Tfrmprevenda_fechamento_loja.Button1Click(Sender: TObject);
VAR F : TEXTFILE;
DI, ME, AN, CID, TEXTO : STRING;
ITEM : INTEGER;
begin
  ITEM := 1;

  VALOR_NOTAZ := rcrediario.Value;

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

procedure Tfrmprevenda_fechamento_loja.Gravar1Click(Sender: TObject);
begin
  bgravarClick(frmprevenda_fechamento_loja);
end;


end.
