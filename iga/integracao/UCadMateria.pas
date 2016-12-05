unit UCadMateria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls;

type
  TFrmCadMateria = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    DBENome: TDBEdit;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadMateria: TFrmCadMateria;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmCadMateria.BtnCancelarClick(Sender: TObject);
begin
  FrmDados.CDS_CadMateria.Cancel;
  Close;
end;

procedure TFrmCadMateria.BtnConfirmarClick(Sender: TObject);
begin
  FrmDados.CDS_CadMateria.Post;
  Close;
end;

end.
