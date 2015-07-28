unit leituraMemoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ToolEdit, Menus;

type
  TfrmLeituraMemoria = class(TForm)
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
  frmLeituraMemoria: TfrmLeituraMemoria;

implementation

uses modulo, ecf_bematech, ecf_daruma, ecf_sweda, ecf_urano,
  ecf_yanco;

{$R *.dfm}

procedure TfrmLeituraMemoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmLeituraMemoria.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLeituraMemoria.bgravarClick(Sender: TObject);
begin
 IF ECF_MODELO = 'DARUMA' then frmecf_daruma.ecf_leitura_memoria_fiscal(ecf_modelo,DATEEDIT1.TEXT,DATEEDIT2.TEXT);
 IF ECF_MODELO = 'BEMATECH' then frmecf_BEMATECH.ecf_leitura_memoria_fiscal(ecf_modelo,DATEEDIT1.TEXT,DATEEDIT2.TEXT);
 IF ECF_MODELO = 'SWEDA' then frmecf_SWEDA.ecf_leitura_memoria_fiscal(ecf_modelo,DATEEDIT1.TEXT,DATEEDIT2.TEXT);
 IF ECF_MODELO = 'URANO' then frmecf_URANO.ecf_leitura_memoria_fiscal(ecf_modelo,DATEEDIT1.TEXT,DATEEDIT2.TEXT);
 IF ECF_MODELO = 'YANCO' then frmecf_YANCO.ecf_leitura_memoria_fiscal(ecf_modelo,DATEEDIT1.TEXT,DATEEDIT2.TEXT);
  close;
end;

procedure TfrmLeituraMemoria.DateEdit1Enter(
  Sender: TObject);
begin
  tedit(sender).color := clyellow;
  if dateedit1.text = '  /  /    ' then dateedit1.date := date;
end;

procedure TfrmLeituraMemoria.DateEdit2Enter(
  Sender: TObject);
begin
  tedit(sender).color := clyellow;
  if dateedit2.text = '  /  /    ' then dateedit2.date := incmonth(date,1);

end;

procedure TfrmLeituraMemoria.DateEdit1Exit(
  Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure TfrmLeituraMemoria.DateEdit2Exit(
  Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure TfrmLeituraMemoria.DateEdit1KeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmLeituraMemoria.DateEdit2KeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

end.
