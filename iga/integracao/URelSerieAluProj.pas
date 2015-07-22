unit URelSerieAluProj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelSerieAluProj = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape4: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelSerieAluProj: TFrmRelSerieAluProj;

implementation

uses UDados, UAluProjeto, UProjeto;

{$R *.dfm}

procedure TFrmRelSerieAluProj.FormCreate(Sender: TObject);
begin
  with FrmDados do
  begin
    DBX_Teste.Active := False;
    DBX_Teste.SQL.Clear;
    DBX_Teste.SQL.Add('Select A.Nome,p.descricao from projeto p, serie s, aluprojeto j, relturmaseriealu R inner join cadaluno A on R.codaluno = a.codigo and r.codserie = s.codigo and j.codalu = a.codigo and j.codpro = p.codigo and p.codigo = ' + CDS_Projeto.FieldByName('CODIGO').AsString + ' and s.codigo = ' + CDS_Serie.FieldByName('CODIGO').AsString);
    DBX_Teste.Active := True;
  end;
  //endi
end;

end.
