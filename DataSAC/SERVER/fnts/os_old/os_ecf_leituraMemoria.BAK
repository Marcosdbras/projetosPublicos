unit os_ecf_leituraMemoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ToolEdit, Menus;

type
  Tfrmos_ecf_leituraMemoria = class(TForm)
    GroupBox1: TGroupBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label1: TLabel;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmos_ecf_leituraMemoria: Tfrmos_ecf_leituraMemoria;

implementation

uses ecf;

{$R *.dfm}

procedure Tfrmos_ecf_leituraMemoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmos_ecf_leituraMemoria.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmos_ecf_leituraMemoria.bgravarClick(Sender: TObject);
begin
   ecf_leitura_memoria_fiscal('DARUMA',DATEEDIT1.TEXT,DATEEDIT2.TEXT,'C');
  close;
end;

procedure Tfrmos_ecf_leituraMemoria.DateEdit1Enter(
  Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  if dateedit1.text = '  /  /    ' then dateedit1.date := date;
end;

procedure Tfrmos_ecf_leituraMemoria.DateEdit2Enter(
  Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  if dateedit2.text = '  /  /    ' then dateedit2.date := incmonth(date,1);

end;

procedure Tfrmos_ecf_leituraMemoria.DateEdit1Exit(
  Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmos_ecf_leituraMemoria.DateEdit2Exit(
  Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmos_ecf_leituraMemoria.DateEdit1KeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmos_ecf_leituraMemoria.DateEdit2KeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

end.
