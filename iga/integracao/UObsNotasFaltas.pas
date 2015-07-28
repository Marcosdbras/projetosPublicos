unit UObsNotasFaltas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB;

type
  TFrmObsNotasFaltas = class(TForm)
    MemoObs: TMemo;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmObsNotasFaltas: TFrmObsNotasFaltas;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmObsNotasFaltas.BtnSalvarClick(Sender: TObject);
begin
  if FrmObsNotasFaltas.Caption='Trabalhos' then
  begin
    if (FrmDados.CDS_Trabalhos.State <> dsEdit) or (FrmDados.CDS_Trabalhos.State <> dsInsert) then
      FrmDados.CDS_Trabalhos.Edit;
    FrmDados.CDS_Trabalhos.FieldByName('OBS').AsString:=MemoObs.Text;
    Close;
  end
  else if FrmObsNotasFaltas.Caption='Avaliações' then
  begin
    if (FrmDados.CDS_Avaliacoes.State <> dsEdit) or (FrmDados.CDS_Avaliacoes.State <> dsInsert) then
      FrmDados.CDS_Avaliacoes.Edit;
    FrmDados.CDS_Avaliacoes.FieldByName('OBS').AsString:=MemoObs.Text;
    Close;
  end
  else if FrmObsNotasFaltas.Caption='Assiduidade' then
  begin
    if (FrmDados.CDS_Assiduidade.State <> dsEdit) or (FrmDados.CDS_Assiduidade.State <> dsInsert) then
      FrmDados.CDS_Assiduidade.Edit;
    FrmDados.CDS_Assiduidade.FieldByName('OBS').AsString:=MemoObs.Text;
    Close;
  end;
end;

procedure TFrmObsNotasFaltas.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
