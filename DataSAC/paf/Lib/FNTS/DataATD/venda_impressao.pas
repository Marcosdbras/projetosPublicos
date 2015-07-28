unit venda_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxDBSet, MemDS, VirtualTable;

type
  Tfrmvenda_impressao = class(TForm)
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    PopupMenu1: TPopupMenu;
    fxvenda: TfrxReport;
    fscontasreceber: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
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
    frxDBDataset1: TfrxDBDataset;
    fsvenda: TfrxDBDataset;
    FSCLIENTE: TfrxDBDataset;
    Image2: TImage;
    Label2: TLabel;
    combo_modelo: TComboBox;
    evias: TSpinEdit;
    Label3: TLabel;
    dsvenda: TDataSource;
    Razomodelo21: TMenuItem;
    qrRel: TVirtualTable;
    qrRellinha1: TStringField;
    qrRellinha2: TStringField;
    qrRellinha3: TStringField;
    qrRellinha4: TStringField;
    qrRellinha5: TStringField;
    qrRellinha6: TStringField;
    qrRellinha7: TStringField;
    qrRellinha8: TStringField;
    qrRellinha9: TStringField;
    qrRellinha10: TStringField;
    qrRellinha11: TStringField;
    qrRellinha12: TStringField;
    qrRellinha13: TStringField;
    qrRellinha15: TStringField;
    qrRellinha16: TStringField;
    qrRellinha17: TStringField;
    qrRellinha18: TStringField;
    qrRellinha19: TStringField;
    qrRellinha20: TStringField;
    qrRellinha21: TStringField;
    qrRelvalor1: TFloatField;
    qrRelvalor2: TFloatField;
    qrRelvalor3: TFloatField;
    qrRelvalor4: TFloatField;
    qrRelvalor5: TFloatField;
    qrRelvalor6: TFloatField;
    qrRelvalor7: TFloatField;
    qrRelvalor8: TFloatField;
    qrRelvalor9: TFloatField;
    qrRelvalor10: TFloatField;
    qrRellinha14: TStringField;
    qrRelTIPO: TStringField;
    fxRel: TfrxDBDataset;
    fsSimples_produto: TfrxDBDataset;
    OramentoA41: TMenuItem;
    fsorcamento_cliente: TfrxDBDataset;
    fsorcamento_receber: TfrxDBDataset;
    fsorcamento_produto: TfrxDBDataset;
    fsorcamento: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Razomodelo21Click(Sender: TObject);
    procedure OramentoA41Click(Sender: TObject);
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

uses modulo, principal, venda_pdv, venda_relrazao, ecf, orcamento;

{$R *.dfm}

procedure Tfrmvenda_impressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmvenda_impressao.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_impressao.bgravarClick(Sender: TObject);
begin

  case combo_modelo.ItemIndex of
  0 : Razomodelo21Click(frmvenda_impressao);
  1 : OramentoA41Click(FRMVENDA_IMPRESSAO);
  END;


  close;
end;

procedure Tfrmvenda_impressao.FormShow(Sender: TObject);
begin
  frmmodulo.qrconfig.open;
//  showmessage(inttostr(frmmodulo.qrconfig.FieldByName('VENDA_TIPONOTA').asinteger));
  combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('VENDA_TIPONOTA').asinteger;
  evias.Value := frmmodulo.qrconfig.FieldByName('VENDA_QTDE_VIAS_NOTA').asinteger;
  porta_impressora := frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').asstring;




end;

procedure Tfrmvenda_impressao.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then evias.SetFocus;
end;

procedure Tfrmvenda_impressao.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmvenda_impressao.FormCreate(Sender: TObject);
begin
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

procedure Tfrmvenda_impressao.Razomodelo21Click(Sender: TObject);
var vv : real;
ix : integer;
begin

  qrrel.open;
  qrrel.refresh;
  QRREL.INSERT;

  qrrel.fieldbyname('linha4').asstring := cliente_codigo+' '+cliente_nome;

  qrrel.fieldbyname('linha6').asstring := cliente_endereco+', '+cliente_bairro+' - '+cliente_cidade+' ('+cliente_uf+') Cep '+cliente_cep;
  qrrel.fieldbyname('linha7').asstring := cliente_telefone;
  qrrel.fieldbyname('linha8').asstring := cliente_cpf;
  qrrel.fieldbyname('linha9').asstring := cliente_rg;
  qrrel.fieldbyname('linha1').asstring := frmvenda_pdv.enomevendedor.Text;
  qrrel.fieldbyname('linha2').asstring := DSVENDA.DATASET.fieldbyname('data').asstring+' '+timetostr(time);
  qrrel.fieldbyname('TIPO').ASSTRING := 'ORÇAMENTO' ;
  qrrel.fieldbyname('linha3').asstring := DSVENDA.DATASET.fieldbyname('codigo').asstring;





  qrrel.fieldbyname('linha10').asstring := forma1;
  qrrel.fieldbyname('linha11').asstring := '';
  qrrel.fieldbyname('linha12').asstring := '';
  qrrel.fieldbyname('linha13').asstring := inttostr(trunc((frmvenda_pdv.qrvenda_produto.recordcount/30)+0.99));


  qrrel.fieldbyname('linha14').asstring := '';
  qrrel.fieldbyname('linha16').asstring := '';
  qrrel.fieldbyname('linha17').asstring := '';
  qrrel.fieldbyname('linha18').asstring := '';


    if dsvenda.dataset.fieldbyname('meio_crediario').asfloat <> 0 then
    begin
     frmmodulo.qrorcamento_receber.close;
     frmmodulo.qrorcamento_receber.sql.clear;
     IF DSVENDA.DataSet = FRMMODULO.qrvenda THEN
       frmmodulo.qrorcamento_receber.sql.add('select * from c000049 where codcliente = '''+dsvenda.dataset.fieldbyname('codcliente').asstring+''' and codvenda = '''+dsvenda.dataset.fieldbyname('codigo').asstring+''' order by data_vencimento')
     ELSE
       frmmodulo.qrorcamento_receber.sql.add('select * from c000076 where codcliente = '''+dsvenda.dataset.fieldbyname('codcliente').asstring+''' and codvenda = '''+dsvenda.dataset.fieldbyname('codigo').asstring+''' order by data_vencimento');

     frmmodulo.qrorcamento_receber.open;
      frmmodulo.qrorcamento_receber.first;

      while not frmmodulo.qrorcamento_receber.Eof do
      begin
        qrrel.fieldbyname('linha14').asstring :=
        frmPrincipal.texto_justifica(frmmodulo.qrorcamento_receber.fieldbyname('data_VENCIMENTO').asstring,10,' ','D')+ '-R$ '+
        frmPrincipal.texto_justifica(FORMATFLOAT('###,###,##0.00',frmmodulo.qrorcamento_receber.fieldbyname('VALOR_original').asFLOAT),8,' ','E') + ' | '+
        qrrel.fieldbyname('linha14').AsString;


        frmmodulo.qrorcamento_receber.next;
      end;
    end;


  qrrel.fieldbyname('valor1').asfloat := frmvenda_pdv.qrvenda_produto.recordcount;
  qrrel.fieldbyname('valor2').asfloat := dsvenda.dataset.fieldbyname('subtotal').asfloat;
  qrrel.fieldbyname('valor3').asfloat := dsvenda.dataset.fieldbyname('desconto').asfloat;
  qrrel.fieldbyname('valor4').asfloat := dsvenda.dataset.fieldbyname('total').asfloat;

  qrrel.fieldbyname('valor5').asfloat := vforma1;
  qrrel.fieldbyname('valor6').asfloat := 0;
  qrrel.fieldbyname('valor7').asfloat := 0;


  fxvenda.PrintOptions.ShowDialog := false;
  FXvenda.LoadFromFile('\dataSAC\SERVER\rel\f000160pdv.fr3');


   ix := 1;
   VV := TRUNC(EVIAS.Value);
    WHILE VV <> 0 DO
    BEGIN
       qrrel.fieldbyname('linha5').asstring := inttostr(ix);
      fxvenda.PrintOptions.ShowDialog := false;
      fxvenda.PrepareReport;
      fxvenda.Print;


      ix := ix + 1;
      VV := VV - 1;
    END;



end;

procedure Tfrmvenda_impressao.OramentoA41Click(Sender: TObject);
begin
      frmmodulo.qrrelatorio.open;
      frmmodulo.qrrelatorio.edit;
      if FRMMODULO.qrorcamento_produto.RecordCount > 28 then
      frmmodulo.qrrelatorio.FieldByName('linha8').asstring := '2'
      else
      frmmodulo.qrrelatorio.FieldByName('linha8').asstring := '1';
      FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := frmvenda_pdv.enomevendedor.Text;
      FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := frmvenda_pdv.enomecliente.Text;

      FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
      FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
      FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
      FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';





     frmmodulo.qrorcamento_receber.close;
     frmmodulo.qrorcamento_receber.sql.clear;
     IF DSVENDA.DataSet = FRMMODULO.qrvenda THEN
       frmmodulo.qrorcamento_receber.sql.add('select * from c000049 where codcliente = '''+dsvenda.dataset.fieldbyname('codcliente').asstring+''' and codvenda = '''+dsvenda.dataset.fieldbyname('codigo').asstring+''' order by data_vencimento')
     ELSE
       frmmodulo.qrorcamento_receber.sql.add('select * from c000076 where codcliente = '''+dsvenda.dataset.fieldbyname('codcliente').asstring+''' and codvenda = '''+dsvenda.dataset.fieldbyname('codigo').asstring+''' order by data_vencimento');

     frmmodulo.qrorcamento_receber.open;
     frmmodulo.qrorcamento_receber.first;



      frmmodulo.qrrelatorio.post;

      fxVENDA.LoadFromFile('\DataSAC\SERVER\rel\f000069PDV.fr3');
      fxVENDA.ShowReport;
end;

end.




