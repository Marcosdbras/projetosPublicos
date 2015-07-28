unit lista_cheque2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, rxtooledit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, Grids, DBGrids, wwdblook, AdvGlowButton;

type
  Tfrmlista_cheque2 = class(TForm)
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
    fxcheque: TfrxReport;
    fscheque: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrcheque: TZQuery;
    qrchequeCODIGO: TStringField;
    qrchequeEMISSAO: TDateTimeField;
    qrchequeVENCIMENTO: TDateTimeField;
    qrchequeDATA_DEPOSITO1: TDateTimeField;
    qrchequeDATA_DEPOSITO2: TDateTimeField;
    qrchequeDATA_DEVOLUCAO1: TDateTimeField;
    qrchequeDATA_DEVOLUCAO2: TDateTimeField;
    qrchequeSITUACAO: TIntegerField;
    qrchequeCODCLIENTE: TStringField;
    qrchequeTITULAR: TStringField;
    qrchequeCODBANCO: TStringField;
    qrchequeAGENCIA: TStringField;
    qrchequeCONTA: TStringField;
    qrchequeDATA_CONTA: TDateTimeField;
    qrchequeNUMERO: TStringField;
    qrchequeVALOR: TFloatField;
    qrchequeDESCONTO: TFloatField;
    qrchequeLIQUIDO: TFloatField;
    qrchequeCODVENDA: TStringField;
    qrchequeOBS1: TStringField;
    qrchequeOBS2: TStringField;
    qrchequeCODCONTAS_PAGAR: TStringField;
    qrchequeDESTINO: TStringField;
    qrchequeDATA_BAIXA: TDateTimeField;
    qrchequeCODCONTA_CORRENTE: TStringField;
    qrchequeCODCONTA: TStringField;
    qrchequeNOME: TStringField;
    qrchequeSIT: TStringField;
    qrchequebanco: TStringField;
    qrchequeTELEFONE1: TStringField;
    qrchequeTELEFONE2: TStringField;
    Bevel3: TBevel;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    procedure combo_clienteChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure combo_bancoChange(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrchequeCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_cheque2: Tfrmlista_cheque2;
  data_caixa : tdatetime;

implementation

uses modulo, loc_caixa, xloc_cliente, xloc_funcionario, principal,
  xloc_banco;

{$R *.dfm}

procedure Tfrmlista_cheque2.combo_clienteChange(Sender: TObject);
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

procedure Tfrmlista_cheque2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_cheque2.FormShow(Sender: TObject);
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

procedure Tfrmlista_cheque2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_cheque2.combo_bancoChange(Sender: TObject);
begin
  IF combo_banco.Text = 'SELECIONAR' THEN
  BEGIN
    frmxloc_banco := tfrmxloc_banco.create(self);
    frmxloc_banco.showmodal;


    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_banco.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_banco.ItemIndex := combo_banco.Items.Count - 1;
    END
    ELSE
      combo_banco.ItemIndex := 0;

  END;
end;

procedure Tfrmlista_cheque2.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmlista_cheque2.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bimprimir.SetFocus;
end;

procedure Tfrmlista_cheque2.bimprimirClick(Sender: TObject);
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

  if combo_cliente.Text = 'TODOS' then cliente := '' else begin  cliente := ' and codcliente = '''+copy(combo_cliente.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'CLIENTE: '+COMBO_CLIENTE.TEXT; END;
  if combo_banco.Text = 'TODOS' then banco := '' else begin banco := ' and CH.CODbanco = '''+copy(combo_banco.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENEDEDOR: '+COMBO_banco.TEXT; end;
  if combo_SITUACAO.ITEMINDEX = 0 then SITUACAO := ''
  else
  begin
      IF COMBO_SITUACAO.ITEMINDEX = 1 THEN situacao := ' and CH.situacao = 1 ';
      IF COMBO_SITUACAO.ITEMINDEX = 2 THEN situacao := ' and CH.situacao <> 1 ';
      IF COMBO_SITUACAO.ItemIndex > 2 THEN
      BEGIN
        SITUACAO := ' and CH.situacao = '+inttostr(combo_situacao.ItemIndex - 1);
      END;
      frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'SITUAÇÃO: '+COMBO_SITUACAO.TEXT;
  end;


  if combo_periodo.text = 'DATA DA EMISSAO' then
  begin
    periodo := ' EMISSAO >= :datai and EMISSAO <= :dataf ';
    ordem := 'EMISSAO, CH.NUMERO';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DA COMPRA: '+DATEEDIT1.TEXT+' A '+DATEEDIT2.TEXT;
  end;

  if combo_periodo.text = 'DATA DE VENCIMENTO' then
  begin
    periodo := ' VENCIMENTO >= :datai and VENCIMENTO <= :dataf ';
    ordem := 'VENCIMENTO,CH.NUMERO';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DE VENCIMENTO: '+DATEEDIT1.TEXT + ' A '+DATEEDIT2.TEXT;
  end;
  if combo_periodo.text = 'DATA DA BAIXA' then
  begin
    periodo := ' data_BAIXA >= :datai and data_BAIXA <= :dataf ';
    ordem := 'data_BAIXA,CH.NUMERO';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DE PAGAMENTO: '+DATEEDIT1.TEXT + ' A '+DATEEDIT2.TEXT;
  end;

  if combo_relatorio.Text = 'RELAÇÃO SINTÉTICA' then
  begin
    QRCHEQUE.close;
    QRCHEQUE.sql.clear;
    QRCHEQUE.sql.add('select ch.*, cli.nome, cli.telefone1, cli.telefone2 from c000040 ch, c000007 cli where ch.codcliente = cli.codigo AND '+periodo+cliente+banco+situacao+' order by '+ordem);
    QRCHEQUE.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QRCHEQUE.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    QRCHEQUE.open;
    QRCHEQUE.REFRESH;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE CHEQUES';
    fxCHEQUE.LoadFromFile('\DATASAC\server\rel\f000083.fr3');
    fxCHEQUE.ShowReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO AGRUPADA POR CLIENTE' then
  begin
    QRCHEQUE.close;
    QRCHEQUE.sql.clear;
    QRCHEQUE.sql.add('select ch.*, cli.nome, cli.telefone1, cli.telefone2 from c000040 ch, c000007 cli where ch.codcliente = cli.codigo AND '+periodo+cliente+banco+situacao+' order by cli.nome');
    QRCHEQUE.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QRCHEQUE.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    QRCHEQUE.open;
    QRCHEQUE.REFRESH;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE CHEQUES';
    fxCHEQUE.LoadFromFile('\DATASAC\server\rel\f000082.fr3');
    fxCHEQUE.ShowReport;
  end;


end;

procedure Tfrmlista_cheque2.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;

  if combo_relatorio.Text = 'RELAÇÃO SINTÉTICA' then
  begin
    fxCHEQUE.LoadFromFile('\DATASAC\server\rel\f000083.fr3');
    fxCHEQUE.designreport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO AGRUPADA POR CLIENTE' then
  begin
    fxCHEQUE.LoadFromFile('\DATASAC\server\rel\f000082.fr3');
    fxCHEQUE.designreport;
  end;

end;

procedure Tfrmlista_cheque2.qrchequeCalcFields(DataSet: TDataSet);
begin
  CASE qrchequeSITUACAO.Value OF
  1: qrchequeSIT.Value := 'ATIVO';
  2: qrchequeSIT.Value := 'Dep.1a.vez';
  3: qrchequeSIT.Value := 'Dep.2a.vez';
  4: qrchequeSIT.Value := 'Descontado';
  5: qrchequeSIT.Value := 'Dev.1a.vez';
  6: qrchequeSIT.Value := 'Dev.2a.vez';
  7: qrchequeSIT.Value := 'Repassado';
  8: qrchequeSIT.Value := 'Sustado';
  9: qrchequeSIT.Value := 'Outros';
  END;

end;

end.
