unit URelBoletos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelBoletos = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRLabel5: TQRLabel;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    QRShape5: TQRShape;
    QRLabel7: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelBoletos: TFrmRelBoletos;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmRelBoletos.FormCreate(Sender: TObject);
begin
  with FrmDados do
  begin
    DBX_Teste.Active := False;
    DBX_Teste.SQL.Clear;
    DBX_Teste.SQL.Add('SELECT C.NOME,C.RGM,C.DESCONTO,C.VALOR,R.CODALUNO FROM CADALUNO C INNER JOIN RELTURMASERIEALU R ON R.CODALUNO = C.CODIGO AND R.CODSERIE = '+ CDS_Serie.FieldByName('CODIGO').AsString);
    DBX_Teste.Active := True;
  end;
  //endi
end;

procedure TFrmRelBoletos.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with FrmDados do
  begin
    CDS_CadAluno.Active := False;
    DBX_CadAluno.Active := False;
    DBX_CadAluno.SQL.Clear;
    DBX_CadAluno.SQL.Add('SELECT * FROM CADALUNO WHERE CODIGO = ' + DBX_Teste.FieldByName('CODALUNO').AsString);
    DBX_CadAluno.Active := True;
    CDS_CadAluno.Active := True;
  end;
  //endi
end;

procedure TFrmRelBoletos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with FrmDados do
  begin
    CDS_CadAluno.Active := False;
    DBX_CadAluno.Active := False;
    DBX_CadAluno.SQL.Clear;
    DBX_CadAluno.SQL.Add('SELECT * FROM CADALUNO'); 
    DBX_CadAluno.Active := True;
    CDS_CadAluno.Active := True;
  end;
  //endi
end;

end.
