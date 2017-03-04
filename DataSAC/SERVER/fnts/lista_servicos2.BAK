unit lista_servicos2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton;

type
  Tfrmlista_servicos2 = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    LGRUPO: TLabel;
    combo_grupo: TComboBox;
    fxdesenhar: TfrxDesigner;
    Label6: TLabel;
    combo_ordem: TComboBox;
    fxservico: TfrxReport;
    FSSERVICO: TfrxDBDataset;
    qrservico: TZQuery;
    qrservicoCODIGO: TStringField;
    qrservicoSERVICO: TStringField;
    qrservicoVALOR: TFloatField;
    qrservicoCODGRUPO: TStringField;
    qrgrupo: TZQuery;
    qrgrupoQTDE: TIntegerField;
    qrgrupoCODGRUPO: TStringField;
    qrgrupoGRUPO: TStringField;
    dsgrupo: TDataSource;
    FSGRUPO: TfrxDBDataset;
    qrservicoGRUPO: TStringField;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    Bevel2: TBevel;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure combo_grupoChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_servicos2: Tfrmlista_servicos2;

implementation

uses modulo, principal, xloc_gruposervico;

{$R *.dfm}

procedure Tfrmlista_servicos2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_servicos2.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;
  combo_grupo.ItemIndex := 0;

  combo_ordem.ItemIndex := 0;

  


end;

procedure Tfrmlista_servicos2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_servicos2.bimprimirClick(Sender: TObject);
var GRUPO, ordem : string;
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

  if combo_grupo.Text = 'TODOS' then GRUPO := '' else begin  GRUPO := ' and CODGRUPO = '''+copy(combo_grupo.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'GRUPO: '+COMBO_grupo.TEXT; END;

  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
   qrservico.MasterSource := nil;
   qrservico.MasterFields := '';
   qrservico.IndexFieldNames := '';
    qrSERVICO.close;
    qrSERVICO.sql.clear;
    qrSERVICO.sql.add('select * from c000011 where CODIGO IS NOT NULL '+GRUPO+' order by '+COMBO_ORDEM.TEXT);
    qrSERVICO.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE FUNCIONÁRIOS';
    FXSERVICO.LoadFromFile('\DATASAC\server\rel\f000013.fr3');
    FXSERVICO.ShowReport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO POR GRUPO' then
  begin
   qrservico.MasterSource := dsgrupo;
   qrservico.MasterFields := 'codgrupo';
   qrservico.IndexFieldNames := 'codgrupo';

   qrgrupo.CLOSE;
   qrgrupo.SQL.Clear;
   qrgrupo.SQL.ADD('SELECT CODgrupo, COUNT(CODIGO) qtde FROM C000011 WHERE codigo is not null '+grupo+' GROUP BY CODgrupo');
   qrgrupo.OPEN;


    qrservico.close;
    qrservico.sql.clear;
    qrservico.sql.add('select * from c000011 where codigo is not null '+grupo+' order by '+COMBO_ORDEM.TEXT);
    qrservico.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE SERVIÇOS POR GRUPO';
    FXSERVICO.LoadFromFile('\DATASAC\server\rel\f000014.fr3');
    FXSERVICO.ShowReport;
   qrservico.MasterSource := NIL;
   qrservico.MasterFields := '';
   qrservico.IndexFieldNames := '';
  end;

end;

procedure Tfrmlista_servicos2.combo_grupoChange(Sender: TObject);
begin
  IF combo_GRUPO.Text = 'SELECIONAR' THEN
  BEGIN
    frmxloc_GRUPOservico := tfrmxloc_GRUPOservico.create(self);
    frmxloc_GRUPOservico.showmodal;

    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_GRUPO.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_GRUPO.ItemIndex := combo_GRUPO.Items.Count - 1;
    END
    ELSE
      COMBO_GRUPO.ItemIndex := 0;

  END;
end;

procedure Tfrmlista_servicos2.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;



  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    FXSERVICO.LoadFromFile('\DATASAC\server\rel\f000013.fr3');
    FXSERVICO.DesignReport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO POR GRUPO' then
  begin
    FXSERVICO.LoadFromFile('\DATASAC\server\rel\f000014.fr3');
    FXSERVICO.DesignReport;
  end;

end;

end.
