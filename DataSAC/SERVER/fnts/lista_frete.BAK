unit lista_frete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton, MemDS, DBAccess, IBC;

type
  Tfrmlista_frete = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    fxdesenhar: TfrxDesigner;
    fxnota: TfrxReport;
    fsfrete: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    lvendedor: TLabel;
    lfornecedor: TLabel;
    combo_veiculo: TComboBox;
    combo_transportador: TComboBox;
    qrfrete: TZQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrnotaCalcFields(DataSet: TDataSet);
    procedure combo_relatorioKeyPress(Sender: TObject; var Key: Char);
    procedure combo_veiculoChange(Sender: TObject);
    procedure combo_transportadorChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_frete: Tfrmlista_frete;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal, xloc_fornecedor, compra_menu, xloc_veiculo,
  xloc_transportador;

{$R *.dfm}

procedure Tfrmlista_frete.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_frete.FormShow(Sender: TObject);
begin
  combo_relatorio.ItemIndex := 0;
  combo_veiculo.ItemIndex := 0;
  combo_transportador.itemindex := 0;
  dateedit1.text := '01/'+copy(datetostr(incmonth(date,-1)),4,7);
  dateedit2.date := frmprincipal.UltimoDiaMes(date);
end;

procedure Tfrmlista_frete.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_frete.bimprimirClick(Sender: TObject);
var
  veiculo, transportador  : string;
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := 'PERíODO: '+dateedit1.TEXT+' A '+dateedit2.TEXT;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';


  if combo_veiculo.Text = 'TODOS' then veiculo := '' else begin  veiculo := ' and venda.CODveiculo = '''+copy(combo_veiculo.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'VEÍCULO: '+combo_veiculo.TEXT; end;
  if combo_TRANSPORTADOR.Text = 'TODOS' then TRANSPORTADOR := '' else begin  TRANSPORTADOR := ' and venda.CODTRANSPORTADOR = '''+copy(combo_TRANSPORTADOR.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'TRANSPORTADOR: '+combo_TRANSPORTADOR.TEXT; end;

  qrfrete.close;
  qrfrete.sql.clear;
  qrfrete.sql.add('select');
  qrfrete.sql.add('venda.*,');
  qrfrete.sql.add('transp.nome nome_transportador,');
  qrfrete.sql.add('veiculo.nome nome_veiculo,');
  qrfrete.sql.add('veiculo.placa,');
  qrfrete.sql.add('cliente.nome nome_cliente');
  qrfrete.sql.add('from');
  qrfrete.sql.add('c000048 venda,');
  qrfrete.sql.add('c000010 transp,');
  qrfrete.sql.add('c000054 veiculo,');
  qrfrete.sql.add('c000007 cliente');
  qrfrete.sql.add('where');
  qrfrete.sql.add('venda.codtransportador = transp.codigo');
  qrfrete.sql.add('and');
  qrfrete.sql.add('venda.codcliente = cliente.codigo');
  qrfrete.sql.add('and');
  qrfrete.sql.add('venda.codveiculo = veiculo.codigo');
  qrfrete.sql.add(veiculo+transportador);
  qrfrete.sql.add('and venda.data between :datai and :dataf');
  qrfrete.sql.add('order by');
  qrfrete.sql.add('venda.data');
  qrfrete.params.ParamByName('datai').asdatetime := dateedit1.date;
  qrfrete.Params.parambyname('dataf').asdatetime := dateedit2.date;
  qrfrete.open;







    if combo_relatorio.ItemIndex = 0 then  FXNOTA.LoadFromFile('\DATASAC\server\rel\f000190.fr3');
    if combo_relatorio.ItemIndex = 1 then  FXNOTA.LoadFromFile('\DATASAC\server\rel\f000190_2.fr3');

    FXNOTA.ShowReport;

end;

procedure Tfrmlista_frete.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;



  if combo_relatorio.itemindex = 0 then
  begin
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000190.fr3');
    FXNOTA.DesignReport;
  end;
  if combo_relatorio.itemindex = 1 then
  begin
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000190_2.fr3');
    FXNOTA.DesignReport;
  end;


end;

procedure Tfrmlista_frete.qrnotaCalcFields(DataSet: TDataSet);
begin
  //if QRFORNECEDORTIPO.Value = 2 then QRFORNECEDORpessoa.Value := 'JURIDICA' else QRFORNECEDORpessoa.Value := 'FISICA';

end;

procedure Tfrmlista_frete.combo_relatorioKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0)

end;

procedure Tfrmlista_frete.combo_veiculoChange(Sender: TObject);
begin
  IF combo_veiculo.Text = 'SELECIONAR' THEN
  BEGIN

    frmxloc_veiculo := tfrmxloc_veiculo.create(self);
    frmxloc_veiculo.showmodal;


    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_veiculo.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2+' - '+RESULTADO_pesquisa3);
      combo_veiculo.ItemIndex := combo_veiculo.Items.Count - 1;
    END
    ELSE
      combo_veiculo.ItemIndex := 0;

  END;
end;

procedure Tfrmlista_frete.combo_transportadorChange(Sender: TObject);
begin
   IF combo_transportador.Text = 'SELECIONAR' THEN
  BEGIN

    frmxloc_transportador := tfrmxloc_transportador.create(self);
    frmxloc_transportador.showmodal;


    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_transportador.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_transportador.ItemIndex := combo_transportador.Items.Count - 1;
    END
    ELSE
      combo_transportador.ItemIndex := 0;

  END;
end;

end.
