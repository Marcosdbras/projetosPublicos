unit conhecimento_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxDBSet, AdvGlowButton, AdvShapeButton;

type
  Tfrmconhecimento_impressao = class(TForm)
    PopupMenu1: TPopupMenu;
    tpa4logo: TMenuItem;
    tprazao: TMenuItem;
    PopupMenu2: TPopupMenu;
    Fechar1: TMenuItem;
    fsnotafiscal: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    combo_modelo: TComboBox;
    Label3: TLabel;
    Bevel2: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Label1: TLabel;
    Bevel1: TBevel;
    evias: TSpinEdit;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    tpcarta: TMenuItem;
    TPBobina: TMenuItem;
    fsprevenda: TfrxDBDataset;
    frxDesigner2: TfrxDesigner;
    fsitemprevenda: TfrxDBDataset;
    PopupMenu4: TPopupMenu;
    MenuItem3: TMenuItem;
    Label2: TLabel;
    fxnotafiscal: TfrxReport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure TPNota_FiscalClick(Sender: TObject);
    procedure tpa4logoClick(Sender: TObject);
    procedure tpa4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure tprazaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconhecimento_impressao: Tfrmconhecimento_impressao;
  porta_impressora : string;
   CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, CLIENTE_ENDERECO, CLIENTE_BAIRRO, CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF, CLIENTE_CODIGO : STRING;

implementation

uses modulo, principal, notafiscal, relnf;

{$R *.dfm}

procedure Tfrmconhecimento_impressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmconhecimento_impressao.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmconhecimento_impressao.bgravarClick(Sender: TObject);
begin
{
01 - Papel A4 - Com Logomarca
02 - Papel A4 - Sem Logomarca
03 - Formulário Contínuo - Razão
04 - Formulário Contínuo - Carta
05 - Bobina
}


  case combo_modelo.ItemIndex of
  0 : TPa4logoClick(frmconhecimento_impressao);
  1 : TPrazaoClick(frmconhecimento_impressao);
  END;






  close;
end;

procedure Tfrmconhecimento_impressao.FormShow(Sender: TObject);
begin

    frmmodulo.qrcliente.locate('codigo',frmmodulo.qrorcamento.fieldbyname('codcliente').asstring,[loCaseInsensitive]);


   IF FRMMODULO.QRorcamento.FIELDBYNAME('CODCLIENTE').ASSTRING = 'S/CLIE' THEN
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
  frmmodulo.qrconfig.open;
  combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('nf_TIPO').asinteger;
  porta_impressora := frmmodulo.qrconfig.FieldByName('nf_IMPRESSORA').asstring;

end;

procedure Tfrmconhecimento_impressao.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.SetFocus;
end;

procedure Tfrmconhecimento_impressao.TPNota_FiscalClick(Sender: TObject);
begin
//verificar
end;

procedure Tfrmconhecimento_impressao.tpa4logoClick(Sender: TObject);
begin
   frmmodulo.qrrelatorio.open;
   frmmodulo.qrrelatorio.edit;
   IF FRMMODULO.QRNOTAFISCAL.FIELDBYNAME('movimento').ASSTRING = 'E' then
   begin
      frmmodulo.qrrelatorio.FieldByName('linha9').ASSTRING := '';
      frmmodulo.qrrelatorio.FieldByName('linha10').ASSTRING := 'X';
   end
   else
   begin
     frmmodulo.qrrelatorio.FieldByName('linha9').ASSTRING := 'X';
     frmmodulo.qrrelatorio.FieldByName('linha10').ASSTRING := '';
   end;
   FRMMODULO.QRRELATORIO.POST;


   fxnotafiscal.LoadFromFile('\DATASAC\server\rel\f000096.fr3');
   fXnotafiscal.ShowReport;

end;

procedure Tfrmconhecimento_impressao.tpa4Click(Sender: TObject);
begin
// verificar
end;

procedure Tfrmconhecimento_impressao.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;

  if combo_modelo.ItemIndex = 0 then
  begin
   fxnotafiscal.LoadFromFile('\DATASAC\server\rel\f000096.fr3');
   fXnotafiscal.designreport;
  end;
end;

procedure Tfrmconhecimento_impressao.tprazaoClick(Sender: TObject);
begin

  FRMRELNF := TFRMRELNF.CREATE(SELF);

    frmrelnf.rconsig_pago.caption := '';
    frmrelnf.rconsig_apagar.caption := '';
    frmrelnf.rtipo_pago.Caption := '';
    frmrelnf.rtipo_apagar.caption := '';
    frmrelnf.rrede_pago.caption := '';
    frmrelnf.rrede_apagar.caption := '';



  if frmmodulo.qrconhecimento.FieldByName('tipo').asstring = 'PAGO' then
  begin
    //frmrelnf.rtipo_pago4.Caption := 'X';
    //frmrelnf.rtipo_apagar4.caption := '';
  end;
  if frmmodulo.qrconhecimento.FieldByName('tipo').asstring = 'A PAGAR' then
  begin
    //frmrelnf.rtipo_pago4.caption := '';
    //frmrelnf.rtipo_apagar4.caption := 'X';
  end;


  if frmmodulo.qrconhecimento.FieldByName('CONSIG_TIPO').asstring = 'PAGO' then
  begin
    frmrelnf.rconsig_pago3.caption := 'X';
    frmrelnf.rconsig_apagar3.caption := '';
  end;
  if frmmodulo.qrconhecimento.FieldByName('CONSIG_TIPO').asstring = 'A PAGAR' then
  begin
    frmrelnf.rconsig_pago3.caption := '';
    frmrelnf.rconsig_apagar3.caption := 'X';
  end;

  if frmmodulo.qrconhecimento.FieldByName('rede_TIPO').asstring = 'PAGO' then
  begin
    frmrelnf.rrede_pago3.caption := 'X';
    frmrelnf.rrede_apagar3.caption := '';
  end;
  if frmmodulo.qrconhecimento.FieldByName('rede_TIPO').asstring = 'A PAGAR' then
  begin
    frmrelnf.rrede_pago3.caption := '';
    frmrelnf.rrede_apagar3.caption := 'X';
  end;

  FRMRELNF.QCONHECIMENTO1.PREVIEW;
end;

end.







