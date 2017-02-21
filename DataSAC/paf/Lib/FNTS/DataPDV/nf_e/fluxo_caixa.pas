unit fluxo_caixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, AdvGlowButton, ExtCtrls, DB, MemDS,
  DBAccess, IBC, Grids, DBGrids, {CRGrid,} frxClass, frxDBSet, frxDesgn,
  Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmFluxo_Caixa = class(TForm)
    Bevel3: TBevel;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    qrFluxo: TZQuery;
    GroupBox2: TGroupBox;
    rb_receber: TCheckBox;
    rb_pagar: TCheckBox;
    frxDesigner1: TfrxDesigner;
    fsfluxo: TfrxDBDataset;
    relfluxo: TfrxReport;
    rb_cheque: TCheckBox;
    rb_cheque_venc: TCheckBox;
    rb_conta: TCheckBox;
    PopupMenu1: TPopupMenu;
    retorna1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure bitbtn1Click(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFluxo_Caixa: TfrmFluxo_Caixa;
  data_caixa : tdatetime;

implementation

uses modulo;

{$R *.dfm}

procedure TfrmFluxo_Caixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmFluxo_Caixa.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFluxo_Caixa.bimprimirClick(Sender: TObject);
begin



  qrfluxo.close;
  qrfluxo.sql.clear;
  qrfluxo.sql.add('select');
  qrfluxo.sql.add('  tipo,');
  qrfluxo.sql.add('  data,');
  qrfluxo.sql.add('  historico,');
  qrfluxo.sql.add('  complemento,');
  qrfluxo.sql.add('  valor');
  qrfluxo.sql.add('from');
  qrfluxo.sql.add('  ( Select');
  qrfluxo.sql.add('      3 as tipo,');
  qrfluxo.sql.add('      caixa.data as data,');
  qrfluxo.sql.add('      ''Saldo do Caixa'' as historico,');
  qrfluxo.sql.add('      '''' as complemento,');
  qrfluxo.sql.add('      sum(caixa.valor) as valor');
  qrfluxo.sql.add('    from');
  qrfluxo.sql.add('      c000044 caixa');
  qrfluxo.sql.add('    where');
  qrfluxo.sql.add('      caixa.data = :data_caixa');
  qrfluxo.sql.add('    group by');
  qrfluxo.sql.add('      tipo,');
  qrfluxo.sql.add('      data,');
  qrfluxo.sql.add('      historico,');
  qrfluxo.sql.add('      complemento');


  if rb_receber.checked then
  begin
    qrfluxo.sql.add('    UNION');
    qrfluxo.sql.add('    Select');
    qrfluxo.sql.add('      0 as tipo,');
    qrfluxo.sql.add('      cast(:datai as date) as data,');
    qrfluxo.sql.add('      ''Contas a Receber vencidas'' as historico,');
    qrfluxo.sql.add('      '''' as complemento,');
    qrfluxo.sql.add('      sum(rec_vencida.valor_atual) as valor');
    qrfluxo.sql.add('    from');
    qrfluxo.sql.add('      c000049 rec_vencida');
    qrfluxo.sql.add('    where');
    qrfluxo.sql.add('      rec_vencida.data_vencimento < :datai and');
    qrfluxo.sql.add('      rec_vencida.situacao = 1');
    qrfluxo.sql.add('    group by');
    qrfluxo.sql.add('      tipo,');
    qrfluxo.sql.add('      data,');
    qrfluxo.sql.add('      historico,');
    qrfluxo.sql.add('      complemento');
  end;
  if rb_pagar.Checked then
  begin
    qrfluxo.sql.add('    UNION');
    qrfluxo.sql.add('    Select');
    qrfluxo.sql.add('      1 as tipo,');
    qrfluxo.sql.add('      cast(:datai as date) as data,');
    qrfluxo.sql.add('      ''Contas a Pagar Vencidas'' as historico,');
    qrfluxo.sql.add('      '''' as complemento,');
    qrfluxo.sql.add('      sum(-pag_vencida.liquido) as valor');
    qrfluxo.sql.add('    from');
    qrfluxo.sql.add('      c000046 pag_vencida');
    qrfluxo.sql.add('    where');
    qrfluxo.sql.add('      pag_vencida.data_vencimento < :datai and');
    qrfluxo.sql.add('      pag_vencida.situacao = 1');
    qrfluxo.sql.add('    group by');
    qrfluxo.sql.add('      tipo,');
    qrfluxo.sql.add('      data,');
    qrfluxo.sql.add('      historico,');
    qrfluxo.sql.add('      complemento');
  end;
  if rb_cheque_venc.checked then
  begin
    qrfluxo.sql.add('    UNION');
    qrfluxo.sql.add('    Select');
    qrfluxo.sql.add('      2 as tipo,');
    qrfluxo.sql.add('      cast(:datai as date) as data,');
    qrfluxo.sql.add('      ''Cheques a receber vencidos'' as historico,');
    qrfluxo.sql.add('      '''' as complemento,');
    qrfluxo.sql.add('      sum(ch_vencido.valor) as valor');
    qrfluxo.sql.add('    from');
    qrfluxo.sql.add('      c000040 ch_vencido');
    qrfluxo.sql.add('    where');
    qrfluxo.sql.add('      ch_vencido.vencimento < :datai and');
    qrfluxo.sql.add('      ch_vencido.situacao = 1');
    qrfluxo.sql.add('    group by');
    qrfluxo.sql.add('      tipo,');
    qrfluxo.sql.add('      data,');
    qrfluxo.sql.add('      historico,');
    qrfluxo.sql.add('      complemento');
  end;


  if rb_conta.checked then
  begin
    qrfluxo.sql.add('    UNION');
    qrfluxo.sql.add('    Select');
    qrfluxo.sql.add('      4 as tipo,');
    qrfluxo.sql.add('      mov_conta.data as data,');
    qrfluxo.sql.add('      ''Saldo da Conta '' as historico,');
    qrfluxo.sql.add('      (cc.conta ||'' - ''|| cc.titular) as complemento,');
    qrfluxo.sql.add('      sum(mov_conta.valor) as valor');
    qrfluxo.sql.add('    from');
    qrfluxo.sql.add('      c000042 mov_conta,');
    qrfluxo.sql.add('      c000041 cc');
    qrfluxo.sql.add('    where');
    qrfluxo.sql.add('      mov_conta.codcontacorrente = cc.codigo and');
    qrfluxo.sql.add('      mov_conta.data <= :datai');
    qrfluxo.sql.add('    group by');
    qrfluxo.sql.add('      tipo,');
    qrfluxo.sql.add('      data,');
    qrfluxo.sql.add('      historico,');
    qrfluxo.sql.add('      complemento');
  end;

  qrfluxo.sql.add('    UNION');
  qrfluxo.sql.add('    Select');
  qrfluxo.sql.add('      5 as tipo,');
  qrfluxo.sql.add('      receber.data_vencimento as data,');
  qrfluxo.sql.add('      ''Contas a Receber'' as historico,');
  qrfluxo.sql.add('      '''' as complemento,');
  qrfluxo.sql.add('      sum(receber.valor_atual) as valor');
  qrfluxo.sql.add('    from');
  qrfluxo.sql.add('      c000049 receber');
  qrfluxo.sql.add('    where');
  qrfluxo.sql.add('      receber.data_vencimento between :datai and :dataf and');
  qrfluxo.sql.add('      receber.situacao = 1');
  qrfluxo.sql.add('    group by');
  qrfluxo.sql.add('      tipo,');
  qrfluxo.sql.add('      data,');
  qrfluxo.sql.add('      historico,');
  qrfluxo.sql.add('      complemento');

  qrfluxo.sql.add('    UNION');
  qrfluxo.sql.add('    Select');
  qrfluxo.sql.add('      7 as tipo,');
  qrfluxo.sql.add('      pagar.data_vencimento as data,');
  qrfluxo.sql.add('      ''Contas a Pagar'' as historico,');
  qrfluxo.sql.add('      '''' as complemento,');
  qrfluxo.sql.add('      sum(-pagar.liquido) as valor');
  qrfluxo.sql.add('    from');
  qrfluxo.sql.add('      c000046 pagar');
  qrfluxo.sql.add('    where');
  qrfluxo.sql.add('      pagar.data_vencimento between :datai and :dataf and');
  qrfluxo.sql.add('      pagar.situacao = 1');
  qrfluxo.sql.add('    group by');
  qrfluxo.sql.add('      tipo,');
  qrfluxo.sql.add('      data,');
  qrfluxo.sql.add('      historico,');
  qrfluxo.sql.add('      complemento');

  if rb_cheque.checked then
  begin
    qrfluxo.sql.add('    UNION');
    qrfluxo.sql.add('    Select');
    qrfluxo.sql.add('      6 as tipo,');
    qrfluxo.sql.add('      cheque.vencimento as data,');
    qrfluxo.sql.add('      ''Cheque a Receber'' as historico,');
    qrfluxo.sql.add('      '''' as complemento,');
    qrfluxo.sql.add('      sum(cheque.valor) as valor');
    qrfluxo.sql.add('    from');
    qrfluxo.sql.add('      c000040 cheque');
    qrfluxo.sql.add('    where');
    qrfluxo.sql.add('      cheque.vencimento between :datai and :dataf and');
    qrfluxo.sql.add('      cheque.situacao = 1');
    qrfluxo.sql.add('    group by');
    qrfluxo.sql.add('      tipo,');
    qrfluxo.sql.add('      data,');
    qrfluxo.sql.add('      historico,');
    qrfluxo.sql.add('      complemento');
  end;

  qrfluxo.sql.add('  ) as TMP');
  qrfluxo.sql.add('Order by data, tipo');
  qrfluxo.parambyname('data_caixa').asdatetime := data_caixa;
  qrfluxo.parambyname('datai').asdatetime := dateedit1.date;
  qrfluxo.parambyname('dataf').asdatetime := dateedit2.date;
  qrfluxo.open;

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := 'PERÍODO: '+DATEEDIT1.TEXT+ ' A '+DATEEDIT2.TEXT;

  relfluxo.LoadFromFile('\DATASAC\server\rel\f000200.fr3');
  relfluxo.ShowReport;
end;

procedure TfrmFluxo_Caixa.FormShow(Sender: TObject);
begin
  FRMMODULO.QRCAIXA_OPERADOR.OPEN;
  FRMMODULO.QRCAIXA_OPERADOR.LOCATE('CODIGO','000099',[LOCASEINSENSITIVE]);
  data_caixa := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
  dateedit1.Date := data_caixa;
  dateedit2.date := data_caixa;
end;

procedure TfrmFluxo_Caixa.DateEdit1Exit(Sender: TObject);
begin
  if dateedit1.date  < data_caixa then
     dateedit1.date := data_caixa;
end;

procedure TfrmFluxo_Caixa.DateEdit2Exit(Sender: TObject);
begin
  if dateedit2.date < dateedit1.date then
    dateedit2.date := dateedit1.date;
end;

procedure TfrmFluxo_Caixa.bitbtn1Click(Sender: TObject);
begin
  relfluxo.LoadFromFile('\DATASAC\server\rel\f000200.fr3');
  relfluxo.DesignReport;
end;

procedure TfrmFluxo_Caixa.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmFluxo_Caixa.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN bimprimir.SETFOCUS;
end;

end.
