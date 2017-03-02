unit caixa_ficha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, TFlatPanelUnit, Collection, Mask,
  DBCtrls, DB, Menus, AdvGlowButton, RzEdit, RzDBEdit;

type
  Tfrmcaixa_ficha = class(TForm)
    Label5: TLabel;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label6: TLabel;
    econta: TDBEdit;
    blocconta: TBitBtn;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    dscaixa_mov: TDataSource;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Panel4: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    ed_valor: TRzDBNumericEdit;
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioButton1KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton2KeyPress(Sender: TObject; var Key: Char);
    procedure econtaEnter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure bloccontaClick(Sender: TObject);
    procedure econtaExit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure econtaKeyPress(Sender: TObject; var Key: Char);
    procedure Gravar1Click(Sender: TObject);
    procedure ed_valorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcaixa_ficha: Tfrmcaixa_ficha;
  entrada_original, saida_original : real; // variaveis para pegar o valor da ent e saida, caso o
                                           // lancamento esteja sendo alterado.

implementation

uses caixa, loc_conta, modulo, principal, ecf;

{$R *.dfm}

procedure Tfrmcaixa_ficha.bcancelarClick(Sender: TObject);
begin
  FRMCAIXA.QRCAIXA_MOV.CANCEL;
  CLOSE;
end;

procedure Tfrmcaixa_ficha.bgravarClick(Sender: TObject);
begin

  IF ed_valor.value = 0 THEN
  BEGIN
    APPLICATION.MESSAGEBOX('Valor informar um valor válido!','Atenção',mb_ok+mb_iconerror);
    ed_valor.setfocus;
    exit;
  END;

  IF RADIOBUTTON1.Checked THEN
  BEGIN
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('ENTRADA').ASFLOAT := ed_valor.value;
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('SAIDA').ASFLOAT := 0;
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('MOVIMENTO').ASINTEGER := 1;

    ecf_SUPRIMENTOX(ecf_modelo,FORMATFLOAT('##############0.00',ed_valor.value),FDINHEIRO);
  END
  ELSE
  BEGIN
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('SAIDA').ASFLOAT := ed_valor.value;
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('ENTRADA').ASFLOAT := 0;
    FRMCAIXA.QRCAIXA_MOV.FIELDBYNAME('MOVIMENTO').ASINTEGER := 2;
    ed_valor.value := (ed_valor.value)*(-1);
    ecf_sangriaX(ecf_modelo,FORMATFLOAT('##############0.00',ed_valor.value));
  END;

  frmcaixa.RENTRADA.Value := frmcaixa.RENTRADA.Value + frmcaixa.qrcaixa_mov.fieldbyname('entrada').asfloat-entrada_original;
  frmcaixa.Rsaida.Value := frmcaixa.Rsaida.Value + frmcaixa.qrcaixa_mov.fieldbyname('saida').asfloat-saida_original;
  frmcaixa.RSALDO.value := frmcaixa.RENTRADA.value - frmcaixa.RSAIDA.value;

  FRMCAIXA.QRCAIXA_MOV.POST;
  FRMMODULO.CONEXAO.COMMIT;
  FRMCAIXA.qrcaixa_mov.Refresh;
  CLOSE;
end;

procedure Tfrmcaixa_ficha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcaixa_ficha.RadioButton1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN econta.setfocus;
end;

procedure Tfrmcaixa_ficha.RadioButton2KeyPress(Sender: TObject;
  var Key: Char);
begin
IF KEY = #13 THEN econta.setfocus;
end;

procedure Tfrmcaixa_ficha.econtaEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmcaixa_ficha.DBEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmcaixa_ficha.bloccontaClick(Sender: TObject);
begin
  frmloc_conta := tfrmloc_conta.create(self);
  frmloc_conta.showmodal;
  frmcaixa.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrplano.fieldbyname('codigo').asstring;
  dbedit1.setfocus;

end;

procedure Tfrmcaixa_ficha.econtaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmcaixa.qrcaixa_mov.state = dsinsert) or (frmcaixa.qrcaixa_mov.State = dsedit) then
  begin
    frmcaixa.qrcaixa_mov.fieldbyname('codconta').asstring := frmprincipal.zerarcodigo(econta.text,6);
    if econta.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrplano,econta.text,'codigo') then bloccontaclick(frmcaixa_ficha) else dbedit1.setfocus
    else
      blocconta.SetFocus;
  end;

end;

procedure Tfrmcaixa_ficha.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcaixa_ficha.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then ed_valor.setfocus;
end;

procedure Tfrmcaixa_ficha.FormShow(Sender: TObject);
begin
  entrada_original := frmcaixa.qrcaixa_mov.fieldbyname('entrada').asfloat;
  saida_original := frmcaixa.qrcaixa_mov.fieldbyname('saida').asfloat;

  dbedit1.setfocus;
  RadioButton1.SetFocus;
end;

procedure Tfrmcaixa_ficha.econtaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcaixa_ficha.Gravar1Click(Sender: TObject);
begin
  bgravar.SetFocus;
  bgravar.OnClick(frmcaixa_ficha)
end;

procedure Tfrmcaixa_ficha.ed_valorKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then ed_valor.setfocus;
end;

end.
