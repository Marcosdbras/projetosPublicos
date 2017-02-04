unit config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Mask, wwdbedit, Wwdotdot, Wwdbcomb, Buttons,
  DBCtrls, Menus, AdvGlowButton;

type
  Tfrmconfig = class(TForm)
    GroupBox1: TGroupBox;
    comboecf: TwwDBComboBox;
    dsconfig: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    wwDBComboBox2: TwwDBComboBox;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    combobalanca: TwwDBComboBox;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    combocheque: TwwDBComboBox;
    wwDBComboBox6: TwwDBComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    bgravar: TBitBtn;
    GroupBox4: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    GroupBox5: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Button1: TButton;
    GroupBox7: TGroupBox;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    DBCheckBox5: TDBCheckBox;
    GroupBox8: TGroupBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    pop1: TPopupMenu;
    Gravar1: TMenuItem;
    DBCheckBox6: TDBCheckBox;
    fechar1: TMenuItem;
    DBCheckBox7: TDBCheckBox;
    AdvGlowButton1: TAdvGlowButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconfig: Tfrmconfig;

implementation

uses filizola, modulo, principal, toledo;

{$R *.dfm}

procedure Tfrmconfig.BitBtn2Click(Sender: TObject);
begin
  IF (BALANCA_modelo = 'FILIZOLA') OR  (BALANCA_modelo = 'FILIZOLA MF') then
  begin
    frmfilizola := tfrmfilizola.create(self);
    frmfilizola.showmodal;
  end;
  IF BALANCA_modelo = 'TOLEDO' then
  begin
    frmTOLEDO := tfrmTOLEDO.create(self);
    frmTOLEDO.showmodal;
  end;
end;

procedure Tfrmconfig.bgravarClick(Sender: TObject);
begin
  if frmmodulo.qrconfig.state = dsedit then
  frmmodulo.qrconfig.post;
  frmmodulo.Conexaolocal.Commit;

    with frmmodulo do
    begin
      qrconfig.open;
      ecf_modelo := qrconfig.fieldbyname('ecf_modelo').asstring;
      ecf_porta := qrconfig.fieldbyname('ecf_porta').asstring;
      utiliza_historico_VENDA := qrconfig.fieldbyname('utiliza_historico_VENDA').asstring;
      utiliza_contas_receber := qrconfig.fieldbyname('utiliza_contas_receber').asstring;
      utiliza_lancamento_caixa := qrconfig.fieldbyname('utiliza_lancamento_caixa').asstring;
      utiliza_baixa_estoque := qrconfig.fieldbyname('utiliza_baixa_estoque').asstring;
      balanca_modelo := qrconfig.fieldbyname('balancapdv_modelo').asstring;
      balanca_porta:= qrconfig.fieldbyname('BALCANCAPVD_PORTA').asstring;
      impressora := qrconfig.fieldbyname('impressora_generica').asstring;
      SUBIR_PAPEL := QRCONFIG.FIELDBYNAME('IMPRESSORA_GENERICA_SUBIR_PAPEL').ASINTEGER;
    end;



  close;
end;

procedure Tfrmconfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmconfig.FormShow(Sender: TObject);
begin
  frmmodulo.qrconfig.open;
  frmmodulo.qrconfig.edit;
end;

procedure Tfrmconfig.Gravar1Click(Sender: TObject);
begin
  bgravarClick(frmconfig);
end;

procedure Tfrmconfig.fechar1Click(Sender: TObject);
begin
  close;
end;

end.
