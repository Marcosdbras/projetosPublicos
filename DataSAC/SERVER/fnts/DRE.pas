unit DRE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxtooledit, AdvGlowButton, ExtCtrls, DB, MemDS,
  DBAccess, IBC, Grids, DBGrids, {CRGrid,} frxClass, frxDBSet, frxDesgn,
  Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmDRE = class(TForm)
    Bevel3: TBevel;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    qrDRE: TZQuery;
    frxDesigner1: TfrxDesigner;
    fsDRE: TfrxDBDataset;
    relDRE: TfrxReport;
    qrDRECLASSIFICACAO: TStringField;
    qrDRETIPO: TIntegerField;
    qrDRENOME_CONTA: TStringField;
    qrDRETOTAL: TFloatField;
    qrDREnome_tipo: TStringField;
    PopupMenu1: TPopupMenu;
    retorna1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure bitbtn1Click(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure qrDRECalcFields(DataSet: TDataSet);
    procedure retorna1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDRE: TfrmDRE;
  data_caixa : tdatetime;

implementation

uses modulo;

{$R *.dfm}

procedure TfrmDRE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmDRE.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmDRE.bimprimirClick(Sender: TObject);
begin

  qrDRE.close;
  qrDRE.sql.clear;
  qrDRE.sql.add('Select');
  qrDRE.sql.add('  Classificacao,');
  qrDRE.sql.add('  max(tipo) as tipo,');
  qrDRE.sql.add('  max(Nome_Conta) as Nome_conta,');
  qrDRE.sql.add('  sum(Total) as Total');
  qrDRE.sql.add('from');
  qrDRE.sql.add('  ( Select');
  qrDRE.sql.add('      c000035.classificacao as Classificacao,');
  qrDRE.sql.add('      c000035.tipo as tipo,');
  qrDRE.sql.add('      c000035.conta as Nome_Conta,');
  qrDRE.sql.add('      sum(c000042.Valor) as Total');
  qrDRE.sql.add('    from');
  qrDRE.sql.add('      c000042, c000035');
  qrDRE.sql.add('    where');
  qrDRE.sql.add('      c000042.codconta = c000035.codigo');
  qrDRE.sql.add('      and c000042.DATA between :datai and :dataf');
  qrDRE.sql.add('    group by');
  qrDRE.sql.add('      Classificacao,');
  qrDRE.sql.add('      tipo,');
  qrDRE.sql.add('      Nome_Conta');
  qrDRE.sql.add('    UNION');
  qrDRE.sql.add('    Select');
  qrDRE.sql.add('      c000035.classificacao as Classificacao,');
  qrDRE.sql.add('      c000035.tipo as tipo,');
  qrDRE.sql.add('      c000035.conta as Nome_Conta,');
  qrDRE.sql.add('      sum(c000044.Valor) as Total');
  qrDRE.sql.add('    from');
  qrDRE.sql.add('      c000044, c000035');
  qrDRE.sql.add('    where');
  qrDRE.sql.add('      c000044.codconta = c000035.codigo');
  qrDRE.sql.add('      and c000044.DATA between :datai and :dataf');
  qrDRE.sql.add('    group by');
  qrDRE.sql.add('      Classificacao,');
  qrDRE.sql.add('      tipo,');
  qrDRE.sql.add('      Nome_Conta');
  qrDRE.sql.add('  )  as tmp');
  qrDRE.sql.add('  group by classificacao');
  qrDRE.parambyname('datai').asdatetime := dateedit1.date;
  qrDRE.parambyname('dataf').asdatetime := dateedit2.date;
  qrDRE.open;

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := 'PERÍODO: '+DATEEDIT1.TEXT+ ' A '+DATEEDIT2.TEXT;

  relDRE.LoadFromFile('\DATASAC\server\rel\f000201.fr3');
  relDRE.ShowReport;
end;

procedure TfrmDRE.FormShow(Sender: TObject);
begin
  FRMMODULO.QRCAIXA_OPERADOR.OPEN;
  FRMMODULO.QRCAIXA_OPERADOR.LOCATE('CODIGO','000099',[LOCASEINSENSITIVE]);
  data_caixa := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
  dateedit1.Date := data_caixa;
  dateedit2.date := data_caixa;
end;

procedure TfrmDRE.DateEdit2Exit(Sender: TObject);
begin
  if dateedit2.date < dateedit1.date then
    dateedit2.date := dateedit1.date;
end;

procedure TfrmDRE.bitbtn1Click(Sender: TObject);
begin
  relDRE.LoadFromFile('\DATASAC\server\rel\f000201.fr3');
  relDRE.DesignReport;
end;

procedure TfrmDRE.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmDRE.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN BIMPRIMIR.SETFOCUS;
end;

procedure TfrmDRE.qrDRECalcFields(DataSet: TDataSet);
begin
  if qrDRE.FieldByName('tipo').asinteger = 1 then
    qrdre.fieldbyname('nome_tipo').asstring := 'R E C E I T A S'
  ELSE
    qrdre.fieldbyname('nome_tipo').asstring := 'D E S P E S A S';
end;

procedure TfrmDRE.retorna1Click(Sender: TObject);
begin
  bcancelarClick(frmDRE);
end;

end.
