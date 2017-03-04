unit lista_planocontas2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, rxtooledit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton;

type
  Tfrmlista_planocontas2 = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    fxdesenhar: TfrxDesigner;
    Label6: TLabel;
    combo_ordem: TComboBox;
    fxplanocontas: TfrxReport;
    fsnivel1: TfrxDBDataset;
    qrnivel1: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField3: TIntegerField;
    qrconta: TZQuery;
    StringField9: TStringField;
    StringField10: TStringField;
    IntegerField7: TIntegerField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    IntegerField8: TIntegerField;
    StringField11: TStringField;
    StringField12: TStringField;
    IntegerField9: TIntegerField;
    fsconta: TfrxDBDataset;
    dsnivel1: TDataSource;
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
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_planocontas2: Tfrmlista_planocontas2;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmlista_planocontas2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_planocontas2.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;
  combo_ordem.ItemIndex := 0;

  


end;

procedure Tfrmlista_planocontas2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_planocontas2.bimprimirClick(Sender: TObject);
var BANCO, ordem : string;
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

  if combo_relatorio.Text = 'RELAÇÃO' then
  begin

    qrnivel1.close;
    qrnivel1.sql.clear;
    qrnivel1.sql.add('select * from c000035 where nivel = 1');
    qrnivel1.open;


{    qrnivel2.close;
    qrnivel2.sql.clear;
    qrnivel2.sql.add('select * from c000035 where nivel = 2');
    qrnivel2.open;
}
    qrconta.close;
    qrconta.sql.clear;
    qrconta.sql.add('select * from c000035 where nivel <> 1 order by '+COMBO_ORDEM.TEXT);
    qrconta.open;



    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'PLANO DE CONTAS';
    FXplanocontas.LoadFromFile('\DATASAC\server\rel\f000035.fr3');
    FXplanocontas.ShowReport;
  end;


end;

procedure Tfrmlista_planocontas2.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;



  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    FXplanocontas.LoadFromFile('\DATASAC\server\rel\f000035.fr3');
    FXplanocontas.DesignReport;
  end;


end;

end.
