unit lista_cartao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, rxtooledit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, Grids, DBGrids, wwdblook, AdvGlowButton,
  MemDS, DBAccess, IBC;

type
  Tfrmlista_cartao = class(TForm)
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
    fxcartao: TfrxReport;
    fscartao: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    Bevel3: TBevel;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    qrcartao: TZQuery;
    qrcartaoCODIGO: TStringField;
    qrcartaoCOD_VENDA: TStringField;
    qrcartaoBANCO: TStringField;
    qrcartaoCOD_CLIENTE: TStringField;
    qrcartaoDATA_VENDA: TDateTimeField;
    qrcartaoVALOR: TFloatField;
    qrcartaoCOMISSAO: TFloatField;
    qrcartaoLIQUIDO: TFloatField;
    qrcartaoDATA_RECEBIMENTO: TDateTimeField;
    qrcartaoDATA_BAIXA: TDateTimeField;
    qrcartaoSITUACAO: TStringField;
    qrcartaoTIPO: TStringField;
    qrcartaoPARCELA: TIntegerField;
    qrcartaoVALOR_TOTAL: TFloatField;
    qrcartaoNOME: TStringField;
    qrcartaoBANDEIRA: TStringField;
    procedure combo_clienteChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure combo_bancoChange(Sender: TObject);
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
  frmlista_cartao: Tfrmlista_cartao;

implementation

uses modulo, loc_caixa, xloc_cliente, xloc_funcionario, principal,
  xloc_banco, xloc_CARTAO;

{$R *.dfm}

procedure Tfrmlista_cartao.combo_clienteChange(Sender: TObject);
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

procedure Tfrmlista_cartao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_cartao.FormShow(Sender: TObject);
begin


  combo_relatorio.ItemIndex := 0;
  combo_cliente.ItemIndex := 0;
  combo_situacao.ItemIndex := 0;
  combo_periodo.ItemIndex := 0;
  DateEdit1.Date := date;
  dateedit2.date := date;

end;

procedure Tfrmlista_cartao.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_cartao.combo_bancoChange(Sender: TObject);
begin
  IF combo_banco.Text = 'SELECIONAR' THEN
  BEGIN
    frmxloc_CARTAO := tfrmxloc_CARTAO.create(self);
    frmxloc_CARTAO.showmodal;


    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_banco.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_banco.ItemIndex := combo_banco.Items.Count - 1;
    END
    ELSE
      combo_banco.ItemIndex := 0;

  END;
end;

procedure Tfrmlista_cartao.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmlista_cartao.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bimprimir.SetFocus;
end;

procedure Tfrmlista_cartao.bimprimirClick(Sender: TObject);
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

  if combo_cliente.Text = 'TODOS' then cliente := '' else begin  cliente := ' and c000124.cod_cliente = '''+copy(combo_cliente.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'CLIENTE: '+COMBO_CLIENTE.TEXT; END;
  if combo_banco.Text = 'TODAS' then banco := '' else begin banco := ' and c000124.banco = '''+copy(combo_banco.text,1,3)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'BANCO: '+COMBO_banco.TEXT; end;
  if combo_SITUACAO.ITEMINDEX = 0 then SITUACAO := ''
  else
  begin
      IF COMBO_SITUACAO.ITEMINDEX = 1 THEN situacao := ' and C000124.situacao = ''ABERTO''';
      IF COMBO_SITUACAO.ITEMINDEX = 2 THEN situacao := ' and C000124.situacao = ''BAIXADO''';
      frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'SITUAÇÃO: '+COMBO_SITUACAO.TEXT;
  end;


  if combo_periodo.ITEMINDEX = 0 then
  begin
    periodo := ' AND C000124.DATA_RECEBIMENTO >= :datai and C000124.DATA_RECEBIMENTO <= :dataf ';
    ordem := ' ORDER BY C000124.DATA_RECEBIMENTO';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DE RECEBIMENTO: '+DATEEDIT1.TEXT+' A '+DATEEDIT2.TEXT;
  end;

  if combo_periodo.ITEMINDEX = 1 then
  begin
    periodo := ' AND C000124.DATA_VENDA >= :datai and C000124.DATA_VENDA <= :dataf ';
    ordem := ' ORDER BY C000124.DATA_VENDA';

    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DA VENDA: '+DATEEDIT1.TEXT + ' A '+DATEEDIT2.TEXT;
  end;

  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    qrCARTAO.close;
    qrCARTAO.sql.clear;
    qrCARTAO.sql.add('select c000124.*,');
    qrCARTAO.sql.add('c000007.nome,');
    qrCARTAO.sql.add('c000013.banco BANDEIRA');
    qrCARTAO.sql.add('from');
    qrCARTAO.sql.add('c000124,');
    qrCARTAO.sql.add('c000007,');
    qrCARTAO.sql.add('c000013');
    qrCARTAO.sql.add('where');
    qrCARTAO.sql.add('c000124.cod_cliente = c000007.codigo and');
    qrCARTAO.sql.add('c000124.banco = c000013.numero');
    qrCARTAO.sql.add(CLIENTE+BANCO+SITUACAO+PERIODO);
    qrCARTAO.sql.add(ORDEM);
    qrCARTAO.ParamByName('datai').asdatetime := dateedit1.date;
    qrCARTAO.ParamByName('dataf').asdatetime := dateedit2.date;
    qrCARTAO.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'MOVIMENTO DE CARTÃO';
    fxCARTAO.LoadFromFile('\DATASAC\server\rel\f000192.fr3');
    fxCARTAO.ShowReport;
  end;
end;

procedure Tfrmlista_cartao.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;

  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    fxCARTAO.LoadFromFile('\DATASAC\server\rel\f000192.fr3');
    fxCARTAO.designreport;
  end;
end;

end.
