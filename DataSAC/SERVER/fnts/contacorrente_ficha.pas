unit contacorrente_ficha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, TFlatPanelUnit, StdCtrls, Buttons, Mask,
  DBCtrls, DB, Wwdatsrc, Menus, AdvGlowButton;

type
  Tfrmcontacorrente_ficha = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    EBANCO: TDBEdit;
    bLOCBANCO: TBitBtn;
    DBEdit30: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    dscontacorrente: TwwDataSource;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    Bevel2: TBevel;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EBANCOKeyPress(Sender: TObject; var Key: Char);
    procedure EBANCOExit(Sender: TObject);
    procedure bLOCBANCOClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure EBANCOEnter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontacorrente_ficha: Tfrmcontacorrente_ficha;

implementation

uses modulo, principal, loc_banco, contacorrente;

{$R *.dfm}

procedure Tfrmcontacorrente_ficha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmcontacorrente_ficha.EBANCOKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcontacorrente_ficha.EBANCOExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrcontacorrente.state = dsinsert) or (frmmodulo.qrcontacorrente.State = dsedit) then
  begin
    frmmodulo.qrcontacorrente.fieldbyname('codbanco').asstring := frmprincipal.zerarcodigo(ebanco.text,3);
    if ebanco.text <> '000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrbanco,ebanco.text,'numero') then blocbancoclick(frmcontacorrente) else dbedit2.setfocus
    else
      blocbanco.SetFocus;
  end;
end;

procedure Tfrmcontacorrente_ficha.bLOCBANCOClick(Sender: TObject);
begin
  frmloc_banco := tfrmloc_banco.create(self);
  frmloc_banco.showmodal;
  frmmodulo.qrcontacorrente.fieldbyname('codbanco').asstring := frmmodulo.qrbanco.fieldbyname('numero').asstring;
  dbedit2.setfocus;
end;

procedure Tfrmcontacorrente_ficha.bgravarClick(Sender: TObject);
begin
  frmmodulo.qrcontacorrente.Post;
  frmmodulo.Conexao.Commit;
  close;
end;

procedure Tfrmcontacorrente_ficha.bcancelarClick(Sender: TObject);
begin
  frmmodulo.Conexao.rollback;
  close;
end;

procedure Tfrmcontacorrente_ficha.EBANCOEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcontacorrente_ficha.DBEdit2Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcontacorrente_ficha.DBEdit5KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then BGRAVAR.SETFOCUS;
end;

end.
