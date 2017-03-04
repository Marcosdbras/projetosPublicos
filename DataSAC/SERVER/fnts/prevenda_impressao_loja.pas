unit prevenda_impressao_loja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxDBSet, AdvGlowButton, AdvShapeButton;

type
  Tfrmprevenda_impressao_loja = class(TForm)
    PopupMenu1: TPopupMenu;
    TPCupom_Fiscal: TMenuItem;
    TPNota_Fiscal: TMenuItem;
    qrcontasreceber: TZQuery;
    qrcontasreceberCODIGO: TStringField;
    qrcontasreceberCODVENDEDOR: TStringField;
    qrcontasreceberCODCAIXA: TStringField;
    qrcontasreceberCODCLIENTE: TStringField;
    qrcontasreceberDATA_EMISSAO: TDateTimeField;
    qrcontasreceberDATA_VENCIMENTO: TDateTimeField;
    qrcontasreceberDATA_PAGAMENTO: TDateTimeField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberDOCUMENTO: TStringField;
    qrcontasreceberTIPO: TStringField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasreceberCODVENDA: TStringField;
    qrcontasreceberNOSSONUMERO: TStringField;
    qrcontasreceberCODREGIAO: TStringField;
    qrcontasrecebercliente: TStringField;
    MainMenu1: TMainMenu;
    Fechar1: TMenuItem;
    Fechar2: TMenuItem;
    Button1: TButton;
    qrnotafiscal_item: TZQuery;
    qrnotafiscal_itemCODPRODUTO: TStringField;
    qrnotafiscal_itemproduto: TStringField;
    qrnotafiscal_itemCLASSIFICACAO_FISCAL: TStringField;
    qrnotafiscal_itemCST: TStringField;
    qrnotafiscal_itemQTDE: TFloatField;
    qrnotafiscal_itemUNITARIO: TFloatField;
    qrnotafiscal_itemTOTAL: TFloatField;
    qrnotafiscal_itemICMS: TFloatField;
    qrnotafiscal_itemIPI: TFloatField;
    qrnotafiscal_itemCFOP: TStringField;
    qrnotafiscal_itemCODNOTA: TStringField;
    qrnotafiscal_itemunidade: TStringField;
    qrnotafiscal_itemCODGRADE: TStringField;
    qrnotafiscal_itemSERIAL: TStringField;
    qrnotafiscal_itemVALOR_IPI: TFloatField;
    qrnotafiscal_itemVALOR_ICMS: TFloatField;
    qrnotafiscal_itemICMS_REDUZIDO: TFloatField;
    qrnotafiscal_itemBASE_CALCULO: TFloatField;
    qrnotafiscal_itemMARGEM_AGREGADA: TFloatField;
    qrnotafiscal_itemBASE_SUB: TFloatField;
    qrnotafiscal_itemICMS_SUB: TFloatField;
    qrnotafiscal_itemISENTO: TFloatField;
    qrnotafiscal_itemCODLANCAMENTO: TStringField;
    BAPOIO: TButton;
    NFCupom1: TMenuItem;
    NFNF1: TMenuItem;
    combo_modelo: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Label1: TLabel;
    Bevel1: TBevel;
    evias: TSpinEdit;
    bgravar: TAdvGlowButton;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPNota_FiscalClick(Sender: TObject);
    procedure TPImpressoClick(Sender: TObject);
    procedure TPPersonalizadoClick(Sender: TObject);
    procedure TPa4tintaClick(Sender: TObject);
    procedure TPCupom_FiscalClick(Sender: TObject);
    procedure Fechar2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BAPOIOClick(Sender: TObject);
    procedure NFCupom1Click(Sender: TObject);
    procedure NFNF1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprevenda_impressao_loja: Tfrmprevenda_impressao_loja;
  porta_impressora : string;
   CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, CLIENTE_ENDERECO, CLIENTE_BAIRRO, CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF, CLIENTE_CODIGO : STRING;

implementation

uses modulo, principal, ecf,
  extenso1, venda_nf, prevenda, prevenda_fechamento, prevenda_nf_loja,
  prevenda_fechamento_loja;

{$R *.dfm}

procedure Tfrmprevenda_impressao_loja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmprevenda_impressao_loja.bgravarClick(Sender: TObject);
begin
  case combo_modelo.ItemIndex of
  0 : TPCupom_FiscalClick(frmprevenda_impressao_loja);
  1 : TPNota_FiscalClick(frmprevenda_impressao_loja);
  2 : NFCupom1click(frmprevenda_impressao_loja);
  3 : NFNF1click(frmprevenda_impressao_loja);
  END;






  close;
end;

procedure Tfrmprevenda_impressao_loja.FormShow(Sender: TObject);
begin
  frmmodulo.qrconfig.open;
//  combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('VENDA_TIPONOTA').asinteger;
  evias.Value := frmmodulo.qrconfig.FieldByName('VENDA_QTDE_VIAS_NOTA').asinteger;
  porta_impressora := frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').asstring;
  COMBO_MODELO.ItemIndex := 0;
  frmprevenda.qrorcamento_produto.First;
  while NOT frmprevenda.qrorcamento_produto.Eof do
  begin

    if frmprevenda.qrorcamento_produto.FieldByName('qtde').asfloat < 0 then
    begin
      combo_modelo.ItemIndex := 2;
      break;
    end;
    frmprevenda.qrorcamento_produto.Next;
  end;



     CLIENTE_NOME := frmmodulo.qrcliente.fieldbyname('nome').asstring;
     CLIENTE_ENDERECO := frmmodulo.qrcliente.fieldbyname('endereco').asstring;
     CLIENTE_BAIRRO := frmmodulo.qrcliente.fieldbyname('bairro').asstring;
     CLIENTE_CIDADE := frmmodulo.qrcliente.fieldbyname('cidade').asstring;
     CLIENTE_UF := frmmodulo.qrcliente.fieldbyname('uf').asstring;
     CLIENTE_CEP := frmmodulo.qrcliente.fieldbyname('cep').asstring;
     CLIENTE_TELEFONE := frmmodulo.qrcliente.fieldbyname('telefone1').asstring+'/'+frmmodulo.qrcliente.fieldbyname('celular').asstring+'/'+frmmodulo.qrcliente.fieldbyname('telefone2').asstring;
     CLIENTE_CPF := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
     CLIENTE_RG := frmmodulo.qrcliente.fieldbyname('rg').asstring;
     CLIENTE_CODIGO := frmmodulo.qrcliente.fieldbyname('CODIGO').asstring;








end;

procedure Tfrmprevenda_impressao_loja.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.SetFocus;
end;

procedure Tfrmprevenda_impressao_loja.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmprevenda_impressao_loja.TPNota_FiscalClick(Sender: TObject);
var arquivo : textfile;
texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7, texto8 : string;
BASE_CALCULO, ICMS : REAL;
begin

// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// MEIA LINHA           --> #27#51
// LINHA NORMAL         --> #27#50


  frmmodulo.qrnotafiscal.close;
  frmmodulo.qrnotafiscal.sql.clear;
  frmmodulo.qrnotafiscal.sql.add('select * from c000061');
  frmmodulo.qrnotafiscal.open;

  frmmodulo.qrnotafiscal.insert;
  frmmodulo.qrnotafiscal.FieldByName('codfilial').asstring := '000001';
  frmmodulo.qrnotafiscal.FieldByName('codigo').asstring := frmprincipal.codifica('000061');
  frmmodulo.qrfilial.open;
  frmmodulo.qrfilial.Locate('codigo','000001',[loCaseInsensitive]);


  frmprevenda_nf_loja := tfrmprevenda_nf_loja.create(self);
  frmprevenda_nf_loja.enf.text := frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('notafiscal').asstring,6);
  frmprevenda_nf_loja.showmodal;
  frmmodulo.qrnotafiscal.fieldbyname('numero').asstring := numero_notaz;

  frmmodulo.qrnotafiscal.fieldbyname('cfop').asstring := '5102';
  frmmodulo.qrnotafiscal.fieldbyname('data').asstring := frmmodulo.qrvenda.fieldbyname('data').asstring;
  frmmodulo.qrnotafiscal.fieldbyname('data_saida').asstring := frmmodulo.qrvenda.fieldbyname('data').asstring;
  frmmodulo.qrnotafiscal.fieldbyname('hora').asstring := timetostr(time);
  frmmodulo.qrnotafiscal.fieldbyname('codcliente').asstring := frmmodulo.qrvenda.fieldbyname('codcliente').asstring;
  frmmodulo.qrnotafiscal.fieldbyname('valor_produtos').asfloat := frmmodulo.qrvenda.fieldbyname('subtotal').asfloat;
  frmmodulo.qrnotafiscal.fieldbyname('total_nota').asfloat := frmmodulo.qrvenda.fieldbyname('total').asfloat;
  frmmodulo.qrnotafiscal.fieldbyname('desconto').asfloat := frmmodulo.qrvenda.fieldbyname('desconto').asfloat;
  frmmodulo.qrnotafiscal.fieldbyname('situacao').asinteger := 1;
  frmmodulo.qrnotafiscal.fieldbyname('INF1').asSTRING := 'DOCUMENTO EMITIDO POR ME OU EPP';

  if frmprincipal.vfil_simples  = 'S' then frmmodulo.qrnotafiscal.fieldbyname('INF2').asSTRING := 'OPTANTE PELO SIMPLES NACIONAL';
  if frmprincipal.vfil_ssimples = 'S' then frmmodulo.qrnotafiscal.fieldbyname('INF2').asSTRING := 'OPTANTE PELO SUPER SIMPLES';

  frmmodulo.qrnotafiscal.fieldbyname('INF3').asSTRING := 'NAO GERA DIREITO A CREDITO FISCAL DE ICMS E DE ISS';
  frmmodulo.qrnotafiscal.fieldbyname('situacao_A').ASSTRING := 'A';
  frmmodulo.qrnotafiscal.fieldbyname('MODELO_NF').ASSTRING := '01';
  frmmodulo.qrnotafiscal.fieldbyname('SERIE_NF').ASSTRING := '';
  frmmodulo.qrnotafiscal.fieldbyname('SIT').ASSTRING := 'N';
  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('MOVIMENTO').ASSTRING := 'S';



    qrnotafiscal_item.close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.SQL.add('select * from c000062 where codnota = '''+frmmodulo.qrnotafiscal.fieldbyname('codigo').asstring+'''');
    qrnotafiscal_item.open;



 BASE_CALCULO := 0;
 ICMS := 0;


  frmprevenda.qrorcamento_produto.FIRST;
  WHILE NOT frmprevenda.qrorcamento_produto.Eof DO
  BEGIN
     QRNOTAFISCAL_ITEM.INSERT;
     QRNOTAFISCAL_ITEM.FIELDBYNAME('CODNOTA').ASSTRING := FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('CODIGO').ASSTRING;
     QRNOTAFISCAL_ITEM.FIELDBYNAME('CODPRODUTO').ASSTRING := frmprevenda.qrorcamento_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
     QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT := frmprevenda.qrorcamento_produto.FIELDBYNAME('QTDE').ASFLOAT;
     QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT := frmprevenda.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT/frmprevenda.qrorcamento_produto.FIELDBYNAME('QTDE').ASFLOAT;
     QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := frmprevenda.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT;
     QRNOTAFISCAL_ITEM.FIELDBYNAME('CFOP').ASSTRING := '5102';
     QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := frmprevenda.qrorcamento_produto.FIELDBYNAME('CST').ASSTRING;
     QRNOTAFISCAL_ITEM.FIELDBYNAME('ICMS').ASSTRING := frmprevenda.qrorcamento_produto.FIELDBYNAME('ALIQUOTA').ASSTRING;
     qrnotafiscal_item.fieldbyname('codlancamento').asstring := 'XXXXXX';
     IF frmprevenda.qrorcamento_produto.FIELDBYNAME('ALIQUOTA').ASFLOAT > 0 THEN
     BEGIN
       BASE_CALCULO := BASE_CALCULO + frmprevenda.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT;
       ICMS :=  ICMS + (BASE_CALCULO * (frmprevenda.qrorcamento_produto.FIELDBYNAME('ALIQUOTA').ASFLOAT/100));
     END;
     QRNOTAFISCAL_ITEM.POST;

     frmprevenda.qrorcamento_produto.NEXT;
  END;
  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('BASE_CALCULO').ASFLOAT := BASE_CALCULO;
  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('VALOR_ICMS').ASFLOAT := ICMS;
  frmmodulo.qrnotafiscal.post;


        VALOR_NOTAZ := frmmodulo.qrnotafiscal.fieldbyname('total_nota').asfloat;





   BAPOIOClick(frmprevenda_IMPRESSAO_loja);

   APPLICATION.ProcessMessages;


  assignfile(arquivo,porta_impressora);
  rewrite(arquivo);
  writeln(arquivo,#27+#51);
  WRITELN(arquivo,#15+#27#72+#20,'');
  writeln(arquivo,'');
  writeln(arquivo,'                                                                                                                             '+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('numero').asstring,6,'0','E')+#15+#27#72+#20);
  WRITELN(arquivo,'                                                                                   X');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('natureza').asstring,41,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('CFOP').asstring,6,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('NOME').asstring,90,' ','D')+' '+ frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CPF').asstring,32,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('ENDERECO').asstring,68,' ','D')+' '+ frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('BAIRRO').asstring,24,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CEP').asstring,29,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CIDADE').asstring,50,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('TELEFONE1').asstring+'  '+frmmodulo.qrCLIENTE.fieldbyname('TELEFONE2').asstring,27,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('UF').asstring,6,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('RG').asstring,38,' ','D')+' '+
                  frmprincipal.Texto_Justifica(timetostr(time),10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat <> 0 then texto1 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat);
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat <> 0 then texto2 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat);
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO1').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto1,15,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA1').asstring,17,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO2').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto2,16,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA2').asstring,10,' ','D'));
  writeln(arquivo,'');
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR3').asfloat <> 0 then texto1 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat) else texto1 := '';
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR4').asfloat <> 0 then texto2 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat) else texto2 := '';
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO3').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto1,15,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA3').asstring,17,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO4').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto2,16,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA4').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');

  frmprevenda.qrapoio.Open;
  frmprevenda.Refresh;
  frmprevenda.qrapoio.first;
  while not frmprevenda.qrapoio.Eof do
  begin
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('codproduto').asstring,9,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('Produto').asstring,59,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('CF').asstring,0,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('STR').asstring,5,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('UN').asstring,3,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('QTDE').asstring,9,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('UNITARIO').asstring,13,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('TOTAL').asstring,18,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('ICMS').asstring,4,' ','E')+' ');
    writeln(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('IPI').asstring,3,' ','E'));
    writeln(arquivo,'');
    frmprevenda.qrapoio.next;
  end;

   if (frmmodulo.qrnotafiscal.fieldbyname('BASE_CALCULO').asfloat <> 0) and (frmprincipal.vfil_ssimples = 'N') then texto1 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('BASE_CALCULO').asfloat) else texto1 := '';
   if (frmmodulo.qrnotafiscal.fieldbyname('VALOR_ICMS').asfloat <> 0)  and (frmprincipal.vfil_ssimples = 'N') then texto2 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('VALOR_ICMS').asfloat) else texto2 := '';
   if (frmmodulo.qrnotafiscal.fieldbyname('BASE_SUB').asfloat <> 0)  and (frmprincipal.vfil_ssimples = 'N') then texto3 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('BASE_SUB').asfloat) else texto3 := '';
   if (frmmodulo.qrnotafiscal.fieldbyname('ICMS_SUB').asfloat <> 0)  and (frmprincipal.vfil_ssimples = 'N') then texto4 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('ICMS_SUB').asfloat) else texto4 := '';

  if frmmodulo.qrnotafiscal.fieldbyname('VALOR_PRODUTOS').asfloat <> 0 then texto5 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('VALOR_PRODUTOS').asfloat) else texto5 := '';
  write(arquivo,frmprincipal.Texto_Justifica(texto1,24,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto2,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto3,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto4,25,' ','E')+' ');
  writeLN(arquivo,frmprincipal.Texto_Justifica(texto5,25,' ','E')+' ');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  if frmmodulo.qrnotafiscal.fieldbyname('FRETE').asfloat <> 0 then texto1 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('FRETE').asfloat) else texto1 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('SEGURO').asfloat <> 0 then texto2 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('SEGURO').asfloat) else texto2 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('OUTRAS_DESPESAS').asfloat <> 0 then texto3 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('OUTRAS_DESPESAS').asfloat) else texto3 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('VALOR_TOTAL_IPI').asfloat <> 0 then texto4 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('VALOR_TOTAL_IPI').asfloat) else texto4 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('TOTAL_NOTA').asfloat <> 0 then texto5 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('TOTAL_NOTA').asfloat) else texto5 := '';
  write(arquivo,frmprincipal.Texto_Justifica(texto1,24,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto2,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto3,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto4,25,' ','E')+' ');
  writeLN(arquivo,frmprincipal.Texto_Justifica(texto5,25,' ','E')+' ');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transportador').asstring,74,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('FRETE_CONTA').asstring,4,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('placa').asstring,18,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('placa_uf').asstring,8,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_cpf').asstring,25,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_ENDERECO').asstring,59,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('TRANSP_CIDADE').asstring,37,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('TRANSP_UF').asstring,15,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_RG').asstring,25,' ','D'));
//  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_QTDE').asstring,22,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_ESPECIE').asstring,25,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_MARCA').asstring,20,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_NUMERO').asstring,25,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('PESO_BRUTO').asstring,20,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('PESO_LIQUIDO').asstring,20,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF1').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF2').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF3').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF4').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF5').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');

  writeln(arquivo,'                                                                                                                             '+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('numero').asstring,6,'0','E')+#15+#27#72+#20);
  writeln(arquivo,#27+#50);
//  WRITELN(ARQUIVO,#12);

  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');


  frmmodulo.qrvenda.Edit;
  FRMMODULO.QRVENDA.FIELDBYNAME('NUMERO_CUPOM_FISCAL').ASSTRING := FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('NUMERO').ASSTRING;
  frmmodulo.qrvenda.post;


  CLOSEFILE(arquivo);

        frmmodulo.qrfilial.edit;
        frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger := frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger + 1;
        frmmodulo.qrfilial.post;




   IF APPLICATION.MESSAGEBOX('Deseja imprimir as duplicatas?','Aviso',mb_yesno+mb_iconquestion) = idyes then
   begin
      button1click(frmprevenda_impressao_loja);

   end;














end;

procedure Tfrmprevenda_impressao_loja.TPImpressoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmprevenda_impressao_loja.TPPersonalizadoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmprevenda_impressao_loja.TPa4tintaClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmprevenda_impressao_loja.TPCupom_FiscalClick(Sender: TObject);
var desconto_acrescimo : real;
tp_desconto_acrescimo, numero_cupom, aliquota : string;
produto:string;
begin
  TRY




     frmmodulo.qrconfig.open;
     if frmmodulo.qrconfig.FieldByName('ECF_TIPO').asstring = 'ECF-Remoto' then
     begin
       // lançamento do cupom
       frmmodulo.qrecf_comando.Open;
       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'VENDA';
       frmmodulo.qrecf_comando.FieldByName('numero').asstring := frmmodulo.qrvenda.fieldbyname('codigo').asstring;
       frmmodulo.qrecf_comando.FieldByName('desconto').asfloat := frmmodulo.qrvenda.fieldbyname('desconto').asfloat;
       frmmodulo.qrecf_comando.FieldByName('acrescimo').asfloat := frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat;
       frmmodulo.qrecf_comando.FieldByName('dinheiro').asfloat := frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat;
       frmmodulo.qrecf_comando.FieldByName('chequeav').asfloat := frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat;
       frmmodulo.qrecf_comando.FieldByName('chequeap').asfloat := frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat;
       frmmodulo.qrecf_comando.FieldByName('cartaocred').asfloat := frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat;
       frmmodulo.qrecf_comando.FieldByName('cartaodeb').asfloat := frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat;
       frmmodulo.qrecf_comando.FieldByName('promissoria').asfloat := frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat;
       
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := cliente_nome;
       frmmodulo.qrecf_comando.FieldByName('endereco').asstring := cliente_endereco;
       frmmodulo.qrecf_comando.FieldByName('cidade').asstring := cliente_cidade+'/'+CLIENTE_UF;
       frmmodulo.qrecf_comando.FieldByName('cpf').asstring := cliente_cpf;
       frmmodulo.qrecf_comando.FieldByName('convenio').asstring := '';
       frmmodulo.qrecf_comando.FieldByName('vendedor').asstring := frmmodulo.qrvenda.fieldbyname('codvendedor').asstring;
       frmmodulo.qrecf_comando.Post;
       // lancamento dos itens do cupom
       frmprevenda.qrorcamento_produto.First;
        while not frmprevenda.qrorcamento_produto.Eof do
        begin
          FRMMODULO.QRPRODUTO.Close;
          FRMMODULO.QRPRODUTO.SQL.CLEAR;
          FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+frmprevenda.qrorcamento_produto.fieldbyname('codproduto').asstring+'''');
          FRMMODULO.QRPRODUTO.OPEN;
          if frmmodulo.qrproduto.RECno =  1 THEN
          begin
            if frmprevenda.qrorcamento_produto.fieldbyname('serial').asstring <> '' then
               produto := frmmodulo.qrproduto.fieldbyname('produto').asstring+' ['+frmprevenda.qrorcamento_produto.fieldbyname('serial').asstring+']'
            else
               produto := frmmodulo.qrproduto.fieldbyname('produto').asstring;

          frmmodulo.qrecf_item.Open;
          frmmodulo.qrecf_item.Insert;
          frmmodulo.qrecf_item.FieldByName('numero').AsString := frmmodulo.qrvenda.fieldbyname('codigo').asstring;
          frmmodulo.qrecf_item.FieldByName('codproduto').AsString := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
          frmmodulo.qrecf_item.FieldByName('produto').AsString := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          frmmodulo.qrecf_item.FieldByName('unidade').AsString := frmmodulo.qrproduto.fieldbyname('unidade').asstring;
          if frmmodulo.qrproduto.fieldbyname('codaliquota').asstring = '' then
            frmmodulo.qrecf_item.FieldByName('aliquota').AsString := 'FF'
          else
            frmmodulo.qrecf_item.FieldByName('aliquota').AsString := frmmodulo.qrproduto.fieldbyname('codaliquota').asstring;
          frmmodulo.qrecf_item.FieldByName('qtde').Asfloat := frmprevenda.qrorcamento_produto.fieldbyname('qtde').asfloat;
          frmmodulo.qrecf_item.FieldByName('valor').Asfloat := frmprevenda.qrorcamento_produto.fieldbyname('unitario').asfloat;
          frmmodulo.qrecf_item.FieldByName('desconto').Asfloat := frmprevenda.qrorcamento_produto.fieldbyname('desconto').asfloat;
          frmmodulo.qrecf_item.FieldByName('acrescimo').Asfloat := frmprevenda.qrorcamento_produto.fieldbyname('acrescimo').asfloat;
          frmmodulo.qrecf_item.post;
          end;

          frmprevenda.qrorcamento_produto.Next;
       end;
       frmmodulo.Conexao.Commit;
       frmmodulo.conexao_ecfserver.Commit;
     end
     else
     begin










      frmprevenda.qrorcamento_produto.First;

      if ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;
      numero_cupomx := ecf_numero_cupom(ECF_MODELO);


      while not frmprevenda.qrorcamento_produto.Eof do
      begin
        FRMMODULO.QRPRODUTO.CLOSE;
        FRMMODULO.QRPRODUTO.SQL.CLEAR;
        FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+frmprevenda.qrorcamento_produto.fieldbyname('codproduto').asstring+'''');
        FRMMODULO.QRPRODUTO.OPEN;
        IF FRMMODULO.QRPRODUTO.RecNo = 1 THEN
        begin
          if frmprevenda.qrorcamento_produto.fieldbyname('serial').asstring <> '' then
          begin
            produto := frmprevenda.qrorcamento_produto.fieldbyname('produto').asstring+' ['+frmprevenda.qrorcamento_produto.fieldbyname('serial').asstring+']';
           end
          else
          begin
            produto := frmprevenda.qrorcamento_produto.fieldbyname('produto').asstring;
          end;


          desconto_acrescimo := frmprevenda.qrorcamento_produto.fieldbyname('desconto').asfloat - frmprevenda.qrorcamento_produto.fieldbyname('acrescimo').asfloat;
          if desconto_acrescimo < 0 then tp_desconto_acrescimo := 'A' else tp_desconto_acrescimo := 'D';

        IF (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '060') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '010') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '070') THEN ALIQUOTA := 'FF' ELSE
        IF (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '040') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '030') THEN ALIQUOTA := 'II' ELSE
        IF (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '041') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '050') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '051') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '090') THEN ALIQUOTA := 'NN' ELSE
        BEGIN
           aliquota := formatfloat('00.00',frmmodulo.qrproduto.fieldbyname('aliquota').asfloat);
        end;



          if ecf_vende_item_completo(ecf_modelo,frmmodulo.qrproduto.fieldbyname('codigo').asstring,
                                  frmprincipal.RemoveAcentos(produto),
                                  aliquota,
                                  frmprevenda.qrorcamento_produto.fieldbyname('UNITARIO').asfloat,
                                  frmprevenda.qrorcamento_produto.fieldbyname('QTDE').asfloat,
                                  frmprevenda.qrorcamento_produto.fieldbyname('desconto').asfloat,
                                  frmprevenda.qrorcamento_produto.fieldbyname('acrescimo').asfloat,
                                  frmmodulo.qrproduto.fieldbyname('unidade').asstring,
                                  0)  = 'ERRO' THEN
          BEGIN
            application.messagebox('Houve erro na impressão do item! Favor verificar!','Atenção',mb_ok+mb_iconerror);
            exit;
          END;

        end;
        frmprevenda.qrorcamento_produto.Next;
      end;


      (*-----------------INICIAR FECHAMENTO DO CUPOM-------------------------*)

      desconto_acrescimo := frmprevenda_fechamento_loja.rdesconto2.value - frmprevenda_fechamento_loja.racrescimo2.value;
      if desconto_acrescimo < 0 then
      begin
        tp_desconto_acrescimo := 'A';
        DESCONTO_ACRESCIMO := DESCONTO_ACRESCIMO * (-1);
      end
      else
        tp_desconto_acrescimo := 'D';

      if ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,0) = 'ERRO' then exit;
      (*---------------------------------------------------------------------*)


      (*---------------- LANÇAR AS FORMAS DE PAGAMENTO ----------------------*)
      if frmprevenda_fechamento_loja.rdinheiro.value > 0 then
      begin
        formasp := FDINHEIRO;
        if ecf_efetua_forma_pgto(ecf_modelo,FDINHEIRO,frmprevenda_fechamento_loja.rdinheiro.value) = 'ERRO' then exit;
      end;
      if frmprevenda_fechamento_loja.rchequeav.value > 0 then
      begin
        formasp := FCHEQUEAV;
        if ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAV,frmprevenda_fechamento_loja.rchequeav.value) = 'ERRO' then exit;
      end;
      if frmprevenda_fechamento_loja.rchequeap.value > 0 then
      begin
        FORMASP := FCHEQUEAP;
        if ecf_efetua_forma_pgto(ecf_modelo,FCHEQUEAP,frmprevenda_fechamento_loja.rchequeap.value) = 'ERRO' then exit;
      end;
      if frmprevenda_fechamento_loja.rcartaocred.value > 0 then
      begin
        FORMASP := FCARTAOCR;
        if ecf_efetua_forma_pgto(ecf_modelo,FCARTAOCR,frmprevenda_fechamento_loja.rcartaocred.value) = 'ERRO' then exit;
      end;
      if frmprevenda_fechamento_loja.rcartaodeb.value > 0 then
      begin
        FORMASP := FCARTAODB;
        if ecf_efetua_forma_pgto(ecf_modelo,FCARTAODB,frmprevenda_fechamento_loja.rcartaodeb.value) = 'ERRO' then exit;
      end;
      if frmprevenda_fechamento_loja.rcrediario.value > 0 then
      begin
        formasp := FPROMISSO;
        if ecf_efetua_forma_pgto(ecf_modelo,FPROMISSO,frmprevenda_fechamento_loja.rcrediario.value) = 'ERRO' then exit;
      end;
      (*---------------------------------------------------------------------*)



      (*---------------- IDENTIFICACAO DO CONSUMIDOR-------------------------*)

      if frmmodulo.qrcliente.fieldbyname('codigo').AsString <> frmmodulo.qrvenda.fieldbyname('codcliente').asstring then
        begin
          frmmodulo.qrcliente.close;
          frmmodulo.qrcliente.sql.clear;
          frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+frmmodulo.qrvenda.fieldbyname('codcliente').asstring+'''');
          frmmodulo.qrcliente.open;

        end;

      if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')+#10+
                                         frmprincipal.Texto_Justifica(('ENDERECO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('bairro').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('cidade').asstring),48,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring,42,' ','D')+#10+
                                            '------------------------------------------------'+#10+
                                            '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;






      NUMERO_NOTAZ := numero_cupomx;

      if ecf_cupom_vinculado = '1' then
      begin
         if application.messagebox('Deseja imprimir segunda via (Comprovante Não Fiscal Vinculado)?','Aviso',mb_yesno+mb_iconquestion) = idyes then
         begin
           application.ProcessMessages;
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
                   if ecf_usa_CNFV(ecf_modelo,frmPrincipal.texto_justifica(FRMPREvenda.QROrcamento_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                          frmPrincipal.texto_justifica(FRMPREvenda.QROrcamento_produto.fieldbyname('produto').asstring,19,' ','D')+
                          frmPrincipal.texto_justifica(formatfloat('######0',FRMPREvenda.QROrcamento_produto.fieldbyname('qtde').asfloat),4,' ','E')+
                          frmPrincipal.texto_justifica(formatfloat('######0.00',FRMPREvenda.QROrcamento_produto.fieldbyname('unitario').asfloat),9,' ','E')+
                          frmPrincipal.texto_justifica(formatfloat('######0.00',FRMPREvenda.QROrcamento_produto.fieldbyname('total').asfloat),9,' ','E')) = 'ERRO' then exit;
                   FRMPREvenda.QROrcamento_produto.Next;
                 end;
              end;
           if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'TOTAL DOS PRODUTOS .................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',frmprevenda_fechamento_loja.RSUBTOTAL.VALUE),9,' ','E')) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'DESCONTO ...........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',frmprevenda_fechamento_loja.rdesconto2.VALUE),9,' ','E')) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'T O T A L ..........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',frmprevenda_fechamento_loja.rtotal.VALUE),9,' ','E')) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('codigo').asstring+' '+frmmodulo.qrcliente.fieldbyname('nome').asstring) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'ENDEREÇO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR: '+frmPrevenda.qrorcamento.fieldbyname('codvendedor').asstring+'-'+frmPrevenda.qrorcamento.fieldbyname('vendedor').asstring,48,' ','D')) = 'ERRO' then exit;

             if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
             if ecf_usa_CNFV(ecf_modelo,'Reconheço e pagarei a divida aqui apresentada.  ' ) = 'ERRO' then exit;

           if ecf_cupom_vinculado_carne = '1' then // carne
           begin
             frmPrevenda.qrvenda_contasreceber.First;
             while not frmPrevenda.qrvenda_contasreceber.Eof do
             begin
               if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,'            COMPROVANTE DE DÉBITO               ' ) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CUPOM.....: '+NUMERO_CUPOMx,48,' ','D')) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('DOCUMENTO.: '+frmPrevenda.qrvenda_contasreceber.FieldByName('documento').asstring,48,' ','D')) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR..: '+frmPrevenda.qrorcamento.fieldbyname('codvendedor').asstring+'-'+frmPrevenda.qrorcamento.fieldbyname('vendedor').asstring,48,' ','D')) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE...: '+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'-'+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO..: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+frmmodulo.qrcliente.fieldbyname('uf').asstring),48,' ','D')) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ..: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring+ ' RG/INSC: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,48,' ','D')) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('IE/RG.....: '+frmmodulo.qrcliente.fieldbyname('rg').asstring,42,' ','D')) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,'   Este comprovante não é um documento fiscal   ' ) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('PARCELA...: '+frmPrincipal.zerarcodigo(frmPrevenda.qrvenda_contasreceber.fieldbyname('prestacao').asstring,6),42,' ','D')) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENCIMENTO: '+frmPrevenda.qrvenda_contasreceber.FieldByName('vencimento').AsString,42,' ','D')) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VALOR.....: '+formatfloat('#,###,##0.00',frmPrevenda.qrvenda_contasreceber.FieldByName('valor').AsFloat),38,' ','D')) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
               frmPrevenda.qrvenda_contasreceber.Next;
             end;
           end;
           if ecf_fecha_CNFV(ecf_modelo) = 'ERRO' then exit;
         end;
      end;




     cupom_fiscal := true;

     frmmodulo.qrvenda.Edit;
     FRMMODULO.QRVENDA.FIELDBYNAME('NUMERO_CUPOM_FISCAL').ASSTRING := numero_cupomx;
      frmmodulo.qrvenda.fieldbyname('cupom_fiscal').asinteger := 1;
     frmmodulo.qrvenda.post;




    end;

  EXCEPT
    showmessage('Esta função gerou erro! O procedimento foi abortado!');
  END;
end;

procedure Tfrmprevenda_impressao_loja.Fechar2Click(Sender: TObject);
begin
  application.messagebox('Favor escolher o meio de impressao e clicar em "OK"!','Atenção',mb_ok+mb_iconwarning);
  exit;
end;

procedure Tfrmprevenda_impressao_loja.Button1Click(Sender: TObject);





VAR F : TEXTFILE;
DI, ME, AN, CID, TEXTO : STRING;
ITEM : INTEGER;
begin
  ITEM := 1;
  IF frmprevenda.qrvenda_contasreceber.RECORDCOUNT > 0 THEN
  BEGIN
    ASSIGNFILE(F,porta_impressora);
    REWRITE(F);
    frmprevenda.qrvenda_contasreceber.FIRST;
    WHILE NOT frmprevenda.QRVENDA_CONTASRECEBER.EOF DO
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
        di := copy(frmmodulo.qrvenda.fieldbyname('data').asstring,1,2);me := copy(frmmodulo.qrvenda.fieldbyname('data').asstring,4,2);an := copy(frmmodulo.qrvenda.fieldbyname('data').asstring,7,4);
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
        FRMPRINCIPAL.texto_justifica(formatfloat('###,###,###,##0.00',frmprevenda.QRVENDA_CONTASRECEBER.fieldbyname('VALOR').asfloat),10,' ','E')+
                  '   '+FRMPRINCIPAL.texto_justifica(NUMERO_NOTAZ+'/'+FRMPRINCIPAL.zerarcodigo(INTTOSTR(ITEM),2),10,' ','D')+
                  ' '+FRMPRINCIPAL.texto_justifica(datetostr(frmprevenda.QRVENDA_CONTASRECEBER.fieldbyname('vencimento').asdatetime),10,' ','D'));

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

        TEXTO := AnsiUpperCase(extenso(frmprevenda.qrvenda_CONTASRECEBER.fieldbyname('VALOR').asfloat));
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


      frmprevenda.QRVENDA_CONTASRECEBER.NEXT;
      ITEM := ITEM + 1;

    end;
          CLOSEFILE(F);



  END;

end;

procedure Tfrmprevenda_impressao_loja.BAPOIOClick(Sender: TObject);
var f : textfile;
TEXTO8, texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7 : string;
i : integer;
NNOTA : INTEGER;
begin
  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+frmmodulo.qrnotafiscal.fieldbyname('codcliente').asstring+'''');
  frmmodulo.qrcliente.open;

  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.sql.add('select * from c000010 where codigo = '''+frmmodulo.qrnotafiscal.fieldbyname('codtransportador').asstring+'''');
  frmmodulo.qrtransportador.open;

  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.sql.Clear;
  frmmodulo.qrproduto.sql.add('select * from c000025 order by codigo');
  frmmodulo.qrproduto.open;


  cod_apoio := 1;


  
  frmprevenda.QRAPOIO.close;
  frmprevenda.QRAPOIO.sql.clear;
  frmprevenda.QRAPOIO.sql.add('delete from cl00004');
  frmprevenda.QRAPOIO.execsql;
  frmprevenda.QRAPOIO.close;
  frmprevenda.QRAPOIO.sql.clear;
  frmprevenda.QRAPOIO.sql.add('select * from cl00004 order by texto10');
  frmprevenda.QRAPOIO.open;

  frmmodulo.qrconfig.open;
  nnota := 0;

  I := 1;
  qrnotafiscal_item.Refresh;
  qrnotafiscal_item.First;
  while not qrnotafiscal_item.eof do
  begin
    IF I = frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger THEN
    BEGIN
      WHILE I <> frmmodulo.qrconfig.fieldbyname('NF_SALTO_PAGINA').asinteger  DO
      BEGIN
        I :=  I + 1;
        IF I = frmmodulo.qrconfig.fieldbyname('NF_LINHA_TRANSPORTE').asinteger THEN
        BEGIN
          frmprevenda.QRAPOIO.INSERT;
          frmprevenda.QRAPOIO.FIELDBYNAME('TOTAL').ASSTRING := 'TRANSPORTAR';
            frmprevenda.QRAPOIO.fieldbyname('TEXTO1').asstring := 'XXXXXXXXXX';
            frmprevenda.QRAPOIO.fieldbyname('TEXTO2').asstring := 'XXXXXXXXXX';
            frmprevenda.QRAPOIO.fieldbyname('TEXTO3').asstring := 'XXXXXXXXXX';
            frmprevenda.QRAPOIO.fieldbyname('TEXTO4').asstring := 'XXXXXXXXXX';

          frmprevenda.QRAPOIO.POST;
        END
        ELSE
        BEGIN
          frmprevenda.QRAPOIO.INSERT;
          if i = frmmodulo.qrconfig.fieldbyname('NF_LINHA_SUBTOTAL').asinteger THEN
          BEGIN
            frmprevenda.QRAPOIO.fieldbyname('TEXTO1').asstring := 'XXXXXXXXXX';
            frmprevenda.QRAPOIO.fieldbyname('TEXTO2').asstring := 'XXXXXXXXXX';
            frmprevenda.QRAPOIO.fieldbyname('TEXTO3').asstring := 'XXXXXXXXXX';
            frmprevenda.QRAPOIO.fieldbyname('TEXTO4').asstring := 'XXXXXXXXXX';
            frmprevenda.QRAPOIO.fieldbyname('TEXTO6').asstring := 'XXXXXXXXXX';
          END;
          frmprevenda.QRAPOIO.POST;
        END;
      END;
      frmprevenda.QRAPOIO.INSERT;
      frmprevenda.QRAPOIO.FIELDBYNAME('PRODUTO').ASSTRING := '*** T R A N S P O R T A D O ***';
      frmprevenda.QRAPOIO.POST;
      frmprevenda.QRAPOIO.insert;
      frmprevenda.QRAPOIO.fieldbyname('codproduto').asstring :=    qrnotafiscal_item.fieldbyname('codproduto').asstring;
      frmprevenda.QRAPOIO.fieldbyname('produto').asstring :=       qrnotafiscal_item.fieldbyname('produto').asstring;
      if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then frmprevenda.QRAPOIO.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000',qrnotafiscal_item.fieldbyname('qtde').asfloat);
      if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then frmprevenda.QRAPOIO.fieldbyname('unitario').asstring := formatfloat('###,###,##0.00',qrnotafiscal_item.fieldbyname('unitario').asfloat);
      if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then  frmprevenda.QRAPOIO.fieldbyname('total').asstring := formatfloat('###,###,##0.00',qrnotafiscal_item.fieldbyname('total').asfloat);
      frmprevenda.QRAPOIO.fieldbyname('cf').asstring :=   qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
      frmprevenda.QRAPOIO.fieldbyname('str').asstring :=  qrnotafiscal_item.fieldbyname('cst').asstring;
      frmprevenda.QRAPOIO.fieldbyname('un').asstring :=   qrnotafiscal_item.fieldbyname('unidade').asstring;
      frmprevenda.QRAPOIO.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
      frmprevenda.QRAPOIO.fieldbyname('ipi').asstring :=  qrnotafiscal_item.fieldbyname('ipi').asstring;
      frmprevenda.QRAPOIO.post;
      NNOTA := NNOTA + 1;
      I := 2;
    END
    ELSE
    BEGIN
      frmprevenda.QRAPOIO.insert;
      frmprevenda.QRAPOIO.fieldbyname('codproduto').asstring :=    qrnotafiscal_item.fieldbyname('codproduto').asstring;
      frmprevenda.QRAPOIO.fieldbyname('produto').asstring :=       qrnotafiscal_item.fieldbyname('produto').asstring;
      if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then frmprevenda.QRAPOIO.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000',qrnotafiscal_item.fieldbyname('qtde').asfloat);
      if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then frmprevenda.QRAPOIO.fieldbyname('unitario').asstring := formatfloat('###,###,##0.00',qrnotafiscal_item.fieldbyname('unitario').asfloat);
      if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then  frmprevenda.QRAPOIO.fieldbyname('total').asstring := formatfloat('###,###,##0.00',qrnotafiscal_item.fieldbyname('total').asfloat);
      frmprevenda.QRAPOIO.fieldbyname('cf').asstring :=   qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
      frmprevenda.QRAPOIO.fieldbyname('str').asstring :=  qrnotafiscal_item.fieldbyname('cst').asstring;
      frmprevenda.QRAPOIO.fieldbyname('un').asstring :=   qrnotafiscal_item.fieldbyname('unidade').asstring;
      frmprevenda.QRAPOIO.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
      frmprevenda.QRAPOIO.fieldbyname('ipi').asstring :=  qrnotafiscal_item.fieldbyname('ipi').asstring;
      frmprevenda.QRAPOIO.post;
    END;
    qrnotafiscal_item.next;
    I := I + 1;
  end;
  if frmmodulo.qrnotafiscal.FieldByName('desconto').asfloat > 0 then
  begin
      frmprevenda.QRAPOIO.insert;
      frmprevenda.QRAPOIO.fieldbyname('produto').asstring :=       'D E S C O N T O ';
      frmprevenda.QRAPOIO.fieldbyname('total').asstring := formatfloat('###,###,##0.00',FRMMODULO.QRNOTAFISCAL.fieldbyname('DESCONTO').asfloat);
      frmprevenda.QRAPOIO.post;
  end;



  WHILE i < frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger DO
  BEGIN
    frmprevenda.QRAPOIO.INSERT;
    frmprevenda.QRAPOIO.POST;
    i := i+1;
  END;

  frmprevenda.QRAPOIO.Refresh;

end;

procedure Tfrmprevenda_impressao_loja.NFCupom1Click(Sender: TObject);
var arquivo : textfile;
texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7, texto8 : string;
BASE_CALCULO, ICMS : REAL;
desconto_acrescimo, tn : real;
tp_desconto_acrescimo, numero_cupom, aliquota : string;
produto:string;
total_troca : real;
begin

// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// MEIA LINHA           --> #27#51
// LINHA NORMAL         --> #27#50


  frmmodulo.qrnotafiscal.close;
  frmmodulo.qrnotafiscal.sql.clear;
  frmmodulo.qrnotafiscal.sql.add('select * from c000061');
  frmmodulo.qrnotafiscal.open;

  frmmodulo.qrnotafiscal.insert;
  frmmodulo.qrnotafiscal.FieldByName('codfilial').asstring := '000001';
  frmmodulo.qrnotafiscal.FieldByName('codigo').asstring := frmprincipal.codifica('000061');
  frmmodulo.qrfilial.open;
  frmmodulo.qrfilial.Locate('codigo','000001',[loCaseInsensitive]);


  frmprevenda_nf_loja := tfrmprevenda_nf_loja.create(self);
  frmprevenda_nf_loja.enf.text := frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('notafiscal').asstring,6);
  frmprevenda_nf_loja.showmodal;
  frmmodulo.qrnotafiscal.fieldbyname('numero').asstring := numero_notaz;

  frmmodulo.qrnotafiscal.fieldbyname('cfop').asstring := '1202';
  frmmodulo.qrnotafiscal.fieldbyname('data').asstring := frmmodulo.qrvenda.fieldbyname('data').asstring;
  frmmodulo.qrnotafiscal.fieldbyname('data_saida').asstring := frmmodulo.qrvenda.fieldbyname('data').asstring;
  frmmodulo.qrnotafiscal.fieldbyname('hora').asstring := timetostr(time);
  frmmodulo.qrnotafiscal.fieldbyname('codcliente').asstring := frmmodulo.qrvenda.fieldbyname('codcliente').asstring;
  frmmodulo.qrnotafiscal.fieldbyname('desconto').asfloat := 0;
  frmmodulo.qrnotafiscal.fieldbyname('situacao').asinteger := 1;
  frmmodulo.qrnotafiscal.fieldbyname('INF1').asSTRING := 'DOCUMENTO EMITIDO POR ME OU EPP';

  if frmprincipal.vfil_simples  = 'S' then frmmodulo.qrnotafiscal.fieldbyname('INF2').asSTRING := 'OPTANTE PELO SIMPLES NACIONAL';
  if frmprincipal.vfil_ssimples = 'S' then frmmodulo.qrnotafiscal.fieldbyname('INF2').asSTRING := 'OPTANTE PELO SUPER SIMPLES';

  frmmodulo.qrnotafiscal.fieldbyname('INF3').asSTRING := 'NAO GERA DIREITO A CREDITO FISCAL DE ICMS E DE ISS';
  frmmodulo.qrnotafiscal.fieldbyname('situacao_A').ASSTRING := 'A';
  frmmodulo.qrnotafiscal.fieldbyname('MODELO_NF').ASSTRING := '01';
  frmmodulo.qrnotafiscal.fieldbyname('SERIE_NF').ASSTRING := '';
  frmmodulo.qrnotafiscal.fieldbyname('SIT').ASSTRING := 'N';
   FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('MOVIMENTO').ASSTRING := 'E';



    qrnotafiscal_item.close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.SQL.add('select * from c000062 where codnota = '''+frmmodulo.qrnotafiscal.fieldbyname('codigo').asstring+'''');
    qrnotafiscal_item.open;



 BASE_CALCULO := 0;
 ICMS := 0;

  tn := 0;
  frmprevenda.qrorcamento_produto.FIRST;
  WHILE NOT frmprevenda.qrorcamento_produto.Eof DO
  BEGIN
     if frmprevenda.qrorcamento_produto.fieldbyname('qtde').asfloat < 0 then
     begin
       QRNOTAFISCAL_ITEM.INSERT;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CODNOTA').ASSTRING := FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('CODIGO').ASSTRING;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CODPRODUTO').ASSTRING := frmprevenda.qrorcamento_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT := frmprevenda.qrorcamento_produto.FIELDBYNAME('QTDE').ASFLOAT*(-1);
       QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := frmprevenda.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT*(-1);
       QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT := QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT / QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CFOP').ASSTRING := '1202';
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := frmprevenda.qrorcamento_produto.FIELDBYNAME('CST').ASSTRING;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('ICMS').ASSTRING := '0';
       qrnotafiscal_item.fieldbyname('codlancamento').asstring := 'XXXXXX';
       tn := tn + (frmprevenda.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT*(-1));
       QRNOTAFISCAL_ITEM.POST;
     end;

     frmprevenda.qrorcamento_produto.NEXT;
  END;
  frmmodulo.qrnotafiscal.fieldbyname('valor_produtos').asfloat := tn;
  frmmodulo.qrnotafiscal.fieldbyname('total_nota').asfloat := tn;


  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('BASE_CALCULO').ASFLOAT := 0;
  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('VALOR_ICMS').ASFLOAT := 0;
  frmmodulo.qrnotafiscal.post;


        VALOR_NOTAZ := frmmodulo.qrnotafiscal.fieldbyname('total_nota').asfloat;





   BAPOIOClick(frmprevenda_IMPRESSAO_loja);

   APPLICATION.ProcessMessages;






  assignfile(arquivo,porta_impressora);
  rewrite(arquivo);
  writeln(arquivo,#27+#51);
  WRITELN(arquivo,#15+#27#72+#20,'');
  writeln(arquivo,'');
  writeln(arquivo,'                                                                                                                             '+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('numero').asstring,6,'0','E')+#15+#27#72+#20);
  WRITELN(arquivo,'                                                                                                  X');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('natureza').asstring,41,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('CFOP').asstring,6,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('NOME').asstring,90,' ','D')+' '+ frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CPF').asstring,32,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('ENDERECO').asstring,68,' ','D')+' '+ frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('BAIRRO').asstring,24,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CEP').asstring,29,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CIDADE').asstring,50,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('TELEFONE1').asstring+'  '+frmmodulo.qrCLIENTE.fieldbyname('TELEFONE2').asstring,27,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('UF').asstring,6,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('RG').asstring,38,' ','D')+' '+
                  frmprincipal.Texto_Justifica(timetostr(time),10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat <> 0 then texto1 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat);
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat <> 0 then texto2 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat);
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO1').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto1,15,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA1').asstring,17,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO2').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto2,16,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA2').asstring,10,' ','D'));
  writeln(arquivo,'');
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR3').asfloat <> 0 then texto1 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat) else texto1 := '';
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR4').asfloat <> 0 then texto2 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat) else texto2 := '';
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO3').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto1,15,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA3').asstring,17,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO4').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto2,16,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA4').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');

  frmprevenda.qrapoio.Open;
  frmprevenda.Refresh;
  frmprevenda.qrapoio.first;
  while not frmprevenda.qrapoio.Eof do
  begin
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('codproduto').asstring,9,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('Produto').asstring,59,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('CF').asstring,0,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('STR').asstring,5,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('UN').asstring,3,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('QTDE').asstring,9,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('UNITARIO').asstring,13,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('TOTAL').asstring,18,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('ICMS').asstring,4,' ','E')+' ');
    writeln(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('IPI').asstring,3,' ','E'));
    writeln(arquivo,'');
    frmprevenda.qrapoio.next;
  end;

  if (frmmodulo.qrnotafiscal.fieldbyname('BASE_CALCULO').asfloat <> 0) and (frmprincipal.vfil_ssimples = 'N') then texto1 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('BASE_CALCULO').asfloat) else texto1 := '';
  if (frmmodulo.qrnotafiscal.fieldbyname('VALOR_ICMS').asfloat <> 0)  and (frmprincipal.vfil_ssimples = 'N') then texto2 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('VALOR_ICMS').asfloat) else texto2 := '';
  if (frmmodulo.qrnotafiscal.fieldbyname('BASE_SUB').asfloat <> 0)  and (frmprincipal.vfil_ssimples = 'N') then texto3 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('BASE_SUB').asfloat) else texto3 := '';
  if (frmmodulo.qrnotafiscal.fieldbyname('ICMS_SUB').asfloat <> 0)  and (frmprincipal.vfil_ssimples = 'N') then texto4 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('ICMS_SUB').asfloat) else texto4 := '';

  if frmmodulo.qrnotafiscal.fieldbyname('VALOR_PRODUTOS').asfloat <> 0 then texto5 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('VALOR_PRODUTOS').asfloat) else texto5 := '';
  write(arquivo,frmprincipal.Texto_Justifica(texto1,24,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto2,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto3,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto4,25,' ','E')+' ');
  writeLN(arquivo,frmprincipal.Texto_Justifica(texto5,25,' ','E')+' ');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  if frmmodulo.qrnotafiscal.fieldbyname('FRETE').asfloat <> 0 then texto1 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('FRETE').asfloat) else texto1 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('SEGURO').asfloat <> 0 then texto2 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('SEGURO').asfloat) else texto2 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('OUTRAS_DESPESAS').asfloat <> 0 then texto3 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('OUTRAS_DESPESAS').asfloat) else texto3 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('VALOR_TOTAL_IPI').asfloat <> 0 then texto4 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('VALOR_TOTAL_IPI').asfloat) else texto4 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('TOTAL_NOTA').asfloat <> 0 then texto5 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('TOTAL_NOTA').asfloat) else texto5 := '';
  write(arquivo,frmprincipal.Texto_Justifica(texto1,24,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto2,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto3,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto4,25,' ','E')+' ');
  writeLN(arquivo,frmprincipal.Texto_Justifica(texto5,25,' ','E')+' ');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transportador').asstring,74,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('FRETE_CONTA').asstring,4,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('placa').asstring,18,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('placa_uf').asstring,8,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_cpf').asstring,25,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_ENDERECO').asstring,59,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('TRANSP_CIDADE').asstring,37,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('TRANSP_UF').asstring,15,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_RG').asstring,25,' ','D'));
//  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_QTDE').asstring,22,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_ESPECIE').asstring,25,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_MARCA').asstring,20,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_NUMERO').asstring,25,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('PESO_BRUTO').asstring,20,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('PESO_LIQUIDO').asstring,20,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF1').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF2').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF3').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF4').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF5').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');

  writeln(arquivo,'                                                                                                                             '+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('numero').asstring,6,'0','E')+#15+#27#72+#20);
  writeln(arquivo,#27+#50);
//  WRITELN(ARQUIVO,#12);

  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');



  frmmodulo.qrvenda.edit;
  FRMMODULO.QRVENDA.FIELDBYNAME('NUMERO_CUPOM_FISCAL').ASSTRING := FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('NUMERO').ASSTRING;
     frmmodulo.qrvenda.post;
  CLOSEFILE(arquivo);

        frmmodulo.qrfilial.edit;
        frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger := frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger + 1;
        frmmodulo.qrfilial.post;



  application.MessageBox('Pressione [ENTER] para Imprimir o Cupom Fiscal.','Aviso',mb_ok+MB_ICONINFORMATION);



  TRY




     frmmodulo.qrconfig.open;
     if frmmodulo.qrconfig.FieldByName('ECF_TIPO').asstring = 'ECF-Remoto' then
     begin
       // lançamento do cupom
       frmmodulo.qrecf_comando.Open;
       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'VENDA';
       frmmodulo.qrecf_comando.FieldByName('numero').asstring := frmmodulo.qrvenda.fieldbyname('codigo').asstring;
       frmmodulo.qrecf_comando.FieldByName('desconto').asfloat := frmmodulo.qrvenda.fieldbyname('desconto').asfloat;
       frmmodulo.qrecf_comando.FieldByName('acrescimo').asfloat := frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat;
       frmmodulo.qrecf_comando.FieldByName('dinheiro').asfloat := frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat;
       frmmodulo.qrecf_comando.FieldByName('chequeav').asfloat := frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat;
       frmmodulo.qrecf_comando.FieldByName('chequeap').asfloat := frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat;
       frmmodulo.qrecf_comando.FieldByName('cartaocred').asfloat := frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat;
       frmmodulo.qrecf_comando.FieldByName('cartaodeb').asfloat := frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat;
       frmmodulo.qrecf_comando.FieldByName('promissoria').asfloat := frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat;
       
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := cliente_nome;
       frmmodulo.qrecf_comando.FieldByName('endereco').asstring := cliente_endereco;
       frmmodulo.qrecf_comando.FieldByName('cidade').asstring := cliente_cidade+'/'+CLIENTE_UF;
       frmmodulo.qrecf_comando.FieldByName('cpf').asstring := cliente_cpf;
       frmmodulo.qrecf_comando.FieldByName('convenio').asstring := '';
       frmmodulo.qrecf_comando.FieldByName('vendedor').asstring := frmmodulo.qrvenda.fieldbyname('codvendedor').asstring;
       frmmodulo.qrecf_comando.Post;
       // lancamento dos itens do cupom
       frmprevenda.qrorcamento_produto.First;

        while not frmprevenda.qrorcamento_produto.Eof do
        begin
          FRMMODULO.QRPRODUTO.Close;
          FRMMODULO.QRPRODUTO.SQL.CLEAR;
          FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+frmprevenda.qrorcamento_produto.fieldbyname('codproduto').asstring+'''');
          FRMMODULO.QRPRODUTO.OPEN;
          if frmmodulo.qrproduto.RECno =  1 THEN
          begin
            if frmprevenda.qrorcamento_produto.fieldbyname('serial').asstring <> '' then
               produto := frmmodulo.qrproduto.fieldbyname('produto').asstring+' ['+frmprevenda.qrorcamento_produto.fieldbyname('serial').asstring+']'
            else
               produto := frmmodulo.qrproduto.fieldbyname('produto').asstring;

          frmmodulo.qrecf_item.Open;
          frmmodulo.qrecf_item.Insert;
          frmmodulo.qrecf_item.FieldByName('numero').AsString := frmmodulo.qrvenda.fieldbyname('codigo').asstring;
          frmmodulo.qrecf_item.FieldByName('codproduto').AsString := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
          frmmodulo.qrecf_item.FieldByName('produto').AsString := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          frmmodulo.qrecf_item.FieldByName('unidade').AsString := frmmodulo.qrproduto.fieldbyname('unidade').asstring;
          if frmmodulo.qrproduto.fieldbyname('codaliquota').asstring = '' then
            frmmodulo.qrecf_item.FieldByName('aliquota').AsString := 'FF'
          else
            frmmodulo.qrecf_item.FieldByName('aliquota').AsString := frmmodulo.qrproduto.fieldbyname('codaliquota').asstring;
          frmmodulo.qrecf_item.FieldByName('qtde').Asfloat := frmprevenda.qrorcamento_produto.fieldbyname('qtde').asfloat;
          frmmodulo.qrecf_item.FieldByName('valor').Asfloat := frmprevenda.qrorcamento_produto.fieldbyname('unitario').asfloat;
          frmmodulo.qrecf_item.FieldByName('desconto').Asfloat := frmprevenda.qrorcamento_produto.fieldbyname('desconto').asfloat;
          frmmodulo.qrecf_item.FieldByName('acrescimo').Asfloat := frmprevenda.qrorcamento_produto.fieldbyname('acrescimo').asfloat;


          frmmodulo.qrecf_item.post;
          end;

          frmprevenda.qrorcamento_produto.Next;
       end;
       frmmodulo.Conexao.Commit;
       frmmodulo.conexao_ecfserver.Commit;
     end
     else
     begin








      tn := 0;

      frmprevenda.qrorcamento_produto.First;

      if ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;
      numero_cupomx := ecf_numero_cupom(ECF_MODELO);


      while not frmprevenda.qrorcamento_produto.Eof do
      begin
        if frmprevenda.qrorcamento_produto.fieldbyname('qtde').asfloat > 0 then
        begin
        FRMMODULO.QRPRODUTO.CLOSE;
        FRMMODULO.QRPRODUTO.SQL.CLEAR;
        FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+frmprevenda.qrorcamento_produto.fieldbyname('codproduto').asstring+'''');
        FRMMODULO.QRPRODUTO.OPEN;
        IF FRMMODULO.QRPRODUTO.RecNo = 1 THEN
        begin
          if frmprevenda.qrorcamento_produto.fieldbyname('serial').asstring <> '' then
          begin
            produto := frmmodulo.qrproduto.fieldbyname('produto').asstring+' ['+frmprevenda.qrorcamento_produto.fieldbyname('serial').asstring+']';
           end
          else
          begin
            produto := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          end;


          desconto_acrescimo := frmprevenda.qrorcamento_produto.fieldbyname('desconto').asfloat - frmprevenda.qrorcamento_produto.fieldbyname('acrescimo').asfloat;
          if desconto_acrescimo < 0 then tp_desconto_acrescimo := 'A' else tp_desconto_acrescimo := 'D';

        IF (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '060') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '010') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '070') THEN ALIQUOTA := 'FF' ELSE
        IF (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '040') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '030') THEN ALIQUOTA := 'II' ELSE
        IF (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '041') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '050') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '051') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '090') THEN ALIQUOTA := 'NN' ELSE
        BEGIN
           aliquota := formatfloat('00.00',frmmodulo.qrproduto.fieldbyname('aliquota').asfloat);
        end;



          if ecf_vende_item_completo(ecf_modelo,frmmodulo.qrproduto.fieldbyname('codigo').asstring,
                                  frmprincipal.RemoveAcentos(produto),
                                  aliquota,
                                  frmprevenda.qrorcamento_produto.fieldbyname('UNITARIO').asfloat,
                                  frmprevenda.qrorcamento_produto.fieldbyname('QTDE').asfloat,
                                  frmprevenda.qrorcamento_produto.fieldbyname('desconto').asfloat,
                                  frmprevenda.qrorcamento_produto.fieldbyname('acrescimo').asfloat,
                                  frmmodulo.qrproduto.fieldbyname('unidade').asstring,
                                  0)  = 'ERRO' THEN
          BEGIN
            application.messagebox('Houve erro na impressão do item! Favor verificar!','Atenção',mb_ok+mb_iconerror);
            exit;
          END;
          tn := tn + (frmprevenda.qrorcamento_produto.fieldbyname('qtde').asfloat*frmprevenda.qrorcamento_produto.fieldbyname('unitario').asfloat);
        end;
        end;
        frmprevenda.qrorcamento_produto.Next;
      end;

      tn := tn + frmprevenda_fechamento_loja.rtotal.value;


       (*-----------------INICIAR FECHAMENTO DO CUPOM-------------------------*)

      desconto_acrescimo := frmprevenda_fechamento_loja.rdesconto2.value - frmprevenda_fechamento_loja.racrescimo2.value;
      if desconto_acrescimo < 0 then
      begin
        tp_desconto_acrescimo := 'A';
        DESCONTO_ACRESCIMO := DESCONTO_ACRESCIMO * (-1);
      end
      else
        tp_desconto_acrescimo := 'D';

      if ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,0) = 'ERRO' then exit;


      (*---------------------------------------------------------------------*)

      if frmprevenda_fechamento_loja.rsubtotal.value = 0 then
      begin
         if ecf_efetua_forma_pgto(ecf_modelo,'Dinheiro',tn-frmprevenda_fechamento_loja.rdinheiro.value) = 'ERRO' then exit;
      end
      else
      begin


      (*---------------- LANÇAR AS FORMAS DE PAGAMENTO ----------------------*)
      if frmprevenda_fechamento_loja.rdinheiro.value > 0 then
      begin
         if ecf_efetua_forma_pgto(ecf_modelo,'Dinheiro',tn-frmprevenda_fechamento_loja.rdinheiro.value) = 'ERRO' then exit;
      end;
      end;
      if frmprevenda_fechamento_loja.rchequeav.value > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cheque',tn-frmprevenda_fechamento_loja.rchequeav.value) = 'ERRO' then exit;
      end;
      if frmprevenda_fechamento_loja.rchequeap.value > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cheque-pre',tn-frmprevenda_fechamento_loja.rchequeap.value) = 'ERRO' then exit;
      end;
      if frmprevenda_fechamento_loja.rcartaocred.value > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cartao',tn-frmprevenda_fechamento_loja.rcartaocred.value) = 'ERRO' then exit;
      end;
      if frmprevenda_fechamento_loja.rcartaodeb.value > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cartao',tn-frmprevenda_fechamento_loja.rcartaodeb.value) = 'ERRO' then exit;
      end;
      if frmprevenda_fechamento_loja.rcrediario.value > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Promissoria',tn-frmprevenda_fechamento_loja.rcrediario.value) = 'ERRO' then exit;
      end;
      (*---------------------------------------------------------------------*)

      end;

      (*---------------- IDENTIFICACAO DO CONSUMIDOR-------------------------*)

      if frmmodulo.qrcliente.fieldbyname('codigo').AsString <> frmmodulo.qrvenda.fieldbyname('codcliente').asstring then
        begin
          frmmodulo.qrcliente.close;
          frmmodulo.qrcliente.sql.clear;
          frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+frmmodulo.qrvenda.fieldbyname('codcliente').asstring+'''');
          frmmodulo.qrcliente.open;
        end;

      if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmmodulo.qrcliente.fieldbyname('nome').asstring,48,' ','D')+#10+
                                         frmprincipal.Texto_Justifica(('ENDERECO: '+frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('bairro').asstring+' '+
                                                                         frmmodulo.qrcliente.fieldbyname('cidade').asstring),48,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmmodulo.qrcliente.fieldbyname('cpf').asstring,42,' ','D')+#10+
                                            '------------------------------------------------'+#10+
                                            '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;

      cupom_fiscal := true;
           frmmodulo.qrvenda.edit;
      FRMMODULO.QRVENDA.FIELDBYNAME('NUMERO_CUPOM_FISCAL').ASSTRING := numero_cupomx;
      frmmodulo.qrvenda.fieldbyname('cupom_fiscal').asinteger := 1;
           frmmodulo.qrvenda.post;




  EXCEPT
    showmessage('Esta função gerou erro! O procedimento foi abortado!');
  END;


end;

procedure Tfrmprevenda_impressao_loja.NFNF1Click(Sender: TObject);
var arquivo : textfile;
texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7, texto8 : string;
BASE_CALCULO, ICMS : REAL;
desconto_acrescimo, tn : real;
tp_desconto_acrescimo, numero_cupom, aliquota : string;
produto:string;
begin

// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// MEIA LINHA           --> #27#51
// LINHA NORMAL         --> #27#50


  frmmodulo.qrnotafiscal.close;
  frmmodulo.qrnotafiscal.sql.clear;
  frmmodulo.qrnotafiscal.sql.add('select * from c000061');
  frmmodulo.qrnotafiscal.open;

  frmmodulo.qrnotafiscal.insert;
  frmmodulo.qrnotafiscal.FieldByName('codfilial').asstring := '000001';
  frmmodulo.qrnotafiscal.FieldByName('codigo').asstring := frmprincipal.codifica('000061');
  frmmodulo.qrfilial.open;
  frmmodulo.qrfilial.Locate('codigo','000001',[loCaseInsensitive]);


  frmprevenda_nf_loja := tfrmprevenda_nf_loja.create(self);
  frmprevenda_nf_loja.enf.text := frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('notafiscal').asstring,6);
  frmprevenda_nf_loja.showmodal;
  frmmodulo.qrnotafiscal.fieldbyname('numero').asstring := numero_notaz;

  frmmodulo.qrnotafiscal.fieldbyname('cfop').asstring := '1202';
  frmmodulo.qrnotafiscal.fieldbyname('data').asstring := frmmodulo.qrvenda.fieldbyname('data').asstring;
  frmmodulo.qrnotafiscal.fieldbyname('data_saida').asstring := frmmodulo.qrvenda.fieldbyname('data').asstring;
  frmmodulo.qrnotafiscal.fieldbyname('hora').asstring := timetostr(time);
  frmmodulo.qrnotafiscal.fieldbyname('codcliente').asstring := frmmodulo.qrvenda.fieldbyname('codcliente').asstring;
  frmmodulo.qrnotafiscal.fieldbyname('desconto').asfloat := 0;
  frmmodulo.qrnotafiscal.fieldbyname('situacao').asinteger := 1;
  frmmodulo.qrnotafiscal.fieldbyname('INF1').asSTRING := 'DOCUMENTO EMITIDO POR ME OU EPP';
  if frmprincipal.vfil_simples  = 'S' then frmmodulo.qrnotafiscal.fieldbyname('INF2').asSTRING := 'OPTANTE PELO SIMPLES NACIONAL';
  if frmprincipal.vfil_ssimples = 'S' then frmmodulo.qrnotafiscal.fieldbyname('INF2').asSTRING := 'OPTANTE PELO SUPER SIMPLES';

  frmmodulo.qrnotafiscal.fieldbyname('INF3').asSTRING := 'NAO GERA DIREITO A CREDITO FISCAL DE ICMS E DE ISS';
  frmmodulo.qrnotafiscal.fieldbyname('situacao_A').ASSTRING := 'A';
  frmmodulo.qrnotafiscal.fieldbyname('MODELO_NF').ASSTRING := '01';
  frmmodulo.qrnotafiscal.fieldbyname('SERIE_NF').ASSTRING := '';
  frmmodulo.qrnotafiscal.fieldbyname('SIT').ASSTRING := 'N';
  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('MOVIMENTO').ASSTRING := 'E';



    qrnotafiscal_item.close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.SQL.add('select * from c000062 where codnota = '''+frmmodulo.qrnotafiscal.fieldbyname('codigo').asstring+'''');
    qrnotafiscal_item.open;



 BASE_CALCULO := 0;
 ICMS := 0;

  tn := 0;
  frmprevenda.qrorcamento_produto.FIRST;
  WHILE NOT frmprevenda.qrorcamento_produto.Eof DO
  BEGIN
     if frmprevenda.qrorcamento_produto.fieldbyname('qtde').asfloat < 0 then
     begin
       QRNOTAFISCAL_ITEM.INSERT;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CODNOTA').ASSTRING := FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('CODIGO').ASSTRING;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CODPRODUTO').ASSTRING := frmprevenda.qrorcamento_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT := frmprevenda.qrorcamento_produto.FIELDBYNAME('QTDE').ASFLOAT*(-1);
       QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := frmprevenda.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT*(-1);
       QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT := QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT / QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CFOP').ASSTRING := '1202';
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := frmprevenda.qrorcamento_produto.FIELDBYNAME('CST').ASSTRING;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('ICMS').ASSTRING := '0';
       qrnotafiscal_item.fieldbyname('codlancamento').asstring := 'XXXXXX';
       tn := tn + (frmprevenda.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT*(-1));
       QRNOTAFISCAL_ITEM.POST;
     end;

     frmprevenda.qrorcamento_produto.NEXT;
  END;
  frmmodulo.qrnotafiscal.fieldbyname('valor_produtos').asfloat := tn;
  frmmodulo.qrnotafiscal.fieldbyname('total_nota').asfloat := tn;


  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('BASE_CALCULO').ASFLOAT := 0;
  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('VALOR_ICMS').ASFLOAT := 0;
  frmmodulo.qrnotafiscal.post;


        VALOR_NOTAZ := frmmodulo.qrnotafiscal.fieldbyname('total_nota').asfloat;





   BAPOIOClick(frmprevenda_IMPRESSAO_loja);

   APPLICATION.ProcessMessages;






  assignfile(arquivo,porta_impressora);
  rewrite(arquivo);
  writeln(arquivo,#27+#51);
  WRITELN(arquivo,#15+#27#72+#20,'');
  writeln(arquivo,'');
  writeln(arquivo,'                                                                                                                             '+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('numero').asstring,6,'0','E')+#15+#27#72+#20);
  WRITELN(arquivo,'                                                                                                  X');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('natureza').asstring,41,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('CFOP').asstring,6,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('NOME').asstring,90,' ','D')+' '+ frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CPF').asstring,32,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('ENDERECO').asstring,68,' ','D')+' '+ frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('BAIRRO').asstring,24,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CEP').asstring,29,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CIDADE').asstring,50,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('TELEFONE1').asstring+'  '+frmmodulo.qrCLIENTE.fieldbyname('TELEFONE2').asstring,27,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('UF').asstring,6,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('RG').asstring,38,' ','D')+' '+
                  frmprincipal.Texto_Justifica(timetostr(time),10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat <> 0 then texto1 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat);
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat <> 0 then texto2 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat);
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO1').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto1,15,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA1').asstring,17,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO2').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto2,16,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA2').asstring,10,' ','D'));
  writeln(arquivo,'');
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR3').asfloat <> 0 then texto1 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat) else texto1 := '';
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR4').asfloat <> 0 then texto2 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat) else texto2 := '';
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO3').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto1,15,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA3').asstring,17,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO4').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto2,16,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA4').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');

  frmprevenda.qrapoio.Open;
  frmprevenda.Refresh;
  frmprevenda.qrapoio.first;
  while not frmprevenda.qrapoio.Eof do
  begin
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('codproduto').asstring,9,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('Produto').asstring,59,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('CF').asstring,0,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('STR').asstring,5,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('UN').asstring,3,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('QTDE').asstring,9,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('UNITARIO').asstring,13,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('TOTAL').asstring,18,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('ICMS').asstring,4,' ','E')+' ');
    writeln(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('IPI').asstring,3,' ','E'));
    writeln(arquivo,'');
    frmprevenda.qrapoio.next;
  end;

  if (frmmodulo.qrnotafiscal.fieldbyname('BASE_CALCULO').asfloat <> 0) and (frmprincipal.vfil_ssimples = 'N')  then texto1 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('BASE_CALCULO').asfloat) else texto1 := '';
  if (frmmodulo.qrnotafiscal.fieldbyname('VALOR_ICMS').asfloat <> 0) and (frmprincipal.vfil_ssimples = 'N')  then texto2 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('VALOR_ICMS').asfloat) else texto2 := '';
  if (frmmodulo.qrnotafiscal.fieldbyname('BASE_SUB').asfloat <> 0) and (frmprincipal.vfil_ssimples = 'N')  then texto3 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('BASE_SUB').asfloat) else texto3 := '';
  if (frmmodulo.qrnotafiscal.fieldbyname('ICMS_SUB').asfloat <> 0) and (frmprincipal.vfil_ssimples = 'N')  then texto4 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('ICMS_SUB').asfloat) else texto4 := '';

  if frmmodulo.qrnotafiscal.fieldbyname('VALOR_PRODUTOS').asfloat <> 0 then texto5 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('VALOR_PRODUTOS').asfloat) else texto5 := '';
  write(arquivo,frmprincipal.Texto_Justifica(texto1,24,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto2,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto3,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto4,25,' ','E')+' ');
  writeLN(arquivo,frmprincipal.Texto_Justifica(texto5,25,' ','E')+' ');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  if frmmodulo.qrnotafiscal.fieldbyname('FRETE').asfloat <> 0 then texto1 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('FRETE').asfloat) else texto1 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('SEGURO').asfloat <> 0 then texto2 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('SEGURO').asfloat) else texto2 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('OUTRAS_DESPESAS').asfloat <> 0 then texto3 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('OUTRAS_DESPESAS').asfloat) else texto3 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('VALOR_TOTAL_IPI').asfloat <> 0 then texto4 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('VALOR_TOTAL_IPI').asfloat) else texto4 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('TOTAL_NOTA').asfloat <> 0 then texto5 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('TOTAL_NOTA').asfloat) else texto5 := '';
  write(arquivo,frmprincipal.Texto_Justifica(texto1,24,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto2,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto3,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto4,25,' ','E')+' ');
  writeLN(arquivo,frmprincipal.Texto_Justifica(texto5,25,' ','E')+' ');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transportador').asstring,74,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('FRETE_CONTA').asstring,4,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('placa').asstring,18,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('placa_uf').asstring,8,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_cpf').asstring,25,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_ENDERECO').asstring,59,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('TRANSP_CIDADE').asstring,37,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('TRANSP_UF').asstring,15,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_RG').asstring,25,' ','D'));
//  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_QTDE').asstring,22,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_ESPECIE').asstring,25,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_MARCA').asstring,20,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_NUMERO').asstring,25,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('PESO_BRUTO').asstring,20,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('PESO_LIQUIDO').asstring,20,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF1').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF2').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF3').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF4').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF5').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');

  writeln(arquivo,'                                                                                                                             '+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('numero').asstring,6,'0','E')+#15+#27#72+#20);
  writeln(arquivo,#27+#50);
//  WRITELN(ARQUIVO,#12);

  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');


       frmmodulo.qrvenda.edit;
  FRMMODULO.QRVENDA.FIELDBYNAME('NUMERO_CUPOM_FISCAL').ASSTRING := FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('NUMERO').ASSTRING;
       frmmodulo.qrvenda.post;

  CLOSEFILE(arquivo);


        frmmodulo.qrfilial.edit;
        frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger := frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger + 1;
        frmmodulo.qrfilial.post;



  application.MessageBox('Pressione [ENTER] para Imprimir a Nota Fiscal de Saída.','Aviso',mb_ok+MB_ICONINFORMATION);


  frmmodulo.qrnotafiscal.close;
  frmmodulo.qrnotafiscal.sql.clear;
  frmmodulo.qrnotafiscal.sql.add('select * from c000061');
  frmmodulo.qrnotafiscal.open;

  frmmodulo.qrnotafiscal.insert;
  frmmodulo.qrnotafiscal.FieldByName('codfilial').asstring := '000001';
  frmmodulo.qrnotafiscal.FieldByName('codigo').asstring := frmprincipal.codifica('000061');
  frmmodulo.qrfilial.open;
  frmmodulo.qrfilial.Locate('codigo','000001',[loCaseInsensitive]);


  frmprevenda_nf_loja := tfrmprevenda_nf_loja.create(self);
  frmprevenda_nf_loja.enf.text := frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('notafiscal').asstring,6);
  frmprevenda_nf_loja.showmodal;
  frmmodulo.qrnotafiscal.fieldbyname('numero').asstring := numero_notaz;

  frmmodulo.qrnotafiscal.fieldbyname('cfop').asstring := '5102';
  frmmodulo.qrnotafiscal.fieldbyname('data').asstring := frmmodulo.qrvenda.fieldbyname('data').asstring;
  frmmodulo.qrnotafiscal.fieldbyname('data_saida').asstring := frmmodulo.qrvenda.fieldbyname('data').asstring;
  frmmodulo.qrnotafiscal.fieldbyname('hora').asstring := timetostr(time);
  frmmodulo.qrnotafiscal.fieldbyname('codcliente').asstring := frmmodulo.qrvenda.fieldbyname('codcliente').asstring;

  frmmodulo.qrnotafiscal.fieldbyname('desconto').asfloat := frmmodulo.qrvenda.fieldbyname('desconto').asfloat;
  frmmodulo.qrnotafiscal.fieldbyname('situacao').asinteger := 1;
  frmmodulo.qrnotafiscal.fieldbyname('INF1').asSTRING := 'DOCUMENTO EMITIDO POR ME OU EPP';

  if frmprincipal.vfil_simples  = 'S' then frmmodulo.qrnotafiscal.fieldbyname('INF2').asSTRING := 'OPTANTE PELO SIMPLES NACIONAL';
  if frmprincipal.vfil_ssimples = 'S' then frmmodulo.qrnotafiscal.fieldbyname('INF2').asSTRING := 'OPTANTE PELO SUPER SIMPLES';

  frmmodulo.qrnotafiscal.fieldbyname('INF3').asSTRING := 'NAO GERA DIREITO A CREDITO FISCAL DE ICMS E DE ISS';
  frmmodulo.qrnotafiscal.fieldbyname('situacao_A').ASSTRING := 'A';
  frmmodulo.qrnotafiscal.fieldbyname('MODELO_NF').ASSTRING := '01';
  frmmodulo.qrnotafiscal.fieldbyname('SERIE_NF').ASSTRING := '';
  frmmodulo.qrnotafiscal.fieldbyname('SIT').ASSTRING := 'N';



    qrnotafiscal_item.close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.SQL.add('select * from c000062 where codnota = '''+frmmodulo.qrnotafiscal.fieldbyname('codigo').asstring+'''');
    qrnotafiscal_item.open;



 BASE_CALCULO := 0;
 ICMS := 0;

  tn := 0;
  frmprevenda.qrorcamento_produto.FIRST;
  WHILE NOT frmprevenda.qrorcamento_produto.Eof DO
  BEGIN
     if frmprevenda.qrorcamento_produto.FieldByName('qtde').asfloat > 0 then
     begin
       QRNOTAFISCAL_ITEM.INSERT;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CODNOTA').ASSTRING := FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('CODIGO').ASSTRING;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CODPRODUTO').ASSTRING := frmprevenda.qrorcamento_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT := frmprevenda.qrorcamento_produto.FIELDBYNAME('QTDE').ASFLOAT;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT := frmprevenda.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT/frmprevenda.qrorcamento_produto.FIELDBYNAME('QTDE').ASFLOAT;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := frmprevenda.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CFOP').ASSTRING := '5102';
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := frmprevenda.qrorcamento_produto.FIELDBYNAME('CST').ASSTRING;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('ICMS').ASSTRING := frmprevenda.qrorcamento_produto.FIELDBYNAME('ALIQUOTA').ASSTRING;
       qrnotafiscal_item.fieldbyname('codlancamento').asstring := 'XXXXXX';

       tn := tn + frmprevenda.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT;

       IF frmprevenda.qrorcamento_produto.FIELDBYNAME('ALIQUOTA').ASFLOAT > 0 THEN
       BEGIN
         BASE_CALCULO := BASE_CALCULO + frmprevenda.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT;
         ICMS :=  ICMS + (BASE_CALCULO * (frmprevenda.qrorcamento_produto.FIELDBYNAME('ALIQUOTA').ASFLOAT/100));
       END;
       QRNOTAFISCAL_ITEM.POST;
     end;

     //tn := tn + frmprevenda.qrorcamento_produto.FIELDBYNAME('TOTAL').ASFLOAT;

     frmprevenda.qrorcamento_produto.NEXT;
  END;
  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('BASE_CALCULO').ASFLOAT := BASE_CALCULO;
  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('VALOR_ICMS').ASFLOAT := ICMS;

  frmmodulo.qrnotafiscal.fieldbyname('valor_produtos').asfloat := tn;
  frmmodulo.qrnotafiscal.fieldbyname('total_nota').asfloat := tn;


  frmmodulo.qrnotafiscal.post;


        VALOR_NOTAZ := frmmodulo.qrnotafiscal.fieldbyname('total_nota').asfloat;


   BAPOIOClick(frmprevenda_IMPRESSAO_loja);

   APPLICATION.ProcessMessages;






  assignfile(arquivo,porta_impressora);
  rewrite(arquivo);
  writeln(arquivo,#27+#51);
  WRITELN(arquivo,#15+#27#72+#20,'');
  writeln(arquivo,'');
  writeln(arquivo,'                                                                                                                             '+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('numero').asstring,6,'0','E')+#15+#27#72+#20);
  WRITELN(arquivo,'                                                                                   X');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('natureza').asstring,41,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('CFOP').asstring,6,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('NOME').asstring,90,' ','D')+' '+ frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CPF').asstring,32,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('ENDERECO').asstring,68,' ','D')+' '+ frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('BAIRRO').asstring,24,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CEP').asstring,29,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('CIDADE').asstring,50,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('TELEFONE1').asstring+'  '+frmmodulo.qrCLIENTE.fieldbyname('TELEFONE2').asstring,27,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('UF').asstring,6,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrCLIENTE.fieldbyname('RG').asstring,38,' ','D')+' '+
                  frmprincipal.Texto_Justifica(timetostr(time),10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat <> 0 then texto1 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat);
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat <> 0 then texto2 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat);
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO1').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto1,15,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA1').asstring,17,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO2').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto2,16,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA2').asstring,10,' ','D'));
  writeln(arquivo,'');
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR3').asfloat <> 0 then texto1 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR1').asfloat) else texto1 := '';
  IF frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR4').asfloat <> 0 then texto2 := formatfloat('###,###,##0.00',frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_VALOR2').asfloat) else texto2 := '';
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO3').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto1,15,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA3').asstring,17,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_NUMERO4').asstring,31,' ','D')+' '+
                  frmprincipal.Texto_Justifica(texto2,16,' ','E')+'     '+
                  frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('FATURAMENTO_DATA4').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');
//  writeln(arquivo,'');

  frmprevenda.qrapoio.Open;
  frmprevenda.Refresh;
  frmprevenda.qrapoio.first;
  while not frmprevenda.qrapoio.Eof do
  begin
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('codproduto').asstring,9,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('Produto').asstring,59,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('CF').asstring,0,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('STR').asstring,5,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('UN').asstring,3,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('QTDE').asstring,9,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('UNITARIO').asstring,13,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('TOTAL').asstring,18,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('ICMS').asstring,4,' ','E')+' ');
    writeln(arquivo,frmprincipal.Texto_Justifica(frmprevenda.qrapoio.fieldbyname('IPI').asstring,3,' ','E'));
    writeln(arquivo,'');
    frmprevenda.qrapoio.next;
  end;

  if (frmmodulo.qrnotafiscal.fieldbyname('BASE_CALCULO').asfloat <> 0)  and (frmprincipal.vfil_ssimples = 'N') then texto1 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('BASE_CALCULO').asfloat) else texto1 := '';
  if (frmmodulo.qrnotafiscal.fieldbyname('VALOR_ICMS').asfloat <> 0)  and (frmprincipal.vfil_ssimples = 'N') then texto2 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('VALOR_ICMS').asfloat) else texto2 := '';
  if (frmmodulo.qrnotafiscal.fieldbyname('BASE_SUB').asfloat <> 0)  and (frmprincipal.vfil_ssimples = 'N') then texto3 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('BASE_SUB').asfloat) else texto3 := '';
  if (frmmodulo.qrnotafiscal.fieldbyname('ICMS_SUB').asfloat <> 0)  and (frmprincipal.vfil_ssimples = 'N') then texto4 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('ICMS_SUB').asfloat) else texto4 := '';

  if frmmodulo.qrnotafiscal.fieldbyname('VALOR_PRODUTOS').asfloat <> 0 then texto5 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('VALOR_PRODUTOS').asfloat) else texto5 := '';
  write(arquivo,frmprincipal.Texto_Justifica(texto1,24,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto2,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto3,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto4,25,' ','E')+' ');
  writeLN(arquivo,frmprincipal.Texto_Justifica(texto5,25,' ','E')+' ');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  if frmmodulo.qrnotafiscal.fieldbyname('FRETE').asfloat <> 0 then texto1 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('FRETE').asfloat) else texto1 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('SEGURO').asfloat <> 0 then texto2 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('SEGURO').asfloat) else texto2 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('OUTRAS_DESPESAS').asfloat <> 0 then texto3 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('OUTRAS_DESPESAS').asfloat) else texto3 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('VALOR_TOTAL_IPI').asfloat <> 0 then texto4 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('VALOR_TOTAL_IPI').asfloat) else texto4 := '';
  if frmmodulo.qrnotafiscal.fieldbyname('TOTAL_NOTA').asfloat <> 0 then texto5 := FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscal.fieldbyname('TOTAL_NOTA').asfloat) else texto5 := '';
  write(arquivo,frmprincipal.Texto_Justifica(texto1,24,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto2,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto3,25,' ','E')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(texto4,25,' ','E')+' ');
  writeLN(arquivo,frmprincipal.Texto_Justifica(texto5,25,' ','E')+' ');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transportador').asstring,74,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('FRETE_CONTA').asstring,4,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('placa').asstring,18,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('placa_uf').asstring,8,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_cpf').asstring,25,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_ENDERECO').asstring,59,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('TRANSP_CIDADE').asstring,37,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('TRANSP_UF').asstring,15,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('transp_RG').asstring,25,' ','D'));
//  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_QTDE').asstring,22,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_ESPECIE').asstring,25,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_MARCA').asstring,20,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('VOL_NUMERO').asstring,25,' ','D')+' ');
  write(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('PESO_BRUTO').asstring,20,' ','D')+' ');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('PESO_LIQUIDO').asstring,20,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF1').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF2').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF3').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF4').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('INF5').asstring,80,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');

  writeln(arquivo,'                                                                                                                             '+#18+#27#71+#20+frmprincipal.Texto_Justifica(frmmodulo.qrnotafiscal.fieldbyname('numero').asstring,6,'0','E')+#15+#27#72+#20);
  writeln(arquivo,#27+#50);
//  WRITELN(ARQUIVO,#12);

  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');


       frmmodulo.qrvenda.edit;
  FRMMODULO.QRVENDA.FIELDBYNAME('NUMERO_CUPOM_FISCAL').ASSTRING := FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('NUMERO').ASSTRING;
       frmmodulo.qrvenda.post;

  CLOSEFILE(arquivo);

        frmmodulo.qrfilial.edit;
        frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger := frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger + 1;
        frmmodulo.qrfilial.post;




   IF APPLICATION.MESSAGEBOX('Deseja imprimir as duplicatas?','Aviso',mb_yesno+mb_iconquestion) = idyes then
   begin
      button1click(frmprevenda_impressao_loja);

   end;
   




end;

end.


