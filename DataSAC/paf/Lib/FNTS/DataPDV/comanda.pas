unit comanda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WinSkinData, StdCtrls, Buttons;

type
  Tfrmcomanda = class(TForm)
    SkinData1: TSkinData;
    Label1: TLabel;
    ediComanda: TEdit;
    btnLancar: TBitBtn;
    btnCancelar: TBitBtn;
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcomanda: Tfrmcomanda;

implementation

{$R *.dfm}

procedure Tfrmcomanda.btnCancelarClick(Sender: TObject);
begin
  close;
end;

end.
