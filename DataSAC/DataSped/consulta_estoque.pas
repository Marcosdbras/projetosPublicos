unit consulta_estoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Menus, AdvMenus;

type
  TfrmConsulta_Estoque = class(TForm)
    StatusBar1: TStatusBar;
    lb_estoque: TPanel;
    MENU_FISCAL: TAdvPopupMenu;
    Fechar1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsulta_Estoque: TfrmConsulta_Estoque;

implementation

{$R *.dfm}

procedure TfrmConsulta_Estoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConsulta_Estoque.Fechar1Click(Sender: TObject);
begin
  close;
end;

end.
