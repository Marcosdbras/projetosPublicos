unit Lista_ABC_Marca_Grupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ExtCtrls, StdCtrls, Mask, rxtooledit, DB, MemDS,
  DBAccess, IBC, frxClass, frxDBSet, frxDesgn, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TfrmLista_ABC_Marca_Grupo = class(TForm)
    lmarca: TLabel;
    combo_marca: TComboBox;
    Label2: TLabel;
    combo_grupo: TComboBox;
    Label9: TLabel;
    Bevel3: TBevel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    relABC: TfrxReport;
    frxDesigner1: TfrxDesigner;
    fsABC: TfrxDBDataset;
    query: TZQuery;
    qrMarca: TZQuery;
    queryTOTAL_VENDA: TFloatField;
    queryCOD_MARCA: TStringField;
    queryMARCA: TStringField;
    queryCOD_GRUPO: TStringField;
    queryGRUPO: TStringField;
    queryperc_marca: TFloatField;
    queryperc_total: TFloatField;
    qrtotal: TZQuery;
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure combo_marcaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure combo_grupoChange(Sender: TObject);
    procedure combo_marcaKeyPress(Sender: TObject; var Key: Char);
    procedure combo_grupoKeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure queryCalcFields(DataSet: TDataSet);
    procedure bitbtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLista_ABC_Marca_Grupo: TfrmLista_ABC_Marca_Grupo;
  rtotal : real;

implementation

uses xloc_marca, xloc_grupo, modulo;

{$R *.dfm}

procedure TfrmLista_ABC_Marca_Grupo.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLista_ABC_Marca_Grupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmLista_ABC_Marca_Grupo.combo_marcaChange(Sender: TObject);
begin
  IF combo_marca.Text = 'SELECIONAR' THEN
  BEGIN

    frmxloc_marca := tfrmxloc_marca.create(self);
    frmxloc_marca.showmodal;


    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_marca.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_marca.ItemIndex := combo_marca.Items.Count - 1;
    END
    ELSE
      combo_marca.ItemIndex := 0;

  END;
end;

procedure TfrmLista_ABC_Marca_Grupo.FormShow(Sender: TObject);
begin
  combo_marca.ItemIndex := 0;
  combo_GRUPO.itemindex := 0;
  rtotal := 0;
  DateEdit1.Date := date;
  dateedit2.date := date;
end;

procedure TfrmLista_ABC_Marca_Grupo.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmLista_ABC_Marca_Grupo.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bimprimir.setfocus;
end;

procedure TfrmLista_ABC_Marca_Grupo.combo_grupoChange(Sender: TObject);
begin
  IF combo_grupo.Text = 'SELECIONAR' THEN
  BEGIN

    frmXloc_GRUPO := tfrmXloc_GRUPO.create(self);
    frmXloc_GRUPO.showmodal;

    if resultado_pesquisa1 <> '' then
    begin
      combo_GRUPO.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_GRUPO.ItemIndex := combo_GRUPO.Items.Count - 1;
    end
    else
      combo_grupo.ItemIndex := 0;
  END;
end;

procedure TfrmLista_ABC_Marca_Grupo.combo_marcaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmLista_ABC_Marca_Grupo.combo_grupoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmLista_ABC_Marca_Grupo.bimprimirClick(Sender: TObject);
var GRUPO, periodo, MARCA : string;
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

  if combo_marca.Text = 'TODOS' then MARCA := '' else begin  MARCA := ' and c000025.CODMARCA = '''+copy(combo_marca.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'MARCA: '+combo_marca.TEXT; end;
  if combo_grupo.Text = 'TODOS' then grupo := '' else begin  grupo := ' and c000025.codgrupo = '''+copy(combo_grupo.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'GRUPO: '+COMBO_grupo.TEXT; END;
  periodo := ' and c000032.data >= :datai and c000032.data <= :dataf ';
  frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO: '+DATEEDIT1.TEXT+' A '+DATEEDIT2.TEXT;

  qrtotal.close;
  qrtotal.sql.clear;
  qrtotal.sql.Add('select');
  qrtotal.sql.Add('sum(c000032.total) total_geral');
  qrtotal.sql.Add('from');
  qrtotal.sql.Add('c000032,');
  qrtotal.sql.Add('c000025');
  qrtotal.sql.Add('where');
  qrtotal.sql.Add('c000032.codproduto = c000025.codigo and');
  qrtotal.sql.Add('c000032.movimento in (2,9)');
  qrtotal.sql.Add(marca+grupo+periodo);
  qrtotal.ParamByName('datai').asdatetime := DateEdit1.Date;
  qrtotal.ParamByName('dataf').asdatetime := DateEdit2.Date;
  qrtotal.open;

  rtotal := qrtotal.fieldbyname('total_geral').AsFloat;

  query.close;
  query.sql.clear;
  query.sql.Add('select');
  query.sql.Add('sum(c000032.total) total_venda,');
  query.sql.Add('c000019.codigo as cod_marca,');
  query.sql.Add('c000019.nome as marca,');
  query.sql.Add('c000017.codigo as cod_grupo,');
  query.sql.Add('c000017.grupo as grupo');
  query.sql.Add('from');
  query.sql.Add('c000032,');
  query.sql.Add('c000025,');
  query.sql.Add('c000019,');
  query.sql.Add('c000017');
  query.sql.Add('where');
  query.sql.Add('c000032.codproduto = c000025.codigo and');
  query.sql.Add('c000025.codmarca   = c000019.codigo and');
  query.sql.Add('c000025.codgrupo   = c000017.codigo and');
  query.sql.Add('c000032.movimento in (2,9)');
  query.sql.Add(marca+grupo+periodo);
  query.sql.Add('group by');
  query.sql.Add('c000019.codigo,');
  query.sql.Add('c000019.nome,');
  query.sql.Add('c000017.codigo,');
  query.sql.Add('c000017.grupo');
  query.sql.Add('order by c000019.nome, c000017.grupo');
  query.ParamByName('datai').asdatetime := DateEdit1.Date;
  query.ParamByName('dataf').asdatetime := DateEdit2.Date;
  query.open;

  Application.ProcessMessages;
  
  frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'PERCENTUAL SOBRE VENDA (MARCA/GRUPO)';

  relABC.LoadFromFile('\DATASAC\server\rel\f000195.fr3');
  relABC.ShowReport;
end;

procedure TfrmLista_ABC_Marca_Grupo.queryCalcFields(DataSet: TDataSet);
begin
  qrMarca.close;
  qrMarca.sql.clear;
  qrmarca.sql.Add('select');
  //qrmarca.sql.Add('sum(c000032.total-c000032.desconto) as total');
  qrmarca.sql.Add('sum(c000032.total) as total');  
  qrmarca.sql.Add('from');
  qrmarca.sql.Add('c000032,');
  qrmarca.sql.Add('c000025,');
  qrmarca.sql.Add('c000019');
  qrmarca.sql.Add('where');
  qrmarca.sql.Add('c000032.codproduto = c000025.codigo and');
  qrmarca.sql.Add('c000025.codmarca   = c000019.codigo and');
  qrmarca.sql.Add('c000032.movimento in (2,9)');
  qrMarca.sql.Add('and c000019.codigo = '''+query.fieldbyname('cod_marca').asstring+'''');
  qrmarca.sql.Add('and c000032.data between :datai and :dataf');
  qrMarca.ParamByName('datai').asdatetime := DateEdit1.Date;
  qrMarca.ParamByName('dataf').asdatetime := DateEdit2.Date;
  qrMarca.open;

  if rtotal = 0 then rtotal := 1;


  if ( query.FieldByName('total_venda').asfloat > 0 ) and
     (qrMarca.fieldbyname('total').asfloat > 0) then
  begin
    query.FieldByName('perc_marca').asfloat :=
    (query.FieldByName('total_venda').asfloat * 100)/ qrMarca.fieldbyname('total').asfloat;

    query.FieldByName('perc_total').asfloat :=
    (query.FieldByName('total_venda').asfloat * 100)/ rtotal;

  end;

end;

procedure TfrmLista_ABC_Marca_Grupo.bitbtn1Click(Sender: TObject);
begin
  relABC.LoadFromFile('\DATASAC\server\rel\f000195.fr3');
  relABC.designreport;
end;

end.
