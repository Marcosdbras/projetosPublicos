unit agenda_ficha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Collection, DBCtrls, Mask, DB, Buttons, ExtCtrls,
  TFlatPanelUnit, SHELLAPI, Menus, AdvGlowButton;

type
  Tfrmagenda_ficha = class(TForm)
    dsagenda: TDataSource;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit2: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBEdit3: TDBEdit;
    SpeedButton3: TSpeedButton;
    DBEdit4: TDBEdit;
    SpeedButton4: TSpeedButton;
    DBEdit5: TDBEdit;
    SpeedButton5: TSpeedButton;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label4: TLabel;
    SpeedButton6: TSpeedButton;
    DBEdit8: TDBEdit;
    SpeedButton7: TSpeedButton;
    DBEdit9: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    PopupMenu1: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Bevel2: TBevel;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit1: TDBEdit;
    Bevel1: TBevel;
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmagenda_ficha: Tfrmagenda_ficha;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmagenda_ficha.SpeedButton6Click(Sender: TObject);
begin
  ShellExecute(ValidParentForm(Self).Handle, 'open', PChar('mailto:'+DBEDIT8.TEXT), nil, nil, SW_SHOW);
end;

procedure Tfrmagenda_ficha.DBComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN DBEDIT7.SETFOCUS;
end;

procedure Tfrmagenda_ficha.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmagenda_ficha.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qragenda.State = dsinsert) or (frmmodulo.qragenda.State = dsedit) then
     frmmodulo.qragenda.Cancel;
  frmmodulo.Conexao.Rollback;
  close;
end;

procedure Tfrmagenda_ficha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmagenda_ficha.bgravarClick(Sender: TObject);
begin
  if (frmmodulo.qragenda.State = dsinsert) or (frmmodulo.qragenda.State = dsedit) then
  begin
    if dbcombobox1.Text = 'CLIENTE' then frmmodulo.qragenda.FieldByName('tipoi').asinteger := 1;
    if dbcombobox1.Text = 'CONTATO' then frmmodulo.qragenda.FieldByName('tipoi').asinteger := 2;
    if dbcombobox1.Text = 'FORNECEDOR' then frmmodulo.qragenda.FieldByName('tipoi').asinteger := 3;
    if dbcombobox1.Text = 'FUNCIONÁRIO' then frmmodulo.qragenda.FieldByName('tipoi').asinteger := 4;
    if dbcombobox1.Text = 'OUTROS' then frmmodulo.qragenda.FieldByName('tipoi').asinteger := 5;
    if dbcombobox1.Text = 'TRANSPORTADOR' then frmmodulo.qragenda.FieldByName('tipoi').asinteger := 6;

     frmmodulo.qragenda.post;
     frmmodulo.Conexao.Commit;

  end;
  close;
end;

procedure Tfrmagenda_ficha.DBComboBox1Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmagenda_ficha.DBEdit7Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmagenda_ficha.DBComboBox1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if dbcombobox1.Text <> 'CLIENTE' then
  if dbcombobox1.Text <> 'CONTATO' then
  if dbcombobox1.Text <> 'FORNECEDOR' then
  if dbcombobox1.Text <> 'FUNCIONÁRIO' then
  if dbcombobox1.Text <> 'OUTROS' then
  if dbcombobox1.Text <> 'TRANSPORTADOR' then
  begin
    showmessage('Favor escolher uma opção válida!');
    dbcombobox1.setfocus;
  end;


end;

procedure Tfrmagenda_ficha.FormShow(Sender: TObject);
begin
  DBComboBox1.SetFocus;
end;

procedure Tfrmagenda_ficha.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

end.
