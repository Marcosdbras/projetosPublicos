unit UDadosCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmDadosCheque = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdNumero: TEdit;
    EdData: TEdit;
    EdBanco: TEdit;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDadosCheque: TFrmDadosCheque;

implementation

uses uGeral;

{$R *.dfm}

procedure TFrmDadosCheque.BtnConfirmarClick(Sender: TObject);
begin
  sNumCheque := EdNumero.Text;
  sDataCheque := EdData.Text;
  sBancoCheque := EdBanco.Text;
  Close;
end;

procedure TFrmDadosCheque.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
