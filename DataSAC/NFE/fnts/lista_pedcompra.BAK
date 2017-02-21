unit lista_pedcompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus;

type
  TFRMLISTA_PEDCOMPRA = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    FlatPanel1: TFlatPanel;
    ViewSplit1: TViewSplit;
    bcancelar: TBitBtn;
    bimprimir: TBitBtn;
    fxdesenhar: TfrxDesigner;
    BitBtn1: TBitBtn;
    fxnota: TfrxReport;
    fspedido: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    fspedido_item: TfrxDBDataset;
    ZQuery1: TZQuery;
    qrpedido_item: TZQuery;
    qrpedido_itemCODPRODUTO: TStringField;
    qrpedido_itemproduto: TStringField;
    qrpedido_itemQTDE: TFloatField;
    qrpedido_itemUNITARIO: TFloatField;
    qrpedido_itemTOTAL: TFloatField;
    qrpedido_itemRECEBIDO: TFloatField;
    qrpedido_itemFALTA: TFloatField;
    qrpedido_itemunidade: TStringField;
    qrpedido_itemCODIGO: TStringField;
    qrpedido_itemCODNOTA: TStringField;
    dspedido_item: TDataSource;
    qrpedido_produto: TZQuery;
    qrpedido_produtoCODIGO: TStringField;
    qrpedido_produtoNUMERO: TStringField;
    qrpedido_produtoCFOP: TStringField;
    qrpedido_produtoDATA: TDateTimeField;
    qrpedido_produtoCODFORNECEDOR: TStringField;
    qrpedido_produtoTOTAL_NOTA: TFloatField;
    qrpedido_produtoITENS: TIntegerField;
    qrpedido_produtofornecedor: TStringField;
    dspedido: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrnotaCalcFields(DataSet: TDataSet);
    procedure combo_relatorioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMLISTA_PEDCOMPRA: TFRMLISTA_PEDCOMPRA;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal, xloc_fornecedor, compra_menu;

{$R *.dfm}

procedure TFRMLISTA_PEDCOMPRA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TFRMLISTA_PEDCOMPRA.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;



end;

procedure TFRMLISTA_PEDCOMPRA.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFRMLISTA_PEDCOMPRA.bimprimirClick(Sender: TObject);
var
  fornecedor_imp,FORNECEDOR, ordem, nota  : string;
  vqtde: integer;
  vtotal: double;
  SITUACAO : string;
  cfop, movimento : string;
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';



  if combo_relatorio.itemindex = 0 then

  begin


  qrpedido_item.close;
    qrpedido_item.sql.clear;
    qrpedido_item.SQL.add('select * from c000038 where codnota = '''+frmmodulo.qrpedido_produto.fieldbyname('codigo').asstring+''' order by codigo');
    qrpedido_item.open;


    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'PEDIDO DE COMPRA';

    IF FRMMODULO.qrpedido_produto.FieldByName('SITUACAO').ASSTRING = '1' THEN
      FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := 'Aberto';
    IF FRMMODULO.qrpedido_produto.FieldByName('SITUACAO').ASSTRING = '2' THEN
      FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := 'Recebido';
    IF FRMMODULO.qrpedido_produto.FieldByName('SITUACAO').ASSTRING = '3' THEN
      FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := 'Cancelado';


    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000093.fr3');
    FXNOTA.ShowReport;
  end;


end;

procedure TFRMLISTA_PEDCOMPRA.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;



  if combo_relatorio.itemindex = 0 then
  begin
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000093.fr3');
    FXNOTA.DesignReport;
  end;

end;

procedure TFRMLISTA_PEDCOMPRA.qrnotaCalcFields(DataSet: TDataSet);
begin
  //if QRFORNECEDORTIPO.Value = 2 then QRFORNECEDORpessoa.Value := 'JURIDICA' else QRFORNECEDORpessoa.Value := 'FISICA';

end;

procedure TFRMLISTA_PEDCOMPRA.combo_relatorioKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0)

end;

end.
