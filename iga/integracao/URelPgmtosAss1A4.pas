unit URelPgmtosAss1A4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  TFrmRelPgmtosAss1A4 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    LblSerie: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRBand2: TQRBand;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    LblPgmto2: TQRLabel;
    LblPgmto4: TQRLabel;
    LblPgmto6: TQRLabel;
    LblPgmto8: TQRLabel;
    QRShape10: TQRShape;
    LblNome: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1AfterPreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelPgmtosAss1A4: TFrmRelPgmtosAss1A4;

implementation

uses UDados, UEscSerie;

{$R *.dfm}

procedure TFrmRelPgmtosAss1A4.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  sSerie : String;
begin
  with FrmDados do
  begin
    sSerie := '';
    sSerie := CDS_Serie.FieldByName('SERIE').AsString + ' ' + CDS_Serie.FieldByName('TURMA').AsString + ' ' + CDS_Serie.FieldByName('GRAU').AsString + ' - ' + CDS_Serie.FieldByName('PERIODO').AsString;
    LblSerie.Caption := sSerie;
  end;
  //endth
end;

procedure TFrmRelPgmtosAss1A4.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with FrmDados do
  begin
    DBX_ContasRecNubia.Active := False;
    DBX_ContasRecNubia.SQL.Clear;
    DBX_ContasRecNubia.SQL.Add('select * from contasarecebernubia where codalu = 0' + CDS_RelTurmaSerieAlu.FieldByName('CODALUNO').AsString + ' and etapa = ' + quotedstr('T') + ' and ano = ' + quotedstr(FrmEscSerie.EdAno.Text) + ' order by data');
    DBX_ContasRecNubia.Active := True;

    DBX_CadALuno.ACtive := False;
    DBX_CadAluno.SQL.Clear;
    DBX_CadALuno.SQL.Add('select * from cadaluno where codigo = 0' + CDS_RelTurmaSerieAlu.FieldByName('CODALUNO').AsString);
    DBX_CadAluno.Active := True;

    LblNome.Caption := DBX_CadAluno.FieldBYName('Nome').AsString;
  end;
  //endth
end;

procedure TFrmRelPgmtosAss1A4.QuickRep1AfterPreview(Sender: TObject);
begin
  with FrmDados do
  begin
    CDS_CadAluno.Active := False;
    DBX_CadAluno.Active := fALSE;
    DBX_CadAluno.SQL.Clear;
    DBX_CadAluno.SQL.Add('select * from cadaluno');
    DBX_CadAluno.Active := True;
    CDS_CadAluno.Active := True;
  end;
  //endth
end;

end.
