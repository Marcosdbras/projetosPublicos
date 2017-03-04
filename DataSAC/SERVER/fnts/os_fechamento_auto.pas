unit os_fechamento_auto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, StdCtrls, Mask, rxtooledit, rxcurredit,
  TFlatPanelUnit, Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, AdvGlowButton, AdvShapeButton;

type
  Tfrmos_fechamento_auto = class(TForm)
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    qrcontasreceber: TZQuery;
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
    Shape15: TShape;
    Shape16: TShape;
    Label13: TLabel;
    Shape17: TShape;
    Shape18: TShape;
    Label14: TLabel;
    Label15: TLabel;
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
    rdinheiro: TRxCalcEdit;
    rchequeav: TRxCalcEdit;
    rchequeap: TRxCalcEdit;
    rcartaocred: TRxCalcEdit;
    rcartaodeb: TRxCalcEdit;
    rcrediario: TRxCalcEdit;
    rsoma: TRxCalcEdit;
    rdiferenca: TRxCalcEdit;
    FlatPanel2: TFlatPanel;
    Panel4: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmos_fechamento_auto: Tfrmos_fechamento_auto;

implementation

uses os_auto, modulo, principal, os_contasreceber_auto, troco, OS_impressao,
  os_impressao_auto;

{$R *.dfm}

procedure Tfrmos_fechamento_auto.rdesconto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmos_fechamento_auto.racrescimo2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then rdinheiro.SetFocus;
end;

procedure Tfrmos_fechamento_auto.rdesconto1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmos_fechamento_auto.rdesconto1Exit(Sender: TObject);
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

procedure Tfrmos_fechamento_auto.rdesconto2Exit(Sender: TObject);
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

procedure Tfrmos_fechamento_auto.racrescimo1Exit(Sender: TObject);
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

procedure Tfrmos_fechamento_auto.racrescimo2Exit(Sender: TObject);
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

procedure Tfrmos_fechamento_auto.rdinheiroExit(Sender: TObject);
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

procedure Tfrmos_fechamento_auto.bgravarClick(Sender: TObject);
var texto : pansichar;
begin

  try


    FRMMODULO.QRCONFIG.OPEN;
    IF FRMMODULO.QRCONFIG.FieldByName('VENDA_LIMITE_CLIENTE').ASINTEGER = 1 THEN
    BEGIN
      IF rcrediario.Value >limite_disponivel  THEN
      BEGIN
        texto := pansichar('Este cliente possue um limite disponível de:'+#13+' ---> R$ '+FLATPANEL2.Caption+'  <--- '+#13+'É necessário autorização para prosseguir! '+#13+'Deseja continuar?');
        if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
        begin
          if not frmPrincipal.autentica('Liberar O.S.',4) then
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
    END;





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
      application.MessageBox('Os valores informados nas formas de pagamento não confere com o valor total desta O.S.! Favor verificar!','Atenção',mb_ok+MB_ICONWARNING);
      rdinheiro.setfocus;
      exit;
    END;
  end;

  CONTINUAR := TRUE;


  frmmodulo.qrconfig.open;
  if frmmodulo.qrconfig.fieldbyname('VENDA_CADASTRO_CHEQUE').asinteger = 1 then
  begin
      // cadastrar cheques

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
    frmOS_contasreceber_auto := tfrmOS_contasreceber_auto.create(self);
    frmOS_contasreceber_auto.showmodal;
  end;



  IF NOT CONTINUAR THEN EXIT;

{  18 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'O.S. DINHEIRO';
  19 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'O.S. CREDIÁRIO';
  20 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'O.S. CHEQUE À VISTA';
  21 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'O.S. CHEQUE À PRAZO';
  22 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'O.S. CARTÃO CRÉDITO';
  23 :qrcaixa_mov.fieldbyname('descricao_movimento').asstring := 'O.S. CARTÃO DÉBITO';
}



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
    frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_OS_AV').asstring;;
    frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 18; // os em dinheiro
    frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'O.S. No. '+FRMMODULO.QROS.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QROS.FIELDBYNAME('CLIENTE').ASSTRING;
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
    frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_OS_AV').asstring;
    frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 20; // os em cheque a vista
    frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'O.S. No. '+FRMMODULO.QROS.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QROS.FIELDBYNAME('CLIENTE').ASSTRING;
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
    frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_OS_AP').asstring;
    frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 21; // os em cheque a prazo
    frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'O.S. No. '+FRMMODULO.QROS.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QROS.FIELDBYNAME('CLIENTE').ASSTRING;
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
    frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_OS_AP').asstring;
    frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 22; // os em cartao de credito
    frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'O.S. No. '+FRMMODULO.QROS.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QROS.FIELDBYNAME('CLIENTE').ASSTRING;
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
    frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_OS_AP').asstring;
    frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 23; // os em cartao de credito
    frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'O.S. No. '+FRMMODULO.QROS.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QROS.FIELDBYNAME('CLIENTE').ASSTRING;
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
    frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_OS_AP').asstring;
    frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 19; // os em CREDIARIO
    frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring := 'O.S. No. '+FRMMODULO.QROS.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QROS.FIELDBYNAME('CLIENTE').ASSTRING;
    frmmodulo.qrcaixa_mov.post;



    // lancamento do contas a receber

    frmmodulo.qrcontasreceber.open;
    if rdinheiro.value <> 0 then
    begin
      frmmodulo.qrcontasreceber.insert;
      frmmodulo.qrcontasreceber.fieldbyname('codigo').asstring          := FRMMODULO.QROS.FIELDBYNAME('CODIGO').ASSTRING+'s00';
      frmmodulo.qrcontasreceber.fieldbyname('codvenda').asstring        := FRMMODULO.QROS.FIELDBYNAME('CODIGO').ASSTRING+'s';;
      frmmodulo.qrcontasreceber.fieldbyname('codcliente').asstring      := FRMMODULO.QROS.FIELDBYNAME('CODCLIENTE').ASSTRING;
      frmmodulo.qrcontasreceber.fieldbyname('codvendedor').asstring     := FRMMODULO.QROS.FIELDBYNAME('CODATENDENTE').ASSTRING;
      frmmodulo.qrcontasreceber.fieldbyname('codcaixa').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      frmmodulo.qrcontasreceber.fieldbyname('data_emissao').asstring    := FRMMODULO.QROS.FIELDBYNAME('DATA').ASSTRING;
      frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring := FRMMODULO.QROS.FIELDBYNAME('DATA').ASSTRING;
      frmmodulo.qrcontasreceber.fieldbyname('valor_original').asfloat   := RDINHEIRO.VALUE;
      frmmodulo.qrcontasreceber.fieldbyname('valor_pago').asfloat       := RDINHEIRO.VALUE;
      frmmodulo.qrcontasreceber.fieldbyname('valor_atual').asfloat      := 0;
      frmmodulo.qrcontasreceber.fieldbyname('documento').asstring       := 'ENTRADA';
      frmmodulo.qrcontasreceber.fieldbyname('tipo').asstring            := frmOS_auto.qrOS_contasreceber.fieldbyname('tipo').asstring;
      frmmodulo.qrcontasreceber.FieldByName('situacao').asinteger       := 2;
      frmmodulo.qrcontasreceber.FieldByName('filtro').asinteger         := 0;

      frmmodulo.qrcontasreceber.post;
    end;



    frmos_auto.qros_contasreceber.First;
    while not frmos_auto.qros_contasreceber.eof do
    begin
      frmmodulo.qrcontasreceber.insert;
      frmmodulo.qrcontasreceber.fieldbyname('codigo').asstring          := FRMMODULO.QROS.FIELDBYNAME('CODIGO').ASSTRING+'s'+frmprincipal.zerarcodigo(frmos_auto.qrOS_contasreceber.fieldbyname('prestacao').asstring,2);
      frmmodulo.qrcontasreceber.fieldbyname('codvenda').asstring        := FRMMODULO.QROS.FIELDBYNAME('CODIGO').ASSTRING+'s';
      frmmodulo.qrcontasreceber.fieldbyname('codcliente').asstring      := FRMMODULO.QROS.FIELDBYNAME('CODCLIENTE').ASSTRING;
      frmmodulo.qrcontasreceber.fieldbyname('codvendedor').asstring     := FRMMODULO.QROS.FIELDBYNAME('CODATENDENTE').ASSTRING;
      frmmodulo.qrcontasreceber.fieldbyname('codcaixa').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
      frmmodulo.qrcontasreceber.fieldbyname('data_emissao').asstring    := FRMMODULO.QROS.FIELDBYNAME('DATA').ASSTRING;
      frmmodulo.qrcontasreceber.fieldbyname('data_vencimento').asstring := frmos_auto.qrOS_contasreceber.fieldbyname('vencimento').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('valor_original').asfloat   := frmos_auto.qrOS_contasreceber.fieldbyname('valor').asfloat;
      frmmodulo.qrcontasreceber.fieldbyname('valor_atual').asfloat      := frmos_auto.qrOS_contasreceber.fieldbyname('valor').asfloat;
      frmmodulo.qrcontasreceber.fieldbyname('documento').asstring       := frmos_auto.qrOS_contasreceber.fieldbyname('documento').asstring;
      frmmodulo.qrcontasreceber.fieldbyname('tipo').asstring            := frmos_auto.qrOS_contasreceber.fieldbyname('tipo').asstring;
      frmmodulo.qrcontasreceber.FieldByName('situacao').asinteger       := 1;
      frmmodulo.qrcontasreceber.FieldByName('filtro').asinteger         := 0;
      frmmodulo.qrcontasreceber.post;
      frmos_auto.qrOS_contasreceber.next;
    end;


    //

  end;





    frmmodulo.QROS.fieldbyname('TOTAL').asfloat := rtotal.value;
    frmmodulo.QROS.fieldbyname('SUBTOTAL').asfloat := rsubtotal.value;
    FRMMODULO.QROS.FIELDBYNAME('meio_dinheiro').asfloat := rdinheiro.Value;
    FRMMODULO.QROS.FIELDBYNAME('meio_chequeav').asfloat := rchequeav.Value;
    FRMMODULO.QROS.FIELDBYNAME('meio_chequeap').asfloat := rchequeap.Value;
    FRMMODULO.QROS.FIELDBYNAME('meio_cartaocred').asfloat := rcartaocred.Value;
    FRMMODULO.QROS.FIELDBYNAME('meio_cartaodeb').asfloat := rcartaodeb.Value;
    FRMMODULO.QROS.FIELDBYNAME('meio_crediario').asfloat := rcrediario.Value;
    FRMMODULO.QROS.FIELDBYNAME('desconto').asfloat := rdesconto2.Value;
    FRMMODULO.QROS.FIELDBYNAME('acrescimo').asfloat := racrescimo2.Value;




    FRMMODULO.QROS.FIELDBYNAME('CODCAIXA').ASSTRING := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    FRMMODULO.QROS.FIELDBYNAME('SITUACAO').ASSTRING := 'FECHADA';
    FRMMODULO.QROS.FIELDBYNAME('ST').ASSTRING := '4';
    
    if cupom_fiscal then
    begin
      frmmodulo.qros.fieldbyname('cupomfiscal').asinteger := 1;
      frmmodulo.qros.fieldbyname('NUMERO_cupom_fiscal').asstring := nxcupom;
    end;

//  frmmodulo.qrOS.post;

    FRMMODULO.QRCLIENTE.Locate('CODIGO',FRMMODULO.QROS.FIELDBYNAME('CODCLIENTE').ASSTRING,[loCaseInsensitive]);

    frmos_impressao_auto := tfrmos_impressao_auto.create(self);
    frmos_impressao_auto.showmodal;


    frmmodulo.Conexao.Commit;
    finalizado := true;
    close;
    frmos_auto.Close;

  except
    application.MessageBox('Esta O.S. não poder ser concluída por ter gerado erros! Todos os lançamentos feitos nela serão cancelados!','Erro',mb_ok+MB_ICONERROR);
    FRMMODULO.qros.Cancel;
    frmmodulo.Conexao.Rollback;
    close;
    finalizado := true;
    frmos_auto.close;
  end;


end;

procedure Tfrmos_fechamento_auto.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmos_fechamento_auto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmos_fechamento_auto.FormShow(Sender: TObject);
VAR LIMITE : REAL;
begin
        qrcontasreceber.close;
        qrcontasreceber.sql.clear;
        qrcontasreceber.sql.add('select SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+frmmodulo.qros.fieldbyname('codcliente').asstring+''' and situacao = 1');
        qrcontasreceber.Open;

        limite_disponivel :=  (FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - QRCONTASRECEBER.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT);
        
        LIMITE := (FRMMODULO.qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - QRCONTASRECEBER.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT);
        IF LIMITE > 0 THEN FLATPANEL2.Font.COLOR := CLBLACK ELSE FLATPANEL2.Font.COLOR := CLRED;
        FLATPANEL2.CAPTION := 'R$ '+formatfloat('###,###,##0.00',LIMITE);




  rsubtotal.value := frmmodulo.qros.fieldbyname('subtotal').asfloat;
  rtotal.value := frmmodulo.qros.fieldbyname('total').asfloat;
  rdesconto1.SetFocus;
end;

procedure Tfrmos_fechamento_auto.rdinheiroEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  edinheiro.Brush.Color := $00A0FAF8;
end;

procedure Tfrmos_fechamento_auto.rchequeavEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  echequeav.Brush.Color := $00A0FAF8;
end;

procedure Tfrmos_fechamento_auto.rchequeapEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  echequeap.Brush.Color := $00A0FAF8;
end;

procedure Tfrmos_fechamento_auto.rcartaocredEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  ecartaocred.Brush.Color := $00A0FAF8;
end;

procedure Tfrmos_fechamento_auto.rcartaodebEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  ecartaodeb.Brush.Color := $00A0FAF8;
end;

procedure Tfrmos_fechamento_auto.rcrediarioEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  ecrediario.Brush.Color := $00A0FAF8;
end;

procedure Tfrmos_fechamento_auto.rcrediarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmos_fechamento_auto.Cancelar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmos_fechamento_auto.rchequeavExit(Sender: TObject);
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

procedure Tfrmos_fechamento_auto.rchequeapExit(Sender: TObject);
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

procedure Tfrmos_fechamento_auto.rcartaocredExit(Sender: TObject);
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

procedure Tfrmos_fechamento_auto.rcartaodebExit(Sender: TObject);
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

procedure Tfrmos_fechamento_auto.rcrediarioExit(Sender: TObject);
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

end.
