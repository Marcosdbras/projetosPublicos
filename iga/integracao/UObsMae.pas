unit UObsMae;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, DB;

type
  TFrmObsMae = class(TForm)
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    MemoObs: TMemo;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure MemoObsChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmObsMae: TFrmObsMae;
  scampo:String;

implementation

uses UDados, uGeral;

{$R *.dfm}

procedure TFrmObsMae.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmObsMae.BtnConfirmarClick(Sender: TObject);
begin
  if FrmDados.CDS_CadAluno.State in [dsinsert,dsedit] then
    FrmDados.CDS_CadAluno.FieldByName('OBS_MAE').AsString:=MemoObs.Text;
  //endi
  Close;
end;

procedure TFrmObsMae.MemoObsChange(Sender: TObject);
begin
    if not bAlunosA then
      showmessage('As alterações realizadas não serão salvas, pois este usuário não possui privilégios para alterar este cadastro!');
end;

end.
