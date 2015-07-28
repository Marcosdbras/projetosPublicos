unit mensagem;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms;

type
  TfrmMensagem = class(TForm)
    lblLinha2: TLabel;
    lblLinha3: TLabel;
    lblLinha4: TLabel;
    lblLinha1: TLabel;
    procedure FormShow(Sender: TObject);
  end;

var
  frmMensagem: TfrmMensagem;

implementation

uses funcoes;

{$R *.DFM}

procedure TfrmMensagem.FormShow(Sender: TObject);
begin
  BlockInput(true);
end;

end.
