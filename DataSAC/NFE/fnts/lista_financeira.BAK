unit lista_financeira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, Grids, DBGrids, wwdblook, AdvGlowButton,
  MemDS, DBAccess, IBC;

type
  Tfrmlista_financeira = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    Label2: TLabel;
    combo_cliente: TComboBox;
    Label3: TLabel;
    combo_banco: TComboBox;
    Label5: TLabel;
    combo_situacao: TComboBox;
    Label9: TLabel;
    combo_periodo: TComboBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label10: TLabel;
    Label11: TLabel;
    Bevel2: TBevel;
    fxfinanceira: TfrxReport;
    fscheque: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    Bevel3: TBevel;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    qrfinanceira: TZQuery;
    qrfinanceiraCODIGO: TStringField;
    qrfinanceiraCODBANCO: TStringField;
    qrfinanceiraDATA: TDateTimeField;
    qrfinanceiraCODCLIENTE: TStringField;
    qrfinanceiraVALOR: TFloatField;
    qrfinanceiraSITUACAO: TIntegerField;
    qrfinanceiraDATA_PGTO: TDateTimeField;
    qrfinanceiraVALOR_PAGO: TFloatField;
    qrfinanceiraBORDERO: TStringField;
    qrfinanceiraPROPOSTA: TStringField;
    qrfinanceiraOBS: TStringField;
    qrfinanceiraCODVENDA: TStringField;
    qrfinanceiraNOME: TStringField;
    qrfinanceiraBANCO: TStringField;
    qrfinanceiraSIT: TStringField;
    procedure combo_clienteChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure combo_bancoChange(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrfinanceiraCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_financeira: Tfrmlista_financeira;
  data_caixa : tdatetime;

implementation

uses modulo, loc_caixa, xloc_cliente, xloc_funcionario, principal,
  xloc_banco, xloc_financeira;

{$R *.dfm}

procedure Tfrmlista_financeira.combo_clienteChange(Sender: TObject);
begin
  IF combo_cliente.Text = 'SELECIONAR' THEN
  BEGIN
    frmxloc_cliente := tfrmxloc_cliente.create(self);
    frmxloc_cliente.showmodal;


    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_cliente.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_cliente.ItemIndex := combo_cliente.Items.Count - 1;
    END
    ELSE
      COMBO_CLIENTE.ItemIndex := 0;

  END;
end;

procedure Tfrmlista_financeira.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_financeira.FormShow(Sender: TObject);
begin

  FRMMODULO.QRCAIXA_OPERADOR.OPEN;
  FRMMODULO.QRCAIXA_OPERADOR.LOCATE('CODIGO','000099',[LOCASEINSENSITIVE]);
  data_caixa := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;

  combo_relatorio.ItemIndex := 0;
  combo_cliente.ItemIndex := 0;
  combo_situacao.ItemIndex := 0;
  combo_periodo.ItemIndex := 0;
  dateedit1.Date := data_caixa;
  dateedit2.date := data_caixa;

end;

procedure Tfrmlista_financeira.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_financeira.combo_bancoChange(Sender: TObject);
begin
  IF combo_banco.Text = 'SELECIONAR' THEN
  BEGIN
    frmxloc_FINANCEIRA := tfrmxloc_FINANCEIRA.create(self);
    frmxloc_FINANCEIRA.showmodal;


    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_banco.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_banco.ItemIndex := combo_banco.Items.Count - 1;
    END
    ELSE
      combo_banco.ItemIndex := 0;

  END;
end;

procedure Tfrmlista_financeira.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmlista_financeira.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bimprimir.SetFocus;
end;

procedure Tfrmlista_financeira.bimprimirClick(Sender: TObject);
var cliente, banco, cedente, caixa, tipo, forma, situacao, periodo, ordem, conta: string;
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

  if combo_cliente.Text = 'TODOS' then cliente := '' else begin  cliente := ' and c000123.codcliente = '''+copy(combo_cliente.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'CLIENTE: '+COMBO_CLIENTE.TEXT; END;
  if combo_banco.Text = 'TODAS' then banco := '' else begin banco := ' and c000123.CODbanco = '''+copy(combo_banco.text,1,3)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'BANCO: '+COMBO_banco.TEXT; end;
  if combo_SITUACAO.ITEMINDEX = 0 then SITUACAO := ''
  else
  begin
      IF COMBO_SITUACAO.ITEMINDEX = 1 THEN situacao := ' and C000123.situacao = 1 ';
      IF COMBO_SITUACAO.ITEMINDEX = 2 THEN situacao := ' and C000123.situacao = 2 ';
      frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'SITUAÇÃO: '+COMBO_SITUACAO.TEXT;
  end;


  if combo_periodo.ITEMINDEX = 0 then
  begin
    periodo := ' AND C000123.DATA_PGTO >= :datai and C000123.DATA_PGTO <= :dataf ';
    ordem := ' ORDER BY C000123.DATA_PGTO';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DO PAGAMENTO: '+DATEEDIT1.TEXT+' A '+DATEEDIT2.TEXT;
  end;

  if combo_periodo.ITEMINDEX = 1 then
  begin
    periodo := ' AND C000123.DATA >= :datai and C000123.DATA <= :dataf ';
    ordem := ' ORDER BY C000123.DATA';

    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DA VENDA: '+DATEEDIT1.TEXT + ' A '+DATEEDIT2.TEXT;
  end;

  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    qrfinanceira.close;
    qrfinanceira.sql.clear;
    qrfinanceira.sql.add('select c000123.*,');
    qrfinanceira.sql.add('c000007.nome,');
    qrfinanceira.sql.add('c000013.banco');
    qrfinanceira.sql.add('from');
    qrfinanceira.sql.add('c000123,');
    qrfinanceira.sql.add('c000007,');
    qrfinanceira.sql.add('c000013');
    qrfinanceira.sql.add('where');
    qrfinanceira.sql.add('c000123.codcliente = c000007.codigo and');
    qrfinanceira.sql.add('c000123.codbanco = c000013.numero');
    qrfinanceira.sql.add(CLIENTE+BANCO+SITUACAO+PERIODO);
    qrfinanceira.sql.add(ORDEM);
    qrfinanceira.ParamByName('datai').asdatetime := dateedit1.date;
    qrfinanceira.ParamByName('dataf').asdatetime := dateedit2.date;
    qrfinanceira.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'MOVIMENTO DE FINANCEIRA';
    fxFinanceira.LoadFromFile('\DATASAC\server\rel\f000182.fr3');
    fxFinanceira.ShowReport;
  end;
end;

procedure Tfrmlista_financeira.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;

  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    fxFinanceira.LoadFromFile('\DATASAC\server\rel\f000182.fr3');
    fxFinanceira.designreport;
  end;
end;

procedure Tfrmlista_financeira.qrfinanceiraCalcFields(DataSet: TDataSet);
begin
    CASE qrFinanceira.fieldbyname('SITUACAO').asinteger OF
  1: qrFinanceiraSIT.Value := 'ABERTO';
  2: qrFinanceiraSIT.Value := 'BAIXADO';
  END;
end;

end.
