unit lista_banco2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, rxtooledit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton;

type
  Tfrmlista_banco2 = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    fxdesenhar: TfrxDesigner;
    Label6: TLabel;
    combo_ordem: TComboBox;
    qrbanco: TZQuery;
    fsbanco: TfrxDBDataset;
    fxbanco: TfrxReport;
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
  frmlista_banco2: Tfrmlista_banco2;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmlista_banco2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_banco2.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;
  combo_ordem.ItemIndex := 0;

  


end;

procedure Tfrmlista_banco2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_banco2.bimprimirClick(Sender: TObject);
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
    qrBANCO.close;
    qrBANCO.sql.clear;
    qrBANCO.sql.add('select * from c000035 order by '+COMBO_ORDEM.TEXT);
    qrBANCO.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE BANCOS';
    FXBANCO.LoadFromFile('\DATASAC\server\rel\f000015.fr3');
    FXBANCO.ShowReport;
  end;


end;

procedure Tfrmlista_banco2.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;



  if combo_relatorio.Text = 'RELAÇÃO' then
  begin
    FXBANCO.LoadFromFile('\DATASAC\server\rel\f000015.fr3');
    FXBANCO.DesignReport;
  end;


end;

end.
