unit contasreceber_recibo2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxRich, AdvGlowButton, AdvShapeButton, frxDBSet,
  RxMemDS;

type
  Tfrmcontasreceber_recibo2 = class(TForm)
    PopupMenu1: TPopupMenu;
    TPBobina: TMenuItem;
    TPa4tinta: TMenuItem;
    PopupMenu2: TPopupMenu;
    Fechar1: TMenuItem;
    fxrecibo: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxRichObject1: TfrxRichObject;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Label1: TLabel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Panel1: TPanel;
    bgravar: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    combo_modelo: TComboBox;
    evias: TSpinEdit;
    fscontasreceber: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPNota_FiscalClick(Sender: TObject);
    procedure TPRazaoClick(Sender: TObject);
    procedure TPImpressoClick(Sender: TObject);
    procedure TPContratoClick(Sender: TObject);
    procedure TPPersonalizadoClick(Sender: TObject);
    procedure TPa4tintaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_recibo2: Tfrmcontasreceber_recibo2;
  porta_impressora : string;

implementation

uses modulo, principal, contasreceber, temp, extenso1, contasreceber_pgto,
  ecf;

{$R *.dfm}

procedure Tfrmcontasreceber_recibo2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcontasreceber_recibo2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontasreceber_recibo2.bgravarClick(Sender: TObject);
begin
  case combo_modelo.ItemIndex of
    0 : TPa4tintaclick(FRMCONTASRECEBER_recibo2);
  END;
  close;
end;

procedure Tfrmcontasreceber_recibo2.FormShow(Sender: TObject);
begin

  frmmodulo.qrconfig.open;
  combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('extrato_TIPONOTA').asinteger;
  evias.Value := 1;
  porta_impressora := frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').asstring;
end;

procedure Tfrmcontasreceber_recibo2.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then evias.SetFocus;
end;

procedure Tfrmcontasreceber_recibo2.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcontasreceber_recibo2.TPNota_FiscalClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmcontasreceber_recibo2.TPRazaoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmcontasreceber_recibo2.TPImpressoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmcontasreceber_recibo2.TPContratoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmcontasreceber_recibo2.TPPersonalizadoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmcontasreceber_recibo2.TPa4tintaClick(Sender: TObject);
VAR I : INTEGER;
DATA, CUPOM, DOCUMENTO, VALOR : STRING;
begin

   ecf_relatorio_gerencial(ecf_modelo,'<e>   RECIBO DE PAGAMENTO</e>');
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'Cliente: <b>'+copy(frmmodulo.qrcliente.fieldbyname('nome').asstring,1,38)+'</b>');
   ecf_relatorio_gerencial(ecf_modelo,'CPF: <b>'+frmmodulo.qrcliente.fieldbyname('cpf').asstring+'</b>');
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'Recebemos do cliente acima informado, a importância'+
                                      'de <b>('+extenso1.extenso(frmcontasreceber_pgto.rtotal.value)+')</b>'+
                                      'referente ao recebimento da(s) prestção(ões) abaixo relacionada(s):');
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'Vencimento  Cupom      Documento      Valor - R$');
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');


  frmcontasreceber.qrcr.Open;
  frmcontasreceber.qrcr.First;
  while not frmcontasreceber.qrcr.Eof do begin
    if frmcontasreceber.qrcr.FIELDBYNAME('FILTRO').AsInteger = 1 then
    begin
      DATA      := frmcontasreceber.qrcr.fieldbyname('DATA_VENCIMENTO').ASSTRING;
      DOCUMENTO := FRMPRINCIPAL.texto_justifica(frmcontasreceber.qrcr.fieldbyname('DOCUMENTO').ASSTRING,10,' ','D');
      VALOR     := FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',frmcontasreceber.qrcr.fieldbyname('VALOR_ATUAL').ASfloat),12,' ','E');
      CUPOM     := FRMPRINCIPAL.texto_justifica(frmcontasreceber.qrcr.fieldbyname('NUMERO_CUPOM').ASSTRING,6,'0','E');

      ecf_relatorio_gerencial(ecf_modelo,data+'  '+cupom+'    '+documento+'    '+valor);

    end;
    frmcontasreceber.qrcr.next;
  end;


   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'                                TOTAL:'+  FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',frmcontasreceber_pgto.rliquido.value  ),10,' ','E'));
   ecf_relatorio_gerencial(ecf_modelo,'                             DESCONTO:'+  FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',frmcontasreceber_pgto.rdesconto2.value),10,' ','E'));
   ecf_relatorio_gerencial(ecf_modelo,'                            ACRESCIMO:'+  FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',frmcontasreceber_pgto.rjuros.value    ),10,' ','E'));
   ecf_relatorio_gerencial(ecf_modelo,'                            PAGAMENTO:'+  FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',frmcontasreceber_pgto.rsoma.value     ),10,' ','E'));
   ecf_relatorio_gerencial(ecf_modelo,'                             RESTANTE:'+  FRMPRINCIPAL.texto_justifica(FORMATFLOAT('###,###,##0.00',frmcontasreceber_pgto.rdiferenca.value),10,' ','E'));
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'Para maior clareza firmamos o presente.         ');
   ecf_relatorio_gerencial(ecf_modelo,'');
   ecf_relatorio_gerencial(ecf_modelo, emitente_cidade+FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',date)+'.');
   ecf_relatorio_gerencial(ecf_modelo,'');
   ecf_relatorio_gerencial(ecf_modelo,'');
   ecf_relatorio_gerencial(ecf_modelo,'');
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'          Assinatura do Funcionário');
   ecf_fecha_relatorio_gerencial(ecf_modelo);



end;

end.




