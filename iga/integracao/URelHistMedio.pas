unit URelHistMedio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelHistMedio = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    GroupHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape24: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape39: TQRShape;
    QRShape38: TQRShape;
    QRDBText5: TQRDBText;
    LblNota1: TQRLabel;
    LblNota2: TQRLabel;
    LblNota3: TQRLabel;
    procedure QuickRep1AfterPreview(Sender: TObject);
    procedure GroupHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    codAluno : String;
  public
    { Public declarations }
  end;

var
  FrmRelHistMedio: TFrmRelHistMedio;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmRelHistMedio.QuickRep1AfterPreview(Sender: TObject);
begin
   codAluno := FrmDados.CDS_CadAluno.FieldByNAme('CODIGO').AsString;
end;

procedure TFrmRelHistMedio.GroupHeaderBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  with FrmDados do
  begin
    CDS_Historico.Active := False;
    DBX_Historico.Active := False;
    DBX_Historico.SQL.Clear;
    DBX_Historico.SQL.Add('SELECT * FROM HISTORICO WHERE CODALU = ' + CODALUNO + ' and codcurso = 3 order by ANO');
    DBX_Historico.Active := True;
    CDS_Historico.Active := True;
  end;
  //endth
end;

procedure TFrmRelHistMedio.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  i : integer;
  sAno,
  sCodMat,
  sCodHist,
  sNotaAnt,
  sCodSerieAlu : String;
begin
  with FrmDados do
  begin
    CodAluno := CDS_CadAluno.FieldByName('CODIGO').AsString;
    sCodMAt := CDS_CadMateria.FieldByName('CODIGO').AsString;
    for i:=1 to 3 do
    begin
      case i of
        1:begin
            sAno := '1º ANO';
          end;
        2:begin
            sAno := '2º ANO';
          end;
        3:begin
            sAno := '3º ANO';
          end;
      end;
      //endcase

      CDS_Historico.Active := False;
      DBX_Historico.Active := False;
      DBX_Historico.SQL.Clear;
      DBX_Historico.SQL.Add('SELECT * FROM HISTORICO WHERE CODALU = ' + CODALUNO + ' and SERIE = ' + quotedstr(sANO) + ' and codcurso = 3');
      DBX_Historico.Active := True;
      CDS_Historico.Active := True;

      sCodHist := CDS_Historico.FieldByName('CODIGO').AsString;

      if CDS_Historico.RecordCount <> 0 then
      begin
        CDS_NotasAnteriores.Active := False;
        DBX_NotasAnteriores.Active := False;
        DBX_NotasAnteriores.SQL.Clear;
        DBX_NotasAnteriores.SQL.Add('SELECT * FROM NOTASANTERIRORES WHERE CODMAT = ' + SCodMat + ' AND CODHIST = ' + sCodHist);
        DBX_NotasAnteriores.Active := True;
        CDS_NotasAnteriores.Active := True;

        sNotaAnt := CDS_NotasAnteriores.FieldByName('NOTA').AsString;

        if i = 1 then
        begin
          if sNotaAnt <> '' then
            LblNota1.Caption := sNotaAnt
          else
            LblNota1.Caption := '-----';
        end
        else if i = 2 then
        begin
          if sNotaAnt <> '' then
            LblNota2.Caption := sNotaAnt
          else
            LblNota2.Caption := '-----';
        end
        else if i = 3 then
        begin
          if sNotaAnt <> '' then
            LblNota3.Caption := sNotaAnt
          else
            LblNota3.Caption := '-----';
        end;
      end
      else
      begin
      end;
      //endi
    end;
    //endfor
  end;
  //endth
end;

end.
