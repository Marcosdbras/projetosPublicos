unit ucorrecao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmcorrecao = class(TForm)
    Enviar: TButton;
    Cancelar: TButton;
    Label1: TLabel;
    ediresp: TEdit;
    procedure EnviarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcorrecao: Tfrmcorrecao;

implementation
     uses udetalhepedido;
{$R *.dfm}

procedure Tfrmcorrecao.EnviarClick(Sender: TObject);
begin
  frmdetalhepedido.sresp := ediresp.Text;
  close;
end;

procedure Tfrmcorrecao.CancelarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmcorrecao.FormShow(Sender: TObject);
begin
ediresp.Text := '';
ediresp.SetFocus;
end;

end.
