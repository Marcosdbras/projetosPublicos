unit lista_funcionario2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton;

type
  Tfrmlista_funcionario2 = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    lcliente: TLabel;
    combo_funcionario: TComboBox;
    fxdesenhar: TfrxDesigner;
    Label6: TLabel;
    combo_ordem: TComboBox;
    fxfuncionario: TfrxReport;
    fsfuncionario: TfrxDBDataset;
    qrfuncionario: TZQuery;
    qrfuncionarioCODIGO: TStringField;
    qrfuncionarioNOME: TStringField;
    qrfuncionarioENDERECO: TStringField;
    qrfuncionarioBAIRRO: TStringField;
    qrfuncionarioCIDADE: TStringField;
    qrfuncionarioUF: TStringField;
    qrfuncionarioCEP: TStringField;
    qrfuncionarioTELEFONE: TStringField;
    qrfuncionarioCELULAR: TStringField;
    qrfuncionarioEMAIL: TStringField;
    qrfuncionarioCPF: TStringField;
    qrfuncionarioRG: TStringField;
    qrfuncionarioCTPS: TStringField;
    qrfuncionarioFUNCAO: TStringField;
    qrfuncionarioDATA_ADMISSAO: TDateTimeField;
    qrfuncionarioDATA_DEMISSAO: TDateTimeField;
    qrfuncionarioSITUACAO: TIntegerField;
    qrfuncionarioSALARIO: TFloatField;
    qrfuncionarioCOMISSAO: TFloatField;
    qrfuncionarioOBS1: TStringField;
    qrfuncionarioOBS2: TStringField;
    qrfuncionarioOBS3: TStringField;
    qrfuncionarioNASCIMENTO: TDateTimeField;
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
    procedure combo_funcionarioChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_funcionario2: Tfrmlista_funcionario2;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal, xloc_fornecedor, xloc_funcionario;

{$R *.dfm}

procedure Tfrmlista_funcionario2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_funcionario2.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;
  combo_Funcionario.ItemIndex := 0;

  combo_ordem.ItemIndex := 0;

  


end;

procedure Tfrmlista_funcionario2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_funcionario2.bimprimirClick(Sender: TObject);
var funcionario, ordem : string;
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

  if combo_FUNCIONARIO.Text = 'TODOS' then FUNCIONARIO := '' else begin  FUNCIONARIO := ' and codIGO = '''+copy(combo_FUNCIONARIO.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'FUNCIONÁRIO: '+COMBO_FUNCIONARIO.TEXT; END;

  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    qrFUNCIONARIO.close;
    qrFUNCIONARIO.sql.clear;
    qrFUNCIONARIO.sql.add('select * from c000008 where NOME IS NOT NULL '+FUNCIONARIO+' order by '+COMBO_ORDEM.TEXT);
    qrFUNCIONARIO.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE FUNCIONÁRIOS';
    FXFUNCIONARIO.LoadFromFile('\DATASAC\server\rel\f000007.fr3');
    FXFUNCIONARIO.ShowReport;
  end;
  if combo_relatorio.Text = 'FICHA CADASTRAL' then
  begin
    qrFUNCIONARIO.close;
    qrFUNCIONARIO.sql.clear;
    qrFUNCIONARIO.sql.add('select * from c000008 where NOME IS NOT NULL '+FUNCIONARIO+' order by '+COMBO_ORDEM.TEXT);
    qrFUNCIONARIO.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'FICHA CADASTRAL DE FUNCIONÁRIOS';
    FXFUNCIONARIO.LoadFromFile('\DATASAC\server\rel\f000008.fr3');
    FXFUNCIONARIO.ShowReport;
  end;

end;

procedure Tfrmlista_funcionario2.combo_funcionarioChange(Sender: TObject);
begin
  IF combo_FUNCIONARIO.Text = 'SELECIONAR' THEN
  BEGIN
    frmxloc_FUNCIONARIO := tfrmxloc_FUNCIONARIO.create(self);
    frmxloc_FUNCIONARIO.showmodal;

    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_FUNCIONARIO.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_FUNCIONARIO.ItemIndex := combo_FUNCIONARIO.Items.Count - 1;
    END
    ELSE
      COMBO_FUNCIONARIO.ItemIndex := 0;

  END;
end;

procedure Tfrmlista_funcionario2.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;



  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    FXFUNCIONARIO.LoadFromFile('\DATASAC\server\rel\f000007.fr3');
    FXFUNCIONARIO.DesignReport;
  end;
  if combo_relatorio.Text = 'FICHA CADASTRAL' then
  begin
    FXFUNCIONARIO.LoadFromFile('\DATASAC\server\rel\f000008.fr3');
    FXFUNCIONARIO.DesignReport;
  end;

end;

end.
