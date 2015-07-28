unit pedido_obs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, AdvGlowButton;

type
  Tfrmpedido_obs = class(TForm)
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
  frmpedido_obs: Tfrmpedido_obs;

implementation

uses pedido;

{$R *.dfm}

procedure Tfrmpedido_obs.Edit1Enter(Sender: TObject);
begin
  tedit(sender).Color := clyellow;
end;

procedure Tfrmpedido_obs.Edit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmpedido_obs.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmpedido_obs.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then bcancelar.SetFocus;
end;

procedure Tfrmpedido_obs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmpedido.observ := edit1.text;
  action := cafree;
end;

end.
