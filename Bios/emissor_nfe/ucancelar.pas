unit ucancelar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmcancelamento = class(TForm)
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
  frmcancelamento: Tfrmcancelamento;

implementation
     uses udetalhepedido;
{$R *.dfm}

procedure Tfrmcancelamento.EnviarClick(Sender: TObject);
begin
  frmdetalhepedido.sresp := ediresp.Text;
  close;
end;

procedure Tfrmcancelamento.CancelarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmcancelamento.FormShow(Sender: TObject);
begin
ediresp.Text := '';
ediresp.SetFocus;
end;

end.
