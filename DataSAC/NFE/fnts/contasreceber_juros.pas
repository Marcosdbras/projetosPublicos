unit contasreceber_juros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, rxtooledit, rxcurredit, Buttons, DB, RXDBCtrl,
  Menus, AdvGlowButton, ExtCtrls, TFlatPanelUnit;

type
  Tfrmcontasreceber_juros = class(TForm)
    Label6: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    dsconfig: TDataSource;
    RxDBCalcEdit1: TRxDBCalcEdit;
    RxDBCalcEdit2: TRxDBCalcEdit;
    RxDBCalcEdit3: TRxDBCalcEdit;
    Bevel2: TBevel;
    pgravar: TFlatPanel;
    bitbtn1: TAdvGlowButton;
    bitbtn2: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxDBCalcEdit1Enter(Sender: TObject);
    procedure RxDBCalcEdit1Exit(Sender: TObject);
    procedure RxDBCalcEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RxDBCalcEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_juros: Tfrmcontasreceber_juros;

implementation

uses modulo, contasreceber;

{$R *.dfm}

procedure Tfrmcontasreceber_juros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcontasreceber_juros.RxDBCalcEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontasreceber_juros.RxDBCalcEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmcontasreceber_juros.RxDBCalcEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcontasreceber_juros.FormShow(Sender: TObject);
begin
  frmmodulo.qrconfig.open;
  frmmodulo.qrconfig.edit;
end;

procedure Tfrmcontasreceber_juros.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrconfig.Post;
  frmmodulo.Conexao.Commit;

  juro_carencia := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_CARENCIA').asinteger;
  juro_taxa     := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_TAXAJUROS').asfloat;
  juro_multa    := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_multa').asfloat;




  close;
end;

procedure Tfrmcontasreceber_juros.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrconfig.Cancel;
  close;
end;

procedure Tfrmcontasreceber_juros.RxDBCalcEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bitbtn1.setfocus;
end;

procedure Tfrmcontasreceber_juros.Sair1Click(Sender: TObject);
begin
  frmmodulo.qrconfig.Cancel;
  close;
end;

end.
