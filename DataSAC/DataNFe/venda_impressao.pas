unit venda_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxDBSet, AdvGlowButton, AdvShapeButton, IBDatabase,
  IBCustomDataSet, IBQuery, MemDS, DBAccess, IBC;

type
  Tfrmvenda_impressao = class(TForm)
    PopupMenu1: TPopupMenu;
    TPCupom_Fiscal: TMenuItem;
    TPNota_Fiscal: TMenuItem;
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
    Bevel2: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Label3: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Label1: TLabel;
    bgravar: TAdvGlowButton;
    evias: TSpinEdit;
    qrapoio: TZQuery;
    qrapoioCODPRODUTO: TStringField;
    qrapoioPRODUTO: TStringField;
    qrapoioCF: TStringField;
    qrapoioSTR: TStringField;
    qrapoioUN: TStringField;
    qrapoioQTDE: TStringField;
    qrapoioUNITARIO: TStringField;
    qrapoioTOTAL: TStringField;
    qrapoioICMS: TStringField;
    qrapoioIPI: TStringField;
    qrapoioIPI_ALIQUOTA: TStringField;
    qrapoioTEXTO1: TStringField;
    qrapoioTEXTO2: TStringField;
    qrapoioTEXTO3: TStringField;
    qrapoioTEXTO4: TStringField;
    qrapoioTEXTO6: TStringField;
    qrapoioTEXTO7: TStringField;
    qrapoioTEXTO8: TStringField;
    qrapoioTEXTO9: TStringField;
    qrapoioTEXTO10: TStringField;
    qrnotafiscal: TZQuery;
    qrnotafiscal_itemDESCONTO: TFloatField;
    qrnotafiscal_itemSUBTOTAL: TFloatField;
    qrvenda: TZQUERY;
    qrvendaCODIGO: TIBStringField;
    qrvendaCODCAIXA: TIBStringField;
    qrvendaCODVENDEDOR: TIBStringField;
    qrvendaDATA: TDateTimeField;
    qrvendaCODCLIENTE: TIBStringField;
    qrvendaOBS: TIBStringField;
    qrvendaMEIO_DINHEIRO: TFloatField;
    qrvendaMEIO_CHEQUEAV: TFloatField;
    qrvendaMEIO_CHEQUEAP: TFloatField;
    qrvendaMEIO_CARTAOCRED: TFloatField;
    qrvendaMEIO_CARTAODEB: TFloatField;
    qrvendaMEIO_CREDIARIO: TFloatField;
    qrvendaSUBTOTAL: TFloatField;
    qrvendaDESCONTO: TFloatField;
    qrvendaACRESCIMO: TFloatField;
    qrvendaTOTAL: TFloatField;
    qrvendaCUPOM_FISCAL: TIntegerField;
    qrvendaNUMERO_CUPOM_FISCAL: TIBStringField;
    qrvendaRETIRADO: TIBStringField;
    qrvendaMEIO_CONVENIO: TFloatField;
    qrvendaP5: TFloatField;
    qrvendaP3: TFloatField;
    qrvendaCLIENTE: TIBStringField;
    qrvendaVENDEDOR: TIBStringField;
    IBQuery1: TZQUERY;
    qrvenda3: TZQUERY;
    qrvenda3CODIGO: TIBStringField;
    qrvenda3CODCAIXA: TIBStringField;
    qrvenda3CODVENDEDOR: TIBStringField;
    qrvenda3DATA: TDateTimeField;
    qrvenda3CODCLIENTE: TIBStringField;
    qrvenda3OBS: TIBStringField;
    qrvenda3MEIO_DINHEIRO: TFloatField;
    qrvenda3MEIO_CHEQUEAV: TFloatField;
    qrvenda3MEIO_CHEQUEAP: TFloatField;
    qrvenda3MEIO_CARTAOCRED: TFloatField;
    qrvenda3MEIO_CARTAODEB: TFloatField;
    qrvenda3MEIO_CREDIARIO: TFloatField;
    qrvenda3SUBTOTAL: TFloatField;
    qrvenda3DESCONTO: TFloatField;
    qrvenda3ACRESCIMO: TFloatField;
    qrvenda3TOTAL: TFloatField;
    qrvenda3CUPOM_FISCAL: TIntegerField;
    qrvenda3NUMERO_CUPOM_FISCAL: TIBStringField;
    qrvenda3RETIRADO: TIBStringField;
    qrvenda3MEIO_CONVENIO: TFloatField;
    qrvenda3P5: TFloatField;
    qrvenda3P3: TFloatField;
    qrvenda3CLIENTE: TIBStringField;
    qrvenda3VENDEDOR: TIBStringField;
    qrcliente: TZQUERY;
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
  frmvenda_impressao: Tfrmvenda_impressao;
  porta_impressora : string;
   CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, CLIENTE_ENDERECO, CLIENTE_BAIRRO, CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF, CLIENTE_CODIGO : STRING;

implementation

uses modulo, principal, venda, venda_fechamento, ecf, venda_relrazao,
  extenso1, venda_contasreceber, venda_nf, rel_nf, nf_obs;

{$R *.dfm}

procedure Tfrmvenda_impressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmvenda_impressao.bgravarClick(Sender: TObject);
begin
  case combo_modelo.ItemIndex of
  0 : TPCupom_FiscalClick(frmvenda_impressao);
  1 : TPNota_FiscalClick(frmvenda_impressao);
  2 : NFCupom1click(frmvenda_impressao);
  3 : NFNF1click(frmvenda_impressao);
  END;






  close;
end;

procedure Tfrmvenda_impressao.FormShow(Sender: TObject);
begin


  qrvenda.close;
  qrvenda.sql.clear;
  qrvenda.sql.add('select venda.*,');
  qrvenda.sql.add('cli.nome cliente,');
  qrvenda.sql.add('vend.nome vendedor');
  qrvenda.sql.add('from');
  qrvenda.sql.add('c000048 venda,');
  qrvenda.sql.add('c000007 cli,');
  qrvenda.sql.add('c000008 vend');
  qrvenda.sql.add('where');
  qrvenda.sql.add('venda.codcliente = cli.codigo and');
  qrvenda.sql.add('venda.codvendedor = vend.codigo');
  qrvenda.sql.add('and venda.codigo = '''+frmvenda.lvenda_codigo.caption+'''');
  qrvenda.open;









  frmmodulo.qrconfig.open;
//  combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('VENDA_TIPONOTA').asinteger;
  evias.Value := frmmodulo.qrconfig.FieldByName('VENDA_QTDE_VIAS_NOTA').asinteger;
  porta_impressora := frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').asstring;

  frmvenda.qrvenda_produto.First;
  while NOT frmvenda.qrvenda_produto.Eof do
  begin

    if frmvenda.qrvenda_produto.FieldByName('qtde').asfloat < 0 then
    begin
      if frmvenda_fechamento.rcrediario.Value > 0 then
        combo_modelo.ItemIndex := 3
      else
        combo_modelo.ItemIndex := 2;
      break;
    end;
    frmvenda.qrvenda_produto.Next;
  end;



     CLIENTE_NOME := frmvenda.qrcliente.fieldbyname('nome').asstring;
     CLIENTE_ENDERECO := frmvenda.qrcliente.fieldbyname('endereco').asstring;
     CLIENTE_BAIRRO := frmvenda.qrcliente.fieldbyname('bairro').asstring;
     CLIENTE_CIDADE := frmvenda.qrcliente.fieldbyname('cidade').asstring;
     CLIENTE_UF := frmvenda.qrcliente.fieldbyname('uf').asstring;
     CLIENTE_CEP := frmvenda.qrcliente.fieldbyname('cep').asstring;
     CLIENTE_TELEFONE := frmvenda.qrcliente.fieldbyname('telefone1').asstring+'/'+frmvenda.qrcliente.fieldbyname('celular').asstring+'/'+frmvenda.qrcliente.fieldbyname('telefone2').asstring;
     CLIENTE_CPF := frmvenda.qrcliente.fieldbyname('cpf').asstring;
     CLIENTE_RG := frmvenda.qrcliente.fieldbyname('rg').asstring;
     CLIENTE_CODIGO := frmvenda.qrcliente.fieldbyname('CODIGO').asstring;








end;

procedure Tfrmvenda_impressao.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.SetFocus;
end;

procedure Tfrmvenda_impressao.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmvenda_impressao.TPNota_FiscalClick(Sender: TObject);
var f , arquivo: textfile;
TEXTO8, texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7 : string;
i , a: integer;
NNOTA, cfops : INTEGER;

vvalor_cfop1,vvalor_cfop2 : double;
vcfop1,vcfop2 : string;
cfop : string;
linha : integer;
    BASE_CALCULO , ICMS, tn : real;

    desconto_nota : real;
begin

   frmmodulo.qrconfig.Open;
   IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
   BEGIN
  (* M O N T A R     D A D O S    P A R A     A   N O T A    F I S C A L *)

     desconto_nota := frmvenda_fechamento.rdesconto2.value;

     qrcliente.close;
     qrcliente.sql.clear;
     qrcliente.sql.add('select * from c000007 where codigo = '''+FRMVENDA.lcliente_codigo.Caption+'''');
     qrcliente.open;

     vcfop1 := '';
     vcfop2 := '';

     qrnotafiscal.close;
     qrnotafiscal.sql.clear;
     qrnotafiscal.sql.add('select * from c000061');
     qrnotafiscal.open;

     qrnotafiscal.insert;
     qrnotafiscal.FieldByName('codfilial').asstring := '000001';
     qrnotafiscal.FieldByName('codigo').asstring := frmprincipal.codifica('000061');
     frmmodulo.qrfilial.open;
     frmmodulo.qrfilial.Locate('codigo','000001',[loCaseInsensitive]);

    frmvenda_nf := tfrmvenda_nf.create(self);
    frmvenda_nf.enf.text := frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('notafiscal').asstring,6);

    frmvenda_nf.showmodal;

    qrnotafiscal.fieldbyname('numero').asstring := numero_notaz;
    qrnotafiscal.fieldbyname('data').asstring := frmvenda.lvenda_data.caption;
    qrnotafiscal.fieldbyname('data_saida').asstring :=  frmvenda.lvenda_data.caption;
    qrnotafiscal.fieldbyname('hora').asstring := timetostr(time);
    qrnotafiscal.fieldbyname('codcliente').asstring :=  frmvenda.lcliente_codigo.caption;

    qrnotafiscal.fieldbyname('valor_produtos').asfloat := qrvenda.fieldbyname('subtotal').asfloat;
    qrnotafiscal.fieldbyname('total_nota').asfloat     := qrvenda.fieldbyname('total').asfloat;



    qrnotafiscal.fieldbyname('desconto').asfloat       := qrvenda.fieldbyname('desconto').asfloat;

    qrnotafiscal.fieldbyname('situacao').asinteger := 1;
    qrnotafiscal.fieldbyname('situacao_A').ASSTRING := 'A';
    qrnotafiscal.fieldbyname('MODELO_NF').ASSTRING := '01';
    qrnotafiscal.fieldbyname('SERIE_NF').ASSTRING := '';
    qrnotafiscal.fieldbyname('SIT').ASSTRING := 'N';
    qrnotafiscal.FIELDBYNAME('MOVIMENTO').ASSTRING := 'S';
    QRNOTAFISCAL.FIELDBYNAME('BAIXA_ESTOQUE').ASSTRING := 'N';

    qrnotafiscal_item.close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.SQL.add('select * from c000062 where codnota = '''+qrnotafiscal.fieldbyname('codigo').asstring+'''');
    qrnotafiscal_item.open;

    BASE_CALCULO := 0;
    ICMS := 0;

    tn := 0;

              qrnotafiscal.fieldbyname('INF1').asSTRING := '';
              qrnotafiscal.fieldbyname('INF2').asSTRING := '';
              qrnotafiscal.fieldbyname('INF3').asSTRING := '';

       texto1 := '';
       texto2 := '';
       texto3 := '';




    qrnotafiscal_item.close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.SQL.add('select * from c000062 where codnota = '''+qrnotafiscal.fieldbyname('codigo').asstring+'''');
    qrnotafiscal_item.open;



 BASE_CALCULO := 0;
 ICMS := 0;

   if VENDA_VEICULO then
   begin
            QRNOTAFISCAL_ITEM.INSERT;
         QRNOTAFISCAL_ITEM.FIELDBYNAME('CODNOTA').ASSTRING :=qrnotafiscal.FIELDBYNAME('CODIGO').ASSTRING;
         QRNOTAFISCAL_ITEM.FIELDBYNAME('CODPRODUTO').ASSTRING := frmvenda.qrvenda_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
         QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT := frmvenda.qrvenda_produto.FIELDBYNAME('QTDE').ASFLOAT;
         QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := frmvenda.qrvenda_produto.FIELDBYNAME('total').ASFLOAT;






         QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT := FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT/FRMVENDA.qrvenda_produto.FIELDBYNAME('QTDE').ASFLOAT;
         if qrcliente.fieldbyname('uf').asstring = frmmodulo.qrFilial.fieldbyname('uf').asstring then
         begin
           vcfop1 := '5405';
           QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING  := '060';
           qrnotafiscal_item.fieldbyname('icms').asstring := '0';
           qrnotafiscal_item.fieldbyname('cfop').asstring := '5405';
         end
         else
         begin
           vcfop1 := '6404';
           QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING  := '060';
           qrnotafiscal_item.fieldbyname('icms').asstring := '0';
           qrnotafiscal_item.fieldbyname('cfop').asstring := '6404';
         end;
         texto1 := 'ISENTO DE ICMS CONF. SUB. TRIB. CONV. 52/93 E 88/94';
         TEXTO2 := FRMVENDA.EDIT1.TEXT;
         QRNOTAFISCAL_ITEM.POST;

     qrapoio.close;
     qrapoio.sql.clear;
     qrapoio.sql.add('delete from cl00004');
     qrapoio.execsql;
     qrapoio.close;
     qrapoio.sql.clear;
     qrapoio.sql.add('select * from cl00004 order by texto10');
     qrapoio.open;
      a := 1;

     for i := 0 to frmvenda.Memo1.Lines.Count - 1 do
     begin
      qrapoio.insert;
      if i = 0 then
       qrapoio.fieldbyname('codproduto').asstring :=    qrnotafiscal_item.fieldbyname('codproduto').asstring
      else
      qrapoio.fieldbyname('codproduto').asstring :=    '';
      qrapoio.fieldbyname('produto').asstring :=       FRMVENDA.Memo1.Lines[i];
      if i = (frmvenda.Memo1.Lines.Count - 1) then
      begin


       qrapoio.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000',qrnotafiscal_item.fieldbyname('qtde').asfloat);
       qrapoio.fieldbyname('unitario').asstring := formatfloat('###,###,##0.0000',qrnotafiscal_item.fieldbyname('unitario').asfloat);
       qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00',qrnotafiscal_item.fieldbyname('total').asfloat);

        qrapoio.fieldbyname('cf').asstring :=   qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
        qrapoio.fieldbyname('str').asstring :=  qrnotafiscal_item.fieldbyname('cst').asstring;
        qrapoio.fieldbyname('un').asstring :=   qrnotafiscal_item.fieldbyname('unidade').asstring;
        qrapoio.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
        qrapoio.fieldbyname('ipi').asstring :=  qrnotafiscal_item.fieldbyname('ipi').asstring;
       end;
       qrapoio.fieldbyname('texto10').asstring := frmprincipal.zerarcodigo(inttostr(a),6);
       a := a + 1;
       qrapoio.post;
     end;
     qrnotafiscal.FIELDBYNAME('BASE_CALCULO').ASFLOAT := BASE_CALCULO;
     qrnotafiscal.FIELDBYNAME('VALOR_ICMS').ASFLOAT := ICMS;
     qrnotafiscal.fieldbyname('cfop').asstring := vcfop1;
     qrnotafiscal.post;



   


   end
   else
   begin


     frmvenda.qrvenda_produto.First;
     while not frmvenda.qrvenda_produto.Eof do
     begin
         QRNOTAFISCAL_ITEM.INSERT;
         QRNOTAFISCAL_ITEM.FIELDBYNAME('CODNOTA').ASSTRING    := qrnotafiscal.FIELDBYNAME('CODIGO').ASSTRING;
         QRNOTAFISCAL_ITEM.FIELDBYNAME('CODPRODUTO').ASSTRING := frmvenda.qrvenda_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
         QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT        := frmvenda.qrvenda_produto.FIELDBYNAME('QTDE').ASFLOAT;
         QRNOTAFISCAL_ITEM.FIELDBYNAME('desconto').ASFLOAT    := frmvenda.qrvenda_produto.FIELDBYNAME('desconto').ASFLOAT;
         QRNOTAFISCAL_ITEM.FIELDBYNAME('subtotal').ASFLOAT    := frmvenda.qrvenda_produto.FIELDBYNAME('total').ASFLOAT - frmvenda.qrvenda_produto.FIELDBYNAME('desconto').ASFLOAT;
         QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT    := FRMVENDA.qrvenda_produto.FIELDBYNAME('unitario').ASFLOAT;
         QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT       := FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT;

         if desconto_nota > 0 then
         begin
           QRNOTAFISCAL_ITEM.FIELDBYNAME('desconto').ASFLOAT := QRNOTAFISCAL_ITEM.FIELDBYNAME('desconto').ASFLOAT +

           (desconto_nota * (((QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT * 100)/frmvenda_fechamento.rsubtotal.value)/100));

           QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT * QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT - QRNOTAFISCAL_ITEM.FIELDBYNAME('desconto').ASFLOAT ;
         end;







         if frmvenda.qrvenda_produto.recordcount > 0 then
         begin
           if frmvenda.qrvenda_produto.FieldByName('cst').asstring = '000' then
           begin
             if qrcliente.fieldbyname('uf').asstring = frmmodulo.qrFilial.fieldbyname('uf').asstring then
             begin
                vcfop1 := '5102';
               QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := '000';
               qrnotafiscal_item.fieldbyname('icms').asstring := frmvenda.qrvenda_produto.fieldbyname('ALIQUOTA').asstring;
               qrnotafiscal_item.fieldbyname('cfop').asstring := '5102';
             end
             else
             begin
                vcfop1 := '6102';
               QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := '000';
               qrnotafiscal_item.fieldbyname('icms').asstring := frmvenda.qrvenda_produto.fieldbyname('ALIQUOTA').asstring;
               qrnotafiscal_item.fieldbyname('cfop').asstring := '6102';
             end;
             base_calculo := base_calculo +QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT;
             if frmvenda.qrvenda_produto.fieldbyname('ALIQUOTA').asfloat > 0 then
             ICMS := icms + (QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT * (frmvenda.qrvenda_produto.fieldbyname('ALIQUOTA').asfloat/100))
           end
           else
           begin
             if qrcliente.fieldbyname('uf').asstring = frmmodulo.qrFilial.fieldbyname('uf').asstring then
             begin
                vcfop2 := '5405';
               QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := frmvenda.qrvenda_produto.fieldbyname('cst').asstring;
               qrnotafiscal_item.fieldbyname('icms').asstring := frmvenda.qrvenda_produto.fieldbyname('ALIQUOTA').asstring;
               qrnotafiscal_item.fieldbyname('cfop').asstring := '5405';
             end
             else
             begin
                vcfop2 := '6405';
               QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := frmvenda.qrvenda_produto.fieldbyname('cst').asstring;
               qrnotafiscal_item.fieldbyname('icms').asstring := frmvenda.qrvenda_produto.fieldbyname('ALIQUOTA').asstring;
               qrnotafiscal_item.fieldbyname('cfop').asstring := '6405';
             end;
             texto1 := 'ICMS RETIDO NA FASE ANTERIOR DE COMERCIALIZAÇÃO';
             TEXTO2 := 'CONFORME CONVÊNIO DO ICMS 03/99';
           end;
         end
         else
         begin
             if qrcliente.fieldbyname('uf').asstring = frmmodulo.qrFilial.fieldbyname('uf').asstring then
             begin
                vcfop1 := '5102';
               QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := '000';
               qrnotafiscal_item.fieldbyname('icms').asstring := '17';
               qrnotafiscal_item.fieldbyname('cfop').asstring := '5102';
             end
             else
             begin
                vcfop1 := '6102';
               QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := '000';
               qrnotafiscal_item.fieldbyname('icms').asstring := '17';
               qrnotafiscal_item.fieldbyname('cfop').asstring := '6102';
             end;
             base_calculo := base_calculo + QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT;
             if frmvenda.qrvenda_produto.fieldbyname('ALIQUOTA').asfloat > 0 then
             ICMS := icms + (QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT * (frmvenda.qrvenda_produto.fieldbyname('ALIQUOTA').asfloat/100))

         end;

         tn := tn + QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT;
         QRNOTAFISCAL_ITEM.POST;
       frmvenda.qrvenda_produto.NEXT;
    END;
  if vcfop1 = '' then
  begin
    vcfop1 := vcfop2;
    vcfop2 := '';
  end;




  qrnotafiscal.FIELDBYNAME('BASE_CALCULO').ASFLOAT := BASE_CALCULO;
  qrnotafiscal.FIELDBYNAME('VALOR_ICMS').ASFLOAT := ICMS;

 qrnotafiscal.fieldbyname('cfop').asstring := vcfop1;

 qrnotafiscal.post;



   qrapoio.close;
  qrapoio.sql.clear;
  qrapoio.sql.add('delete from cl00004');
  qrapoio.execsql;
  qrapoio.close;
  qrapoio.sql.clear;
  qrapoio.sql.add('select * from cl00004 order by texto10');
  qrapoio.open;

  I := 1;
  QRNOTAFISCAL_ITEM.FIRST;
  WHILE NOT QRNOTAFISCAL_ITEM.EOF DO
  BEGIN
      qrapoio.insert;
      qrapoio.fieldbyname('codproduto').asstring :=    qrnotafiscal_item.fieldbyname('codproduto').asstring;
      qrapoio.fieldbyname('produto').asstring :=       qrnotafiscal_item.fieldbyname('produto').asstring;
      if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then qrapoio.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000',qrnotafiscal_item.fieldbyname('qtde').asfloat);
      if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then qrapoio.fieldbyname('unitario').asstring := formatfloat('###,###,##0.0000',qrnotafiscal_item.fieldbyname('unitario').asfloat);
      if desconto_nota > 0 then
        if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then  qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00',qrnotafiscal_item.fieldbyname('subtotal').asfloat)
      else
        if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then  qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00',qrnotafiscal_item.fieldbyname('total').asfloat);

      qrapoio.fieldbyname('cf').asstring :=   qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
      qrapoio.fieldbyname('str').asstring :=  qrnotafiscal_item.fieldbyname('cst').asstring;
      qrapoio.fieldbyname('un').asstring :=   qrnotafiscal_item.fieldbyname('unidade').asstring;
      qrapoio.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
      qrapoio.fieldbyname('ipi').asstring :=  qrnotafiscal_item.fieldbyname('ipi').asstring;
      qrapoio.fieldbyname('texto8').asstring :=  qrnotafiscal_item.fieldbyname('cfop').asstring;
      qrapoio.fieldbyname('texto7').asstring :=  qrnotafiscal_item.fieldbyname('codgrade').asstring;
      QRAPOIO.FIELDBYNAME('TEXTO10').ASSTRING := FRMPRINCIPAL.zerarcodigo(INTTOSTR(I),6);
      qrapoio.post;
      I := I + 1;

    QRNOTAFISCAL_ITEM.NEXT;
  END;





   IF qrvenda.FIELDBYNAME('DESCONTO').ASFLOAT > 0 THEN
   BEGIN
      qrapoio.insert;
      qrapoio.fieldbyname('codproduto').asstring :=    '';
      qrapoio.fieldbyname('produto').asstring :=       'D E S C O N T O ';
      qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00',QRvenda.FIELDBYNAME('DESCONTO').ASFLOAT);
      QRAPOIO.FIELDBYNAME('TEXTO10').ASSTRING := FRMPRINCIPAL.zerarcodigo(INTTOSTR(I),6);
      qrapoio.post;
      I := I + 1;

   END;

  end;

  frmrel_nf := tfrmrel_nf.create(self);
  frmrel_nf.quickrep1.DataSet := frmvenda_impressao.qrapoio;
  frmrel_nf.qrDBText1.DataSet := frmvenda_impressao.qrapoio;
  frmrel_nf.qrDBText2.DataSet := frmvenda_impressao.qrapoio;
  frmrel_nf.qrDBText3.DataSet := frmvenda_impressao.qrapoio;
  frmrel_nf.qrDBText4.DataSet := frmvenda_impressao.qrapoio;
  frmrel_nf.qrDBText5.DataSet := frmvenda_impressao.qrapoio;
  frmrel_nf.qrDBText6.DataSet := frmvenda_impressao.qrapoio;
  frmrel_nf.qrDBText7.DataSet := frmvenda_impressao.qrapoio;
  frmrel_nf.qrDBText8.DataSet := frmvenda_impressao.qrapoio;
  frmrel_nf.qrDBText9.DataSet := frmvenda_impressao.qrapoio;

  QRAPOIO.REFRESH;

  with frmrel_nf do
  begin



    lsaida.Caption := 'X';
    lentrada.Caption := '';

    lnumero1.caption := numero_notaz;
    lnumero2.caption := numero_notaz;

    lcfop1.Caption := '';
    lcfop2.caption := '';
    lnatureza1.Caption := '';
    lnatureza2.caption := '';

    IF VCFOP1 <> '' THEN
    begin
      frmmodulo.qrcfop.close;
      frmmodulo.qrCFOP.sql.Clear;
      frmmodulo.qrcfop.sql.add('select * from c000030 where cfop = '''+vcfop1+'''');
      frmmodulo.qrcfop.open;

      lcfop1.Caption := vcfop1;
      lnatureza1.Caption := frmmodulo.qrCFOP.fieldbyname('natureza').asstring;
    end;

    IF VCFOP2 <> '' THEN
    begin
      frmmodulo.qrcfop.close;
      frmmodulo.qrCFOP.sql.Clear;
      frmmodulo.qrcfop.sql.add('select * from c000030 where cfop = '''+vcfop2+'''');
      frmmodulo.qrcfop.open;

      lcfop2.Caption := vcfop2;
      lnatureza2.Caption := frmmodulo.qrCFOP.fieldbyname('natureza').asstring;
    end;


    lcliente.Caption := qrcliente.fieldbyname('codigo').asstring+' - '+qrcliente.fieldbyname('nome').asstring;
    lcpf.Caption := qrcliente.fieldbyname('cpf').asstring;
    lendereco.Caption := qrcliente.fieldbyname('endereco').asstring;
    lbairro.Caption := qrcliente.fieldbyname('bairro').asstring;
    lcep.Caption := qrcliente.fieldbyname('cep').asstring;
    lcidade.Caption := qrcliente.fieldbyname('cidade').asstring;
    luf.Caption := qrcliente.fieldbyname('uf').asstring;
    lrg.Caption :=  qrcliente.fieldbyname('rg').asstring;
    ltelefone.Caption := qrcliente.fieldbyname('telefone1').asstring;

    ldata_emissao.Caption := frmvenda.lvenda_data.caption;
    ldata_saida.Caption := frmvenda.lvenda_data.caption;
    if frmvenda_fechamento.rcrediario.value > 0 then
    begin

    FRMVENDA.qrvenda_contasreceber.First;
    i := 1;
    while not FRMVENDA.qrvenda_contasreceber.eof do
    begin
      case i of
      1:begin
          lfat_n1.caption := numero_notaz+'/'+frmPrincipal.zerarcodigo(inttostr(i),2);
          lfat_data1.caption := FRMVENDA.qrvenda_contasreceber.fieldbyname('vencimento').asstring;
          lfat_valor1.caption := formatfloat('###,###,##0.00',FRMVENDA.qrvenda_contasreceber.fieldbyname('valor').asfloat);
        end;
      2:begin
          lfat_n2.caption := numero_notaz+'/'+frmPrincipal.zerarcodigo(inttostr(i),2);
          lfat_data2.caption := FRMVENDA.qrvenda_contasreceber.fieldbyname('vencimento').asstring;
          lfat_valor2.caption := formatfloat('###,###,##0.00',FRMVENDA.qrvenda_contasreceber.fieldbyname('valor').asfloat);
        end;
      3:begin
          lfat_n3.caption := numero_notaz+'/'+frmPrincipal.zerarcodigo(inttostr(i),2);
          lfat_data3.caption := FRMVENDA.qrvenda_contasreceber.fieldbyname('vencimento').asstring;
          lfat_valor3.caption := formatfloat('###,###,##0.00',FRMVENDA.qrvenda_contasreceber.fieldbyname('valor').asfloat);
        end;
      4:begin
          lfat_n4.caption := numero_notaz+'/'+frmPrincipal.zerarcodigo(inttostr(i),2);
          lfat_data4.caption := FRMVENDA.qrvenda_contasreceber.fieldbyname('vencimento').asstring;
          lfat_valor4.caption := formatfloat('###,###,##0.00',FRMVENDA.qrvenda_contasreceber.fieldbyname('valor').asfloat);
        end;
      5:begin
          lfat_n5.caption := numero_notaz+'/'+frmPrincipal.zerarcodigo(inttostr(i),2);
          lfat_data5.caption := FRMVENDA.qrvenda_contasreceber.fieldbyname('vencimento').asstring;
          lfat_valor5.caption := formatfloat('###,###,##0.00',FRMVENDA.qrvenda_contasreceber.fieldbyname('valor').asfloat);
        end;
      6:begin
          lfat_n6.caption := numero_notaz+'/'+frmPrincipal.zerarcodigo(inttostr(i),2);
          lfat_data6.caption := FRMVENDA.qrvenda_contasreceber.fieldbyname('vencimento').asstring;
          lfat_valor6.caption := formatfloat('###,###,##0.00',FRMVENDA.qrvenda_contasreceber.fieldbyname('valor').asfloat);
        end;
      7:begin
          lfat_n7.caption := numero_notaz+'/'+frmPrincipal.zerarcodigo(inttostr(i),2);
          lfat_data7.caption := FRMVENDA.qrvenda_contasreceber.fieldbyname('vencimento').asstring;
          lfat_valor7.caption := formatfloat('###,###,##0.00',FRMVENDA.qrvenda_contasreceber.fieldbyname('valor').asfloat);
        end;
      8:begin
          lfat_n8.caption := numero_notaz+'/'+frmPrincipal.zerarcodigo(inttostr(i),2);
          lfat_data8.caption := FRMVENDA.qrvenda_contasreceber.fieldbyname('vencimento').asstring;
          lfat_valor8.caption := formatfloat('###,###,##0.00',FRMVENDA.qrvenda_contasreceber.fieldbyname('valor').asfloat);
        end;
      9:begin
          lfat_n9.caption := numero_notaz+'/'+frmPrincipal.zerarcodigo(inttostr(i),2);
          lfat_data9.caption := FRMVENDA.qrvenda_contasreceber.fieldbyname('vencimento').asstring;
          lfat_valor9.caption := formatfloat('###,###,##0.00',FRMVENDA.qrvenda_contasreceber.fieldbyname('valor').asfloat);
        end;






      end;
      i := i + 1;
      FRMVENDA.qrvenda_contasreceber.next;
    end;

    end;


    frmnf_obs := tfrmnf_obs.create(self);
    frmnf_obs.edit1.text := texto1;
    frmnf_obs.edit2.text := texto2;
    frmnf_obs.edit3.text :='';
    frmnf_obs.showmodal;


    lobs1.CAPTION := nf_obs1;
    LOBS2.CAPTION := nf_obs2;
    LOBS3.Caption := nf_obs3;




    ltransp.Caption := 'O MESMO';
    lfrete_conta.caption := '2';


    lbase_icms.caption := formatfloat('###,###,##0.00',BASE_CALCULO);
    lvalor_icms.caption := FormatFloat('###,###,##0.00',ICMS);

    ltotal_produtos.caption := FormatFloat('###,###,##0.00',qrnotafiscal.fieldbyname('valor_produtos').asfloat);
    ltotal_nota.caption := FormatFloat('###,###,##0.00',qrnotafiscal.fieldbyname('total_nota').asfloat);

  end;










       frmrel_nf.quickrep1.Preview;





    frmmodulo.qrfilial.edit;
    frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger := frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger + 1;
    frmmodulo.qrfilial.post;

  END
  ELSE
  BEGIN

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


  frmvenda_nf := tfrmvenda_nf.create(self);
  frmvenda_nf.enf.text := frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('notafiscal').asstring,6);
  frmvenda_nf.showmodal;
  frmmodulo.qrnotafiscal.fieldbyname('numero').asstring := numero_notaz;

  frmmodulo.qrnotafiscal.fieldbyname('cfop').asstring := '5102';
  frmmodulo.qrnotafiscal.fieldbyname('data').asstring := frmvenda.lvenda_data.caption;
  frmmodulo.qrnotafiscal.fieldbyname('data_saida').asstring := frmvenda.lvenda_data.caption;
  frmmodulo.qrnotafiscal.fieldbyname('hora').asstring := timetostr(time);
  frmmodulo.qrnotafiscal.fieldbyname('codcliente').asstring := frmvenda.lcliente_codigo.caption;
  frmmodulo.qrnotafiscal.fieldbyname('valor_produtos').asfloat := qrvenda.fieldbyname('subtotal').asfloat;
  frmmodulo.qrnotafiscal.fieldbyname('total_nota').asfloat := qrvenda.fieldbyname('total').asfloat;
  frmmodulo.qrnotafiscal.fieldbyname('desconto').asfloat := qrvenda.fieldbyname('desconto').asfloat;
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


  FRMVENDA.qrvenda_produto.FIRST;
  WHILE NOT FRMVENDA.qrvenda_produto.Eof DO
  BEGIN
     QRNOTAFISCAL_ITEM.INSERT;
     QRNOTAFISCAL_ITEM.FIELDBYNAME('CODNOTA').ASSTRING := FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('CODIGO').ASSTRING;
     QRNOTAFISCAL_ITEM.FIELDBYNAME('CODPRODUTO').ASSTRING := FRMVENDA.qrvenda_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
     QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT := FRMVENDA.qrvenda_produto.FIELDBYNAME('QTDE').ASFLOAT;
     QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT := FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT/FRMVENDA.qrvenda_produto.FIELDBYNAME('QTDE').ASFLOAT;
     QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT;
     QRNOTAFISCAL_ITEM.FIELDBYNAME('CFOP').ASSTRING := '5102';
     QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := FRMVENDA.qrvenda_produto.FIELDBYNAME('CST').ASSTRING;
     QRNOTAFISCAL_ITEM.FIELDBYNAME('ICMS').ASSTRING := FRMVENDA.qrvenda_produto.FIELDBYNAME('ALIQUOTA').ASSTRING;
     qrnotafiscal_item.fieldbyname('codlancamento').asstring := 'XXXXXX';
     IF FRMVENDA.qrvenda_produto.FIELDBYNAME('ALIQUOTA').ASFLOAT > 0 THEN
     BEGIN
       BASE_CALCULO := BASE_CALCULO + FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT;
       ICMS :=  ICMS + (BASE_CALCULO * (FRMVENDA.qrvenda_produto.FIELDBYNAME('ALIQUOTA').ASFLOAT/100));
     END;
     QRNOTAFISCAL_ITEM.POST;

     FRMVENDA.QRVENDA_PRODUTO.NEXT;
  END;
  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('BASE_CALCULO').ASFLOAT := BASE_CALCULO;
  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('VALOR_ICMS').ASFLOAT := ICMS;
  frmmodulo.qrnotafiscal.post;


        VALOR_NOTAZ := frmmodulo.qrnotafiscal.fieldbyname('total_nota').asfloat;





   BAPOIOClick(FRMVENDA_IMPRESSAO);




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
  writeln(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('NOME').asstring,90,' ','D')+' '+ frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('CPF').asstring,32,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('ENDERECO').asstring,68,' ','D')+' '+ frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('BAIRRO').asstring,24,' ','D')+' '+frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('CEP').asstring,29,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('CIDADE').asstring,50,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('TELEFONE1').asstring+'  '+frmvenda.qrcliente.fieldbyname('TELEFONE2').asstring,27,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('UF').asstring,6,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('RG').asstring,38,' ','D')+' '+
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

  frmvenda.qrapoio.Open;
  frmvenda.Refresh;
  frmvenda.qrapoio.first;
  while not frmvenda.qrapoio.Eof do
  begin
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('codproduto').asstring,9,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('Produto').asstring,59,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('CF').asstring,0,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('STR').asstring,5,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('UN').asstring,3,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('QTDE').asstring,9,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('UNITARIO').asstring,13,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('TOTAL').asstring,18,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('ICMS').asstring,4,' ','E')+' ');
    writeln(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('IPI').asstring,3,' ','E'));
    writeln(arquivo,'');
    frmvenda.qrapoio.next;
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



  ibquery1.close;
  ibquery1.sql.clear;
  ibquery1.sql.add('update c000048 set NUMERO_CUPOM_FISCAL = '''+FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('NUMERO').ASSTRING+'''');
  ibquery1.sql.add('where codigo = '''+qrvenda.fieldbyname('codigo').asstring+'''');
  ibquery1.execsql;



  CLOSEFILE(arquivo);

        frmmodulo.qrfilial.edit;
        frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger := frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger + 1;
        frmmodulo.qrfilial.post;





  {
   IF APPLICATION.MESSAGEBOX('Deseja imprimir as duplicatas?','Aviso',mb_yesno+mb_iconquestion) = idyes then
   begin
      button1click(frmvenda_impressao);

   end;
  }









  END;



end;

procedure Tfrmvenda_impressao.TPImpressoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmvenda_impressao.TPPersonalizadoClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmvenda_impressao.TPa4tintaClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmvenda_impressao.TPCupom_FiscalClick(Sender: TObject);
var desconto_acrescimo : real;
tp_desconto_acrescimo, codigo_config, numero_cupom, aliquota : string;
produto:string;
begin
//  TRY




     frmmodulo.qrconfig.open;
     if frmmodulo.qrconfig.FieldByName('ECF_TIPO').asstring = 'ECF-Remoto' then
     begin
       // lançamento do cupom
       frmmodulo.qrecf_comando.Open;
       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'VENDA';
       frmmodulo.qrecf_comando.FieldByName('numero').asstring := qrvenda.fieldbyname('codigo').asstring;
       frmmodulo.qrecf_comando.FieldByName('desconto').asfloat := qrvenda.fieldbyname('desconto').asfloat;
       frmmodulo.qrecf_comando.FieldByName('acrescimo').asfloat := qrvenda.fieldbyname('acrescimo').asfloat;
       frmmodulo.qrecf_comando.FieldByName('dinheiro').asfloat := qrvenda.fieldbyname('meio_dinheiro').asfloat;
       frmmodulo.qrecf_comando.FieldByName('chequeav').asfloat := qrvenda.fieldbyname('meio_chequeav').asfloat;
       frmmodulo.qrecf_comando.FieldByName('chequeap').asfloat := qrvenda.fieldbyname('meio_chequeap').asfloat;
       frmmodulo.qrecf_comando.FieldByName('cartaocred').asfloat := qrvenda.fieldbyname('meio_cartaocred').asfloat;
       frmmodulo.qrecf_comando.FieldByName('cartaodeb').asfloat := qrvenda.fieldbyname('meio_cartaodeb').asfloat;
       frmmodulo.qrecf_comando.FieldByName('promissoria').asfloat := qrvenda.fieldbyname('meio_crediario').asfloat;
       
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := cliente_nome;
       frmmodulo.qrecf_comando.FieldByName('endereco').asstring := cliente_endereco;
       frmmodulo.qrecf_comando.FieldByName('cidade').asstring := cliente_cidade+'/'+CLIENTE_UF;
       frmmodulo.qrecf_comando.FieldByName('cpf').asstring := cliente_cpf;
       frmmodulo.qrecf_comando.FieldByName('convenio').asstring := '';
       frmmodulo.qrecf_comando.FieldByName('vendedor').asstring := qrvenda.fieldbyname('codvendedor').asstring;
       frmmodulo.qrecf_comando.Post;
       // lancamento dos itens do cupom
       frmvenda.qrvenda_produto.First;
        while not frmvenda.qrvenda_produto.Eof do
        begin
          FRMMODULO.QRPRODUTO.Close;
          FRMMODULO.QRPRODUTO.SQL.CLEAR;
          FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+frmvenda.qrvenda_produto.fieldbyname('codproduto').asstring+'''');
          FRMMODULO.QRPRODUTO.OPEN;
          if frmmodulo.qrproduto.RECno =  1 THEN
          begin
            if frmvenda.qrvenda_produto.fieldbyname('serial').asstring <> '' then
               produto := frmmodulo.qrproduto.fieldbyname('produto').asstring+' ['+frmvenda.qrvenda_produto.fieldbyname('serial').asstring+']'
            else
               produto := frmmodulo.qrproduto.fieldbyname('produto').asstring;

          frmmodulo.qrecf_item.Open;
          frmmodulo.qrecf_item.Insert;
          frmmodulo.qrecf_item.FieldByName('numero').AsString := qrvenda.fieldbyname('codigo').asstring;
          frmmodulo.qrecf_item.FieldByName('codproduto').AsString := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
          frmmodulo.qrecf_item.FieldByName('produto').AsString := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          frmmodulo.qrecf_item.FieldByName('unidade').AsString := frmmodulo.qrproduto.fieldbyname('unidade').asstring;
          if frmmodulo.qrproduto.fieldbyname('codaliquota').asstring = '' then
            frmmodulo.qrecf_item.FieldByName('aliquota').AsString := 'FF'
          else
            frmmodulo.qrecf_item.FieldByName('aliquota').AsString := frmmodulo.qrproduto.fieldbyname('codaliquota').asstring;
          frmmodulo.qrecf_item.FieldByName('qtde').Asfloat := frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat;
          frmmodulo.qrecf_item.FieldByName('valor').Asfloat := frmvenda.qrvenda_produto.fieldbyname('unitario').asfloat;
          frmmodulo.qrecf_item.FieldByName('desconto').Asfloat := frmvenda.qrvenda_produto.fieldbyname('desconto').asfloat;
          frmmodulo.qrecf_item.FieldByName('acrescimo').Asfloat := frmvenda.qrvenda_produto.fieldbyname('acrescimo').asfloat;
          frmmodulo.qrecf_item.post;
          end;

          frmvenda.qrvenda_produto.Next;
       end;
       frmmodulo.Conexao.Commit;
       frmmodulo.conexao_ecfserver.Commit;
     end
     else
     begin










      frmvenda.qrvenda_produto.First;

      if ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;
      numero_cupomx := ecf_numero_cupom(ECF_MODELO);


      while not frmvenda.qrvenda_produto.Eof do
      begin
        FRMMODULO.QRPRODUTO.CLOSE;
        FRMMODULO.QRPRODUTO.SQL.CLEAR;
        FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+frmvenda.qrvenda_produto.fieldbyname('codproduto').asstring+'''');
        FRMMODULO.QRPRODUTO.OPEN;
        IF FRMMODULO.QRPRODUTO.RecNo = 1 THEN
        begin
          if frmvenda.qrvenda_produto.fieldbyname('serial').asstring <> '' then
          begin
            produto := frmvenda.qrvenda_produto.fieldbyname('produto').asstring+' ['+frmvenda.qrvenda_produto.fieldbyname('serial').asstring+']';
           end
          else
          begin
            produto := frmvenda.qrvenda_produto.fieldbyname('produto').asstring;
          end;


          desconto_acrescimo := frmvenda.qrvenda_produto.fieldbyname('desconto').asfloat - frmvenda.qrvenda_produto.fieldbyname('acrescimo').asfloat;
          if desconto_acrescimo < 0 then tp_desconto_acrescimo := 'A' else tp_desconto_acrescimo := 'D';

        IF (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '060') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '010') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '070') THEN ALIQUOTA := 'FF' ELSE
        IF (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '040') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '030') THEN ALIQUOTA := 'II' ELSE
        IF (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '041') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '050') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '051') OR (FRMMODULO.QRPRODUTO.FIELDBYNAME('CST').ASSTRING = '090') THEN ALIQUOTA := 'NN' ELSE
        BEGIN
           aliquota := formatfloat('00.00',frmmodulo.qrproduto.fieldbyname('aliquota').asfloat);
        end;


        FRMMODULO.QRCONFIG.OPEN;
        IF FRMMODULO.QRCONFIG.FIELDBYNAME('CUPOM_IMPRIMIR_CODIGO').ASSTRING = '1' THEN
           CODIGO_CONFIG := frmvenda.qrvenda_produto.fieldbyname('codPRODUTO').asstring
        ELSE
          CODIGO_CONFIG := frmvenda.qrvenda_produto.fieldbyname('codBARRAS').asstring;





          if ecf_vende_item_completo(ecf_modelo,codigo_config,
                                  frmprincipal.RemoveAcentos(produto),
                                  aliquota,
                                  frmvenda.qrvenda_produto.fieldbyname('UNITARIO').asfloat,
                                  frmvenda.qrvenda_produto.fieldbyname('QTDE').asfloat,
                                  frmvenda.qrvenda_produto.fieldbyname('desconto').asfloat,
                                  frmvenda.qrvenda_produto.fieldbyname('acrescimo').asfloat,
                                  frmmodulo.qrproduto.fieldbyname('unidade').asstring,
                                  0)  = 'ERRO' THEN
          BEGIN
            application.messagebox('Houve erro na impressão do item! Favor verificar!','Atenção',mb_ok+mb_iconerror);
            exit;
          END;

        end;
        frmvenda.qrvenda_produto.Next;
      end;


      (*-----------------INICIAR FECHAMENTO DO CUPOM-------------------------*)

      desconto_acrescimo := frmvenda_fechamento.rdesconto2.value - frmvenda_fechamento.racrescimo2.value;
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
      if frmvenda_fechamento.rdinheiro.value > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Dinheiro',frmvenda_fechamento.rdinheiro.value) = 'ERRO' then exit;
      end;
      if frmvenda_fechamento.rchequeav.value > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cheque',frmvenda_fechamento.rchequeav.value) = 'ERRO' then exit;
      end;
      if frmvenda_fechamento.rchequeap.value > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cheque-pre',frmvenda_fechamento.rchequeap.value) = 'ERRO' then exit;
      end;
      if frmvenda_fechamento.rcartaocred.value > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmvenda_fechamento.rcartaocred.value) = 'ERRO' then exit;
      end;
      if frmvenda_fechamento.rcartaodeb.value > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmvenda_fechamento.rcartaodeb.value) = 'ERRO' then exit;
      end;
      if frmvenda_fechamento.rcrediario.value > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Promissoria',frmvenda_fechamento.rcrediario.value) = 'ERRO' then exit;
      end;
      (*---------------------------------------------------------------------*)



      (*---------------- IDENTIFICACAO DO CONSUMIDOR-------------------------*)

      if frmvenda.qrcliente.fieldbyname('codigo').AsString <> frmvenda.lcliente_codigo.Caption then
        begin
          frmvenda.qrcliente.close;
          frmvenda.qrcliente.sql.clear;
          frmvenda.qrcliente.sql.add('select * from c000007 where codigo = '''+frmvenda.lcliente_codigo.Caption+'''');
          frmvenda.qrcliente.open;

        end;

      if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmvenda.qrcliente.fieldbyname('nome').asstring,48,' ','D')+#10+
                                         frmprincipal.Texto_Justifica(('ENDERECO: '+frmvenda.qrcliente.fieldbyname('endereco').asstring+' '+
                                                                         frmvenda.qrcliente.fieldbyname('bairro').asstring+' '+
                                                                         frmvenda.qrcliente.fieldbyname('cidade').asstring),48,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmvenda.qrcliente.fieldbyname('cpf').asstring,42,' ','D')+#10+
                                            '------------------------------------------------'+#10+
                                            '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;

      cupom_fiscal := true;



  ibquery1.close;
  ibquery1.sql.clear;
  ibquery1.sql.add('update c000048 set cupom_fiscal = 1, NUMERO_CUPOM_FISCAL = '''+numero_cupomx+'''');
  ibquery1.sql.add('where codigo = '''+qrvenda.fieldbyname('codigo').asstring+'''');
  ibquery1.execsql;

    end;

//  EXCEPT
//    showmessage('Esta função gerou erro! O procedimento foi abortado!');
//  END;

// JOAQUIM
end;

procedure Tfrmvenda_impressao.Fechar2Click(Sender: TObject);
begin
  application.messagebox('Favor escolher o meio de impressao e clicar em "OK"!','Atenção',mb_ok+mb_iconwarning);
  exit;
end;

procedure Tfrmvenda_impressao.Button1Click(Sender: TObject);





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

procedure Tfrmvenda_impressao.BAPOIOClick(Sender: TObject);
var f : textfile;
TEXTO8, texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7 : string;
i : integer;
NNOTA : INTEGER;
begin
  frmvenda.qrcliente.close;
  frmvenda.qrcliente.sql.clear;
  frmvenda.qrcliente.sql.add('select * from c000007 where codigo = '''+frmmodulo.qrnotafiscal.fieldbyname('codcliente').asstring+'''');
  frmvenda.qrcliente.open;

  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.sql.add('select * from c000010 where codigo = '''+frmmodulo.qrnotafiscal.fieldbyname('codtransportador').asstring+'''');
  frmmodulo.qrtransportador.open;

  cod_apoio := 1;
  frmvenda.QRAPOIO.close;
  frmvenda.QRAPOIO.sql.clear;
  frmvenda.QRAPOIO.sql.add('delete from cl00004');
  frmvenda.QRAPOIO.execsql;
  frmvenda.QRAPOIO.close;
  frmvenda.QRAPOIO.sql.clear;
  frmvenda.QRAPOIO.sql.add('select * from cl00004 order by texto10');
  frmvenda.QRAPOIO.open;

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
          frmvenda.QRAPOIO.INSERT;
          frmvenda.QRAPOIO.FIELDBYNAME('TOTAL').ASSTRING := 'TRANSPORTAR';
            frmvenda.QRAPOIO.fieldbyname('TEXTO1').asstring := 'XXXXXXXXXX';
            frmvenda.QRAPOIO.fieldbyname('TEXTO2').asstring := 'XXXXXXXXXX';
            frmvenda.QRAPOIO.fieldbyname('TEXTO3').asstring := 'XXXXXXXXXX';
            frmvenda.QRAPOIO.fieldbyname('TEXTO4').asstring := 'XXXXXXXXXX';

          frmvenda.QRAPOIO.POST;
        END
        ELSE
        BEGIN
          frmvenda.QRAPOIO.INSERT;
          if i = frmmodulo.qrconfig.fieldbyname('NF_LINHA_SUBTOTAL').asinteger THEN
          BEGIN
            frmvenda.QRAPOIO.fieldbyname('TEXTO1').asstring := 'XXXXXXXXXX';
            frmvenda.QRAPOIO.fieldbyname('TEXTO2').asstring := 'XXXXXXXXXX';
            frmvenda.QRAPOIO.fieldbyname('TEXTO3').asstring := 'XXXXXXXXXX';
            frmvenda.QRAPOIO.fieldbyname('TEXTO4').asstring := 'XXXXXXXXXX';
            frmvenda.QRAPOIO.fieldbyname('TEXTO6').asstring := 'XXXXXXXXXX';
          END;
          frmvenda.QRAPOIO.POST;
        END;
      END;
      frmvenda.QRAPOIO.INSERT;
      frmvenda.QRAPOIO.FIELDBYNAME('PRODUTO').ASSTRING := '*** T R A N S P O R T A D O ***';
      frmvenda.QRAPOIO.POST;
      frmvenda.QRAPOIO.insert;
      frmvenda.QRAPOIO.fieldbyname('codproduto').asstring :=    qrnotafiscal_item.fieldbyname('codproduto').asstring;
      frmvenda.QRAPOIO.fieldbyname('produto').asstring :=       qrnotafiscal_item.fieldbyname('produto').asstring;
      if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then frmvenda.QRAPOIO.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000',qrnotafiscal_item.fieldbyname('qtde').asfloat);
      if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then frmvenda.QRAPOIO.fieldbyname('unitario').asstring := formatfloat('###,###,##0.00',qrnotafiscal_item.fieldbyname('unitario').asfloat);
      if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then  frmvenda.QRAPOIO.fieldbyname('total').asstring := formatfloat('###,###,##0.00',qrnotafiscal_item.fieldbyname('total').asfloat);
      frmvenda.QRAPOIO.fieldbyname('cf').asstring :=   qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
      frmvenda.QRAPOIO.fieldbyname('str').asstring :=  qrnotafiscal_item.fieldbyname('cst').asstring;
      frmvenda.QRAPOIO.fieldbyname('un').asstring :=   qrnotafiscal_item.fieldbyname('unidade').asstring;
      frmvenda.QRAPOIO.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
      frmvenda.QRAPOIO.fieldbyname('ipi').asstring :=  qrnotafiscal_item.fieldbyname('ipi').asstring;
      frmvenda.QRAPOIO.post;
      NNOTA := NNOTA + 1;
      I := 2;
    END
    ELSE
    BEGIN
      frmvenda.QRAPOIO.insert;
      frmvenda.QRAPOIO.fieldbyname('codproduto').asstring :=    qrnotafiscal_item.fieldbyname('codproduto').asstring;
      frmvenda.QRAPOIO.fieldbyname('produto').asstring :=       qrnotafiscal_item.fieldbyname('produto').asstring;
      if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then frmvenda.QRAPOIO.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000',qrnotafiscal_item.fieldbyname('qtde').asfloat);
      if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then frmvenda.QRAPOIO.fieldbyname('unitario').asstring := formatfloat('###,###,##0.00',qrnotafiscal_item.fieldbyname('unitario').asfloat);
      if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then  frmvenda.QRAPOIO.fieldbyname('total').asstring := formatfloat('###,###,##0.00',qrnotafiscal_item.fieldbyname('total').asfloat);
      frmvenda.QRAPOIO.fieldbyname('cf').asstring :=   qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
      frmvenda.QRAPOIO.fieldbyname('str').asstring :=  qrnotafiscal_item.fieldbyname('cst').asstring;
      frmvenda.QRAPOIO.fieldbyname('un').asstring :=   qrnotafiscal_item.fieldbyname('unidade').asstring;
      frmvenda.QRAPOIO.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
      frmvenda.QRAPOIO.fieldbyname('ipi').asstring :=  qrnotafiscal_item.fieldbyname('ipi').asstring;
      frmvenda.QRAPOIO.post;
    END;
    qrnotafiscal_item.next;
    I := I + 1;
  end;
  if frmmodulo.qrnotafiscal.FieldByName('desconto').asfloat > 0 then
  begin
      frmvenda.QRAPOIO.insert;
      frmvenda.QRAPOIO.fieldbyname('produto').asstring :=       'D E S C O N T O ';
      frmvenda.QRAPOIO.fieldbyname('total').asstring := formatfloat('###,###,##0.00',FRMMODULO.QRNOTAFISCAL.fieldbyname('DESCONTO').asfloat);
      frmvenda.QRAPOIO.post;
  end;



  WHILE i < frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger DO
  BEGIN
    frmvenda.QRAPOIO.INSERT;
    frmvenda.QRAPOIO.POST;
    i := i+1;
  END;

  frmvenda.QRAPOIO.Refresh;

end;

procedure Tfrmvenda_impressao.NFCupom1Click(Sender: TObject);
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


  frmvenda_nf := tfrmvenda_nf.create(self);
  frmvenda_nf.enf.text := frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('notafiscal').asstring,6);
  frmvenda_nf.showmodal;
  frmmodulo.qrnotafiscal.fieldbyname('numero').asstring := numero_notaz;

  frmmodulo.qrnotafiscal.fieldbyname('cfop').asstring := '1202';
  frmmodulo.qrnotafiscal.fieldbyname('data').asstring := frmvenda.lvenda_data.caption;
  frmmodulo.qrnotafiscal.fieldbyname('data_saida').asstring := frmvenda.lvenda_data.caption;
  frmmodulo.qrnotafiscal.fieldbyname('hora').asstring := timetostr(time);
  frmmodulo.qrnotafiscal.fieldbyname('codcliente').asstring := frmvenda.lcliente_codigo.caption;
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
  FRMVENDA.qrvenda_produto.FIRST;
  WHILE NOT FRMVENDA.qrvenda_produto.Eof DO
  BEGIN
     if frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat < 0 then
     begin
       QRNOTAFISCAL_ITEM.INSERT;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CODNOTA').ASSTRING := FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('CODIGO').ASSTRING;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CODPRODUTO').ASSTRING := FRMVENDA.qrvenda_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT := FRMVENDA.qrvenda_produto.FIELDBYNAME('QTDE').ASFLOAT*(-1);
       QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT*(-1);
       QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT := QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT / QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CFOP').ASSTRING := '1202';
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := FRMVENDA.qrvenda_produto.FIELDBYNAME('CST').ASSTRING;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('ICMS').ASSTRING := '0';
       qrnotafiscal_item.fieldbyname('codlancamento').asstring := 'XXXXXX';
       tn := tn + (FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT*(-1));
       QRNOTAFISCAL_ITEM.POST;
     end;

     FRMVENDA.QRVENDA_PRODUTO.NEXT;
  END;
  frmmodulo.qrnotafiscal.fieldbyname('valor_produtos').asfloat := tn;
  frmmodulo.qrnotafiscal.fieldbyname('total_nota').asfloat := tn;


  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('BASE_CALCULO').ASFLOAT := 0;
  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('VALOR_ICMS').ASFLOAT := 0;
  frmmodulo.qrnotafiscal.post;


        VALOR_NOTAZ := frmmodulo.qrnotafiscal.fieldbyname('total_nota').asfloat;





   BAPOIOClick(FRMVENDA_IMPRESSAO);








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
  writeln(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('NOME').asstring,90,' ','D')+' '+ frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('CPF').asstring,32,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('ENDERECO').asstring,68,' ','D')+' '+ frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('BAIRRO').asstring,24,' ','D')+' '+frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('CEP').asstring,29,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('CIDADE').asstring,50,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('TELEFONE1').asstring+'  '+frmvenda.qrcliente.fieldbyname('TELEFONE2').asstring,27,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('UF').asstring,6,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('RG').asstring,38,' ','D')+' '+
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

  frmvenda.qrapoio.Open;
  frmvenda.Refresh;
  frmvenda.qrapoio.first;
  while not frmvenda.qrapoio.Eof do
  begin
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('codproduto').asstring,9,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('Produto').asstring,59,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('CF').asstring,0,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('STR').asstring,5,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('UN').asstring,3,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('QTDE').asstring,9,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('UNITARIO').asstring,13,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('TOTAL').asstring,18,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('ICMS').asstring,4,' ','E')+' ');
    writeln(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('IPI').asstring,3,' ','E'));
    writeln(arquivo,'');
    frmvenda.qrapoio.next;
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





  ibquery1.close;
  ibquery1.sql.clear;
  ibquery1.sql.add('update c000048 set NUMERO_CUPOM_FISCAL = '''+FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('NUMERO').ASSTRING+'''');
  ibquery1.sql.add('where codigo = '''+qrvenda.fieldbyname('codigo').asstring+'''');
  ibquery1.execsql;





  CLOSEFILE(arquivo);

        frmmodulo.qrfilial.edit;
        frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger := frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger + 1;
        frmmodulo.qrfilial.post;



  application.MessageBox('Pressione [ENTER] para Imprimir o Cupom Fiscal.','Aviso',mb_ok+MB_ICONINFORMATION);



//  TRY




     frmmodulo.qrconfig.open;
     if frmmodulo.qrconfig.FieldByName('ECF_TIPO').asstring = 'ECF-Remoto' then
     begin
       // lançamento do cupom
       frmmodulo.qrecf_comando.Open;
       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'VENDA';
       frmmodulo.qrecf_comando.FieldByName('numero').asstring := qrvenda.fieldbyname('codigo').asstring;
       frmmodulo.qrecf_comando.FieldByName('desconto').asfloat := qrvenda.fieldbyname('desconto').asfloat;
       frmmodulo.qrecf_comando.FieldByName('acrescimo').asfloat := qrvenda.fieldbyname('acrescimo').asfloat;
       frmmodulo.qrecf_comando.FieldByName('dinheiro').asfloat := qrvenda.fieldbyname('meio_dinheiro').asfloat;
       frmmodulo.qrecf_comando.FieldByName('chequeav').asfloat := qrvenda.fieldbyname('meio_chequeav').asfloat;
       frmmodulo.qrecf_comando.FieldByName('chequeap').asfloat := qrvenda.fieldbyname('meio_chequeap').asfloat;
       frmmodulo.qrecf_comando.FieldByName('cartaocred').asfloat := qrvenda.fieldbyname('meio_cartaocred').asfloat;
       frmmodulo.qrecf_comando.FieldByName('cartaodeb').asfloat := qrvenda.fieldbyname('meio_cartaodeb').asfloat;
       frmmodulo.qrecf_comando.FieldByName('promissoria').asfloat := qrvenda.fieldbyname('meio_crediario').asfloat;
       
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := cliente_nome;
       frmmodulo.qrecf_comando.FieldByName('endereco').asstring := cliente_endereco;
       frmmodulo.qrecf_comando.FieldByName('cidade').asstring := cliente_cidade+'/'+CLIENTE_UF;
       frmmodulo.qrecf_comando.FieldByName('cpf').asstring := cliente_cpf;
       frmmodulo.qrecf_comando.FieldByName('convenio').asstring := '';
       frmmodulo.qrecf_comando.FieldByName('vendedor').asstring := qrvenda.fieldbyname('codvendedor').asstring;
       frmmodulo.qrecf_comando.Post;
       // lancamento dos itens do cupom
       frmvenda.qrvenda_produto.First;

        while not frmvenda.qrvenda_produto.Eof do
        begin
          FRMMODULO.QRPRODUTO.Close;
          FRMMODULO.QRPRODUTO.SQL.CLEAR;
          FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+frmvenda.qrvenda_produto.fieldbyname('codproduto').asstring+'''');
          FRMMODULO.QRPRODUTO.OPEN;
          if frmmodulo.qrproduto.RECno =  1 THEN
          begin
            if frmvenda.qrvenda_produto.fieldbyname('serial').asstring <> '' then
               produto := frmmodulo.qrproduto.fieldbyname('produto').asstring+' ['+frmvenda.qrvenda_produto.fieldbyname('serial').asstring+']'
            else
               produto := frmmodulo.qrproduto.fieldbyname('produto').asstring;

          frmmodulo.qrecf_item.Open;
          frmmodulo.qrecf_item.Insert;
          frmmodulo.qrecf_item.FieldByName('numero').AsString := qrvenda.fieldbyname('codigo').asstring;
          frmmodulo.qrecf_item.FieldByName('codproduto').AsString := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
          frmmodulo.qrecf_item.FieldByName('produto').AsString := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          frmmodulo.qrecf_item.FieldByName('unidade').AsString := frmmodulo.qrproduto.fieldbyname('unidade').asstring;
          if frmmodulo.qrproduto.fieldbyname('codaliquota').asstring = '' then
            frmmodulo.qrecf_item.FieldByName('aliquota').AsString := 'FF'
          else
            frmmodulo.qrecf_item.FieldByName('aliquota').AsString := frmmodulo.qrproduto.fieldbyname('codaliquota').asstring;
          frmmodulo.qrecf_item.FieldByName('qtde').Asfloat := frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat;
          frmmodulo.qrecf_item.FieldByName('valor').Asfloat := frmvenda.qrvenda_produto.fieldbyname('unitario').asfloat;
          frmmodulo.qrecf_item.FieldByName('desconto').Asfloat := frmvenda.qrvenda_produto.fieldbyname('desconto').asfloat;
          frmmodulo.qrecf_item.FieldByName('acrescimo').Asfloat := frmvenda.qrvenda_produto.fieldbyname('acrescimo').asfloat;


          frmmodulo.qrecf_item.post;
          end;

          frmvenda.qrvenda_produto.Next;
       end;
       frmmodulo.Conexao.Commit;
       frmmodulo.conexao_ecfserver.Commit;
     end
     else
     begin








      tn := 0;

      frmvenda.qrvenda_produto.First;

      if ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;
      numero_cupomx := ecf_numero_cupom(ECF_MODELO);


      while not frmvenda.qrvenda_produto.Eof do
      begin
        if frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat > 0 then
        begin
        FRMMODULO.QRPRODUTO.CLOSE;
        FRMMODULO.QRPRODUTO.SQL.CLEAR;
        FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+frmvenda.qrvenda_produto.fieldbyname('codproduto').asstring+'''');
        FRMMODULO.QRPRODUTO.OPEN;
        IF FRMMODULO.QRPRODUTO.RecNo = 1 THEN
        begin
          if frmvenda.qrvenda_produto.fieldbyname('serial').asstring <> '' then
          begin
            produto := frmmodulo.qrproduto.fieldbyname('produto').asstring+' ['+frmvenda.qrvenda_produto.fieldbyname('serial').asstring+']';
           end
          else
          begin
            produto := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          end;


          desconto_acrescimo := frmvenda.qrvenda_produto.fieldbyname('desconto').asfloat - frmvenda.qrvenda_produto.fieldbyname('acrescimo').asfloat;
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
                                  frmvenda.qrvenda_produto.fieldbyname('UNITARIO').asfloat,
                                  frmvenda.qrvenda_produto.fieldbyname('QTDE').asfloat,
                                  frmvenda.qrvenda_produto.fieldbyname('desconto').asfloat,
                                  frmvenda.qrvenda_produto.fieldbyname('acrescimo').asfloat,
                                  frmmodulo.qrproduto.fieldbyname('unidade').asstring,
                                  0)  = 'ERRO' THEN
          BEGIN
            application.messagebox('Houve erro na impressão do item! Favor verificar!','Atenção',mb_ok+mb_iconerror);
            exit;
          END;
          tn := tn + (frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat*frmvenda.qrvenda_produto.fieldbyname('unitario').asfloat);
        end;
        end;
        frmvenda.qrvenda_produto.Next;
      end;

      tn := tn + frmvenda_fechamento.rtotal.value;


       (*-----------------INICIAR FECHAMENTO DO CUPOM-------------------------*)

      desconto_acrescimo := frmvenda_fechamento.rdesconto2.value - frmvenda_fechamento.racrescimo2.value;
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
      if frmvenda_fechamento.rdinheiro.value > 0 then
      begin
         if ecf_efetua_forma_pgto(ecf_modelo,'Dinheiro',tn-frmvenda_fechamento.rdinheiro.value) = 'ERRO' then exit;
      end;
      end;
      if frmvenda_fechamento.rchequeav.value > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cheque',tn-frmvenda_fechamento.rchequeav.value) = 'ERRO' then exit;
      end;
      if frmvenda_fechamento.rchequeap.value > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cheque-pre',tn-frmvenda_fechamento.rchequeap.value) = 'ERRO' then exit;
      end;
      if frmvenda_fechamento.rcartaocred.value > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cartao',tn-frmvenda_fechamento.rcartaocred.value) = 'ERRO' then exit;
      end;
      if frmvenda_fechamento.rcartaodeb.value > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cartao',tn-frmvenda_fechamento.rcartaodeb.value) = 'ERRO' then exit;
      end;
      if frmvenda_fechamento.rcrediario.value > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Promissoria',tn-frmvenda_fechamento.rcrediario.value) = 'ERRO' then exit;
      end;
      (*---------------------------------------------------------------------*)



      (*---------------- IDENTIFICACAO DO CONSUMIDOR-------------------------*)

      if frmvenda.qrcliente.fieldbyname('codigo').AsString <> frmvenda.lcliente_codigo.Caption then
        begin
          frmvenda.qrcliente.close;
          frmvenda.qrcliente.sql.clear;
          frmvenda.qrcliente.sql.add('select * from c000007 where codigo = '''+frmvenda.lcliente_codigo.Caption+'''');
          frmvenda.qrcliente.open;
        end;

      if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+frmvenda.qrcliente.fieldbyname('nome').asstring,48,' ','D')+#10+
                                         frmprincipal.Texto_Justifica(('ENDERECO: '+frmvenda.qrcliente.fieldbyname('endereco').asstring+' '+
                                                                         frmvenda.qrcliente.fieldbyname('bairro').asstring+' '+
                                                                         frmvenda.qrcliente.fieldbyname('cidade').asstring),48,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('CPF/CNPJ: '+frmvenda.qrcliente.fieldbyname('cpf').asstring,42,' ','D')+#10+
                                            '------------------------------------------------'+#10+
                                            '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;


  ibquery1.close;
  ibquery1.sql.clear;
  ibquery1.sql.add('update c000048 set cupom_fiscal = 1, NUMERO_CUPOM_FISCAL = '''+numero_cupomx+'''');
  ibquery1.sql.add('where codigo = '''+qrvenda.fieldbyname('codigo').asstring+'''');
  ibquery1.execsql;




//  EXCEPT
//    showmessage('Esta função gerou erro! O procedimento foi abortado!');
//  END;
// JOAQUIM

end;

procedure Tfrmvenda_impressao.NFNF1Click(Sender: TObject);
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


  frmvenda_nf := tfrmvenda_nf.create(self);
  frmvenda_nf.enf.text := frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('notafiscal').asstring,6);
  frmvenda_nf.showmodal;
  frmmodulo.qrnotafiscal.fieldbyname('numero').asstring := numero_notaz;

  frmmodulo.qrnotafiscal.fieldbyname('cfop').asstring := '1202';
  frmmodulo.qrnotafiscal.fieldbyname('data').asstring := frmvenda.lvenda_data.caption;
  frmmodulo.qrnotafiscal.fieldbyname('data_saida').asstring := frmvenda.lvenda_data.caption;
  frmmodulo.qrnotafiscal.fieldbyname('hora').asstring := timetostr(time);
  frmmodulo.qrnotafiscal.fieldbyname('codcliente').asstring := frmvenda.lcliente_codigo.caption;
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
  FRMVENDA.qrvenda_produto.FIRST;
  WHILE NOT FRMVENDA.qrvenda_produto.Eof DO
  BEGIN
     if frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat < 0 then
     begin
       QRNOTAFISCAL_ITEM.INSERT;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CODNOTA').ASSTRING := FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('CODIGO').ASSTRING;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CODPRODUTO').ASSTRING := FRMVENDA.qrvenda_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT := FRMVENDA.qrvenda_produto.FIELDBYNAME('QTDE').ASFLOAT*(-1);
       QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT*(-1);
       QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT := QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT / QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CFOP').ASSTRING := '1202';
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := FRMVENDA.qrvenda_produto.FIELDBYNAME('CST').ASSTRING;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('ICMS').ASSTRING := '0';
       qrnotafiscal_item.fieldbyname('codlancamento').asstring := 'XXXXXX';
       tn := tn + (FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT*(-1));
       QRNOTAFISCAL_ITEM.POST;
     end;

     FRMVENDA.QRVENDA_PRODUTO.NEXT;
  END;
  frmmodulo.qrnotafiscal.fieldbyname('valor_produtos').asfloat := tn;
  frmmodulo.qrnotafiscal.fieldbyname('total_nota').asfloat := tn;


  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('BASE_CALCULO').ASFLOAT := 0;
  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('VALOR_ICMS').ASFLOAT := 0;
  frmmodulo.qrnotafiscal.post;


        VALOR_NOTAZ := frmmodulo.qrnotafiscal.fieldbyname('total_nota').asfloat;





   BAPOIOClick(FRMVENDA_IMPRESSAO);








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
  writeln(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('NOME').asstring,90,' ','D')+' '+ frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('CPF').asstring,32,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('ENDERECO').asstring,68,' ','D')+' '+ frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('BAIRRO').asstring,24,' ','D')+' '+frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('CEP').asstring,29,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('CIDADE').asstring,50,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('TELEFONE1').asstring+'  '+frmvenda.qrcliente.fieldbyname('TELEFONE2').asstring,27,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('UF').asstring,6,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('RG').asstring,38,' ','D')+' '+
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

  frmvenda.qrapoio.Open;
  frmvenda.Refresh;
  frmvenda.qrapoio.first;
  while not frmvenda.qrapoio.Eof do
  begin
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('codproduto').asstring,9,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('Produto').asstring,59,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('CF').asstring,0,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('STR').asstring,5,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('UN').asstring,3,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('QTDE').asstring,9,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('UNITARIO').asstring,13,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('TOTAL').asstring,18,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('ICMS').asstring,4,' ','E')+' ');
    writeln(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('IPI').asstring,3,' ','E'));
    writeln(arquivo,'');
    frmvenda.qrapoio.next;
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




  ibquery1.close;
  ibquery1.sql.clear;
  ibquery1.sql.add('update c000048 set NUMERO_CUPOM_FISCAL = '''+FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('NUMERO').ASSTRING+'''');
  ibquery1.sql.add('where codigo = '''+qrvenda.fieldbyname('codigo').asstring+'''');
  ibquery1.execsql;


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


  frmvenda_nf := tfrmvenda_nf.create(self);
  frmvenda_nf.enf.text := frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('notafiscal').asstring,6);
  frmvenda_nf.showmodal;
  frmmodulo.qrnotafiscal.fieldbyname('numero').asstring := numero_notaz;

  frmmodulo.qrnotafiscal.fieldbyname('cfop').asstring := '5102';
  frmmodulo.qrnotafiscal.fieldbyname('data').asstring := frmvenda.lvenda_data.caption;
  frmmodulo.qrnotafiscal.fieldbyname('data_saida').asstring := frmvenda.lvenda_data.caption;
  frmmodulo.qrnotafiscal.fieldbyname('hora').asstring := timetostr(time);
  frmmodulo.qrnotafiscal.fieldbyname('codcliente').asstring := frmvenda.lcliente_codigo.caption;

  frmmodulo.qrnotafiscal.fieldbyname('desconto').asfloat := qrvenda.fieldbyname('desconto').asfloat;
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
  FRMVENDA.qrvenda_produto.FIRST;
  WHILE NOT FRMVENDA.qrvenda_produto.Eof DO
  BEGIN
     if frmvenda.qrvenda_produto.FieldByName('qtde').asfloat > 0 then
     begin
       QRNOTAFISCAL_ITEM.INSERT;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CODNOTA').ASSTRING := FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('CODIGO').ASSTRING;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CODPRODUTO').ASSTRING := FRMVENDA.qrvenda_produto.FIELDBYNAME('CODPRODUTO').ASSTRING;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('QTDE').ASFLOAT := FRMVENDA.qrvenda_produto.FIELDBYNAME('QTDE').ASFLOAT;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('UNITARIO').ASFLOAT := FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT/FRMVENDA.qrvenda_produto.FIELDBYNAME('QTDE').ASFLOAT;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('TOTAL').ASFLOAT := FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CFOP').ASSTRING := '5102';
       QRNOTAFISCAL_ITEM.FIELDBYNAME('CST').ASSTRING := FRMVENDA.qrvenda_produto.FIELDBYNAME('CST').ASSTRING;
       QRNOTAFISCAL_ITEM.FIELDBYNAME('ICMS').ASSTRING := FRMVENDA.qrvenda_produto.FIELDBYNAME('ALIQUOTA').ASSTRING;
       qrnotafiscal_item.fieldbyname('codlancamento').asstring := 'XXXXXX';

       tn := tn + FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT;

       IF FRMVENDA.qrvenda_produto.FIELDBYNAME('ALIQUOTA').ASFLOAT > 0 THEN
       BEGIN
         BASE_CALCULO := BASE_CALCULO + FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT;
         ICMS :=  ICMS + (BASE_CALCULO * (FRMVENDA.qrvenda_produto.FIELDBYNAME('ALIQUOTA').ASFLOAT/100));
       END;
       QRNOTAFISCAL_ITEM.POST;
     end;

     //tn := tn + FRMVENDA.qrvenda_produto.FIELDBYNAME('TOTAL').ASFLOAT;

     FRMVENDA.QRVENDA_PRODUTO.NEXT;
  END;
  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('BASE_CALCULO').ASFLOAT := BASE_CALCULO;
  FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('VALOR_ICMS').ASFLOAT := ICMS;

  frmmodulo.qrnotafiscal.fieldbyname('valor_produtos').asfloat := tn;
  frmmodulo.qrnotafiscal.fieldbyname('total_nota').asfloat := tn;


  frmmodulo.qrnotafiscal.post;


        VALOR_NOTAZ := frmmodulo.qrnotafiscal.fieldbyname('total_nota').asfloat;


   BAPOIOClick(FRMVENDA_IMPRESSAO);








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
  writeln(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('NOME').asstring,90,' ','D')+' '+ frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('CPF').asstring,32,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('ENDERECO').asstring,68,' ','D')+' '+ frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('BAIRRO').asstring,24,' ','D')+' '+frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('CEP').asstring,29,' ','D')+' '+frmprincipal.Texto_Justifica(frmmodulo.qrNOTAFISCAL.fieldbyname('DATA').asstring,10,' ','D'));
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,'');
  writeln(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('CIDADE').asstring,50,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('TELEFONE1').asstring+'  '+frmvenda.qrcliente.fieldbyname('TELEFONE2').asstring,27,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('UF').asstring,6,' ','D')+' '+
                  frmprincipal.Texto_Justifica(frmvenda.qrcliente.fieldbyname('RG').asstring,38,' ','D')+' '+
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

  frmvenda.qrapoio.Open;
  frmvenda.Refresh;
  frmvenda.qrapoio.first;
  while not frmvenda.qrapoio.Eof do
  begin
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('codproduto').asstring,9,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('Produto').asstring,59,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('CF').asstring,0,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('STR').asstring,5,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('UN').asstring,3,' ','D')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('QTDE').asstring,9,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('UNITARIO').asstring,13,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('TOTAL').asstring,18,' ','E')+' ');
    write(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('ICMS').asstring,4,' ','E')+' ');
    writeln(arquivo,frmprincipal.Texto_Justifica(frmvenda.qrapoio.fieldbyname('IPI').asstring,3,' ','E'));
    writeln(arquivo,'');
    frmvenda.qrapoio.next;
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




  ibquery1.close;
  ibquery1.sql.clear;
  ibquery1.sql.add('update c000048 set NUMERO_CUPOM_FISCAL = '''+FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('NUMERO').ASSTRING+'''');
  ibquery1.sql.add('where codigo = '''+qrvenda.fieldbyname('codigo').asstring+'''');
  ibquery1.execsql;





  CLOSEFILE(arquivo);

        frmmodulo.qrfilial.edit;
        frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger := frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger + 1;
        frmmodulo.qrfilial.post;




    {
   IF APPLICATION.MESSAGEBOX('Deseja imprimir as duplicatas?','Aviso',mb_yesno+mb_iconquestion) = idyes then
   begin
      button1click(frmvenda_impressao);

   end;
     }




end;

end.


