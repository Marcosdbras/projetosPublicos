unit UObservacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons;

type
  TFrmObsMae = class(TForm)
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    MemoObs: TMemo;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmObsMae: TFrmObsMae;
  scampo:String;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmObsMae.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmObsMae.BtnConfirmarClick(Sender: TObject);
begin
  FrmDados.CDS_CadAluno.FieldByName('OBS_MAE').AsString:=MemoObs.Text;
  Close;
end;

end.
