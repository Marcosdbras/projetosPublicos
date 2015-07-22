unit UPeriEspecial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons;

type
  TFrmPerEspecial = class(TForm)
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPerEspecial: TFrmPerEspecial;
  Frase:String;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmPerEspecial.BtnConfirmarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPerEspecial.BtnCancelarClick(Sender: TObject);
begin
  FrmDados.CDS_CadAluno.FieldByName('PERIODO').AsString:=Frase+'';
  Close;
end;

procedure TFrmPerEspecial.FormCreate(Sender: TObject);
begin
  Frase:=FrmDados.CDS_CadAluno.FieldByName('PERIODO').AsString;
end;

end.
