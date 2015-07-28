unit venda_reimpressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxDBSet, AdvGlowButton, AdvShapeButton;

type
  Tfrmvenda_reimpressao = class(TForm)
    PopupMenu1: TPopupMenu;
    TPCupom_Fiscal: TMenuItem;
    TPNota_Fiscal: TMenuItem;
    TPBobina: TMenuItem;
    TPRazao: TMenuItem;
    TPCarta: TMenuItem;
    TPContrato: TMenuItem;
    TPPersonalizado: TMenuItem;
    TPa4tinta: TMenuItem;
    tprazaotinta: TMenuItem;
    fxvenda: TfrxReport;
    fscontasreceber: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    frxDBDataset1: TfrxDBDataset;
    fsvenda: TfrxDBDataset;
    FSCLIENTE: TfrxDBDataset;
    FormulrioContnuoRazo21: TMenuItem;
    ContratoCapa1: TMenuItem;
    Bobinasemformatao1: TMenuItem;
    PedidoCarne1: TMenuItem;
    TPContrato1: TMenuItem;
    combo_modelo: TComboBox;
    PopupMenu2: TPopupMenu;
    Fechar1: TMenuItem;
    Bevel2: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Label3: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    evias: TSpinEdit;
    Label1: TLabel;
    PedidoCarncomcdigodebarras1: TMenuItem;
    RazoLaser21: TMenuItem;
    qrvenda_produto: TZQuery;
    qrvenda_produtoITEM: TStringField;
    qrvenda_produtoCODPRODUTO: TStringField;
    qrvenda_produtoPRODUTO: TStringField;
    qrvenda_produtoCST: TStringField;
    qrvenda_produtoNUMERACAO: TStringField;
    qrvenda_produtoSERIAL: TStringField;
    qrvenda_produtoQTDE: TFloatField;
    qrvenda_produtoUNITARIO: TFloatField;
    qrvenda_produtoTOTAL: TFloatField;
    qrvenda_produtoALIQUOTA: TFloatField;
    qrvenda_produtomix: TFloatField;
    qrvenda_produtoCODBARRAS: TStringField;
    qrvenda_produtoDESCONTO: TFloatField;
    qrvenda_produtoACRESCIMO: TFloatField;
    qrvenda_produtoCODGRADE: TStringField;
    qrvenda_produtoTIPO: TIntegerField;
    qrvenda_produtoTERMINAL: TStringField;
    qrvenda_produtoPISCOFINS: TStringField;
    qrvenda_produtoCODSUBGRUPO: TStringField;
    qrproduto_mov: TZQuery;
    qrproduto_movCODPRODUTO: TStringField;
    qrproduto_movUNIDADE: TStringField;
    qrproduto_movALIQUOTA: TFloatField;
    qrproduto_movCST: TStringField;
    qrproduto_movQTDE: TFloatField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movDESCONTO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movSERIAL: TStringField;
    qrproduto_movDATA: TDateTimeField;
    qrproduto_movNUMERONOTA: TStringField;
    qrproduto_movCUPOM_NUMERO: TStringField;
    qrproduto_movCODNOTA: TStringField;
    qrproduto_movCODIGO: TStringField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TStringField;
    qrproduto_movCODCLIENTE: TStringField;
    qrproduto_movACRESCIMO: TFloatField;
    qrproduto_movMOVIMENTO: TIntegerField;
    qrproduto_movCODVENDEDOR: TStringField;
    qrproduto_movCODGRADE: TStringField;
    qrproduto_movVALOR_ICMS: TFloatField;
    qrproduto_movICMS_REDUZIDO: TFloatField;
    qrproduto_movBASE_CALCULO: TFloatField;
    qrproduto_movVALOR_IPI: TFloatField;
    qrproduto_movSITUACAO: TIntegerField;
    qrproduto_movECF_SERIE: TStringField;
    qrproduto_movECF_CAIXA: TStringField;
    qrproduto_movCODALIQUOTA: TStringField;
    qrproduto_movCUPOM_MODELO: TStringField;
    qrproduto_movCUPOM_ITEM: TStringField;
    qrproduto: TZQuery;
    qrvenda: TZQuery;
    qrvendaCODIGO: TStringField;
    qrvendaCODCAIXA: TStringField;
    qrvendaCODVENDEDOR: TStringField;
    qrvendaDATA: TDateTimeField;
    qrvendaCODCLIENTE: TStringField;
    qrvendaOBS: TStringField;
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
    qrvendaNUMERO_CUPOM_FISCAL: TStringField;
    qrvendaRETIRADO: TStringField;
    qrvendaMEIO_CONVENIO: TFloatField;
    qrvendaP5: TFloatField;
    qrvendaP3: TFloatField;
    qrvendaMEIO_FINANCEIRA: TFloatField;
    qrvendaCOD_FINANCEIRA: TStringField;
    qrvendaCOD_FINANCEIRA_LANCTO: TStringField;
    qrvendaCOD_FINANCEIRA_LACTO: TStringField;
    qrvendaCODCONVENIO: TStringField;
    qrvendaSITUACAO: TIntegerField;
    qrvendaCODTRANSPORTADOR: TStringField;
    qrvendaCODVEICULO: TStringField;
    qrvendaFRETE_VALOR: TFloatField;
    qrvendaFRETE_OBS: TStringField;
    qrvendaFRETE_LANCAR: TIntegerField;
    qrvendaECF_SERIAL: TStringField;
    qrvendaCODNFSAIDA: TStringField;
    qrvendaCLIENTE: TStringField;
    qrcontasreceber: TZQuery;
    qrcliente: TZQuery;
    ibquery1: TZQuery;
    qrproduto_movMOVIMENTO_ESTOQUE: TFloatField;
    qrproduto_movCODSUBGRUPO: TStringField;
    qrvendedor: TZQuery;
    qrvendedorCODIGO: TStringField;
    qrvendedorNOME: TStringField;
    qrvendaVENDEDOR: TStringField;
    qrproduto_movCODBARRA: TStringField;
    qrproduto_movPRODUTO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPNota_FiscalClick(Sender: TObject);
    procedure TPBobinaClick(Sender: TObject);
    procedure TPRazaoClick(Sender: TObject);
    procedure TPCartaClick(Sender: TObject);
    procedure TPPersonalizadoClick(Sender: TObject);
    procedure tprazaotintaClick(Sender: TObject);
    procedure TPCupom_FiscalClick(Sender: TObject);
    procedure FormulrioContnuoRazo21Click(Sender: TObject);
    procedure ContratoCapa1Click(Sender: TObject);
    procedure Bobinasemformatao1Click(Sender: TObject);
    procedure PedidoCarne1Click(Sender: TObject);
    procedure TPcontratoClick(Sender: TObject);
    procedure TPContrato1Click(Sender: TObject);
    procedure PedidoCarncomcdigodebarras1Click(Sender: TObject);
    procedure RazoLaser21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_reimpressao: Tfrmvenda_reimpressao;
  porta_impressora : string;
   CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, CLIENTE_ENDERECO, CLIENTE_BAIRRO,
   CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF, CLIENTE_CODIGO,
   cliente_retirado,venda_codigo,venda_data,venda_hora,venda_nomevend,venda_itens : STRING;

implementation

uses modulo_nfe, principal, venda, venda_fechamento, ecf, venda_relrazao,
  extenso1, venda_contasreceber;

{$R *.dfm}

procedure Tfrmvenda_reimpressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmvenda_reimpressao.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_reimpressao.bgravarClick(Sender: TObject);
begin
{
01 - Cupom Fiscal
02 - Nota Fiscal
03 - Bobina
04 - Formulário Contínuo - Razão
05 - Formulário Contínuo - Carta
06 - Pré-impresso (Personalizado)
07 - Contrato
08 - Personalizado - Cód.: 000000
09 - Papel A4 - Laser / Tinta
10 - Papel Razão - Laser / Tinta
}


  case combo_modelo.ItemIndex of
  0 : TPCupom_FiscalClick(frmvenda_reimpressao);
  1 : TPNota_FiscalClick(frmvenda_reimpressao);
  2 : TPBobinaClick(frmvenda_reimpressao);
  3 : TPRazaoClick(frmvenda_reimpressao);
  4 : TPCartaClick(frmvenda_reimpressao);

  6 : TPContratoClick(frmvenda_reimpressao);
  7 : TPPersonalizadoClick(frmvenda_reimpressao);

  9 : TPrazaotintaclick(frmvenda_reimpressao);
  10 : FormulrioContnuoRazo21click(frmvenda_reimpressao);
  11 : ContratoCapa1Click(frmvenda_reimpressao);
  12 : Bobinasemformatao1click(frmvenda_reimpressao);
  13 : PedidoCarne1Click(frmvenda_reimpressao);
  14 : TPContrato1Click(frmvenda_reimpressao);
  15 : PedidoCarncomcdigodebarras1Click(frmvenda_reimpressao);
  16 : RazoLaser21Click(frmvenda_reimpressao);
  END;
  close;
end;

procedure Tfrmvenda_reimpressao.FormShow(Sender: TObject);
var i : integer;
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
  qrvenda.sql.add('and venda.codigo = '''+frmmodulo.qrvenda.fieldbyname('codigo').AsString+'''');
  qrvenda.open;

  qrproduto_mov.Close;
  qrproduto_mov.SQL.Clear;
  qrproduto_mov.SQL.Add('select a.CODIGO,a.CODNOTA,a.CODPRODUTO,a.UNITARIO,a.TOTAL,a.ICMS,a.IPI,a.CFOP,a.DATA,a.NUMERONOTA,');
  qrproduto_mov.SQL.Add('  a.CODCLIENTE,a.DESCONTO,a.ACRESCIMO,a.MOVIMENTO,a.CODVENDEDOR,a.CODGRADE,a.SERIAL,a.UNIDADE,a.QTDE,');
  qrproduto_mov.SQL.Add('  a.VALOR_ICMS,a.ICMS_REDUZIDO,a.BASE_CALCULO,a.VALOR_IPI,a.SITUACAO,a.ECF_SERIE,a.ECF_CAIXA,a.CODALIQUOTA,');
  qrproduto_mov.SQL.Add('  a.CUPOM_NUMERO,a.CUPOM_MODELO,a.CUPOM_ITEM,a.ALIQUOTA,a.CST,a.LOTE_FABRICACAO,a.MOVIMENTO_ESTOQUE,a.LANCADO,');
  qrproduto_mov.SQL.Add('  a.VENCIMENTO,a.MARGEM_DESCONTO,a.CREDITO_ICMS,a.PIS,a.COFINS,a.LOJA,a.TIPO,a.CODSUBGRUPO,a.CODUSUARIO,');
  qrproduto_mov.SQL.Add('  a.ORIGEM,a.DESTINO,b.codbarra,b.produto from c000032 a left outer join c000025 b on (a.codproduto = b.codigo)');
  qrproduto_mov.SQL.Add('  where a.codnota = '''+qrvenda.fieldbyname('codigo').asstring+'''');
  qrproduto_mov.SQL.Add('  and a.data = :vdat');
  qrproduto_mov.params.ParamByName('vdat').AsDateTime := qrvenda.fieldbyname('data').AsDateTime;
  qrproduto_mov.Open;

  qrcliente.close;
  qrcliente.sql.clear;
  qrcliente.sql.add('select * from c000007 where codigo = '''+frmmodulo.qrvenda.fieldbyname('codcliente').AsString+'''');
  qrcliente.open;

  qrcontasreceber.Close;
  qrcontasreceber.SQL.Clear;
  qrcontasreceber.SQL.Add('select * from c000049 where codvenda = '''+frmmodulo.qrvenda.fieldbyname('codigo').AsString+'''');

  frmmodulo.qrconfig.open;
  combo_modelo.ItemIndex  := frmmodulo.qrconfig.FieldByName('VENDA_TIPONOTA').asinteger;
  evias.Value             := frmmodulo.qrconfig.FieldByName('VENDA_QTDE_VIAS_NOTA').asinteger;
  porta_impressora        := frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').asstring;

  venda_nomevend   := qrvenda.fieldbyname('vendedor').AsString;
  venda_data       := FormatDateTime('dd/mm/yyyy',qrvenda.fieldbyname('data').AsDateTime);
  venda_codigo     := frmmodulo.qrvenda.fieldbyname('codigo').AsString;
  CLIENTE_NOME     := qrcliente.fieldbyname('nome').asstring;
  CLIENTE_ENDERECO := qrcliente.fieldbyname('endereco').asstring;
  CLIENTE_BAIRRO   := qrcliente.fieldbyname('bairro').asstring;
  CLIENTE_CIDADE   := qrcliente.fieldbyname('cidade').asstring;
  CLIENTE_UF       := qrcliente.fieldbyname('uf').asstring;
  CLIENTE_CEP      := qrcliente.fieldbyname('cep').asstring;
  CLIENTE_TELEFONE := qrcliente.fieldbyname('telefone1').asstring+'/'+qrcliente.fieldbyname('celular').asstring+'/'+qrcliente.fieldbyname('telefone2').asstring;
  CLIENTE_CPF      := qrcliente.fieldbyname('cpf').asstring;
  CLIENTE_RG       := qrcliente.fieldbyname('rg').asstring;
  CLIENTE_CODIGO   := qrcliente.fieldbyname('CODIGO').asstring;
  cliente_retirado := qrvenda.fieldbyname('retirado').AsString;
  qrvenda_produto.Open;
  qrvenda_produto.First;
  qrproduto_mov.First;
  i := 0;
  while not qrvenda_produto.eof do qrvenda_produto.Delete;
  while not qrproduto_mov.Eof do
          begin
          if i = 0 then i := 1 else i := i + 1;
          qrvenda_produto.Append;
          qrvenda_produto.fieldbyname('codproduto').asstring      := qrproduto_mov.FieldByName('codproduto').asstring;
          qrvenda_produto.fieldbyname('produto').asstring         := qrproduto_mov.FieldByName('produto').asstring;
          qrvenda_produto.fieldbyname('qtde').asfloat             := qrproduto_mov.FieldByName('qtde').asfloat;
          qrvenda_produto.fieldbyname('unitario').asfloat         := qrproduto_mov.FieldByName('unitario').asfloat;
          qrvenda_produto.fieldbyname('total').asfloat            := qrproduto_mov.FieldByName('total').asfloat;
          qrvenda_produto.fieldbyname('desconto').asfloat         := qrproduto_mov.FieldByName('desconto').asfloat;
          qrvenda_produto.fieldbyname('acrescimo').asfloat        := qrproduto_mov.FieldByName('acrescimo').asfloat;
          qrvenda_produto.fieldbyname('numeracao').AsString       := qrproduto_mov.FieldByName('unidade').asstring;
          QRVENDA_PRODUTO.fieldbyname('aliquota').asFLOAT         := qrproduto_mov.FieldByName('ALIQUOTA').asFLOAT;
          QRVENDA_PRODUTO.fieldbyname('CST').asSTRING             := qrproduto_mov.FieldByName('CST').asSTRING;
          QRVENDA_PRODUTO.fieldbyname('item').asstring            := qrproduto_mov.FieldByName('cupom_item').asstring;
          qrvenda_produto.fieldbyname('qtde').asfloat             := qrproduto_mov.FieldByName('movimento_estoque').asfloat;
          qrvenda_produto.fieldbyname('codsubgrupo').asstring     := qrproduto_mov.FieldByName('codsubgrupo').asstring;
          qrvenda_produto.fieldbyname('codbarras').asstring       := qrproduto_mov.FieldByName('codbarra').asstring;
          qrvenda_produto.fieldbyname('serial').asstring          := qrproduto_mov.FieldByName('SERIAL').Asstring;
          qrvenda_produto.fieldbyname('codgrade').asstring        := qrproduto_mov.FieldByName('codgrade').Asstring;
          qrvenda_produto.Post;
          qrproduto_mov.next;
      end;
      //quantidade de itens da venda
      venda_itens := inttostr(i);
end;

procedure Tfrmvenda_reimpressao.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.SetFocus;
end;

procedure Tfrmvenda_reimpressao.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmvenda_reimpressao.TPNota_FiscalClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmvenda_reimpressao.TPBobinaClick(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    subir_papel, conta_formas,vias : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario : real;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20


   frmmodulo.qrconfig.open;
   subir_papel := frmmodulo.qrconfig.fieldbyname('bobina_subirpapel').asinteger;


  VIAS := EVIAS.Value;


   WHILE VIAS <> 0 DO
   BEGIN



   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);
   writeln(arquivo,#18+#27#71+#20,frmprincipal.Texto_Justifica(emitente_fantasia,30,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco,52,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_cidade+' - CEP '+emitente_cep,52,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica('Telefone: '+emitente_telefone,52,' ','C'));
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'No. '+frmprincipal.Texto_Justifica(qrvenda.fieldbyname('codigo').AsString,6,'0','E')+
                                  '  Emis: '+frmprincipal.Texto_Justifica(qrvenda.fieldbyname('data').AsString,10,' ','E')+
                                  ' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                  '  Vd: '+frmprincipal.Texto_Justifica(qrvenda.fieldbyname('vendedor').AsString,13,' ','D'));

   // informacoes do cliente
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   if cliente_codigo = '999999' then
     writeln(arquivo,#15+#27#72+#20,'Cliente...: '+frmprincipal.Texto_Justifica(cliente_codigo,6,'0','E')+' '+frmprincipal.Texto_Justifica(cliente_retirado,32,' ','D'))
   else
     writeln(arquivo,#15+#27#72+#20,'Cliente...: '+frmprincipal.Texto_Justifica(cliente_codigo,6,'0','E')+' '+frmprincipal.Texto_Justifica(cliente_nome,32,' ','D'));

   writeln(arquivo,#15+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(qrcliente.fieldbyname('endereco').asstring+' '+qrcliente.fieldbyname('bairro').asstring,39,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Cid/UF/CEP: '+frmprincipal.Texto_Justifica(qrcliente.fieldbyname('cidade').asstring+'/'+qrcliente.fieldbyname('uf').asstring+'  '+qrcliente.fieldbyname('cep').asstring,39,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(qrcliente.fieldbyname('telefone1').asstring+'/'+qrcliente.fieldbyname('celular').asstring+'/'+qrcliente.fieldbyname('telefone2').asstring,39,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'CPF/CNPJ..: '+frmprincipal.Texto_Justifica(qrcliente.fieldbyname('cpf').asstring,39,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'RG/IE.....: '+frmprincipal.Texto_Justifica(qrcliente.fieldbyname('rg').asstring,39,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'P R O D U T O     QTDE.   X   UNITARIO  =  VLR.TOTAL');
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');

   qrvenda_produto.Refresh;
   qrvenda_produto.first;
   while not qrvenda_produto.eof do
   begin
     texto1 := qrvenda_produto.fieldbyname('serial').asstring;

     writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(qrvenda_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(qrvenda_produto.fieldbyname('produto').asstring,44-length(texto1),' ','D')+' '+texto1);

     writeln(arquivo,#15+#27#72+#20,'         '+frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,qrvenda_produto.fieldbyname('qtde').asfloat),11,' ','E')+' '+
                                                frmprincipal.Texto_Justifica(qrvenda_produto.fieldbyname('numeracao').asstring,2,' ','D')+
                                                '   X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda_produto.fieldbyname('unitario').asfloat),10,' ','E')+'  = '+
                                                frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda_produto.fieldbyname('total').asfloat),10,' ','E'));
     qrvenda_produto.Next;
   end;

   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'  ** Meios de  Pagamento **  | SUBTOTAL  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('subtotal').AsFloat),10,' ','E'));


  dinheiro   := qrvenda.fieldbyname('meio_dinheiro').asfloat;
  chequeav   := qrvenda.fieldbyname('meio_chequeav').asfloat;
  chequeap   := qrvenda.fieldbyname('meio_chequeap').asfloat;
  cartaocred := qrvenda.fieldbyname('meio_cartaocred').asfloat;
  cartaodeb  := qrvenda.fieldbyname('meio_cartaodeb').asfloat;
  crediario  := qrvenda.fieldbyname('meio_crediario').asfloat;

 { dinheiro := frmvenda_fechamento.rdinheiro.Value;
  chequeav := frmvenda_fechamento.rchequeav.Value;
  chequeap := frmvenda_fechamento.rchequeap.Value;
  cartaocred := frmvenda_fechamento.rcartaocred.Value;
  cartaodeb := frmvenda_fechamento.rcartaodeb.Value;
  crediario := frmvenda_fechamento.rcrediario.Value; }
  CONTA_FORMAS := 1;

   while conta_formas <> 7 do
   begin
     if conta_formas = 1 then
     begin
       if dinheiro <> 0 then
       begin
          dinheiro := 0;
          writeln(arquivo,#15+#27#72+#20,'Dinheiro ....... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,dinheiro),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('desconto').AsFloat),10,' ','E'));
       end
       else
       begin
         if chequeav <> 0 then
         begin
           chequeav := 0;
           writeln(arquivo,#15+#27#72+#20,'Cheque a Vista . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,chequeav),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('desconto').AsFloat),10,' ','E'));
         end
         else
         begin
           if chequeap <> 0 then
           begin
             chequeap := 0;
             writeln(arquivo,#15+#27#72+#20,'Cheque a Prazo . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,chequeap),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('desconto').AsFloat),10,' ','E'));
           end
           else
           begin
             if cartaocred <> 0 then
             begin
               cartaocred := 0;
               writeln(arquivo,#15+#27#72+#20,'Cartao Credito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,cartaocred),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('desconto').AsFloat),10,' ','E'));
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                 cartaodeb := 0;
                 writeln(arquivo,#15+#27#72+#20,'Cartao Debito .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,cartaodeb),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('desconto').AsFloat),10,' ','E'));
               end
               else
               begin
                 crediario := 0;
                 writeln(arquivo,#15+#27#72+#20,'Crediario ...... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,CREDIARIO),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('desconto').AsFloat),10,' ','E'));
               end;
             end;
           end;
         end;
       end;
     end;


     if conta_formas = 2 then
     begin
         if chequeav <> 0 then
         begin
             writeln(arquivo,#15+#27#72+#20,'Cheque a Vista . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,chequeav),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('acrescimo').AsFloat),10,' ','E'));
             chequeav := 0;
         end
         else
         begin
           if chequeap <> 0 then
           begin
               writeln(arquivo,#15+#27#72+#20,'Cheque a Prazo . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,chequeap),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('acrescimo').AsFloat),10,' ','E'));
               chequeap := 0;
           end
           else
           begin
             if cartaocred <> 0 then
             begin
                 writeln(arquivo,#15+#27#72+#20,'Cartao Credito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,cartaocred),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('acrescimo').AsFloat),10,' ','E'));
                 cartaocred := 0;
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                    writeln(arquivo,#15+#27#72+#20,'Cartao Debito .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,cartaodeb),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('acrescimo').AsFloat),10,' ','E'));
                    cartaodeb := 0;
               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario ...... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,CREDIARIO),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('acrescimo').AsFloat),10,' ','E'));
                     crediario := 0;
                 END
                 ELSE
                 BEGIN
                   writeln(arquivo,#15+#27#72+#20,'                             | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('acrescimo').AsFloat),10,' ','E'));
                 END;
               end;
             end;
           end;
         end;
     end;

     if conta_formas = 3 then
     begin
           if chequeap<> 0 then
           begin
               writeln(arquivo,#15+#27#72+#20,'Cheque a Prazo . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,chequeap),9,' ','E')+' |----------------------');
               chequeap := 0;
           end
           else
           begin
             if cartaocred <> 0 then
             begin
                 writeln(arquivo,#15+#27#72+#20,'Cartao Credito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,cartaocred),9,' ','E')+' |----------------------');
                 cartaocred := 0;
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                   writeln(arquivo,#15+#27#72+#20,'Cartao Debito .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,cartaodeb),9,' ','E')+' |----------------------');
                   cartaodeb := 0;

               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario ...... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,cREDIARIO),9,' ','E')+' |----------------------');
                     crediario := 0;
                 END
                 ELSE
                 BEGIN
                   writeln(arquivo,#15+#27#72+#20,'                             |----------------------');
                 END;
               end;
             end;
           end;
     END;
     if conta_formas = 4 then
     begin
             if cartaocred <> 0 then
             begin
                 writeln(arquivo,#15+#27#72+#20,'Cartao Credito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,cartaocred),9,' ','E')+' | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('total').AsFloat),10,' ','E'));
                 cartaocred := 0;
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                   writeln(arquivo,#15+#27#72+#20,'Cartao Debito .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,cartaodeb),9,' ','E')+' | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('total').AsFloat),10,' ','E'));
                   cartaodeb := 0;
               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario ...... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,CREDIARIO),9,' ','E')+' | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('total').AsFloat),10,' ','E'));
                     crediario := 0;
                 END
                 ELSE
                 BEGIN
                   writeln(arquivo,#15+#27#72+#20,'                             | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('total').AsFloat),10,' ','E'));
                 END;
               end;
             end;
     end;
     if conta_formas = 5 then
     begin
               if cartaodeb <> 0 then
               begin
                   writeln(arquivo,#15+#27#72+#20,'Cartao Debito .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,cartaodeb),9,' ','E')+' |');
                   cartaodeb := 0;
               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario ...... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,cREDIARIO),9,' ','E')+' |');
                     crediario := 0;
                 END;
               end;

     end;

     if conta_formas = 6 then
     begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario ...... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,cREDIARIO),9,' ','E')+' |');
                     crediario := 0;
                 END;


     end;






     conta_formas := conta_formas + 1;
   end;



   if frmvenda_fechamento.rcrediario.Value <> 0 then
   begin
     Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
     Writeln(arquivo,#15+#27#72+#20,'                   PRESTACOES                       ');
     Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
     Writeln(arquivo,#15+#27#72+#20,'No.  Vencimento   Documento     Tipo        Valor-R$');
     Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');

     qrcontasreceber.First;
     while not qrcontasreceber.eof do
     begin
       writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(qrcontasreceber.fieldbyname('prestacao').asstring,3,'0','E')+'  '+
                                      frmprincipal.Texto_Justifica(qrcontasreceber.fieldbyname('vencimento').asstring,10,' ','D')+'   '+
                                      frmprincipal.Texto_Justifica(qrcontasreceber.fieldbyname('documento').asstring,13,' ','D')+' '+
                                      frmprincipal.Texto_Justifica(qrcontasreceber.fieldbyname('tipo').asstring,9,' ','D')+' '+
                                      frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrcontasreceber.fieldbyname('valor').asfloat),10,' ','E'));



       qrcontasreceber.next;
     end;
   end;



   Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------------');
   Writeln(arquivo,#15+#27#72+#20,'');
   Writeln(arquivo,#15+#27#72+#20,'');
   Writeln(arquivo,#15+#27#72+#20,'');
   Writeln(arquivo,#15+#27#72+#20,'         ------------------------------------       ');
   WRiteln(arquivo,#15+#27#72+#20,'                      Assinatura');

   while subir_papel <> 0 do
   begin
     Writeln(arquivo,#15+#27#72+#20,'');
     subir_papel := subir_papel - 1;
   end;


        VIAS := VIAS -1;
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');

   END;

   closefile(arquivo);

end;

procedure Tfrmvenda_reimpressao.TPRazaoClick(Sender: TObject);
var dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario : real;
begin
  dinheiro   := qrvenda.fieldbyname('meio_dinheiro').asfloat;
  chequeav   := qrvenda.fieldbyname('meio_chequeav').asfloat;
  chequeap   := qrvenda.fieldbyname('meio_chequeap').asfloat;
  cartaocred := qrvenda.fieldbyname('meio_cartaocred').asfloat;
  cartaodeb  := qrvenda.fieldbyname('meio_cartaodeb').asfloat;
  crediario  := qrvenda.fieldbyname('meio_crediario').asfloat;

  qrcontasreceber.close;
  qrcontasreceber.sql.Clear;
  qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+qrvenda.fieldbyname('codigo').asstring+''' order by data_vencimento');
  qrcontasreceber.open;


  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  frmmodulo.qrrelatorio.fieldbyname('linha8').AsString := '';

  frmmodulo.qrrelatorio.fieldbyname('linha1').AsString := FORMATFLOAT('###,###,##0.00',dinheiro);
  frmmodulo.qrrelatorio.fieldbyname('linha2').AsString := FORMATFLOAT('###,###,##0.00',chequeav);
  frmmodulo.qrrelatorio.fieldbyname('linha3').AsString := FORMATFLOAT('###,###,##0.00',chequeap);
  frmmodulo.qrrelatorio.fieldbyname('linha4').AsString := FORMATFLOAT('###,###,##0.00',cartaodeb);
  frmmodulo.qrrelatorio.fieldbyname('linha5').AsString := FORMATFLOAT('###,###,##0.00',cartaocred);

  IF QRCONTASRECEBER.RECORDCOUNT > 0 THEN
  BEGIN
    frmmodulo.qrrelatorio.fieldbyname('linha7').asstring := nome_condicao;
    qrcontasreceber.first;
    while not qrcontasreceber.eof do
    begin
      //frmmodulo.qrrelatorio.fieldbyname('LINHA8').asstring :=
      //frmPrincipal.texto_justifica(qrcontasreceber.fieldbyname('DATA_VENCIMENTO').asstring,10,' ','D')+ ' - R$ '+
      //frmPrincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',qrcontasreceber.fieldbyname('VALOR_ORIGINAL').asFLOAT),8,' ','E') + ' | '+
      //frmmodulo.qrrelatorio.fieldbyname('linha8').AsString;

      qrcontasreceber.next;
    end;
  END
  ELSE
  BEGIN
    frmmodulo.qrrelatorio.fieldbyname('linha8').AsString := 'A VISTA';
    frmmodulo.qrrelatorio.fieldbyname('linha7').asstring := '---';
  END;

  {
  frmmodulo.qrrelatorio.fieldbyname('linha1').asstring := emitente_cidade+FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',qrvenda.fieldbyname('data').asdatetime);
  frmmodulo.qrrelatorio.fieldbyname('linha2').asstring := AnsiUpperCase(extenso(qrvenda.fieldbyname('total').asfloat));
  frmmodulo.qrrelatorio.fieldbyname('linha3').asstring := inttostr(qrcontasreceber.recordcount);
  frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := formatfloat('###,###,##0.00',qrcontasreceber.fieldbyname('valor_atual').asfloat);
  frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := IntToStr(frmvenda.qrvenda_produto.RecordCount);
  frmmodulo.qrrelatorio.post;
  }

  FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000110.fr3');
  FXvenda.ShowReport;
end;

{
procedure Tfrmvenda_impressao.TPRazao_deilsonClick(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    conta_formas, I, VIAS : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario : real;
    prestacao : integer;

formapgto, v1, v2 : string;
y : integer;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// impressao 12 cpi     --> #27#77
// impressao 10 cpi     --> #27#80



   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);

   VIAS := EVIAS.Value;


   WHILE VIAS <> 0 DO
   BEGIN




   writeln(arquivo,#27#77+#15+#27#71+#14,frmprincipal.Texto_Justifica(emitente_fantasia,15,' ','D')+#27#77+#18+#27#72+#20+' '+frmprincipal.Texto_Justifica(emitente_telefone,13,' ','D')+
                   #27#77+#18+#27#72+#20+' ORCAMENTO: '+#27#77+#18+#27#71+#20+frmprincipal.Texto_Justifica(qrvenda.fieldbyname('codigo').asstring,6,'0','E')+
                   #27#77+#18+#27#72+#20+'  DATA: '+frmprincipal.Texto_Justifica(qrvenda.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                         ' VD: '+frmprincipal.Texto_Justifica(qrvenda.fieldbyname('vendedor').asstring,16,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   if frmvenda.lcliente_codigo.Caption = '999999' then
     writeln(arquivo,#27#77+#18+#27#72+#20,'Cliente...: '+#27#77+#15+#27#71+#14+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(frmvenda.cliente_retirado,32,' ','D'))
   else
     writeln(arquivo,#27#77+#18+#27#72+#20,'Cliente...: '+#27#77+#15+#27#71+#14+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));

   writeln(arquivo,#27#77+#18+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,39,' ','D')+'  '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+'  CEP: '+CLIENTE_cep,39,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,20,' ','D')+' CPF/CNPJ: '+frmprincipal.Texto_Justifica(CLIENTE_cpf,25,' ','D')+'RG/IE: '+frmprincipal.Texto_Justifica(CLIENTE_rg,20,' ','D'));
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#77+#18+#27#72+#20,'CODIGO PRODUTO                                               QTDE UN  X   UNITARIO =    TOTAL-R$');
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   I := 0;


   frmvenda.qrvenda_produto.Refresh;
   frmvenda.qrvenda_produto.first;
   while not frmvenda.qrvenda_produto.eof do
   begin
     texto1 := frmvenda.qrvenda_produto.fieldbyname('serial').asstring;

     writeln(arquivo,#27#77+#18+#27#72+#20,frmprincipal.Texto_Justifica(frmvenda.qrvenda_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(frmvenda.qrvenda_produto.fieldbyname('produto').asstring,45-length(texto1),' ','D')+' '+texto1+' '+
                                    frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat),11,' ','E')+' '+
                                                frmprincipal.Texto_Justifica(frmvenda.qrvenda_produto.fieldbyname('numeracao').asstring,2,' ','D')+
                                                '  X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda.qrvenda_produto.fieldbyname('unitario').asfloat),10,' ','E')+' =  '+
                                                frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda.qrvenda_produto.fieldbyname('total').asfloat),10,' ','E'));
     frmvenda.qrvenda_produto.Next;
     I := I + 1;
     if i = 16 then
     begin
        writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
        writeln(arquivo,#27#77+#18+#27#72+#20,'                                                            **** Continua na proxima pagina ****');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,#27#77+#15+#27#71+#14,frmprincipal.Texto_Justifica(emitente_fantasia,15,' ','D')+#27#77+#18+#27#72+#20+' '+frmprincipal.Texto_Justifica(emitente_telefone,13,' ','D')+
                   #27#77+#18+#27#72+#20+' ORCAMENTO: '+#27#77+#18+#27#71+#20+frmprincipal.Texto_Justifica(qrvenda.fieldbyname('codigo').asstring,6,'0','E')+
                   #27#77+#18+#27#72+#20+'  DATA: '+frmprincipal.Texto_Justifica(qrvenda.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                         ' VD: '+frmprincipal.Texto_Justifica(qrvenda.fieldbyname('vendedor').asstring,16,' ','D'));
        writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
        writeln(arquivo,#27#77+#18+#27#72+#20,'Cliente...: '+#27#77+#15+#27#71+#14+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));
        writeln(arquivo,#27#77+#18+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,39,' ','D')+'  '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+'  CEP: '+CLIENTE_cep,39,' ','D'));
        writeln(arquivo,#27#77+#18+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,20,' ','D')+' CPF/CNPJ: '+frmprincipal.Texto_Justifica(CLIENTE_cpf,25,' ','D')+'RG/IE: '+frmprincipal.Texto_Justifica(CLIENTE_rg,20,' ','D'));
        writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
        writeln(arquivo,#27#77+#18+#27#72+#20,'CODIGO PRODUTO                                               QTDE UN  X   UNITARIO =    TOTAL-R$');
        writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
        I := 0;
     end;


   end;
   WHILE I <> 16 DO
   BEGIN
     WRITELN(ARQUIVO,'');
     I := I + 1;
   END;
   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
   writeln(arquivo,#27#77+#18+#27#72+#20,'SUBTOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('subtotal').asfloat),10,' ','E')+
                                         '      DESCONTO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('desconto').asfloat),10,' ','E')+
                                         '     ACRESCIMO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('acrescimo').asfloat),10,' ','E')+
                                         '      TOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('total').asfloat),10,' ','E'));

   writeln(arquivo,#27#77+#18+#27#72+#20,'------------------------------------------------------------------------------------------------');
    formapgto := '';


    if qrvenda.fieldbyname('meio_dinheiro').asfloat <> 0 then formapgto := 'À Vista/';
    if qrvenda.fieldbyname('meio_chequeav').asfloat <> 0 then formapgto := formapgto + 'Cheque à Vista/';
    if qrvenda.fieldbyname('meio_chequeap').asfloat <> 0 then formapgto := formapgto +'Cheque à Prazo/';
    if qrvenda.fieldbyname('meio_cartaocred').asfloat <> 0 then formapgto := formapgto +'Cartão Crédito/';
    if qrvenda.fieldbyname('meio_cartaodeb').asfloat <> 0 then formapgto := formapgto +'Cartão Débito/';
    if qrvenda.fieldbyname('meio_crediario').asfloat <> 0 then
    begin
      formapgto := formapgto +'Crediário/';
    end;
    y := length(formapgto);
    if copy(formapgto,y,1) = '/'then delete(formapgto,y,1);

    y := 0;
    v1 := '';
    v2 := '';

    if frmvenda_fechamento.rcrediario.Value <> 0 then
    begin
      frmvenda.qrcontasreceber.Open;
      frmvenda.qrcontasreceber.first;
      while not frmvenda.qrcontasreceber.Eof do
      begin
        if y > 5 then
        begin
          v2 := v2 + frmvenda.qrcontasreceber.fieldbyname('vencimento').asstring+' -> '+formatfloat(mascara_valor,frmvenda.qrcontasreceber.fieldbyname('valor').asfloat)+' | ';
        end
        else
        begin
          v1 := v1 + frmvenda.qrcontasreceber.fieldbyname('vencimento').asstring+' -> '+formatfloat(mascara_valor,frmvenda.qrcontasreceber.fieldbyname('valor').asfloat)+' | ';
          y := y + 1;
        end;
        frmvenda.qrcontasreceber.next;
      end;
    end;

    writeln(arquivo,#27#77+#15#27#72+#20,frmprincipal.Texto_Justifica(FORMAPGTO,25,' ','D')+'  '+V1);
     writeln(arquivo,'');
     writeln(arquivo,#27#77+#18+#27#72+#20,'                                                               ----------- Assinatura ----------');

     VIAS := VIAS -1;
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');

   END;

   closefile(arquivo);
end;

}

procedure Tfrmvenda_reimpressao.TPCartaClick(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    subir_papel, conta_formas, x : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario : real;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// impressao 12 cpi     --> #27#77
// impressao 10 cpi     --> #27#80
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20

   subir_papel := 14;

   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);
   writeln(arquivo,#27#71+#14,frmprincipal.Texto_Justifica(emitente_fantasia,40,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco+' - '+emitente_cidade+' - CEP '+emitente_cep+' Fone: '+emitente_telefone,130,' ','C'));
   writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
   writeln(arquivo,#18+#27#72+#20,'No. '+frmprincipal.Texto_Justifica(venda_codigo,6,'0','E')+
                                  '  Emis: '+frmprincipal.Texto_Justifica(venda_data,10,' ','E')+
                                  ' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                  '  Vendedor: '+frmprincipal.Texto_Justifica(venda_nomevend,30,' ','D'));
  // informacoes do cliente
   writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
   if cliente_codigo = '999999' then
     writeln(arquivo,#18+#27#72+#20,'Cliente...: '+frmprincipal.Texto_Justifica(cliente_codigo,6,'0','E')+' '+frmprincipal.Texto_Justifica(cliente_nome,32,' ','D'))
   else
     writeln(arquivo,#18+#27#72+#20,'Cliente...: '+frmprincipal.Texto_Justifica(cliente_codigo,6,'0','E')+' '+frmprincipal.Texto_Justifica(cliente_retirado,32,' ','D'));
   writeln(arquivo,#18+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(qrcliente.fieldbyname('endereco').asstring+' '+qrcliente.fieldbyname('bairro').asstring,39,' ','D'));
   writeln(arquivo,#18+#27#72+#20,'Cid/UF/CEP: '+frmprincipal.Texto_Justifica(qrcliente.fieldbyname('cidade').asstring+'/'+qrcliente.fieldbyname('uf').asstring+'  '+qrcliente.fieldbyname('cep').asstring,39,' ','D'));
   writeln(arquivo,#18+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(qrcliente.fieldbyname('telefone1').asstring+'/'+qrcliente.fieldbyname('celular').asstring+'/'+qrcliente.fieldbyname('telefone2').asstring,39,' ','D'));
   writeln(arquivo,#18+#27#72+#20,'CPF/CNPJ..: '+frmprincipal.Texto_Justifica(qrcliente.fieldbyname('cpf').asstring,39,' ','D'));
   writeln(arquivo,#18+#27#72+#20,'RG/IE.....: '+frmprincipal.Texto_Justifica(qrcliente.fieldbyname('rg').asstring,39,' ','D'));
   writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
   writeln(arquivo,#18+#27#72+#20,'P R O D U T O                                   QTDE. X  UNITARIO  =  VLR.TOTAL');
   writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');

   qrvenda_produto.Refresh;
   qrvenda_produto.first;
   x := 1;
   while not qrvenda_produto.eof do
   begin
     texto1 := qrvenda_produto.fieldbyname('serial').asstring;
     writeln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica(qrvenda_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(qrvenda_produto.fieldbyname('produto').asstring,34-length(texto1),' ','D')+' '+texto1+
                                    frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,qrvenda_produto.fieldbyname('qtde').asfloat),8,' ','E')+' '+
                                    frmprincipal.Texto_Justifica(qrvenda_produto.fieldbyname('numeracao').asstring,2,' ','D')+
                                    ' X'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda_produto.fieldbyname('unitario').asfloat),10,' ','E')+'  = '+
                                    frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda_produto.fieldbyname('total').asfloat),10,' ','E'));
     qrvenda_produto.Next;
     x := x + 1;
   end;
   while x <> 20 do
   begin
      writeln(arquivo,#18+#27#72+#20,'');
      x := x + 1;
   end;

   writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
   writeln(arquivo,#18+#27#72+#20,'  ** Meios de  Pagamento **  |                            SUBTOTAL  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('subtotal').AsFloat),10,' ','E'));



  dinheiro := frmvenda_fechamento.rdinheiro.Value;
  chequeav := frmvenda_fechamento.rchequeav.Value;
  chequeap := frmvenda_fechamento.rchequeap.Value;
  cartaocred := frmvenda_fechamento.rcartaocred.Value;
  cartaodeb := frmvenda_fechamento.rcartaodeb.Value;
  crediario := frmvenda_fechamento.rcrediario.Value;
  CONTA_FORMAS := 1;

   while conta_formas <> 7 do
   begin
     if conta_formas = 1 then
     begin
       if dinheiro <> 0 then
       begin
          dinheiro := 0;
          writeln(arquivo,#18+#27#72+#20,'Dinheiro ....... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdinheiro.value),9,' ','E')+' |                            DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value),10,' ','E'));
       end
       else
       begin
         if chequeav <> 0 then
         begin
           chequeav := 0;
           writeln(arquivo,#18+#27#72+#20,'Cheque a Vista . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeav.value),9,' ','E')+' |                            DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value),10,' ','E'));
         end
         else
         begin
           if chequeap <> 0 then
           begin
             chequeap := 0;
             writeln(arquivo,#18+#27#72+#20,'Cheque a Prazo . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeap.value),9,' ','E')+' |                            DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value),10,' ','E'));
           end
           else
           begin
             if cartaocred <> 0 then
             begin
               cartaocred := 0;
               writeln(arquivo,#18+#27#72+#20,'Cartao Credito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaocred.value),9,' ','E')+' |                            DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value),10,' ','E'));
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                 cartaodeb := 0;
                 writeln(arquivo,#18+#27#72+#20,'Cartao Debito .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaodeb.value),9,' ','E')+' |                            DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value),10,' ','E'));
               end
               else
               begin
                 crediario := 0;
                 writeln(arquivo,#18+#27#72+#20,'Crediario ...... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcREDIARIO.value),9,' ','E')+' |                            DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value),10,' ','E'));
               end;
             end;
           end;
         end;
       end;
     end;


     if conta_formas = 2 then
     begin
         if chequeav <> 0 then
         begin
             writeln(arquivo,#18+#27#72+#20,'Cheque a Vista . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeav.value),9,' ','E')+' |                            ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.racrescimo2.value),10,' ','E'));
             chequeav := 0;
         end
         else
         begin
           if chequeap <> 0 then
           begin
               writeln(arquivo,#18+#27#72+#20,'Cheque a Prazo . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeap.value),9,' ','E')+' |                            ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.racrescimo2.value),10,' ','E'));
               chequeap := 0;
           end
           else
           begin
             if cartaocred <> 0 then
             begin
                 writeln(arquivo,#18+#27#72+#20,'Cartao Credito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaocred.value),9,' ','E')+' |                            ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.racrescimo2.value),10,' ','E'));
                 cartaocred := 0;
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                    writeln(arquivo,#18+#27#72+#20,'Cartao Debito .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaodeb.value),9,' ','E')+' |                            ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.racrescimo2.value),10,' ','E'));
                    cartaodeb := 0;
               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#18+#27#72+#20,'Crediario ...... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcREDIARIO.value),9,' ','E')+' |                            ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.racrescimo2.value),10,' ','E'));
                     crediario := 0;
                 END
                 ELSE
                 BEGIN
                   writeln(arquivo,#18+#27#72+#20,'                             |                            ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.racrescimo2.value),10,' ','E'));
                 END;
               end;
             end;
           end;
         end;
     end;

     if conta_formas = 3 then
     begin
           if chequeap<> 0 then
           begin
               writeln(arquivo,#18+#27#72+#20,'Cheque a Prazo . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeap.value),9,' ','E')+' |----------------------');
               chequeap := 0;
           end
           else
           begin
             if cartaocred <> 0 then
             begin
                 writeln(arquivo,#18+#27#72+#20,'Cartao Credito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaocred.value),9,' ','E')+' |----------------------');
                 cartaocred := 0;
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                   writeln(arquivo,#18+#27#72+#20,'Cartao Debito .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaodeb.value),9,' ','E')+' |----------------------');
                   cartaodeb := 0;

               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#18+#27#72+#20,'Crediario ...... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcREDIARIO.value),9,' ','E')+' |----------------------');
                     crediario := 0;
                 END
                 ELSE
                 BEGIN
                   writeln(arquivo,#18+#27#72+#20,'                             |--------------------------------------------------');
                 END;
               end;
             end;
           end;
     END;
     if conta_formas = 4 then
     begin
             if cartaocred <> 0 then
             begin
                 writeln(arquivo,#18+#27#72+#20,'Cartao Credito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaocred.value),9,' ','E')+' | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rTOTAL.value),10,' ','E'));
                 cartaocred := 0;
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                   writeln(arquivo,#18+#27#72+#20,'Cartao Debito .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaodeb.value),9,' ','E')+' | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rTOTAL.value),10,' ','E'));
                   cartaodeb := 0;
               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#18+#27#72+#20,'Crediario ...... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rCREDIARIO.value),9,' ','E')+' | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rTOTAL.value),10,' ','E'));
                     crediario := 0;
                 END
                 ELSE
                 BEGIN
                   writeln(arquivo,#18+#27#72+#20,'                             |                            T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rtotal.value),10,' ','E'));
                 END;
               end;
             end;
     end;
     if conta_formas = 5 then
     begin
               if cartaodeb <> 0 then
               begin
                   writeln(arquivo,#18+#27#72+#20,'Cartao Debito .. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaodeb.value),9,' ','E')+' |');
                   cartaodeb := 0;
               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#18+#27#72+#20,'Crediario ...... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcREDIARIO.value),9,' ','E')+' |');
                     crediario := 0;
                 END;
               end;

     end;

     if conta_formas = 6 then
     begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#18+#27#72+#20,'Crediario ...... R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcREDIARIO.Value),9,' ','E')+' |');
                     crediario := 0;
                 END;


     end;






     conta_formas := conta_formas + 1;
   end;



   if frmvenda_fechamento.rcrediario.Value <> 0 then
   begin
     Writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
     Writeln(arquivo,#18+#27#72+#20,'                   PRESTACOES                       ');
     Writeln(arquivo,#18+#27#72+#20,'----------------------------------------------------');
     Writeln(arquivo,#18+#27#72+#20,'No.  Vencimento   Documento     Tipo        Valor-R$');
     Writeln(arquivo,#18+#27#72+#20,'----------------------------------------------------');

     qrcontasreceber.First;
     while not qrcontasreceber.eof do
     begin
       writeln(arquivo,#18+#27#72+#20,frmprincipal.Texto_Justifica(qrcontasreceber.fieldbyname('prestacao').asstring,3,'0','E')+'  '+
                                      frmprincipal.Texto_Justifica(qrcontasreceber.fieldbyname('vencimento').asstring,10,' ','D')+'   '+
                                      frmprincipal.Texto_Justifica(qrcontasreceber.fieldbyname('documento').asstring,13,' ','D')+' '+
                                      frmprincipal.Texto_Justifica(qrcontasreceber.fieldbyname('tipo').asstring,9,' ','D')+' '+
                                      frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrcontasreceber.fieldbyname('valor').asfloat),10,' ','E'));



       qrcontasreceber.next;
     end;
   end;



   Writeln(arquivo,#18+#27#72+#20,'--------------------------------------------------------------------------------');
   Writeln(arquivo,#18+#27#72+#20,'');
   Writeln(arquivo,#18+#27#72+#20,'');
   Writeln(arquivo,#18+#27#72+#20,'');
   Writeln(arquivo,#18+#27#72+#20,'                       ------------------------------------       ');
   WRiteln(arquivo,#18+#27#72+#20,'                                  Assinatura');


   writeln(arquivo,#12);



   closefile(arquivo);
end;

procedure Tfrmvenda_reimpressao.TPContratoClick(Sender: TObject);
begin
  qrcontasreceber.close;
  qrcontasreceber.sql.Clear;
  qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+qrvenda.fieldbyname('codigo').asstring+''' order by data_vencimento');
  qrcontasreceber.open;
  IF QRCONTASRECEBER.RecordCount > 0 THEN
  BEGIN
    frmmodulo.qrrelatorio.open;
    frmmodulo.qrrelatorio.edit;
    frmmodulo.qrrelatorio.fieldbyname('linha1').asstring := emitente_cidade+FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',qrvenda.fieldbyname('data').asdatetime);
    frmmodulo.qrrelatorio.fieldbyname('linha2').asstring := AnsiUpperCase(extenso(qrvenda.fieldbyname('total').asfloat));
    frmmodulo.qrrelatorio.fieldbyname('linha3').asstring := inttostr(qrcontasreceber.recordcount);
    frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := formatfloat('###,###,##0.00',qrcontasreceber.fieldbyname('valor_atual').asfloat);
    frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := IntToStr(qrvenda_produto.RecordCount);
    frmmodulo.qrrelatorio.post;
    FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000048.fr3');
    FXvenda.ShowReport;
    FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000049.fr3');
    FXvenda.ShowReport;
  END
  ELSE
  BEGIN
    frmmodulo.qrrelatorio.open;
    frmmodulo.qrrelatorio.edit;
    frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := IntToStr(qrvenda_produto.RecordCount);
    frmmodulo.qrrelatorio.post;
    FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000050.fr3');
    FXvenda.ShowReport;

  END;

end;

procedure Tfrmvenda_reimpressao.TPPersonalizadoClick(Sender: TObject);
var formapgto, v1, v2 : string;
y : integer;
begin
     {
  frmvenda_relrazao := tfrmvenda_relrazao.create(self);
  with frmvenda_relrazao do
  begin

    rempresa.Caption := emitente_fantasia;
    remissao.Caption := venda_data+' '+timetostr(time);
    rcodcliente.Caption := qrcliente.fieldbyname('codigo').asstring;
    rcliente.Caption := qrcliente.fieldbyname('nome').asstring;
    rendereco.Caption := qrcliente.fieldbyname('endereco').asstring+', '+qrcliente.fieldbyname('bairro').asstring+' - '+qrcliente.fieldbyname('cidade').asstring+' ('+qrcliente.fieldbyname('uf').asstring+')   Cep: '+qrcliente.fieldbyname('cep').asstring;
    rtelefone.Caption := qrcliente.fieldbyname('telefone1').asstring;
    rcpf.Caption := qrcliente.fieldbyname('cpf').asstring;
    rrg.Caption := qrcliente.fieldbyname('rg').asstring;
    rcodigo.Caption := venda_codigo ;
    rvendedor.caption := venda_nomevend ;
    lretirado.caption := cliente_retirado;
    robs.caption := observ;

    rsubtotal.Caption := formatfloat(mascara_valor,qrvenda.fieldbyname('subtotal').AsFloat);
    ritens.Caption := venda_itens;
    rdesconto.Caption := ''; //formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value);
    rtotal.Caption := ''; //formatfloat(mascara_valor,frmvenda_fechamento.rtotal.Value);

    formapgto := '';

    F1.Caption := '';
    F2.CAPTION := '';
    F3.CAPTION := '';
    F4.Caption := '';

    QRLabel3.Caption := 'DEVOLUÇÃO DE MERCADORIA';
    rprazo.Caption := '';
    rvencimento1.Caption := '';
    rvencimento2.Caption := '';
    QRLabel25.Caption := '';

    y := evias.Value;

    while y <> 0 do
    begin
      relatorio.Print;
      y := y - 1;
    end;

  end;   }
end;

procedure Tfrmvenda_reimpressao.tprazaotintaClick(Sender: TObject);
var formapgto, v1, v2 : string;
y : integer;
begin                {
  frmvenda_relrazao := tfrmvenda_relrazao.create(self);
  with frmvenda_relrazao do
  begin
    rempresa.Caption := emitente_fantasia;
    remissao.Caption := venda_data+' '+timetostr(time);
    rcodcliente.Caption := qrcliente.fieldbyname('codigo').asstring;
    rcliente.Caption := qrcliente.fieldbyname('nome').asstring;
    rendereco.Caption := qrcliente.fieldbyname('endereco').asstring+', '+qrcliente.fieldbyname('bairro').asstring+' - '+qrcliente.fieldbyname('cidade').asstring+' ('+qrcliente.fieldbyname('uf').asstring+')   Cep: '+qrcliente.fieldbyname('cep').asstring;
    rtelefone.Caption := qrcliente.fieldbyname('telefone1').asstring;
    rcpf.Caption := qrcliente.fieldbyname('cpf').asstring;
    rrg.Caption := qrcliente.fieldbyname('rg').asstring;
    rcodigo.Caption := venda_codigo ;
    rvendedor.caption := venda_nomevend ;
    lretirado.caption := cliente_retirado;
    robs.caption := observ;

    rsubtotal.Caption := formatfloat(mascara_valor,qrvenda.fieldbyname('subtotal').AsFloat);
    ritens.Caption := venda_itens;
    rdesconto.Caption := formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value);
    rtotal.Caption := formatfloat(mascara_valor,frmvenda_fechamento.rtotal.Value);

    formapgto := '';

    F1.Caption := '';
    F2.CAPTION := '';
    F3.CAPTION := '';
    F4.Caption := '';




    if frmvenda_fechamento.rdinheiro.Value <> 0 then F1.CAPTION := 'Dinheiro/Entrada....R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdinheiro.Value),10,' ','E');
    if frmvenda_fechamento.rchequeav.Value <> 0 then
    BEGIN
      IF F1.CAPTION = '' THEN
        F1.CAPTION := 'Cheque a Vista......R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeav.Value),10,' ','E')
      ELSE
        F2.CAPTION := 'Cheque a Vista......R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeav.Value),10,' ','E');
    END;

    if frmvenda_fechamento.rchequeap.Value <> 0 then
    BEGIN
      IF F1.CAPTION = '' THEN
        F1.CAPTION := 'Cheque a Prazo......R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeap.Value),10,' ','E')
      ELSE
        if f2.caption = '' then
          F2.CAPTION := 'Cheque a Prazo......R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeap.Value),10,' ','E')
        else
          F3.CAPTION := 'Cheque a Prazo......R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeap.Value),10,' ','E')
    END;
    if frmvenda_fechamento.rcartaocred.Value <> 0 then
    BEGIN
      IF F1.CAPTION = '' THEN
        F1.CAPTION := 'Cartão de Crédito...R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaocred.Value),10,' ','E')
      ELSE
        if f2.caption = '' then
          F2.CAPTION := 'Cartão de Crédito...R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaocred.Value),10,' ','E')
        else
          if f3.caption = '' then
            F3.CAPTION := 'Cartão de Crétito...R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaocred.Value),10,' ','E')
          else
            F4.CAPTION := 'Cartão de Crétito...R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaocred.Value),10,' ','E');
    END;


    if frmvenda_fechamento.rcartaodeb.Value <> 0 then
    BEGIN
      IF F1.CAPTION = '' THEN
        F1.CAPTION := 'Cartão de Débito....R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaodeb.Value),10,' ','E')
      ELSE
        if f2.caption = '' then
          F2.CAPTION := 'Cartão de Débito....R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaodeb.Value),10,' ','E')
        else
          if f3.caption = '' then
            F3.CAPTION := 'Cartão de Débito....R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaodeb.Value),10,' ','E')
          else
            F4.CAPTION := 'Cartão de Débito....R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaodeb.Value),10,' ','E');
    END;


    if frmvenda_fechamento.rcrediario.Value <> 0 then
    BEGIN
      IF F1.CAPTION = '' THEN
        F1.CAPTION := 'Crediário.............$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcrediario.Value),10,' ','E')
      ELSE
        if f2.caption = '' then
          F2.CAPTION := 'Crediário...........R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcrediario.Value),10,' ','E')
        else
          if f3.caption = '' then
            F3.CAPTION := 'Crediário...........R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcrediario.Value),10,' ','E')
          else
            F4.CAPTION := 'Crediário...........R$ '+frmprincipal.texto_justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcrediario.Value),10,' ','E');
    END;

    if frmvenda_fechamento.rdinheiro.Value <> 0 then formapgto := 'À Vista/';
    if frmvenda_fechamento.rchequeav.Value <> 0 then formapgto := formapgto + 'Cheque à Vista/';
    if frmvenda_fechamento.rchequeap.Value <> 0 then formapgto := formapgto +'Cheque à Prazo/';
    if frmvenda_fechamento.rcartaocred.Value <> 0 then formapgto := formapgto +'Cartão Crédito/';
    if frmvenda_fechamento.rcartaodeb.Value <> 0 then formapgto := formapgto +'Cartão Débito/';
    if frmvenda_fechamento.rcrediario.Value <> 0 then
    begin
      formapgto := formapgto +'Crediário - '+nome_condicao+'/';
    end;
    y := length(formapgto);
    if copy(formapgto,y,1) = '/'then delete(formapgto,y,1);
    Rprazo.Caption := formapgto;
    y := 0;
    v1 := '';
    v2 := '';

    if frmvenda_fechamento.rcrediario.Value <> 0 then
    begin
      qrcontasreceber.Open;
      qrcontasreceber.first;
      while not qrcontasreceber.Eof do
      begin
        if y > 5 then
        begin
          v2 := v2 + qrcontasreceber.fieldbyname('vencimento').asstring+' --> '+formatfloat(mascara_valor,qrcontasreceber.fieldbyname('valor').asfloat)+' | ';
        end
        else
        begin
          v1 := v1 + qrcontasreceber.fieldbyname('vencimento').asstring+' --> '+formatfloat(mascara_valor,qrcontasreceber.fieldbyname('valor').asfloat)+' | ';
          y := y + 1;
        end;
        qrcontasreceber.next;
      end;
    end;
    rvencimento1.caption := v1;
    rvencimento2.caption := v2;
    y := evias.Value;
    while y <> 0 do
    begin
      relatorio.Print;
      y := y - 1;
    end;

  end;
     }
end;

procedure Tfrmvenda_reimpressao.TPCupom_FiscalClick(Sender: TObject);
var desconto_acrescimo : real;
tp_desconto_acrescimo : string;
produto,consumidor:string;
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
       qrvenda_produto.First;
        while not qrvenda_produto.Eof do
        begin
          FRMMODULO.QRPRODUTO.Close;
          FRMMODULO.QRPRODUTO.SQL.CLEAR;
          FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+qrvenda_produto.fieldbyname('codproduto').asstring+'''');
          FRMMODULO.QRPRODUTO.OPEN;
          if frmmodulo.qrproduto.RECno =  1 THEN
          begin
            if qrvenda_produto.fieldbyname('serial').asstring <> '' then
               produto := frmmodulo.qrproduto.fieldbyname('produto').asstring+' ['+qrvenda_produto.fieldbyname('serial').asstring+']'
            else
               produto := frmmodulo.qrproduto.fieldbyname('produto').asstring;

          frmmodulo.qrecf_item.Open;
          frmmodulo.qrecf_item.Insert;
          frmmodulo.qrecf_item.FieldByName('numero').AsString     := qrvenda.fieldbyname('codigo').asstring;
          frmmodulo.qrecf_item.FieldByName('codproduto').AsString := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
          frmmodulo.qrecf_item.FieldByName('produto').AsString    := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          frmmodulo.qrecf_item.FieldByName('unidade').AsString    := frmmodulo.qrproduto.fieldbyname('unidade').asstring;
          if frmmodulo.qrproduto.fieldbyname('codaliquota').asstring = '' then
            frmmodulo.qrecf_item.FieldByName('aliquota').AsString := 'FF'
          else
            frmmodulo.qrecf_item.FieldByName('aliquota').AsString := frmmodulo.qrproduto.fieldbyname('codaliquota').asstring;
          frmmodulo.qrecf_item.FieldByName('qtde').Asfloat        := qrvenda_produto.fieldbyname('qtde').asfloat;
          frmmodulo.qrecf_item.FieldByName('valor').Asfloat       := qrvenda_produto.fieldbyname('unitario').asfloat;
          frmmodulo.qrecf_item.FieldByName('desconto').Asfloat    := qrvenda_produto.fieldbyname('desconto').asfloat;
          frmmodulo.qrecf_item.FieldByName('acrescimo').Asfloat   := qrvenda_produto.fieldbyname('acrescimo').asfloat;
          frmmodulo.qrecf_item.post;
          end;

          qrvenda_produto.Next;
       end;
       frmmodulo.Conexao.Commit;
       frmmodulo.conexao_ecfserver.Commit;
     end
     else
     begin

       qrvenda_produto.First;

      if ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;


      while not qrvenda_produto.Eof do
      begin
        FRMMODULO.QRPRODUTO.CLOSE;
        FRMMODULO.QRPRODUTO.SQL.CLEAR;
        FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+qrvenda_produto.fieldbyname('codproduto').asstring+'''');
        FRMMODULO.QRPRODUTO.OPEN;
        IF FRMMODULO.QRPRODUTO.RecNo = 1 THEN
        begin
          if qrvenda_produto.fieldbyname('serial').asstring <> '' then
          begin
            produto := qrvenda_produto.fieldbyname('produto').asstring+' ['+qrvenda_produto.fieldbyname('serial').asstring+']';
           end
          else
          begin
            produto := qrvenda_produto.fieldbyname('produto').asstring;
          end;


          desconto_acrescimo := qrvenda_produto.fieldbyname('desconto').asfloat - qrvenda_produto.fieldbyname('acrescimo').asfloat;
          if desconto_acrescimo < 0 then tp_desconto_acrescimo := 'A' else tp_desconto_acrescimo := 'D';

           ecf_vende_item_completo(ecf_modelo,frmmodulo.qrproduto.fieldbyname('codigo').asstring,
                                  frmprincipal.RemoveAcentos(produto),
                                  frmmodulo.qrproduto.fieldbyname('CODALIQUOTA').asstring,
                                  qrvenda_produto.fieldbyname('UNITARIO').asfloat,
                                  qrvenda_produto.fieldbyname('QTDE').asfloat,
                                  qrvenda_produto.fieldbyname('desconto').asfloat,
                                  qrvenda_produto.fieldbyname('acrescimo').asfloat,
                                  frmmodulo.qrproduto.fieldbyname('unidade').asstring,
                                  0);

        end;
        qrvenda_produto.Next;
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

   if cliente_codigo = '999999' then
   begin

      if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+qrvendaRETIRADO.AsString,48,' ','D')+#10+
                                         frmprincipal.Texto_Justifica(('ENDERECO: '+qrcliente.fieldbyname('endereco').asstring+' '+
                                                                         qrcliente.fieldbyname('bairro').asstring+' '+
                                                                         qrcliente.fieldbyname('cidade').asstring),48,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('CPF/CNPJ: '+qrcliente.fieldbyname('cpf').asstring,42,' ','D')+#10+
                                            '------------------------------------------------'+#10+
                                            '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;
   end
   else
   begin
      if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+qrcliente.fieldbyname('nome').asstring,48,' ','D')+#10+
                                         frmprincipal.Texto_Justifica(('ENDERECO: '+qrcliente.fieldbyname('endereco').asstring+' '+
                                                                         qrcliente.fieldbyname('bairro').asstring+' '+
                                                                         qrcliente.fieldbyname('cidade').asstring),48,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('CPF/CNPJ: '+qrcliente.fieldbyname('cpf').asstring,42,' ','D')+#10+
                                            '------------------------------------------------'+#10+
                                            '              OBRIGADO!! VOLTE SEMPRE!!         ') = 'ERRO' THEN EXIT;

   end;

      cupom_fiscal := true;





  ibquery1.close;
  ibquery1.sql.clear;
  ibquery1.sql.add('update c000048 set cupom_fiscal = 1, NUMERO_CUPOM_FISCAL = '''+ecf_numero_cupom(ECF_MODELO)+'''');
  ibquery1.sql.add('where codigo = '''+qrvenda.fieldbyname('codigo').asstring+'''');
  ibquery1.execsql;




    end;

  EXCEPT
    showmessage('Esta função gerou erro! O procedimento foi abortado!');
  END;
end;

procedure Tfrmvenda_reimpressao.FormulrioContnuoRazo21Click(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    conta_formas, I, VIAS : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario : real;
    prestacao : integer;

formapgto, v1, v2 : string;
y : integer;
begin
// NORMAL               --> #18+#27#72+#20
// NORMAL NEGRITO       --> #18+#27#71+#20
// FONTE GRANDE         --> #27#72+#14
// FONTE GRANDE NEGRITO --> #27#71+#14
// CONDENSADO           --> #15+#27#72+#20
// CONDENSADO NEGRITO   --> #15+#27#71+#20
// impressao 12 cpi     --> #27#77
// impressao 10 cpi     --> #27#80



   assignfile(arquivo,impressora_venda);
   rewrite(arquivo);

   VIAS := EVIAS.Value;


   WHILE VIAS <> 0 DO
   BEGIN




   writeln(arquivo,#27#80+#18+#27#71+#20,frmprincipal.Texto_Justifica(emitente_fantasia,12,' ','D')+#27#80+#15+#27#72+#20+' '+frmprincipal.Texto_Justifica(emitente_telefone,13,' ','D')+
                   #27#80+#18+#27#72+#20+' ORCAMENTO: '+#27#80+#18+#27#71+#20+frmprincipal.Texto_Justifica(qrvenda.fieldbyname('codigo').asstring,6,'0','E')+
                   #27#80+#15+#27#72+#20+'   DATA: '+frmprincipal.Texto_Justifica(qrvenda.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                         ' VD: '+frmprincipal.Texto_Justifica(qrvenda.fieldbyname('vendedor').asstring,16,' ','D'));
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
   if cliente_codigo = '999999' then
     writeln(arquivo,#27#80+#15+#27#72+#20,'Cliente...: '+#27#80+#18+#27#71+#20+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(cliente_retirado,32,' ','D'))
   else
     writeln(arquivo,#27#80+#15+#27#72+#20,'Cliente...: '+#27#80+#18+#27#71+#20+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,35,' ','D')+'  '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+' CEP: '+CLIENTE_cep,33,' ','D'));
   writeln(arquivo,#27#80+#15+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,15,' ','D')+' CPF: '+frmprincipal.Texto_Justifica(CLIENTE_cpf,21,' ','D')+'RG: '+frmprincipal.Texto_Justifica(CLIENTE_rg,18,' ','D'));
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#18+#27#72+#20,'CODIGO PRODUTO                               QTDE UN  X   UNITARIO =    TOTAL-R$');
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
   I := 0;


   qrvenda_produto.Refresh;
   qrvenda_produto.first;
   while not qrvenda_produto.eof do
   begin
     texto1 := qrvenda_produto.fieldbyname('serial').asstring;

     writeln(arquivo,#27#80+#18+#27#72+#20,frmprincipal.Texto_Justifica(qrvenda_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(qrvenda_produto.fieldbyname('produto').asstring,29-length(texto1),' ','D')+' '+texto1+' '+
                                    frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,qrvenda_produto.fieldbyname('qtde').asfloat),11,' ','E')+' '+
                                                frmprincipal.Texto_Justifica(qrvenda_produto.fieldbyname('numeracao').asstring,2,' ','D')+
                                                '  X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda_produto.fieldbyname('unitario').asfloat),10,' ','E')+' =  '+
                                                frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda_produto.fieldbyname('total').asfloat),10,' ','E'));
     qrvenda_produto.Next;
     I := I + 1;
     if i = 16 then
     begin
        writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
        writeln(arquivo,#27#80+#18+#27#72+#20,'                                           **** Continua na proxima pagina ****');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');
   writeln(arquivo,#27#80+#18+#27#71+#20,frmprincipal.Texto_Justifica(emitente_fantasia,12,' ','D')+#27#80+#15+#27#72+#20+' '+frmprincipal.Texto_Justifica(emitente_telefone,13,' ','D')+
                   #27#80+#18+#27#72+#20+' ORCAMENTO: '+#27#80+#18+#27#71+#20+frmprincipal.Texto_Justifica(qrvenda.fieldbyname('codigo').asstring,6,'0','E')+
                   #27#80+#15+#27#72+#20+'   DATA: '+frmprincipal.Texto_Justifica(qrvenda.fieldbyname('data').asstring,10,' ','E')+' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                         ' VD: '+frmprincipal.Texto_Justifica(qrvenda.fieldbyname('vendedor').asstring,16,' ','D'));
        writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
        writeln(arquivo,#27#80+#15+#27#72+#20,'Cliente...: '+#27#80+#18+#27#71+#20+frmprincipal.Texto_Justifica(CLIENTE_CODIGO,6,'0','E')+' '+frmprincipal.Texto_Justifica(CLIENTE_nome,32,' ','D'));
         writeln(arquivo,#27#80+#15+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(CLIENTE_endereco+' '+CLIENTE_bairro,35,' ','D')+'  '+frmprincipal.Texto_Justifica(CLIENTE_cidade+'/'+CLIENTE_uf+' CEP: '+CLIENTE_cep,33,' ','D'));
        writeln(arquivo,#27#80+#15+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(CLIENTE_telefone,15,' ','D')+' CPF: '+frmprincipal.Texto_Justifica(CLIENTE_cpf,21,' ','D')+'RG: '+frmprincipal.Texto_Justifica(CLIENTE_rg,18,' ','D'));
        writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
        writeln(arquivo,#27#80+#18+#27#72+#20,'CODIGO PRODUTO                               QTDE UN  X   UNITARIO =    TOTAL-R$');
        writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
        I := 0;
     end;


   end;
   WHILE I <> 16 DO
   BEGIN
     WRITELN(ARQUIVO,'');
     I := I + 1;
   END;
   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
   writeln(arquivo,#27#80+#18+#27#72+#20,'SUBTOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('subtotal').asfloat),9,' ','E')+
                                         '  DESCONTO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('desconto').asfloat),9,' ','E')+
                                         '  ACRESCIMO: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('acrescimo').asfloat),8,' ','E')+
                                         '  TOTAL: '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('total').asfloat),9,' ','E'));

   writeln(arquivo,#27#80+#18+#27#72+#20,'--------------------------------------------------------------------------------');
    formapgto := '';


    if qrvenda.fieldbyname('meio_dinheiro').asfloat <> 0 then formapgto := 'À Vista/';
    if qrvenda.fieldbyname('meio_chequeav').asfloat <> 0 then formapgto := formapgto + 'Cheque à Vista/';
    if qrvenda.fieldbyname('meio_chequeap').asfloat <> 0 then formapgto := formapgto +'Cheque à Prazo/';
    if qrvenda.fieldbyname('meio_cartaocred').asfloat <> 0 then formapgto := formapgto +'Cartão Crédito/';
    if qrvenda.fieldbyname('meio_cartaodeb').asfloat <> 0 then formapgto := formapgto +'Cartão Débito/';
    if qrvenda.fieldbyname('meio_crediario').asfloat <> 0 then
    begin
      formapgto := formapgto +'Crediário/';
    end;
    y := length(formapgto);
    if copy(formapgto,y,1) = '/'then delete(formapgto,y,1);

    y := 0;
    v1 := '';
    v2 := '';

    if frmvenda_fechamento.rcrediario.Value <> 0 then
    begin
      qrcontasreceber.Open;
      qrcontasreceber.first;
      while not qrcontasreceber.Eof do
      begin
        if y > 5 then
        begin
          v2 := v2 + qrcontasreceber.fieldbyname('vencimento').asstring+' -> '+formatfloat(mascara_valor,qrcontasreceber.fieldbyname('valor').asfloat)+' | ';
        end
        else
        begin
          v1 := v1 + qrcontasreceber.fieldbyname('vencimento').asstring+' -> '+formatfloat(mascara_valor,qrcontasreceber.fieldbyname('valor').asfloat)+' | ';
          y := y + 1;
        end;
        qrcontasreceber.next;
      end;
    end;













     writeln(arquivo,#27#80+#15#27#72+#20,frmprincipal.Texto_Justifica(FORMAPGTO,25,' ','D')+'  '+V1);
     writeln(arquivo,'');
     writeln(arquivo,#27#80+#18+#27#72+#20,'                                               ----------- Assinatura ----------');

     VIAS := VIAS -1;
        writeln(arquivo,'');
        writeln(arquivo,'');
        writeln(arquivo,'');     

   END;

   


   closefile(arquivo);

end;

procedure Tfrmvenda_reimpressao.ContratoCapa1Click(Sender: TObject);
begin
  qrcontasreceber.close;
  qrcontasreceber.sql.Clear;
  qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+qrvenda.fieldbyname('codigo').asstring+''' order by data_vencimento');
  qrcontasreceber.open;
  IF QRCONTASRECEBER.RecordCount > 0 THEN
  BEGIN
    frmmodulo.qrrelatorio.open;
    frmmodulo.qrrelatorio.edit;
    frmmodulo.qrrelatorio.fieldbyname('linha1').asstring := emitente_cidade+FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',qrvenda.fieldbyname('data').asdatetime);
    frmmodulo.qrrelatorio.fieldbyname('linha2').asstring := AnsiUpperCase(extenso(qrvenda.fieldbyname('total').asfloat));
    frmmodulo.qrrelatorio.fieldbyname('linha3').asstring := inttostr(qrcontasreceber.recordcount);
    frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := formatfloat('###,###,##0.00',qrcontasreceber.fieldbyname('valor_atual').asfloat);
    frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := IntToStr(qrvenda_produto.RecordCount);
    frmmodulo.qrrelatorio.post;
    FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000048.fr3');
    FXvenda.ShowReport;
    FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000049.fr3');
    FXvenda.ShowReport;
    FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000081.fr3');
    FXvenda.ShowReport;



  END
  ELSE
  BEGIN

    frmmodulo.qrrelatorio.open;
    frmmodulo.qrrelatorio.edit;
    frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := IntToStr(qrvenda_produto.RecordCount);
    frmmodulo.qrrelatorio.post;
    FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000050.fr3');
    FXvenda.ShowReport;
    FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000081.fr3');
    FXvenda.ShowReport;


  END;

end;

procedure Tfrmvenda_reimpressao.Bobinasemformatao1Click(Sender: TObject);
VAR arquivo : textfile;
    texto1, texto2, texto3, texto4, texto5, texto6 : string;
    subir_papel, conta_formas : integer;
    dinheiro, chequeav, chequeap, cartaocred, cartaodeb, crediario : real;
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
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_fantasia,46,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_endereco,46,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(emitente_cidade+' - CEP '+emitente_cep,46,' ','C'));
   writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica('Telefone: '+emitente_telefone,46,' ','C'));
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'No. '+frmprincipal.Texto_Justifica(venda_codigo,6,'0','E')+
                                  '  Em: '+frmprincipal.Texto_Justifica(venda_data,10,' ','E')+
                                  ' '+frmprincipal.Texto_Justifica(timetostr(time),5,' ','E')+
                                  '  Vd:'+frmprincipal.Texto_Justifica(venda_nomevend,9,' ','D'));

   // informacoes do cliente
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------');
   if cliente_codigo = '999999' then
     writeln(arquivo,#15+#27#72+#20,'Cliente...: '+frmprincipal.Texto_Justifica(cliente_codigo,6,'0','E')+' '+frmprincipal.Texto_Justifica(cliente_retirado,26,' ','D'))
   else
     writeln(arquivo,#15+#27#72+#20,'Cliente...: '+frmprincipal.Texto_Justifica(cliente_codigo,6,'0','E')+' '+frmprincipal.Texto_Justifica(cliente_nome,26,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Endereco..: '+frmprincipal.Texto_Justifica(qrcliente.fieldbyname('endereco').asstring+' '+qrcliente.fieldbyname('bairro').asstring,33,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Cid/UF/CEP: '+frmprincipal.Texto_Justifica(qrcliente.fieldbyname('cidade').asstring+'/'+qrcliente.fieldbyname('uf').asstring+'  '+qrcliente.fieldbyname('cep').asstring,33,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'Telefones.: '+frmprincipal.Texto_Justifica(qrcliente.fieldbyname('telefone1').asstring+'/'+qrcliente.fieldbyname('celular').asstring+'/'+qrcliente.fieldbyname('telefone2').asstring,33,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'CPF/CNPJ..: '+frmprincipal.Texto_Justifica(qrcliente.fieldbyname('cpf').asstring,33,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'RG/IE.....: '+frmprincipal.Texto_Justifica(qrcliente.fieldbyname('rg').asstring,33,' ','D'));
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'P R O D U T O  QTDE. X  UNITARIO  =  VLR.TOTAL');
   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------');

   qrvenda_produto.Refresh;
   qrvenda_produto.first;
   while not qrvenda_produto.eof do
   begin
     texto1 := qrvenda_produto.fieldbyname('serial').asstring;

     writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(qrvenda_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                                    frmprincipal.Texto_Justifica(qrvenda_produto.fieldbyname('produto').asstring,38-length(texto1),' ','D')+' '+texto1);

     writeln(arquivo,#15+#27#72+#20,'       '+frmprincipal.Texto_Justifica(formatfloat(mascara_qtde,qrvenda_produto.fieldbyname('qtde').asfloat),10,' ','E')+' '+
                                                frmprincipal.Texto_Justifica(qrvenda_produto.fieldbyname('numeracao').asstring,2,' ','D')+
                                                ' X '+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda_produto.fieldbyname('unitario').asfloat),10,' ','E')+' = '+
                                                frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda_produto.fieldbyname('total').asfloat),10,' ','E'));
     qrvenda_produto.Next;
   end;

   writeln(arquivo,#15+#27#72+#20,'----------------------------------------------');
   writeln(arquivo,#15+#27#72+#20,'** Meios de Pagamento**| SUBTOTAL  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrvenda.fieldbyname('subtotal').AsFloat),10,' ','E'));



  dinheiro := frmvenda_fechamento.rdinheiro.Value;
  chequeav := frmvenda_fechamento.rchequeav.Value;
  chequeap := frmvenda_fechamento.rchequeap.Value;
  cartaocred := frmvenda_fechamento.rcartaocred.Value;
  cartaodeb := frmvenda_fechamento.rcartaodeb.Value;
  crediario := frmvenda_fechamento.rcrediario.Value;
  CONTA_FORMAS := 1;

   while conta_formas <> 7 do
   begin
     if conta_formas = 1 then
     begin
       if dinheiro <> 0 then
       begin
          dinheiro := 0;
          writeln(arquivo,#15+#27#72+#20,'Dinheiro . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdinheiro.value),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value),10,' ','E'));
       end
       else
       begin
         if chequeav <> 0 then
         begin
           chequeav := 0;
           writeln(arquivo,#15+#27#72+#20,'Ch.Vista . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeav.value),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value),10,' ','E'));
         end
         else
         begin
           if chequeap <> 0 then
           begin
             chequeap := 0;
             writeln(arquivo,#15+#27#72+#20,'Ch.Prazo . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeap.value),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value),10,' ','E'));
           end
           else
           begin
             if cartaocred <> 0 then
             begin
               cartaocred := 0;
               writeln(arquivo,#15+#27#72+#20,'C.Credito. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaocred.value),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value),10,' ','E'));
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                 cartaodeb := 0;
                 writeln(arquivo,#15+#27#72+#20,'C.Debito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaodeb.value),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value),10,' ','E'));
               end
               else
               begin
                 crediario := 0;
                 writeln(arquivo,#15+#27#72+#20,'Crediario. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcREDIARIO.value),9,' ','E')+' | DESCONTO  |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rdesconto2.value),10,' ','E'));
               end;
             end;
           end;
         end;
       end;
     end;


     if conta_formas = 2 then
     begin
         if chequeav <> 0 then
         begin
             writeln(arquivo,#15+#27#72+#20,'Ch.Vista . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeav.value),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.racrescimo2.value),10,' ','E'));
             chequeav := 0;
         end
         else
         begin
           if chequeap <> 0 then
           begin
               writeln(arquivo,#15+#27#72+#20,'Ch.Prazo . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeap.value),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.racrescimo2.value),10,' ','E'));
               chequeap := 0;
           end
           else
           begin
             if cartaocred <> 0 then
             begin
                 writeln(arquivo,#15+#27#72+#20,'C.Credito. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaocred.value),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.racrescimo2.value),10,' ','E'));
                 cartaocred := 0;
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                    writeln(arquivo,#15+#27#72+#20,'C.Debito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaodeb.value),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.racrescimo2.value),10,' ','E'));
                    cartaodeb := 0;
               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcREDIARIO.value),9,' ','E')+' | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.racrescimo2.value),10,' ','E'));
                     crediario := 0;
                 END
                 ELSE
                 BEGIN
                   writeln(arquivo,#15+#27#72+#20,'                       | ACRESCIMO |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.racrescimo2.value),10,' ','E'));
                 END;
               end;
             end;
           end;
         end;
     end;

     if conta_formas = 3 then
     begin
           if chequeap<> 0 then
           begin
               writeln(arquivo,#15+#27#72+#20,'Ch.Prazo . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rchequeap.value),9,' ','E')+' |----------------------');
               chequeap := 0;
           end
           else
           begin
             if cartaocred <> 0 then
             begin
                 writeln(arquivo,#15+#27#72+#20,'C.Credito. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaocred.value),9,' ','E')+' |----------------------');
                 cartaocred := 0;
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                   writeln(arquivo,#15+#27#72+#20,'C.Debito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaodeb.value),9,' ','E')+' |----------------------');
                   cartaodeb := 0;

               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcREDIARIO.value),9,' ','E')+' |----------------------');
                     crediario := 0;
                 END
                 ELSE
                 BEGIN
                   writeln(arquivo,#15+#27#72+#20,'                       |----------------------');
                 END;
               end;
             end;
           end;
     END;
     if conta_formas = 4 then
     begin
             if cartaocred <> 0 then
             begin
                 writeln(arquivo,#15+#27#72+#20,'C.Credito. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaocred.value),9,' ','E')+' | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rTOTAL.value),10,' ','E'));
                 cartaocred := 0;
             end
             else
             begin
               if cartaodeb <> 0 then
               begin
                   writeln(arquivo,#15+#27#72+#20,'C.Debito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaodeb.value),9,' ','E')+' | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rTOTAL.value),10,' ','E'));
                   cartaodeb := 0;
               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rCREDIARIO.value),9,' ','E')+' | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rTOTAL.value),10,' ','E'));
                     crediario := 0;
                 END
                 ELSE
                 BEGIN
                   writeln(arquivo,#15+#27#72+#20,'                       | T O T A L |'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rtotal.value),10,' ','E'));
                 END;
               end;
             end;
     end;
     if conta_formas = 5 then
     begin
               if cartaodeb <> 0 then
               begin
                   writeln(arquivo,#15+#27#72+#20,'C.Debito . R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcartaodeb.value),9,' ','E')+' |');
                   cartaodeb := 0;
               end
               else
               begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcREDIARIO.value),9,' ','E')+' |');
                     crediario := 0;
                 END;
               end;

     end;

     if conta_formas = 6 then
     begin
                 if crediario <> 0 then
                 begin
                     writeln(arquivo,#15+#27#72+#20,'Crediario. R$'+frmprincipal.Texto_Justifica(formatfloat(mascara_valor,frmvenda_fechamento.rcREDIARIO.Value),9,' ','E')+' |');
                     crediario := 0;
                 END;


     end;






     conta_formas := conta_formas + 1;
   end;



   if frmvenda_fechamento.rcrediario.Value <> 0 then
   begin
     Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------');
     Writeln(arquivo,#15+#27#72+#20,'                 PRESTACOES                   ');
     Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------');
     Writeln(arquivo,#15+#27#72+#20,'No.  Vencimento   Documento  Tipo     Valor-R$');
     Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------');

     qrcontasreceber.First;
     while not qrcontasreceber.eof do
     begin
       writeln(arquivo,#15+#27#72+#20,frmprincipal.Texto_Justifica(qrcontasreceber.fieldbyname('prestacao').asstring,3,'0','E')+'  '+
                                      frmprincipal.Texto_Justifica(qrcontasreceber.fieldbyname('vencimento').asstring,10,' ','D')+'   '+
                                      frmprincipal.Texto_Justifica(qrcontasreceber.fieldbyname('documento').asstring,10,' ','D')+' '+
                                      frmprincipal.Texto_Justifica(qrcontasreceber.fieldbyname('tipo').asstring,6,' ','D')+' '+
                                      frmprincipal.Texto_Justifica(formatfloat(mascara_valor,qrcontasreceber.fieldbyname('valor').asfloat),10,' ','E'));



       qrcontasreceber.next;
     end;
   end;



   Writeln(arquivo,#15+#27#72+#20,'----------------------------------------------');
   Writeln(arquivo,#15+#27#72+#20,'');
   Writeln(arquivo,#15+#27#72+#20,'');
   Writeln(arquivo,#15+#27#72+#20,'');
   Writeln(arquivo,#15+#27#72+#20,'         ---------------------------------    ');
   WRiteln(arquivo,#15+#27#72+#20,'                   Assinatura');

   while subir_papel <> 0 do
   begin
     Writeln(arquivo,#15+#27#72+#20,'');
     subir_papel := subir_papel - 1;
   end;


   closefile(arquivo);


end;

procedure Tfrmvenda_reimpressao.PedidoCarne1Click(Sender: TObject);
begin
  qrcontasreceber.close;
  qrcontasreceber.sql.Clear;
  qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+qrvenda.fieldbyname('codigo').asstring+'''');
  qrcontasreceber.sql.add('and valor_atual > 0');
  qrcontasreceber.sql.add('order by data_vencimento DESC');
  qrcontasreceber.open;

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  frmmodulo.qrrelatorio.fieldbyname('linha8').AsString := '';

  IF QRCONTASRECEBER.RECORDCOUNT > 0 THEN
  BEGIN
    frmmodulo.qrrelatorio.fieldbyname('linha7').asstring := nome_condicao;
    qrcontasreceber.first;
    while not qrcontasreceber.eof do
    begin
      frmmodulo.qrrelatorio.fieldbyname('LINHA8').asstring :=
      frmPrincipal.texto_justifica(qrcontasreceber.fieldbyname('DATA_VENCIMENTO').asstring,10,' ','D')+ ' - R$ '+
      frmPrincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',qrcontasreceber.fieldbyname('VALOR_ORIGINAL').asFLOAT),8,' ','E') + ' | '+
      frmmodulo.qrrelatorio.fieldbyname('linha8').AsString;
      qrcontasreceber.next;
    end;
  END
  ELSE
  BEGIN
    frmmodulo.qrrelatorio.fieldbyname('linha8').AsString := 'A VISTA';
  END;


  frmmodulo.qrrelatorio.fieldbyname('linha1').asstring := formatfloat('###,###,##0.00',frmvenda_fechamento.rdinheiro.value);
  frmmodulo.qrrelatorio.fieldbyname('linha2').asstring := formatfloat('###,###,##0.00',frmvenda_fechamento.rchequeav.value);
  frmmodulo.qrrelatorio.fieldbyname('linha3').asstring := formatfloat('###,###,##0.00',frmvenda_fechamento.rchequeap.value);
  frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := formatfloat('###,###,##0.00',frmvenda_fechamento.rcartaocred.value);
  frmmodulo.qrrelatorio.fieldbyname('linha5').asstring := formatfloat('###,###,##0.00',frmvenda_fechamento.rcartaodeb.value);

  {
  frmmodulo.qrrelatorio.fieldbyname('linha1').asstring := emitente_cidade+FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',qrvenda.fieldbyname('data').asdatetime);
  frmmodulo.qrrelatorio.fieldbyname('linha2').asstring := AnsiUpperCase(extenso(qrvenda.fieldbyname('total').asfloat));
  frmmodulo.qrrelatorio.fieldbyname('linha3').asstring := inttostr(qrcontasreceber.recordcount);
  frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := formatfloat('###,###,##0.00',qrcontasreceber.fieldbyname('valor_atual').asfloat);
  frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := IntToStr(qrvenda_produto.RecordCount);
  }


  frmmodulo.qrrelatorio.post;
  FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000110.fr3');
  FXvenda.ShowReport;
  IF QRCONTASRECEBER.RECORDCOUNT > 0 THEN
  BEGIN
    FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000049.fr3');
    FXvenda.ShowReport;
  end;
end;


procedure Tfrmvenda_reimpressao.TPContrato1Click(Sender: TObject);
begin
  qrcontasreceber.close;
  qrcontasreceber.sql.Clear;
  qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+qrvenda.fieldbyname('codigo').asstring+''' order by data_vencimento');
  qrcontasreceber.open;
  IF QRCONTASRECEBER.RecordCount > 0 THEN
  BEGIN
    frmmodulo.qrrelatorio.open;
    frmmodulo.qrrelatorio.edit;
    frmmodulo.qrrelatorio.fieldbyname('linha1').asstring := emitente_cidade+FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',qrvenda.fieldbyname('data').asdatetime);
    frmmodulo.qrrelatorio.fieldbyname('linha2').asstring := AnsiUpperCase(extenso(qrvenda.fieldbyname('total').asfloat));
    frmmodulo.qrrelatorio.fieldbyname('linha3').asstring := inttostr(qrcontasreceber.recordcount);
    frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := formatfloat('###,###,##0.00',qrcontasreceber.fieldbyname('valor_atual').asfloat);
    frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := IntToStr(qrvenda_produto.RecordCount);
    frmmodulo.qrrelatorio.post;
    FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000048_1.fr3');
    FXvenda.ShowReport;
    FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000049.fr3');
    FXvenda.ShowReport;

  END
  ELSE
  BEGIN
    frmmodulo.qrrelatorio.open;
    frmmodulo.qrrelatorio.edit;
    frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := IntToStr(qrvenda_produto.RecordCount);
    frmmodulo.qrrelatorio.post;
    FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000050.fr3');
    FXvenda.ShowReport;

  END;

end;

procedure Tfrmvenda_reimpressao.PedidoCarncomcdigodebarras1Click(
  Sender: TObject);
begin
  qrcontasreceber.close;
  qrcontasreceber.sql.Clear;
  qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+qrvenda.fieldbyname('codigo').asstring+''' and situacao = 1 order by data_vencimento');
  qrcontasreceber.open;

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;
  frmmodulo.qrrelatorio.fieldbyname('linha8').AsString := '';

  IF QRCONTASRECEBER.RECORDCOUNT > 0 THEN
  BEGIN
    frmmodulo.qrrelatorio.fieldbyname('linha7').asstring := nome_condicao;
    qrcontasreceber.first;
    while not qrcontasreceber.eof do
    begin
      frmmodulo.qrrelatorio.fieldbyname('LINHA8').asstring :=
      frmPrincipal.texto_justifica(qrcontasreceber.fieldbyname('DATA_VENCIMENTO').asstring,10,' ','D')+ ' - R$ '+
      frmPrincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',qrcontasreceber.fieldbyname('VALOR_ORIGINAL').asFLOAT),8,' ','E') + ' | '+
      frmmodulo.qrrelatorio.fieldbyname('linha8').AsString;

      qrcontasreceber.next;
    end;
  END
  ELSE
  BEGIN
    frmmodulo.qrrelatorio.fieldbyname('linha8').AsString := 'A VISTA';
  END;


  frmmodulo.qrrelatorio.fieldbyname('linha1').asstring := emitente_cidade+FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',qrvenda.fieldbyname('data').asdatetime);
  frmmodulo.qrrelatorio.fieldbyname('linha2').asstring := AnsiUpperCase(extenso(qrvenda.fieldbyname('total').asfloat));
  frmmodulo.qrrelatorio.fieldbyname('linha3').asstring := inttostr(qrcontasreceber.recordcount);
  frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := formatfloat('###,###,##0.00',qrcontasreceber.fieldbyname('valor_atual').asfloat);
  frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := IntToStr(qrvenda_produto.RecordCount);
  frmmodulo.qrrelatorio.post;
  FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000154.fr3');
  FXvenda.ShowReport;
  IF QRCONTASRECEBER.RECORDCOUNT > 0 THEN
  BEGIN
    FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000153.fr3');
    FXvenda.ShowReport;
  end;
end;

procedure Tfrmvenda_reimpressao.RazoLaser21Click(Sender: TObject);
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
  qrvenda.sql.add('and venda.codigo = '''+venda_codigo+'''');
  qrvenda.open;


  

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  qrcontasreceber.close;
  qrcontasreceber.sql.Clear;
  qrcontasreceber.sql.add('select * from c000049 where codvenda = '''+qrvenda.fieldbyname('codigo').asstring+''' and situacao = 1 order by data_vencimento desc');
  qrcontasreceber.open;

  frmmodulo.qrrelatorio.fieldbyname('texto_grande').AsString := '';

  IF QRCONTASRECEBER.RECORDCOUNT > 0 THEN
  BEGIN
    frmmodulo.qrrelatorio.fieldbyname('linha7').asstring := nome_condicao;
    qrcontasreceber.first;
    while not qrcontasreceber.eof do
    begin
      frmmodulo.qrrelatorio.fieldbyname('texto_grande').asstring :=
      frmPrincipal.texto_justifica(qrcontasreceber.fieldbyname('DATA_VENCIMENTO').asstring,10,' ','D')+ ' - R$ '+
      frmPrincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',qrcontasreceber.fieldbyname('VALOR_ORIGINAL').asFLOAT),8,' ','E') + ' '+
      frmmodulo.qrrelatorio.fieldbyname('texto_grande').AsString;

      qrcontasreceber.next;
    end;
  END
  ELSE
  BEGIN
    frmmodulo.qrrelatorio.fieldbyname('texto_grande').AsString := '';
  END;

  frmmodulo.fxemitente.open;


  frmmodulo.qrrelatorio.fieldbyname('linha1').asstring := emitente_cidade+FormatDateTime('", "dddd", "d" de "mmmm" de "yyyy',qrvenda.fieldbyname('data').asdatetime);
  frmmodulo.qrrelatorio.fieldbyname('linha2').asstring := AnsiUpperCase(extenso(qrvenda.fieldbyname('total').asfloat));
  frmmodulo.qrrelatorio.fieldbyname('linha3').asstring := inttostr(qrcontasreceber.recordcount);
  frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := formatfloat('###,###,##0.00',qrcontasreceber.fieldbyname('valor_atual').asfloat);
  frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := IntToStr(qrvenda_produto.RecordCount);
  IF qrvenda_produto.RECORDCOUNT > 24 THEN
  frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := '2' ELSE
  frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := '1';




  frmmodulo.qrrelatorio.post;
  FXvenda.LoadFromFile('c:\DATASAC\server\rel\f000155.fr3');
  fxvenda.ShowReport;
end;

end.




