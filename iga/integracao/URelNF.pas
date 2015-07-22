unit URelNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelNF = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelNF: TFrmRelNF;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmRelNF.FormCreate(Sender: TObject);
begin
  with FrmDados do
  begin
    DBX_Teste.Active := False;
    DBX_Teste.SQL.Clear;
    DBX_Teste.SQL.Add('select s.serie,s.turma,s.grau,a.nome from serie s, relturmaseriealu r inner join cadaluno a on r.codaluno = a.codigo and r.codserie = s.codigo and a.nota_fiscal = '+ QUOTEDSTR('S'));
    DBX_Teste.Active := True;
  end;
  //endth
end;

end.
