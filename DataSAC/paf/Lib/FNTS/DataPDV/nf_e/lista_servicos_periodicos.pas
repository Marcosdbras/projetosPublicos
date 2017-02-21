unit lista_servicos_periodicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, StdCtrls, Buttons, TFlatPanelUnit, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxDesgn, frxClass,
  frxDBSet, Menus, AdvGlowButton;

type
  Tfrmlista_servicos_periodicos = class(TForm)
    Label1: TLabel;
    combo_cliente: TComboBox;
    fxservicos_periodicos: TfrxReport;
    fsservicos_periodicos: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrservicos_periodicos: TZQuery;
    qrservicos_periodicosCODCLIENTE: TStringField;
    qrservicos_periodicosCODSERVICO: TStringField;
    qrservicos_periodicosMARCA: TStringField;
    qrservicos_periodicosMODELO: TStringField;
    qrservicos_periodicosSERIE: TStringField;
    qrservicos_periodicosULTIMA_MANUTENCAO: TDateTimeField;
    qrservicos_periodicosPERIODO: TIntegerField;
    qrservicos_periodicosSTATUS: TStringField;
    qrservicos_periodicosservico: TStringField;
    qrservicos_periodicoscliente: TStringField;
    qrservicos_periodicosproxima_manutencao: TDateField;
    Bevel2: TBevel;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bimprimirClick(Sender: TObject);
    procedure qrservicos_periodicosCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure combo_clienteChange(Sender: TObject);
    procedure combo_clienteKeyPress(Sender: TObject; var Key: Char);
    procedure combo_clienteExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_servicos_periodicos: Tfrmlista_servicos_periodicos;

implementation

uses modulo, cliente_financeiro, xloc_cliente;

{$R *.dfm}

procedure Tfrmlista_servicos_periodicos.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_servicos_periodicos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_servicos_periodicos.bimprimirClick(Sender: TObject);
var cliente : string;
begin
  FRMMODULO.QRRELATORIO.Open;
  FRMMODULO.QRRELATORIO.Edit;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

  if combo_cliente.Text = 'TODOS'  then cliente  := '' else begin  cliente  := ' where codcliente = '''+copy(combo_cliente.text,1,6)+''''; END;
  //frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'CLIENTE: '+COMBO_CLIENTE.TEXT; END;

  qrservicos_periodicos.close;
  qrservicos_periodicos.sql.clear;
  qrservicos_periodicos.sql.add('select codcliente,codservico,marca,modelo,serie,ultima_manutencao,periodo,max(status) status');
  qrservicos_periodicos.sql.add('from servicos_periodicos' + cliente);
  qrservicos_periodicos.sql.add('group by codcliente,codservico,marca,modelo,serie,ultima_manutencao,periodo');
  //frmmodulo.qrservicos_periodicos.Params.ParamByName('datai').asdatetime := dateedit1.date;
  //frmmodulo.qrservicos_periodicos.Params.ParamByName('dataf').asdatetime := dateedit2.date;
  qrservicos_periodicos.open;

  frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'SERVIÇOS PERIODICOS';
  fxservicos_periodicos.LoadFromFile('\DATASAC\server\rel\f000129.fr3');
  fxservicos_periodicos.ShowReport;

end;

procedure Tfrmlista_servicos_periodicos.qrservicos_periodicosCalcFields(DataSet: TDataSet);
begin
  qrservicos_periodicos.FieldByName('proxima_manutencao').AsDateTime :=
  qrservicos_periodicos.FieldByName('ultima_manutencao').AsDateTime +
  qrservicos_periodicos.FieldByName('periodo').AsInteger;
end;

procedure Tfrmlista_servicos_periodicos.BitBtn1Click(Sender: TObject);
begin

  fxservicos_periodicos.LoadFromFile('\DATASAC\server\rel\F000129.fr3');
  fxservicos_periodicos.DesignReport;
end;

procedure Tfrmlista_servicos_periodicos.combo_clienteChange(
  Sender: TObject);
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

procedure Tfrmlista_servicos_periodicos.combo_clienteKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then bimprimir.setfocus;
end;

procedure Tfrmlista_servicos_periodicos.combo_clienteExit(Sender: TObject);
begin
  bimprimir.SetFocus;
end;

end.
