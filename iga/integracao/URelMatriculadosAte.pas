unit URelMatriculadosAte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelMatriculadosAte = class(TForm)
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
    LblData: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelMatriculadosAte: TFrmRelMatriculadosAte;

implementation

uses UDados, uGeral;

{$R *.dfm}

procedure TFrmRelMatriculadosAte.FormCreate(Sender: TObject);
var
  Data:String;
begin
  Data := InputBox('Escolha de data', 'Digite ate qual data de matrícula deseja a relação:', datetostr(date));
  LblData.Caption := data;
  with FrmDados do
  begin
    DBX_Teste.Active := False;
    DBX_Teste.SQL.Clear;
    DBX_Teste.SQL.Add('Select A.Nome,s.serie,s.turma,s.grau from serie S, relturmaseriealu R inner join cadaluno A on R.codaluno = a.codigo and r.codserie = s.codigo and a.data_matricula < ' + quotedstr(bar_is_point(data)));
    DBX_Teste.Active := True;
  end;
  //endth
end;

end.
