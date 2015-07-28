unit ecf_texto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Menus, AdvGlowButton;

type
  Tfrmecf_texto = class(TForm)
    RichEdit1: TRichEdit;
    Panel1: TPanel;
    Bevel1: TBevel;
    bcancelar: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    bitbtn5: TAdvGlowButton;
    Imprimir1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure bitbtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmecf_texto: Tfrmecf_texto;

implementation

{$R *.dfm}

procedure Tfrmecf_texto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmecf_texto.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmecf_texto.bitbtn5Click(Sender: TObject);
begin
  RichEdit1.Print('Download MFD');
end;

end.
