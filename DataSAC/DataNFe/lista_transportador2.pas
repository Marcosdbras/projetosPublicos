unit lista_transportador2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton;

type
  Tfrmlista_transportador2 = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    lcliente: TLabel;
    combo_transportador: TComboBox;
    fxdesenhar: TfrxDesigner;
    Label6: TLabel;
    combo_ordem: TComboBox;
    fxtransportador: TfrxReport;
    fstransportador: TfrxDBDataset;
    qrtransportador: TZQuery;
    qrtransportadorCODIGO: TStringField;
    qrtransportadorNOME: TStringField;
    qrtransportadorENDERECO: TStringField;
    qrtransportadorBAIRRO: TStringField;
    qrtransportadorCIDADE: TStringField;
    qrtransportadorUF: TStringField;
    qrtransportadorCEP: TStringField;
    qrtransportadorCPF: TStringField;
    qrtransportadorRG: TStringField;
    qrtransportadorTELEFONE: TStringField;
    qrtransportadorCELULAR: TStringField;
    qrtransportadorPLACA: TStringField;
    qrtransportadorUFPLACA: TStringField;
    qrtransportadorOBS1: TStringField;
    qrtransportadorOBS2: TStringField;
    qrtransportadorOBS3: TStringField;
    qrtransportadorDATA: TDateTimeField;
    qrtransportadorTIPO: TIntegerField;
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
    procedure combo_transportadorChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_transportador2: Tfrmlista_transportador2;

implementation

uses modulo, principal, xloc_transportador;

{$R *.dfm}

procedure Tfrmlista_transportador2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_transportador2.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;
  combo_transportador.ItemIndex := 0;

  combo_ordem.ItemIndex := 0;

  


end;

procedure Tfrmlista_transportador2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_transportador2.bimprimirClick(Sender: TObject);
var transportador, ordem : string;
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

  if combo_transportador.Text = 'TODOS' then transportador := '' else begin  transportador := ' and codIGO = '''+copy(combo_transportador.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'TRANSPORTADOR: '+COMBO_transportador.TEXT; END;

  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    qrtransportador.close;
    qrtransportador.sql.clear;
    qrtransportador.sql.add('select * from c000010 where NOME IS NOT NULL '+transportador+' order by '+COMBO_ORDEM.TEXT);
    qrtransportador.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE TRANSPORTADORES';
    FXtransportador.LoadFromFile('\DATASAC\server\rel\f000011.fr3');
    FXtransportador.ShowReport;
  end;
  if combo_relatorio.Text = 'FICHA CADASTRAL' then
  begin
    qrtransportador.close;
    qrtransportador.sql.clear;
    qrtransportador.sql.add('select * from c000010 where NOME IS NOT NULL '+transportador+' order by '+COMBO_ORDEM.TEXT);
    qrtransportador.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'FICHA CADASTRAL DE TRANSPORTADORES';
    FXtransportador.LoadFromFile('\DATASAC\server\rel\f000012.fr3');
    FXtransportador.ShowReport;
  end;

end;

procedure Tfrmlista_transportador2.combo_transportadorChange(Sender: TObject);
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
      COMBO_transportador.ItemIndex := 0;

  END;
end;

procedure Tfrmlista_transportador2.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;



  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    FXtransportador.LoadFromFile('\DATASAC\server\rel\f000011.fr3');
    FXtransportador.DesignReport;
  end;
  if combo_relatorio.Text = 'FICHA CADASTRAL' then
  begin
    FXtransportador.LoadFromFile('\DATASAC\server\rel\f000012.fr3');
    FXtransportador.DesignReport;
  end;

end;

end.
