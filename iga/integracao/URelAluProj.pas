unit URelAluProj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelAluProj = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelAluProj: TFrmRelAluProj;

implementation

uses UDados, UAluProjeto, UProjeto;

{$R *.dfm}

procedure TFrmRelAluProj.FormCreate(Sender: TObject);
begin
  with FrmDados do
  begin
    CDS_AluProjeto.Active := False;
    DBX_AluProjeto.Active := False;
    DBX_AluProjeto.SQL.Clear;
    DBX_AluProjeto.SQL.Add('SELECT * FROM ALUPROJETO WHERE CODPRO = ' + CDS_Projeto.FieldByName('CODIGO').AsString);
    DBX_AluProjeto.Active := True;
    CDS_AluProjeto.Active := True;
  end;
  //endi
end;

end.
