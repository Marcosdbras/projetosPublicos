unit lista_fornecedor2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton;

type
  Tfrmlista_fornecedor2 = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    lcliente: TLabel;
    combo_FORNECEDOR: TComboBox;
    fxdesenhar: TfrxDesigner;
    Label6: TLabel;
    combo_ordem: TComboBox;
    fxfornecedor: TfrxReport;
    fsfornecedor: TfrxDBDataset;
    qrfornecedor: TZQuery;
    qrfornecedorCODIGO: TStringField;
    qrfornecedorNOME: TStringField;
    qrfornecedorFANTASIA: TStringField;
    qrfornecedorENDERECO: TStringField;
    qrfornecedorBAIRRO: TStringField;
    qrfornecedorCIDADE: TStringField;
    qrfornecedorUF: TStringField;
    qrfornecedorCEP: TStringField;
    qrfornecedorCOMPLEMENTO: TStringField;
    qrfornecedorTELEFONE1: TStringField;
    qrfornecedorTELEFONE2: TStringField;
    qrfornecedorFAX: TStringField;
    qrfornecedorCONTATO1: TStringField;
    qrfornecedorCONTATO2: TStringField;
    qrfornecedorCELULAR1: TStringField;
    qrfornecedorCELULAR2: TStringField;
    qrfornecedorEMAIL: TStringField;
    qrfornecedorHOMEPAGE: TStringField;
    qrfornecedorCNPJ: TStringField;
    qrfornecedorIE: TStringField;
    qrfornecedorBANCO: TStringField;
    qrfornecedorAGENCIA: TStringField;
    qrfornecedorCONTA: TStringField;
    qrfornecedorOBS1: TStringField;
    qrfornecedorOBS2: TStringField;
    qrfornecedorOBS3: TStringField;
    qrfornecedorDATA: TDateTimeField;
    qrfornecedorTIPO: TIntegerField;
    qrfornecedorASSISTENCIA_TECNICA: TIntegerField;
    qrfornecedorpessoa: TStringField;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure combo_FORNECEDORChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrfornecedorCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_fornecedor2: Tfrmlista_fornecedor2;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal, xloc_fornecedor;

{$R *.dfm}

procedure Tfrmlista_fornecedor2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_fornecedor2.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;
  combo_FORNECEDOR.ItemIndex := 0;

  combo_ordem.ItemIndex := 0;

  


end;

procedure Tfrmlista_fornecedor2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_fornecedor2.bimprimirClick(Sender: TObject);
var FORNECEDOR, ordem : string;
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

  if combo_FORNECEDOR.Text = 'TODOS' then FORNECEDOR := '' else begin  FORNECEDOR := ' and codIGO = '''+copy(combo_FORNECEDOR.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'FORNECEDOR: '+COMBO_FORNECEDOR.TEXT; END;

  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    qrFORNECEDOR.close;
    qrFORNECEDOR.sql.clear;
    qrFORNECEDOR.sql.add('select * from c000009 where NOME IS NOT NULL '+FORNECEDOR+' order by '+COMBO_ORDEM.TEXT);
    qrFORNECEDOR.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE FORNECEDORES';
    FXFORNECEDOR.LoadFromFile('\DATASAC\server\rel\f000009.fr3');
    FXFORNECEDOR.ShowReport;
  end;
  if combo_relatorio.Text = 'FICHA CADASTRAL' then
  begin
    qrFORNECEDOR.close;
    qrFORNECEDOR.sql.clear;
    qrFORNECEDOR.sql.add('select * from c000009 where NOME IS NOT NULL '+FORNECEDOR+' order by '+COMBO_ORDEM.TEXT);
    qrFORNECEDOR.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'FICHA CADASTRAL DE FORNECEDORES';
    FXFORNECEDOR.LoadFromFile('\DATASAC\server\rel\f000010.fr3');
    FXFORNECEDOR.ShowReport;
  end;

end;

procedure Tfrmlista_fornecedor2.combo_FORNECEDORChange(Sender: TObject);
begin
  IF combo_Fornecedor.Text = 'SELECIONAR' THEN
  BEGIN
    frmxloc_Fornecedor := tfrmxloc_Fornecedor.create(self);
    frmxloc_Fornecedor.showmodal;

    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_Fornecedor.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_Fornecedor.ItemIndex := combo_Fornecedor.Items.Count - 1;
    END
    ELSE
      COMBO_Fornecedor.ItemIndex := 0;

  END;
end;

procedure Tfrmlista_fornecedor2.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;



  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    FXFORNECEDOR.LoadFromFile('\DATASAC\server\rel\f000009.fr3');
    FXFORNECEDOR.DesignReport;
  end;
  if combo_relatorio.Text = 'FICHA CADASTRAL' then
  begin
    FXFORNECEDOR.LoadFromFile('\DATASAC\server\rel\f000010.fr3');
    FXFORNECEDOR.DesignReport;
  end;

end;

procedure Tfrmlista_fornecedor2.qrfornecedorCalcFields(DataSet: TDataSet);
begin
  if QRFORNECEDORTIPO.Value = 2 then QRFORNECEDORpessoa.Value := 'JURIDICA' else QRFORNECEDORpessoa.Value := 'FISICA';

end;

end.
