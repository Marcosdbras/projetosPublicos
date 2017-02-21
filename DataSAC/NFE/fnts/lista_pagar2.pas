unit lista_pagar2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, rxtooledit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, Grids, DBGrids, AdvGlowButton;

type
  Tfrmlista_pagar2 = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    Label2: TLabel;
    combo_fornecedor: TComboBox;
    Label3: TLabel;
    combo_conta: TComboBox;
    Label5: TLabel;
    combo_situacao: TComboBox;
    Label9: TLabel;
    combo_periodo: TComboBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label10: TLabel;
    Label11: TLabel;
    Bevel2: TBevel;
    fxcontaspagar: TfrxReport;
    fscontaspagar: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrcontaspagar: TZQuery;
    qrresumo: TZQuery;
    qrresumoCODIGO: TStringField;
    qrresumoNOME: TStringField;
    qrresumoTOTAL: TFloatField;
    qrresumototalgeral: TFloatField;
    fsresumo: TfrxDBDataset;
    qrcontaspagarCODIGO: TStringField;
    qrcontaspagarDATA_EMISSAO: TDateTimeField;
    qrcontaspagarDATA_VENCIMENTO: TDateTimeField;
    qrcontaspagarDATA_PAGAMENTO: TDateTimeField;
    qrcontaspagarCODCONTA: TStringField;
    qrcontaspagarCODFORNECEDOR: TStringField;
    qrcontaspagarVALOR: TFloatField;
    qrcontaspagarVALORPAGO: TFloatField;
    qrcontaspagarLIQUIDO: TFloatField;
    qrcontaspagarDESCONTO: TFloatField;
    qrcontaspagarACRESCIMO: TFloatField;
    qrcontaspagarDOCUMENTO: TStringField;
    qrcontaspagarNOTAFISCAL: TStringField;
    qrcontaspagarHISTORICO: TStringField;
    qrcontaspagarC: TStringField;
    qrcontaspagarE: TStringField;
    qrcontaspagarFILTRO: TIntegerField;
    qrcontaspagarESPECIE: TStringField;
    qrcontaspagarSITUACAO: TIntegerField;
    qrcontaspagarCODNOTA: TStringField;
    qrcontaspagarMOVIMENTO: TIntegerField;
    qrcontaspagarCODCAIXA: TStringField;
    qrcontaspagarFORNECEDOR: TStringField;
    qrcontaspagarCONTA: TStringField;
    Bevel3: TBevel;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    procedure combo_fornecedorChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure combo_contaChange(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_pagar2: Tfrmlista_pagar2;
    juro_taxa, juro_multa, total_original, total_juros : real;
      juro_carencia : integer;
        data_caixa : tdatetime;  

implementation

uses modulo, loc_caixa, xloc_cliente, xloc_funcionario, principal,
  xloc_fornecedor, xloc_conta;

{$R *.dfm}

procedure Tfrmlista_pagar2.combo_fornecedorChange(Sender: TObject);
begin
  IF combo_FORNECEDOR.Text = 'SELECIONAR' THEN
  BEGIN
    frmxloc_FORNECEDOR := tfrmxloc_FORNECEDOR.create(self);
    frmxloc_FORNECEDOR.showmodal;


    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_FORNECEDOR.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_FORNECEDOR.ItemIndex := combo_FORNECEDOR.Items.Count - 1;
    END
    ELSE
      COMBO_FORNECEDOR.ItemIndex := 0;

  END;
end;

procedure Tfrmlista_pagar2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_pagar2.FormShow(Sender: TObject);
BEGIN

  FRMMODULO.QRCAIXA_OPERADOR.OPEN;
  FRMMODULO.QRCAIXA_OPERADOR.LOCATE('CODIGO','000099',[LOCASEINSENSITIVE]);
  data_caixa := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;

  combo_relatorio.ItemIndex := 0;
  combo_FORNECEDOR.ItemIndex := 0;
  combo_CONTA.ItemIndex := 0;
  combo_situacao.ItemIndex := 0;
  combo_periodo.ItemIndex := 0;
  dateedit1.Date := data_caixa;
  dateedit2.date := data_caixa;

{
RELAÇÃO AGRUPADA POR FORNECEDOR
RELAÇÃO AGRUPADA POR CONTA
RESUMO POR FORNECEDOR
BALANCETE FINANCEIRO
}

end;

procedure Tfrmlista_pagar2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_pagar2.combo_contaChange(Sender: TObject);
begin
  IF combo_CONTA.Text = 'SELECIONAR' THEN
  BEGIN
    frmxloc_CONTA := tfrmxloc_CONTA.create(self);
    frmxloc_CONTA.showmodal;


    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_CONTA.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_CONTA.ItemIndex := combo_CONTA.Items.Count - 1;
    END
    ELSE
      combo_CONTA.ItemIndex := 0;

  END;
end;

procedure Tfrmlista_pagar2.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmlista_pagar2.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bimprimir.SetFocus;
end;

procedure Tfrmlista_pagar2.bimprimirClick(Sender: TObject);
var FORNECEDOR, CONTA, situacao, periodo, ordem: string;
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

  if combo_FORNECEDOR.Text = 'TODOS' then FORNECEDOR := '' else begin  FORNECEDOR := ' and codFORNECEDOR = '''+copy(combo_FORNECEDOR.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'FORNECEDOR: '+COMBO_FORNECEDOR.TEXT; END;
  if combo_CONTA.Text = 'TODOS' then CONTA := '' else begin CONTA := ' and CP.CODCONTA = '''+copy(combo_CONTA.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'CONTA: '+COMBO_CONTA.TEXT; end;

  if combo_SITUACAO.Text = 'TODAS' then SITUACAO := ''
  else
  begin
      IF COMBO_SITUACAO.ITEMINDEX = 0 THEN situacao := ' and CP.situacao = 1 ';
      IF COMBO_SITUACAO.ITEMINDEX = 1 THEN situacao := ' and CP.situacao = 2 ';
      frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'SITUAÇÃO: '+COMBO_SITUACAO.TEXT;
  end;


  if combo_periodo.text = 'DATA DA COMPRA' then
  begin
    periodo := ' DATA_EMISSAO >= :datai and data_EMISSAO <= :dataf ';
    ordem := 'data_EMISSAO'; //, CP.codigo';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DA COMPRA: '+DATEEDIT1.TEXT+' A '+DATEEDIT2.TEXT;
  end;

  if combo_periodo.text = 'DATA DE VENCIMENTO' then
  begin
    periodo := ' data_VENCIMENTO >= :datai and data_VENCIMENTO <= :dataf ';
    ordem := 'data_VENCIMENTO'; //,CP.codigo';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DE VENCIMENTO: '+DATEEDIT1.TEXT + ' A '+DATEEDIT2.TEXT;
  end;
  if combo_periodo.text = 'DATA DO PAGAMENTO' then
  begin
    periodo := ' data_PAGAMENTO >= :datai and data_PAGAMENTO <= :dataf ';
    ordem := 'data_PAGAMENTO'; //,CP.codigo';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DE PAGAMENTO: '+DATEEDIT1.TEXT + ' A '+DATEEDIT2.TEXT;
  end;


  if combo_relatorio.Text = 'RELAÇÃO SINTÉTICA' then
  begin
    QRCONTASPAGAR.close;
    QRCONTASPAGAR.sql.clear;
    QRCONTASPAGAR.sql.add('select CP.*, FORNECEDOR.NOME FORNECEDOR from c000046 CP, C000009 FORNECEDOR where CP.CODFORNECEDOR = FORNECEDOR.CODIGO AND '+periodo+FORNECEDOR+conta+situacao+' order by '+ordem);
    QRCONTASPAGAR.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QRCONTASPAGAR.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    QRCONTASPAGAR.open;
    QRCONTASPAGAR.REFRESH;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE CONTAS A PAGAR';
    fxcontasPAGAR.LoadFromFile('\DATASAC\server\rel\f000063.fr3');
    fxcontasPAGAR.ShowReport;
  end;

{  if combo_relatorio.Text = 'RELAÇÃO AGRUPADA POR CLIENTE SINTÉTICA' then
  begin
    QRCONTASRECEBER.close;
    QRCONTASRECEBER.sql.clear;
    QRCONTASRECEBER.sql.add('select CP.*, CLIENTE.NOME CLIENTE from c000049 CR, C000007 CLIENTE where CP.CODCLIENTE = CLIENTE.CODIGO AND '+periodo+cliente+vendedor+caixa+situacao+FORMA+' order by cliente');
    QRCONTASRECEBER.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QRCONTASRECEBER.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    QRCONTASRECEBER.open;
    QRCONTASRECEBER.REFRESH;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE CONTAS A RECEBER';
    fxcontas_receber.LoadFromFile('\DATASAC\server\rel\f000059.fr3');
    fxcontas_receber.ShowReport;
  end;

  if combo_relatorio.text = 'RESUMO POR CLIENTE' then
  begin
      QRRESUMO.CLOSE;
      QRRESUMO.SQL.CLEAR;
      QRRESUMO.SQL.ADD('select cliente.nome, cliente.codigo, sum(CP.valor_atual) total from c000007 cliente');
      QRRESUMO.SQL.ADD('jOIN c000049 cr on cliente.codigo = CP.codcliente  and CP.valor_atual <> 0  and '+periodo+cliente+vendedor+caixa+situacao+FORMA+' group by cliente.codigo, cliente.nome ');
      QRRESUMO.SQL.ADD('order by cliente.nome');
      qrresumo.Params.ParamByName('datai').asdatetime := dateedit1.date;
      qrresumo.Params.ParamByName('dataf').asdatetime := dateedit2.date;
      QRRESUMO.OPEN;
      frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE CONTAS A RECEBER - RESUMIDO POR CLIENTE';
      fxcontas_receber.LoadFromFile('\DATASAC\server\rel\f000060.fr3');
      fxcontas_receber.ShowReport;
  end;
  if combo_relatorio.text = 'RELAÇÃO AGRUPADA POR FORMA DE PAGAMENTO' then
  begin
    QRCONTASRECEBER.close;
    QRCONTASRECEBER.sql.clear;
    QRCONTASRECEBER.sql.add('select CP.*, CLIENTE.NOME CLIENTE from c000049 CR, C000007 CLIENTE where CP.CODCLIENTE = CLIENTE.CODIGO AND '+periodo+cliente+vendedor+caixa+situacao+FORMA+' order by cliente');
    QRCONTASRECEBER.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QRCONTASRECEBER.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    QRCONTASRECEBER.open;
    QRCONTASRECEBER.REFRESH;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE CONTAS A RECEBER POR FORMA DE RECEBTO.';
    fxcontas_receber.LoadFromFile('\DATASAC\server\rel\f000062.fr3');
    fxcontas_receber.ShowReport;
  end;
  }

end;

procedure Tfrmlista_pagar2.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;

  if combo_relatorio.Text = 'RELAÇÃO SINTÉTICA' then
  begin
    fxcontasPAGAR.LoadFromFile('\DATASAC\server\rel\f000063.fr3');
    fxcontasPAGAR.designreport;
  end;

end;

end.
