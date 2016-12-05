unit URelAssejt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelAssejt = class(TForm)
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRDBText3: TQRDBText;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRShape7: TQRShape;
    QRDBText7: TQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelAssejt: TFrmRelAssejt;

implementation

uses UDados, uGeral;

{$R *.dfm}

procedure TFrmRelAssejt.FormCreate(Sender: TObject);
begin
  with FrmDados do
  begin
    DBX_Teste.Active := False;
    DBX_Teste.SQL.Clear;
    DBX_Teste.SQL.Add('Select A.Nome,A.RGM,a.valor from relturmaseriealu R inner join cadaluno A on r.codaluno = a.codigo and R.CodSerie = 0' + CDS_Serie.fieldByName('CODIGO').AsString + ' and a.assejt = ' + quotedstr('T'));
    DBX_Teste.Active := True;
  end;
  //endth
end;

end.
