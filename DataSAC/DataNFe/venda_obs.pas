unit venda_obs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, AdvGlowButton;

type
  Tfrmvenda_obs = class(TForm)
    Edit1: TEdit;
    Bevel1: TBevel;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    bcancelar: TAdvGlowButton;
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_obs: Tfrmvenda_obs;

implementation

uses venda;

{$R *.dfm}

procedure Tfrmvenda_obs.Edit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmvenda_obs.Edit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmvenda_obs.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_obs.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then bcancelar.SetFocus;
end;

procedure Tfrmvenda_obs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  observ := edit1.text;
  action := cafree;
end;

end.
