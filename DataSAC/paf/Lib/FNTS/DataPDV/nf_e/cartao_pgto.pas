unit cartao_pgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzEdit, ExtCtrls, AdvGlowButton, StdCtrls, Mask, ToolEdit, Menus;

type
  TfrmCartao_PGTO = class(TForm)
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
  frmCartao_PGTO: TfrmCartao_PGTO;

implementation

uses cartao;

{$R *.dfm}

procedure TfrmCartao_PGTO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmCartao_PGTO.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmCartao_PGTO.rvalorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure TfrmCartao_PGTO.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).color := $00C1FFFF;
end;

procedure TfrmCartao_PGTO.DateEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure TfrmCartao_PGTO.FormShow(Sender: TObject);
begin
  dateedit1.setfocus;
end;

procedure TfrmCartao_PGTO.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCartao_PGTO.bgravarClick(Sender: TObject);
begin
  if dateedit1.text = '  /  /    ' then
  begin
    application.messagebox('Favor informar a data!','Erro',mb_OK+MB_ICONERROR);
    DATEEDIT1.SETFOCUS;
    EXIT;
  end;
  frmcartao.query.close;
  frmcartao.query.sql.clear;
  frmcartao.query.SQL.add('update c000124 set situacao = ''BAIXADO'', liquido = :valor_pago, data_baixa = :data_PGTO');
  frmcartao.query.sql.add('where codigo = '''+frmcartao.qrcartao.fieldbyname('codigo').asstring+'''');
  frmcartao.query.ParamByName('valor_pago').asfloat := rvalor.value;
  frmcartao.query.parambyname('data_pgto').asdatetime := DateEdit1.date;
  frmcartao.query.execsql;
  close;
end;

end.
