unit URelAluPerIntegral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelAluPerIntegral = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelAluPerIntegral: TFrmRelAluPerIntegral;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmRelAluPerIntegral.FormCreate(Sender: TObject);
begin
  with FrmDados do
  begin
    DBX_Teste.Active := False;
    DBX_Teste.SQL.Clear;
    DBX_Teste.SQL.Add('SELECT A.NOME,A.RGM,A.Data_Nasc FROM SERIE S,RELTURMASERIEALU R INNER JOIN CADALUNO A on R.CODALUNO = A.CODIGO AND S.CODIGO = R.CODSERIE and A.Periodo = 4 AND S.CODIGO = ' + CDS_Serie.FieldByName('CODIGO').AsString);
    DBX_Teste.Active := True;
  end;
  //endth
end;

end.
