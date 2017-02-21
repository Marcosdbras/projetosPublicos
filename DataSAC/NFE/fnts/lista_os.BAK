unit lista_os;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton;

type
  Tfrmlista_os = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    Label2: TLabel;
    combo_cliente: TComboBox;
    Label3: TLabel;
    combo_tecnico: TComboBox;
    Label4: TLabel;
    combo_tipo: TComboBox;
    Label5: TLabel;
    combo_situacao: TComboBox;
    Label6: TLabel;
    combo_setor: TComboBox;
    Label9: TLabel;
    combo_periodo: TComboBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label11: TLabel;
    Bevel2: TBevel;
    Label7: TLabel;
    combo_veiculo: TComboBox;
    qros: TZQuery;
    qrosST: TIntegerField;
    qrosCODIGO: TStringField;
    qrosDATA: TDateTimeField;
    qroscliente: TStringField;
    qrosTOTAL: TFloatField;
    qrosCONCLUSAO_DATA: TDateTimeField;
    qrosCUPOMFISCAL: TIntegerField;
    qrosveiculo: TStringField;
    qrosterceiro: TStringField;
    qrosTIPO: TStringField;
    qrosCODCLIENTE: TStringField;
    qrosSOLICITANTE: TStringField;
    qrosMARCA: TStringField;
    qrosMODELO: TStringField;
    qrosSERIAL: TStringField;
    qrosATENDIMENTO: TStringField;
    qrosDEFEITO: TBlobField;
    qrosOBS: TBlobField;
    qrosDETECTADO: TBlobField;
    qrosDETECTADO_DATA: TDateTimeField;
    qrosDETECTADO_CODTECNICO: TStringField;
    qrosSITUACAO: TStringField;
    qrosCONCLUSAO_ENTREGUE: TDateTimeField;
    qrosRETIRADO_POR: TStringField;
    qrosSERVICO_SUBTOTAL: TFloatField;
    qrosSERVICO_DESCONTO: TFloatField;
    qrosSERVICO_TOTAL: TFloatField;
    qrosPRODUTO_SUBTOTAL: TFloatField;
    qrosPRODUTO_DESCONTO: TFloatField;
    qrosPRODUTO_TOTAL: TFloatField;
    qrosCODVEICULO: TStringField;
    qrosKM_INICIAL: TIntegerField;
    qrosKM_FINAL: TIntegerField;
    qrosDESLOC_COMBUSTIVEL: TFloatField;
    qrosDESLOC_REFEICAO: TFloatField;
    qrosDESLOC_HOSPEDAGEM: TFloatField;
    qrosDESLOC_TOTAL: TFloatField;
    qrosCODTERCEIRO: TStringField;
    qrosTERCEIRO_CONTATO: TStringField;
    qrosTERCEIRO_VALOR: TFloatField;
    qrosTERCEIRO_TOTAL: TFloatField;
    qrosTERCEIRO_OBS: TBlobField;
    qrosTERCEIRO_COMISSAO: TFloatField;
    qrosSUBTOTAL: TFloatField;
    qrosDESCONTO: TFloatField;
    qrosACRESCIMO: TFloatField;
    qrosMEIO_DINHEIRO: TFloatField;
    qrosMEIO_CHEQUEAV: TFloatField;
    qrosMEIO_CHEQUEAP: TFloatField;
    qrosMEIO_CARTAOCRED: TFloatField;
    qrosMEIO_CARTAODEB: TFloatField;
    qrosMEIO_CREDIARIO: TFloatField;
    qrosatendente: TStringField;
    qrosdetectado_tecnico: TStringField;
    qrosCODSETOR: TStringField;
    qrossetor: TStringField;
    qrosCODATENDENTE: TStringField;
    qrosCHASSI: TStringField;
    qrosCOR: TStringField;
    qrosCOMBUSTIVEL: TStringField;
    qrosCOMBUSTIVEL_NIVEL: TFloatField;
    qrosNUMERO_CUPOM_FISCAL: TIntegerField;
    qrosCODCAIXA: TStringField;
    qrosDETECTADO_HORA: TStringField;
    qrosHORA: TStringField;
    fxos: TfrxReport;
    fsos: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    Label8: TLabel;
    combo_atendimento: TComboBox;
    qrosINTERVENCOES: TBlobField;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    Label10: TLabel;
    Bevel3: TBevel;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    qros_servico: TZQuery;
    fsos_servico: TfrxDBDataset;
    procedure combo_clienteChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure combo_tecnicoChange(Sender: TObject);
    procedure combo_veiculoChange(Sender: TObject);
    procedure combo_setorChange(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure combo_relatorioChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_os: Tfrmlista_os;
  data_caixa : tdatetime;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, xloc_cliente,
  xloc_funcionario, principal;

{$R *.dfm}

procedure Tfrmlista_os.combo_clienteChange(Sender: TObject);
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

procedure Tfrmlista_os.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_os.FormShow(Sender: TObject);
begin

  FRMMODULO.QRCAIXA_OPERADOR.OPEN;
  FRMMODULO.QRCAIXA_OPERADOR.LOCATE('CODIGO','000099',[LOCASEINSENSITIVE]);
  data_caixa := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;

    frmmodulo.qrVEICULO.close;
    frmmodulo.qrVEICULO.SQL.clear;
    frmmodulo.qrVEICULO.SQL.Add('select * from c000054 order by nome');
    frmmodulo.qrVEICULO.open;
    frmmodulo.qrVEICULO.indexfieldnames := 'nome';


  combo_relatorio.ItemIndex := 0;
  combo_cliente.ItemIndex := 0;
  combo_tecnico.ItemIndex := 0;
  combo_tipo.ItemIndex := 0;
  combo_situacao.ItemIndex := 0;
  combo_setor.ItemIndex := 0;
  combo_periodo.ItemIndex := 0;
  combo_veiculo.itemindex := 0;
  COMBO_ATENDIMENTO.ITEMINDEX := 0;
  dateedit1.Date := data_caixa;
  dateedit2.date := data_caixa;

end;

procedure Tfrmlista_os.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_os.combo_tecnicoChange(Sender: TObject);
begin
  IF combo_tecnico.Text = 'SELECIONAR' THEN
  BEGIN
    frmxloc_funcionario := tfrmxloc_funcionario.create(self);
    frmxloc_funcionario.showmodal;


    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_tecnico.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_tecnico.ItemIndex := combo_tecnico.Items.Count - 1;
    END
    ELSE
      COMBO_tecnico.ItemIndex := 0;

  END;
end;

procedure Tfrmlista_os.combo_veiculoChange(Sender: TObject);
begin
  IF combo_VEICULO.Text = 'SELECIONAR' THEN
  BEGIN
    frmloc_VEICULO := tfrmloc_VEICULO.create(self);
    frmloc_VEICULO.showmodal;


    combo_VEICULO.Items.Add(frmmodulo.qrVEICULO.fieldbyname('CODIGO').asstring+' '+frmmodulo.qrVEICULO.fieldbyname('nome').asstring);
    combo_VEICULO.ItemIndex := combo_VEICULO.Items.Count - 1;
  END;
end;

procedure Tfrmlista_os.combo_setorChange(Sender: TObject);
begin
  IF combo_SETOR.Text = 'SELECIONAR' THEN
  BEGIN
    frmloc_SETOR := tfrmloc_SETOR.create(self);
    frmloc_SETOR.showmodal;


    combo_SETOR.Items.Add(frmmodulo.qrSETOR.fieldbyname('CODIGO').asstring+' '+frmmodulo.qrSETOR.fieldbyname('SETOR').asstring);
    combo_SETOR.ItemIndex := combo_SETOR.Items.Count - 1;
  END;
end;

procedure Tfrmlista_os.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmlista_os.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bimprimir.SetFocus;
end;

procedure Tfrmlista_os.bimprimirClick(Sender: TObject);
var cliente, tecnico, veiculo, tipo, atendimento, situacao, setor, periodo, ordem: string;
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
  if combo_tecnico.Text = 'TODOS' then tecnico := '' else begin tecnico := ' and DETECTADO_CODTECNICO = '''+copy(combo_tecnico.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'TÉCNICO: '+COMBO_TECNICO.TEXT; end;
  if combo_veiculo.Text = 'TODOS' then veiculo := '' else begin veiculo := ' and codveiculo = '''+copy(combo_veiculo.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := 'VEÍCULO '+COMBO_VEICULO.TEXT+'   '; end;
  if combo_tipo.Text = 'TODAS' then TIPO := '' else begin TIPO := ' and tipo like ''%'+combo_tipo.text+'%'''; frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring+'TIPO: '+COMBO_TIPO.TEXT; end ;
  if combo_atendimento.Text = 'TODOS' then atendimento := '' else begin atendimento := ' and atendimento like ''%'+combo_atendimento.text+'%'''; frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring+'Atendimento: '+COMBO_atendimento.TEXT; end ;
  if combo_SITUACAO.Text = 'TODAS' then SITUACAO := ''
  else
  begin
    IF COMBO_SITUACAO.ItemIndex > 4 THEN
    BEGIN
      IF COMBO_SITUACAO.ITEMINDEX = 5 THEN situacao := ' and situacao = ''FECHADA'' AND TOTAL = 0';
      IF COMBO_SITUACAO.ITEMINDEX = 6 THEN situacao := ' and situacao = ''FECHADA'' AND TOTAL <> 0';

    END
    ELSE
      situacao := ' and situacao like ''%'+combo_situacao.Text+'%''';
    frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'SITUAÇÃO: '+COMBO_SITUACAO.TEXT;
  end;
  if combo_setor.Text = 'TODOS' then setor := '' else begin setor := ' and codsetor = '''+copy(combo_setor.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA7').asstring := 'SETOR: '+COMBO_SETOR.TEXT; end;
  if combo_periodo.text = 'DATA DA EMISSÃO' then
  begin
    periodo := ' data >= :datai and data <= :dataf ';
    ordem := 'data, codigo';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DE ABERTURA: '+DATEEDIT1.TEXT+' A '+DATEEDIT2.TEXT;
  end
  else
  begin
    periodo := ' conclusao_data >= :datai and conclusao_data <= :dataf ';
    ordem := 'conclusao_data,codigo';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO DE FECHAMENTO: '+DATEEDIT1.TEXT + ' A '+DATEEDIT2.TEXT;
  end;


  if combo_relatorio.Text = 'RELAÇÃO DE O.S. - SINTÉTICA' then
  begin
    qros.close;
    qros.sql.clear;
    qros.sql.add('select * from c000051 where '+periodo+cliente+tecnico+veiculo+tipo+situacao+setor+atendimento+' order by '+ordem);
    QRos.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QRos.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    qros.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE ORDENS DE SERVIÇO - SINTÉTICO';
    fXOS.LoadFromFile('\DATASAC\server\rel\f000051.fr3');
    fXOS.ShowReport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO DE O.S. AGRUPADA POR TÉCNICO' then
  begin
    qros.close;
    qros.sql.clear;
    qros.sql.add('select * from c000051 where '+periodo+cliente+tecnico+veiculo+tipo+situacao+setor+atendimento+' order by DETECTADO_CODTECNICO, '+ordem);
    QRos.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QRos.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    qros.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE ORDENS DE SERVIÇO - AGRUPADA POR TÉCNICO';
    fXOS.LoadFromFile('\DATASAC\server\rel\f000052.fr3');
    fXOS.ShowReport;
  end;

  if combo_relatorio.Text = 'SERVIÇOS PERIODICOS' then
  begin
    if combo_tecnico.Text = 'TODOS' then tecnico := '' else begin tecnico := ' and CODTECNICO = '''+copy(combo_tecnico.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'TÉCNICO: '+COMBO_TECNICO.TEXT; end;  
    frmmodulo.qrservicos_periodicos.close;
    frmmodulo.qrservicos_periodicos.sql.clear;
    frmmodulo.qrservicos_periodicos.sql.add('select * from servicos_periodicos where STATUS IS NOT NULL '+cliente+tecnico+' order by codcliente');
    frmmodulo.qrservicos_periodicos.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE SERVIÇOS PERIODICOS';
    fXOS.LoadFromFile('\DATASAC\server\rel\f000052.fr3');
    fXOS.ShowReport;
  end;

  IF COMBO_RELATORIO.TEXT = 'RELAÇÃO DE SERVIÇOS AGRUPADOS POR TÉCNICO' then
  begin

    if combo_cliente.Text = 'TODOS' then cliente := '' else begin  cliente := ' and os.codcliente = '''+copy(combo_cliente.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'CLIENTE: '+COMBO_CLIENTE.TEXT; END;
    //if combo_tecnico.Text = 'TODOS' then tecnico := '' else begin tecnico := ' and os.DETECTADO_CODTECNICO = '''+copy(combo_tecnico.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'TÉCNICO: '+COMBO_TECNICO.TEXT; end;
    if combo_tecnico.Text = 'TODOS' then tecnico := '' else begin tecnico := ' and tec.codigo = '''+copy(combo_tecnico.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'TÉCNICO: '+COMBO_TECNICO.TEXT; end;
    if combo_veiculo.Text = 'TODOS' then veiculo := '' else begin veiculo := ' and os.codveiculo = '''+copy(combo_veiculo.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := 'VEÍCULO '+COMBO_VEICULO.TEXT+'   '; end;
    if combo_tipo.Text = 'TODAS' then TIPO := '' else begin TIPO := ' and os.tipo like ''%'+combo_tipo.text+'%'''; frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring+'TIPO: '+COMBO_TIPO.TEXT; end ;
    if combo_atendimento.Text = 'TODOS' then atendimento := '' else begin atendimento := ' and os.atendimento like ''%'+combo_atendimento.text+'%'''; frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring+'Atendimento: '+COMBO_atendimento.TEXT; end ;
    if combo_SITUACAO.Text = 'TODAS' then SITUACAO := ''
    else
    begin
      IF COMBO_SITUACAO.ItemIndex > 4 THEN
      BEGIN
        IF COMBO_SITUACAO.ITEMINDEX = 5 THEN situacao := ' and os.situacao = ''FECHADA'' AND TOTAL = 0';
        IF COMBO_SITUACAO.ITEMINDEX = 6 THEN situacao := ' and os.situacao = ''FECHADA'' AND TOTAL <> 0';

      END
      ELSE
        situacao := ' and os.situacao like ''%'+combo_situacao.Text+'%''';
      frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'SITUAÇÃO: '+COMBO_SITUACAO.TEXT;
    end;


    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO: '+DATEEDIT1.TEXT+' A '+DATEEDIT2.TEXT;


    qros_servico.close;
    qros_servico.sql.clear;
    qros_servico.sql.add('select serv.*, os.situacao, nserv.*, cli.nome,Tec.nome tecnico, tec.comissao');
    qros_servico.sql.add('from c000053 serv, c000051 os, c000011 nserv, c000007 cli, C000008 TEC');
    qros_servico.sql.add('where serv.codos = os.codigo');
    qros_servico.sql.add('and serv.codservico = nserv.codigo');
    qros_servico.sql.add('and serv.codcliente = cli.codigo AND SERV.CODTECNICO = TEC.CODIGO');
    qros_servico.sql.add('and serv.data >= :datai and serv.data <= :dataf');
    qros_servico.sql.add(cliente+tecnico+veiculo+tipo+situacao+setor+atendimento);
    qros_servico.SQL.add('order by codtecnico,data');
    qros_servico.params.parambyname('datai').asdatetime := dateedit1.date;
    qros_servico.params.parambyname('dataf').asdatetime := dateedit2.date;

    qros_servico.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE SERVIÇOS - AGRUPADA POR TÉCNICO';
    fXOS.LoadFromFile('\DATASAC\server\rel\f000051_2.fr3');
    fXOS.ShowReport;

  end;


end;

procedure Tfrmlista_os.combo_relatorioChange(Sender: TObject);
begin
  IF COMBO_RELATORIO.TEXT = 'RELAÇÃO DE O.S. - SINTÉTICA'  THEN
  BEGIN
    COMBO_CLIENTE.Visible := TRUE;
    COMBO_TECNICO.Visible := TRUE;
    COMBO_VEICULO.Visible := TRUE;
    COMBO_TIPO.Visible := TRUE;
    COMBO_SITUACAO.Visible := TRUE;
    COMBO_SETOR.Visible := TRUE;
  END;
end;

procedure Tfrmlista_os.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE O.S. - SINTÉTICA' then
  begin
    fXOS.LoadFromFile('\DATASAC\server\rel\f000051.fr3');
    fXOS.DesignReport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO DE O.S. AGRUPADA POR TÉCNICO' then
  begin
    fXOS.LoadFromFile('\DATASAC\server\rel\f000052.fr3');
    fXOS.designreport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE O.S. AGRUPADA POR TÉCNICO' then
  begin
    fXOS.LoadFromFile('\DATASAC\server\rel\f000051_2.fr3');
    fXOS.designreport;
  end;  
end;

end.
