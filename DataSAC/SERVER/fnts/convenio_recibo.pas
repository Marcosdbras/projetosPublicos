unit convenio_recibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxRich, frxDBSet, RxMemDS, AdvShapeButton,
  AdvGlowButton;

type
  Tfrmconvenio_recibo = class(TForm)
    PopupMenu1: TPopupMenu;
    TPBobina: TMenuItem;
    TPa4tinta: TMenuItem;
    PopupMenu2: TPopupMenu;
    Fechar1: TMenuItem;
    fxrecibo: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxRichObject1: TfrxRichObject;
    fscontasreceber: TfrxDBDataset;
    Panel1: TPanel;
    bgravar: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    combo_modelo: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Label1: TLabel;
    Bevel1: TBevel;
    evias: TSpinEdit;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    Bevel3: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPNota_FiscalClick(Sender: TObject);
    procedure TPBobinaClick(Sender: TObject);
    procedure TPRazaoClick(Sender: TObject);
    procedure TPImpressoClick(Sender: TObject);
    procedure TPContratoClick(Sender: TObject);
    procedure TPPersonalizadoClick(Sender: TObject);
    procedure TPa4tintaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconvenio_recibo: Tfrmconvenio_recibo;
  porta_impressora : string;

implementation

uses modulo, principal, temp, extenso1;

{$R *.dfm}

procedure Tfrmconvenio_recibo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmconvenio_recibo.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmconvenio_recibo.bgravarClick(Sender: TObject);
begin
  case combo_modelo.ItemIndex of
    0 : TPBobinaClick(frmconvenio_recibo);
    1 : TPa4tintaclick(frmconvenio_recibo);
  END;
  close;
end;

procedure Tfrmconvenio_recibo.FormShow(Sender: TObject);
begin
  frmmodulo.qrconfig.open;
  combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('recibo_TIPONOTA').asinteger;
  evias.Value := 1;
  porta_impressora := frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').asstring;
end;

procedure Tfrmconvenio_recibo.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.SetFocus;
end;

procedure Tfrmconvenio_recibo.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmconvenio_recibo.TPNota_FiscalClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmconvenio_recibo.TPBobinaClick(Sender: TObject);
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

procedure Tfrmconvenio_recibo.TPRazaoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmconvenio_recibo.TPImpressoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmconvenio_recibo.TPContratoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmconvenio_recibo.TPPersonalizadoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmconvenio_recibo.TPa4tintaClick(Sender: TObject);
VAR I : INTEGER;
begin

  frmconvenio_receber.qrcr_recibo.Open;
  while frmconvenio_receber.qrcr_recibo.RecordCount <> 0 do frmconvenio_receber.qrcr_recibo.Delete;

  frmconvenio_receber.qrcr.Open;
  frmconvenio_receber.qrcr.First;
  while not frmconvenio_receber.qrcr.Eof do begin
    if frmconvenio_receber.qrcr.FIELDBYNAME('FILTRO').AsInteger = 1 then
    begin
      frmconvenio_receber.qrcr_recibo.Insert;
      //qrcr.fieldbyname('FILTRO').AsINTEGER := 0;
      frmconvenio_receber.qrcr_recibo.fieldbyname('DATA_EMISSAO').AsString := frmconvenio_receber.qrcr.fieldbyname('DATA_EMISSAO').AsString;
      frmconvenio_receber.qrcr_recibo.fieldbyname('CODIGO').AsString := frmconvenio_receber.qrcr.fieldbyname('CODIGO').ASSTRING;
      frmconvenio_receber.qrcr_recibo.fieldbyname('DATA_VENCIMENTO').AsString := frmconvenio_receber.qrcr.fieldbyname('DATA_VENCIMENTO').ASSTRING;
      frmconvenio_receber.qrcr_recibo.fieldbyname('DOCUMENTO').AsString := frmconvenio_receber.qrcr.fieldbyname('DOCUMENTO').ASSTRING;
      frmconvenio_receber.qrcr_recibo.fieldbyname('VALOR_ORIGINAL').AsString := frmconvenio_receber.qrcr.fieldbyname('VALOR_ORIGINAL').ASSTRING;
      frmconvenio_receber.qrcr_recibo.fieldbyname('VALOR_PAGO').AsString := frmconvenio_receber.qrcr.fieldbyname('VALOR_PAGO').ASSTRING;
      frmconvenio_receber.qrcr_recibo.fieldbyname('VALOR_ATUAL').AsString := frmconvenio_receber.qrcr.fieldbyname('VALOR_ATUAL').ASSTRING;
      frmconvenio_receber.qrcr_recibo.fieldbyname('JUROS').AsString := frmconvenio_receber.qrcr.fieldbyname('JUROS').ASSTRING;
      frmconvenio_receber.qrcr_recibo.fieldbyname('CODCEDENTE').AsString := frmconvenio_receber.qrcr.fieldbyname('CODCEDENTE').ASSTRING;
      frmconvenio_receber.qrcr_recibo.fieldbyname('TIPO').AsString := frmconvenio_receber.qrcr.fieldbyname('TIPO').ASSTRING;
      frmconvenio_receber.qrcr_recibo.fieldbyname('VALOR_JUROS').AsString := frmconvenio_receber.qrcr.fieldbyname('VALOR_JUROS').ASSTRING;
      frmconvenio_receber.qrcr_recibo.fieldbyname('DATA_PAGAMENTO').AsString := frmconvenio_receber.qrcr.fieldbyname('DATA_PAGAMENTO').ASSTRING;
      frmconvenio_receber.qrcr_recibo.fieldbyname('CODVENDEDOR').AsString := frmconvenio_receber.qrcr.fieldbyname('CODVENDEDOR').ASSTRING;
      frmconvenio_receber.qrcr_recibo.fieldbyname('CODCAIXA').AsString := frmconvenio_receber.qrcr.fieldbyname('CODCAIXA').ASSTRING;
      frmconvenio_receber.qrcr_recibo.fieldbyname('CODCLIENTE').AsString := frmconvenio_receber.qrcr.fieldbyname('CODCLIENTE').ASSTRING;
      frmconvenio_receber.qrcr_recibo.fieldbyname('VALOR_DESCONTO').AsString := frmconvenio_receber.qrcr.fieldbyname('VALOR_DESCONTO').ASSTRING;
      frmconvenio_receber.qrcr_recibo.fieldbyname('SITUACAO').AsString := frmconvenio_receber.qrcr.fieldbyname('SITUACAO').ASSTRING;
      frmconvenio_receber.qrcr_recibo.fieldbyname('CODVENDA').AsString := frmconvenio_receber.qrcr.fieldbyname('CODVENDA').ASSTRING;
      frmconvenio_receber.qrcr_recibo.fieldbyname('NOSSONUMERO').AsString := frmconvenio_receber.qrcr.fieldbyname('NOSSONUMERO').ASSTRING;
      frmconvenio_receber.qrcr_recibo.fieldbyname('CODREGIAO').AsString := frmconvenio_receber.qrcr.fieldbyname('CODREGIAO').ASSTRING;
      frmconvenio_receber.qrcr_recibo.post;
    end;
      frmconvenio_receber.qrcr.next;
  end;
  frmconvenio_receber.qrcr_recibo.Refresh;
  frmconvenio_receber.qrcr_recibo.First;

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

    fxrecibo.LoadFromFile('c:\elpro\siscom\server\rel\f000078.fr3');
    fxrecibo.ShowReport;

end;

procedure Tfrmconvenio_recibo.BitBtn1Click(Sender: TObject);
begin
  if combo_modelo.Text = '02 - Papel A4 - Laser / Tinta' then
  begin
    fxrecibo.LoadFromFile('c:\elpro\siscom\server\rel\f000078.fr3');
    fxrecibo.designreport;
  end;

end;

end.




