unit UObsConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmObsContas = class(TForm)
    MemoObs: TMemo;
    BtnOk: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BtnOkClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmObsContas: TFrmObsContas;

implementation

uses UDados, uGeral;

{$R *.dfm}

procedure TFrmObsContas.BtnOkClick(Sender: TObject);
begin
  with FrmDados do
  begin
    if not bCOntasRecNubiaA then
    begin
      showmessage('Este usuário não possui privilégios para alterar uma conta!');
      Exit;
    end;
    //endi
    
    CDS_ContasRecNubia.Edit;
    CDS_ContasRecNubia.FieldByName('OBS').AsString := MemoObs.Lines.GetText;
    CDS_ContasRecNubia.Post;
  end;
  //endth
  Close;
end;

procedure TFrmObsContas.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
