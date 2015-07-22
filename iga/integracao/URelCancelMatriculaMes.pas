unit URelCancelMatriculaMes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelCancelMatriculaMes = class(TForm)
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRDBText3: TQRDBText;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRDBText4: TQRDBText;
    QRLabel1: TQRLabel;
    LblMes: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelCancelMatriculaMes: TFrmRelCancelMatriculaMes;

implementation

uses UDados, uGeral;

{$R *.dfm}

procedure TFrmRelCancelMatriculaMes.FormCreate(Sender: TObject);
var
  Data,
  Data2:String;
  idia,
  imes,
  iano:word;
begin
  decodedate(date,iano,imes,idia);
//  Data := InputBox('Escolha de data', 'Digite ate qual data de matrícula deseja a relação:', inttostr(imes));
  Data := '01.'+inttostr(imes)+'.'+inttostr(iano);
  if imes = 12 then
  begin
    imes := 0;
    iano := iano + 1;
  end;
  Data2 := '01.'+inttostr(imes+1)+'.'+inttostr(iano);
  LblMes.Caption := mesextenso(date);
  with FrmDados do
  begin
    DBX_Teste.Active := False;
    DBX_Teste.SQL.Clear;
    DBX_Teste.SQL.Add('Select A.Nome,A.Motivo_Cancel,s.serie,s.turma,s.grau from serie S, relturmaseriealu R inner join cadaluno A on R.codaluno = a.codigo and r.codserie = s.codigo and a.data_Cancel between ' + quotedstr(data) + ' and ' + quotedstr(Data2));   
    DBX_Teste.Active := True;
  end;
  //endth
end;

end.
