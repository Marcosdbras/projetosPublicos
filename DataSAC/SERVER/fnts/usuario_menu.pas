unit usuario_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Menus, AdvGlowButton;

type
  Tfrmusuario_menu = class(TForm)
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    bitbtn1: TAdvGlowButton;
    bitbtn2: TAdvGlowButton;
    bitbtn3: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmusuario_menu: Tfrmusuario_menu;

implementation

uses principal, modulo, usuario;

{$R *.dfm}

procedure Tfrmusuario_menu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmusuario_menu.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmusuario_menu.BitBtn1Click(Sender: TObject);
begin


 CLOSE;

end;

end.
