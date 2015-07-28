unit Config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, DBAccess, IBC, MemDS, Buttons,
  ExtCtrls;

type
  TfrmConfig = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    qrconfig: TIBCQuery;
    dsconfig: TIBCDataSource;
    GroupBox2: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    GroupBox3: TGroupBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    GroupBox4: TGroupBox;
    chkVendedor: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfig: TfrmConfig;

implementation

uses modulo, Funcoes;

{$R *.dfm}

procedure TfrmConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConfig.BitBtn2Click(Sender: TObject);
begin
  if qrconfig.state = dsedit then qrconfig.cancel;
  close;
end;

procedure TfrmConfig.FormShow(Sender: TObject);
begin
  chkVendedor.Checked := LerParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', False);
  qrconfig.open;
end;

procedure TfrmConfig.BitBtn1Click(Sender: TObject);
begin
  GravarParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', chkVendedor.Checked);

  if qrconfig.state = dsedit then
    qrconfig.post;

  application.messagebox('É necessário reiniciar o sistema para atualizar as novas configurações!',
    'Aviso', mb_ok+MB_ICONINFORMATION);

  Close;
end;

end.
