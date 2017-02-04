unit contasreceber_recibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxRich, frxDBSet, RxMemDS, AdvShapeButton,
  AdvGlowButton;

type
  Tfrmcontasreceber_recibo = class(TForm)
    PopupMenu1: TPopupMenu;
    TPa4tinta: TMenuItem;
    PopupMenu2: TPopupMenu;
    Fechar1: TMenuItem;
    fxrecibo: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxRichObject1: TfrxRichObject;
    fscontasreceber: TfrxDBDataset;
    Panel1: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    combo_modelo: TComboBox;
    Label2: TLabel;
    Bevel2: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Label1: TLabel;
    Bevel1: TBevel;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    Bevel3: TBevel;
    Label3: TLabel;
    evias: TSpinEdit;
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
    procedure TPBobinaClick(Sender: TObject);
    procedure TPa5tintaClick(Sender: TObject);
  

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_recibo: Tfrmcontasreceber_recibo;
  porta_impressora : string;

implementation

uses modulo, principal, contasreceber, temp, extenso1, contasreceber_pgto,
  ecf;

{$R *.dfm}

procedure Tfrmcontasreceber_recibo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcontasreceber_recibo.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontasreceber_recibo.bgravarClick(Sender: TObject);
begin
  case combo_modelo.ItemIndex of
    0 : TPa4tintaclick(FRMCONTASRECEBER_recibo);
    1 : TPBobinaClick(frmcontasreceber_recibo);
    2 : TPa5tintaclick(FRMCONTASRECEBER_recibo);
  END;
  close;
end;

procedure Tfrmcontasreceber_recibo.FormShow(Sender: TObject);
begin



  if ecf_modelo = '' then
  begin
   combo_modelo.Items.clear;
   combo_modelo.Items.add('01 - Recibo - ECF');
   combo_modelo.items.add('02 - Bobina');
   combo_modelo.items.add('03 - 02 - Papel A4 - Laser / Tinta');
  end
  else
  begin
   combo_modelo.Items.clear;
   combo_modelo.Items.add('Recibo - ECF');
  end;
  frmmodulo.qrconfig.open;
  combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('recibo_TIPONOTA').asinteger;
  porta_impressora := frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').asstring;
  

end;

procedure Tfrmcontasreceber_recibo.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.SetFocus;
end;

procedure Tfrmcontasreceber_recibo.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcontasreceber_recibo.TPNota_FiscalClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmcontasreceber_recibo.TPRazaoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmcontasreceber_recibo.TPImpressoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmcontasreceber_recibo.TPContratoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmcontasreceber_recibo.TPPersonalizadoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmcontasreceber_recibo.TPa4tintaClick(Sender: TObject);
VAR
  I : INTEGER;
  DATA, CUPOM, DOCUMENTO, VALOR : STRING;
begin

   ecf_recebimento_nao_fiscal(ecf_modelo,'03',frmcontasreceber_pgto.rTOTAL.value,FDINHEIRO);

   ecf_relatorio_gerencial(ecf_modelo,'   R E C I B O     D E    P A G A M E N T O');
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'Cliente: '+copy(frmmodulo.qrcliente.fieldbyname('nome').asstring,1,38));
   ecf_relatorio_gerencial(ecf_modelo,'CPF....: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring);
   ecf_relatorio_gerencial(ecf_modelo,'------------------------------------------------');
   ecf_relatorio_gerencial(ecf_modelo,'Recebemos do cliente acima informado, a importância'+
                                      'de ('+extenso1.extenso(frmcontasreceber_pgto.rtotal.value)+')'+
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

procedure Tfrmcontasreceber_recibo.TPBobinaClick(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    subir_papel, conta_formas : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario : real;
    vias : integer;

begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20

   frmmodulo.qrconfig.open;
   subir_papel := frmmodulo.qrconfig.fieldbyname('bobina_subirpapel').asinteger;


   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);
   vias := evias.Value;
   while vias <> 0 do
   begin

   writeln(arquivo,#18+#27#71+#20,frmprincipal.Texto_Justifica(emitente_fantasia,28,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco,48,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_cidade+' - CEP '+emitente_cep,48,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica('Telefone: '+emitente_telefone,48,' ','C'));
   writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'             R  E  C  I  B  O   ');
   writeln(arquivo,#15+#27#72+#20,frmprincipal.texto_justifica(emitente_cidade+FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',date)+'.',48,' ','C'));
   writeln(arquivo,#15+#27#72+#20,'------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'Recebemos de '+frmprincipal.texto_justifica(frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'a importância de R$('+#18+#27#71+#20+frmprincipal.texto_justifica(formatfloat('###,###,##0.00',frmcontasreceber_pgto.rsoma.value),15,'*','C')+#15+#27#72+#20+')');
   writeln(arquivo,#15+#27#72+#20,'('+frmprincipal.texto_justifica(extenso1.extenso(frmcontasreceber_pgto.rsoma.value),45,'*','D')+')');
   writeln(arquivo,#15+#27#72+#20,'referente ao pagamento de prestacoes.');
   writeln(arquivo,#15+#27#72+#20,'');
   writeln(arquivo,#15+#27#72+#20,'');
   writeln(arquivo,#15+#27#72+#20,'');
   writeln(arquivo,#15+#27#72+#20,'');
   writeln(arquivo,#15+#27#72+#20,'     --------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'            Assinatura do Funcionario      ');
   writeln(arquivo,#15+#27#72+#20,'');
   writeln(arquivo,#15+#27#72+#20,'');
   writeln(arquivo,#15+#27#72+#20,'');
   vias := vias - 1;
   end;


   

   while subir_papel <> 0 do
   begin
     Writeln(arquivo,#15+#27#72+#20,'');
     subir_papel := subir_papel - 1;
   end;


   closefile(arquivo);















end;
procedure Tfrmcontasreceber_recibo.TPa5tintaClick(Sender: TObject);
VAR I : INTEGER;
begin

  frmcontasreceber.qrcr_recibo.Open;
  while frmcontasreceber.qrcr_recibo.RecordCount <> 0 do frmcontasreceber.qrcr_recibo.Delete;

  frmcontasreceber.qrcr.Open;
  frmcontasreceber.qrcr.First;
  while not frmcontasreceber.qrcr.Eof do begin
    if frmcontasreceber.qrcr.FIELDBYNAME('FILTRO').AsInteger = 1 then
    begin
      frmcontasreceber.qrcr_recibo.Insert;
      //qrcr.fieldbyname('FILTRO').AsINTEGER := 0;
      frmcontasreceber.qrcr_recibo.fieldbyname('DATA_EMISSAO').AsString := frmcontasreceber.qrcr.fieldbyname('DATA_EMISSAO').AsString;
      frmcontasreceber.qrcr_recibo.fieldbyname('CODIGO').AsString := frmcontasreceber.qrcr.fieldbyname('CODIGO').ASSTRING;
      frmcontasreceber.qrcr_recibo.fieldbyname('DATA_VENCIMENTO').AsString := frmcontasreceber.qrcr.fieldbyname('DATA_VENCIMENTO').ASSTRING;
      frmcontasreceber.qrcr_recibo.fieldbyname('DOCUMENTO').AsString := frmcontasreceber.qrcr.fieldbyname('DOCUMENTO').ASSTRING;
      frmcontasreceber.qrcr_recibo.fieldbyname('VALOR_ORIGINAL').AsString := frmcontasreceber.qrcr.fieldbyname('VALOR_ORIGINAL').ASSTRING;
      frmcontasreceber.qrcr_recibo.fieldbyname('VALOR_PAGO').AsString := frmcontasreceber.qrcr.fieldbyname('VALOR_PAGO').ASSTRING;
      frmcontasreceber.qrcr_recibo.fieldbyname('VALOR_ATUAL').AsString := frmcontasreceber.qrcr.fieldbyname('VALOR_ATUAL').ASSTRING;
      frmcontasreceber.qrcr_recibo.fieldbyname('JUROS').AsString := frmcontasreceber.qrcr.fieldbyname('JUROS').ASSTRING;
      frmcontasreceber.qrcr_recibo.fieldbyname('CODCEDENTE').AsString := frmcontasreceber.qrcr.fieldbyname('CODCEDENTE').ASSTRING;
      frmcontasreceber.qrcr_recibo.fieldbyname('TIPO').AsString := frmcontasreceber.qrcr.fieldbyname('TIPO').ASSTRING;
      frmcontasreceber.qrcr_recibo.fieldbyname('VALOR_JUROS').AsString := frmcontasreceber.qrcr.fieldbyname('VALOR_JUROS').ASSTRING;
      frmcontasreceber.qrcr_recibo.fieldbyname('DATA_PAGAMENTO').AsString := frmcontasreceber.qrcr.fieldbyname('DATA_PAGAMENTO').ASSTRING;
      frmcontasreceber.qrcr_recibo.fieldbyname('CODVENDEDOR').AsString := frmcontasreceber.qrcr.fieldbyname('CODVENDEDOR').ASSTRING;
      frmcontasreceber.qrcr_recibo.fieldbyname('CODCAIXA').AsString := frmcontasreceber.qrcr.fieldbyname('CODCAIXA').ASSTRING;
      frmcontasreceber.qrcr_recibo.fieldbyname('CODCLIENTE').AsString := frmcontasreceber.qrcr.fieldbyname('CODCLIENTE').ASSTRING;
      frmcontasreceber.qrcr_recibo.fieldbyname('VALOR_DESCONTO').AsString := frmcontasreceber.qrcr.fieldbyname('VALOR_DESCONTO').ASSTRING;
      frmcontasreceber.qrcr_recibo.fieldbyname('SITUACAO').AsString := frmcontasreceber.qrcr.fieldbyname('SITUACAO').ASSTRING;
      frmcontasreceber.qrcr_recibo.fieldbyname('CODVENDA').AsString := frmcontasreceber.qrcr.fieldbyname('CODVENDA').ASSTRING;
      frmcontasreceber.qrcr_recibo.fieldbyname('NOSSONUMERO').AsString := frmcontasreceber.qrcr.fieldbyname('NOSSONUMERO').ASSTRING;
      frmcontasreceber.qrcr_recibo.fieldbyname('CODREGIAO').AsString := frmcontasreceber.qrcr.fieldbyname('CODREGIAO').ASSTRING;
      frmcontasreceber.qrcr_recibo.post;
    end;
      frmcontasreceber.qrcr.next;
  end;
  frmcontasreceber.qrcr_recibo.Refresh;
  frmcontasreceber.qrcr_recibo.First;

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;
  frmmodulo.qrrelatorio.FieldByName('valor1').asfloat := frmcontasreceber_pgto.rsoma.value;
  frmmodulo.qrrelatorio.FieldByName('valor2').asfloat := frmcontasreceber_pgto.rdesconto2.value;
  frmmodulo.qrrelatorio.FieldByName('valor3').asfloat := frmcontasreceber_pgto.rjuros.value;
  frmmodulo.qrrelatorio.FieldByName('valor4').asfloat := frmcontasreceber_pgto.rliquido.value;
  frmmodulo.qrrelatorio.FieldByName('valor5').asfloat := frmcontasreceber_pgto.rdiferenca.value;

  frmmodulo.qrrelatorio.fieldbyname('linha2').asstring := '('+extenso1.extenso(frmcontasreceber_pgto.rsoma.value)+')';
  frmmodulo.qrrelatorio.fieldbyname('linha1').asstring := frmmodulo.qrcliente.fieldbyname('nome').asstring;
  frmmodulo.qrrelatorio.fieldbyname('linha4').asstring :=  emitente_cidade+FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',date)+'.';
  I := LENGTH(PRESTACOES);
  IF I > 0 THEN
  BEGIN
    IF COPY(PRESTACOES,I,1) = ',' THEN
    DELETE (PRESTACOES,I,1);
  END;
  IF COPY(PRESTACOES,1,1) = ',' THEN DELETE(PRESTACOES,1,1);
  frmmodulo.qrrelatorio.fieldbyname('linha3').asstring := ' recebimento da(s) prestaçõe(s) nº : '+PRESTACOES;

  frmmodulo.qrrelatorio.post;

    fxrecibo.LoadFromFile('c:\DATASAC\server\rel\f000078.fr3');
    fxrecibo.ShowReport;

end;



end.




