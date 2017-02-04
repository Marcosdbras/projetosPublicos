unit baixaestoque_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxDBSet, AdvGlowButton, AdvShapeButton;

type
  Tfrmbaixaestoque_impressao = class(TForm)
    PopupMenu1: TPopupMenu;
    tpa4logo: TMenuItem;
    fsbaixa_produtos: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    fsitembaixa_produtos: TfrxDBDataset;
    fsorcamento_cliente: TfrxDBDataset;
    PopupMenu2: TPopupMenu;
    Fechar1: TMenuItem;
    combo_modelo: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Label1: TLabel;
    Bevel1: TBevel;
    evias: TSpinEdit;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    bgravar: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    fsorcamento: TfrxDBDataset;
    fxorcamento: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPNota_FiscalClick(Sender: TObject);
    procedure tpa4logoClick(Sender: TObject);
    procedure tpa4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbaixaestoque_impressao: Tfrmbaixaestoque_impressao;
  porta_impressora : string;
   CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, CLIENTE_ENDERECO, CLIENTE_BAIRRO, CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF, CLIENTE_CODIGO : STRING;

implementation

uses modulo, principal, venda, venda_fechamento, ecf, orcamento,
  orcamento_impressao, baixa_estoque;

{$R *.dfm}

procedure Tfrmbaixaestoque_impressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmbaixaestoque_impressao.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmbaixaestoque_impressao.bgravarClick(Sender: TObject);
begin



  case combo_modelo.ItemIndex of
  0 : TPa4logoClick(frmbaixaestoque_impressao);
  END;






  close;
end;

procedure Tfrmbaixaestoque_impressao.FormShow(Sender: TObject);
begin

    frmmodulo.qrcliente.locate('codigo',frmmodulo.qrbaixa_produtos.fieldbyname('codcliente').asstring,[loCaseInsensitive]);


   IF FRMMODULO.qrbaixa_produtos.FIELDBYNAME('CODCLIENTE').ASSTRING = 'S/CLIE' THEN
   BEGIN
     CLIENTE_NOME := 'CLIENTE ESPECIAL' ;
     CLIENTE_ENDERECO := '';
     CLIENTE_BAIRRO := '';
     CLIENTE_CIDADE := '';
     CLIENTE_UF := '';
     CLIENTE_CEP := '';
     CLIENTE_TELEFONE := '';
     CLIENTE_CPF := '';
     CLIENTE_RG := '';
     CLIENTE_CODIGO := 'S/CLIE';
   END
   ELSE
   BEGIN
     CLIENTE_NOME := frmmodulo.qrcliente.fieldbyname('nome').asstring;
     CLIENTE_ENDERECO := frmmodulo.qrcliente.fieldbyname('endereco').asstring;
     CLIENTE_BAIRRO := frmmodulo.qrcliente.fieldbyname('bairro').asstring;
     CLIENTE_CIDADE := frmmodulo.qrcliente.fieldbyname('cidade').asstring;
     CLIENTE_UF := frmmodulo.qrcliente.fieldbyname('uf').asstring;
     CLIENTE_CEP := frmmodulo.qrcliente.fieldbyname('cep').asstring;
     CLIENTE_TELEFONE := frmmodulo.qrcliente.fieldbyname('telefone1').asstring+'/'+frmmodulo.qrcliente.fieldbyname('celular').asstring+'/'+frmmodulo.qrcliente.fieldbyname('telefone2').asstring;
     CLIENTE_CPF := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
     CLIENTE_RG := frmmodulo.qrcliente.fieldbyname('rg').asstring;
     CLIENTE_CODIGO := frmmodulo.qrcliente.fieldbyname('CODIGO').asstring;
   END;
end;

procedure Tfrmbaixaestoque_impressao.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.SetFocus;
end;

procedure Tfrmbaixaestoque_impressao.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmbaixaestoque_impressao.TPNota_FiscalClick(Sender: TObject);
begin
//verificar
end;


procedure Tfrmbaixaestoque_impressao.tpa4logoClick(Sender: TObject);
begin
      frmmodulo.qrrelatorio.open;
      frmmodulo.qrrelatorio.edit;
      if frmbaixa_estoque.qritem_baixa_produtos.RecordCount > 28 then
      frmmodulo.qrrelatorio.FieldByName('linha8').asstring := '2'
      else
      frmmodulo.qrrelatorio.FieldByName('linha8').asstring := '1';
      frmmodulo.qrrelatorio.post;

      fxorcamento.LoadFromFile('\DATASAC\server\rel\f000069_2.fr3');
      fxorcamento.ShowReport;

end;

procedure Tfrmbaixaestoque_impressao.tpa4Click(Sender: TObject);
begin
// verificar
end;

procedure Tfrmbaixaestoque_impressao.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;

  if combo_modelo.ItemIndex = 0 then
  begin
    fxorcamento.LoadFromFile('\DATASAC\server\rel\f000069_2.fr3');
    fxorcamento.designreport;
  end;
end;

end.







