unit financeira_pgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzEdit, ExtCtrls, AdvGlowButton, StdCtrls, Mask, rxtooledit, Menus;

type
  TfrmFinanceira_Pgto = class(TForm)
    Label4: TLabel;
    DateEdit1: TDateEdit;
    Panel1: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel1: TBevel;
    Label1: TLabel;
    rvalor: TRzNumericEdit;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure rvalorKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFinanceira_Pgto: TfrmFinanceira_Pgto;

implementation

uses financeira;

{$R *.dfm}

procedure TfrmFinanceira_Pgto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmFinanceira_Pgto.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmFinanceira_Pgto.rvalorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure TfrmFinanceira_Pgto.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).color := $00C1FFFF;
end;

procedure TfrmFinanceira_Pgto.DateEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure TfrmFinanceira_Pgto.FormShow(Sender: TObject);
begin
  dateedit1.setfocus;
end;

procedure TfrmFinanceira_Pgto.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFinanceira_Pgto.bgravarClick(Sender: TObject);
begin
  if dateedit1.text = '  /  /    ' then
  begin
    application.messagebox('Favor informar a data!','Erro',mb_OK+MB_ICONERROR);
    DATEEDIT1.SETFOCUS;
    EXIT;
  end;
  frmfinanceira.query.close;
  frmfinanceira.query.sql.clear;
  frmfinanceira.query.SQL.add('update c000123 set situacao = 2, valor_pago = :valor_pago, data_pgto = :data_pgto');
  frmfinanceira.query.sql.add('where codigo = '''+frmfinanceira.qrfinanceira.fieldbyname('codigo').asstring+'''');
  frmfinanceira.query.ParamByName('valor_pago').asfloat := rvalor.value;
  frmfinanceira.query.parambyname('data_pgto').asdatetime := DateEdit1.date;
  frmfinanceira.query.execsql;
  close;
end;

end.
