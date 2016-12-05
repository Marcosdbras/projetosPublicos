unit URelGradCurEM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  TFrmRelGradCurEM = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape1: TQRShape;
    QRLabel17: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    LblAno1: TQRLabel;
    LblAno2: TQRLabel;
    LblAno3: TQRLabel;
    QRDBText1: TQRDBText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape15: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRLabel16: TQRLabel;
    LblAnoT1: TQRLabel;
    LblAnoT2: TQRLabel;
    LblAnoT3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape2: TQRShape;
    QRShape9: TQRShape;
    QRLabel5: TQRLabel;
    QRShape10: TQRShape;
    QRDBText5: TQRDBText;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1AfterPreview(Sender: TObject);
  private
    { Private declarations }
    SQLAntigo,
    sCodCurso : String;
    iAno1,
    iAno2,
    iAno3 : integer;
  public
    { Public declarations }
  end;

var
  FrmRelGradCurEM: TFrmRelGradCurEM;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmRelGradCurEM.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  cont : integer;
  sSerie : String;
begin
  with FrmDados do
  begin
    CDS_GradCur.Active := False;
    DBX_GradCur.Active := False;
    DBX_GradCur.SQL.Clear;
    DBX_GradCur.SQL.Add('SELECT * FROM GRADE_CURRICULAR WHERE CODMat = '+DBX_Exec.FieldByName('CODMAT').AsString + ' and codcurso = ' + sCODCURSO);
    DBX_GradCur.Active := True;
    CDS_GradCur.Active := True;

    for cont:= 1 to 3 do
    begin
      sSerie := inttostr(cont)+'º Ano';

      DBX_Teste.Active := False;
      DBX_Teste.SQL.Clear;
      DBX_Teste.SQL.Add('SELECT * FROM GRADE_CURRICULAR WHERE CODMat = '+CDS_GRadCur.FieldByName('codmat').AsString+' and serie = '+quotedstr(sSerie));
      DBX_Teste.Active := True;

      if cont = 1 then
      begin
        LblAno1.Caption := Dbx_Teste.FieldByName('Qntd_Aulas').AsString;
        iAno1 := iAno1 + Dbx_Teste.FieldByName('Qntd_Aulas').AsInteger;
      end;
      //endi

      if cont = 2 then
      begin
        LblAno2.Caption := Dbx_Teste.FieldByName('Qntd_Aulas').AsString;
        iAno2 := iAno2 + Dbx_Teste.FieldByName('Qntd_Aulas').AsInteger;
      end;
      //endi

      if cont = 3 then
      begin
        LblAno3.Caption := Dbx_Teste.FieldByName('Qntd_Aulas').AsString;
        iAno3 := iAno3 + Dbx_Teste.FieldByName('Qntd_Aulas').AsInteger;
      end;
      //endi
    end;
    //endfor
  end;
  //endth
end;

procedure TFrmRelGradCurEM.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  iAno1 := 0;
  iAno2 := 0;
  iAno3 := 0;

  with FrmDados do
  begin
    sCodCurso := CDS_GradCur.FieldByName('CodCurso').AsString;
    SQLAntigo := DBX_GradCur.SQL.Text;

    DBX_Exec.Active := False;
    DBX_Exec.SQL.Clear;
    DBX_Exec.SQL.Add('SELECT distinct codmat, codcurso, ano, area_conhec FROM GRADE_CURRICULAR WHERE CODCurso = '+SCodCurso + ' and ano = ' + CDS_GradCur.FieldByName('ano').AsString);
    DBX_Exec.Active := True;
  end;
  //endth
end;

procedure TFrmRelGradCurEM.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  LblAnoT1.Caption := inttostr(iAno1);
  LblAnoT2.Caption := inttostr(iAno2);
  LblAnoT3.Caption := inttostr(iAno3);

  with FrmDados do
  begin
    CDS_Curso.Active := False;
    DBX_Curso.Active := False;
    DBX_Curso.SQL.Clear;
    DBX_Curso.SQL.Add('SELECT * FROM CURSO WHERE CODIGO = ' + sCodCurso);
    DBX_Curso.Active := True;
    CDS_Curso.Active := True;
  end;
  //endth
end;

procedure TFrmRelGradCurEM.QuickRep1AfterPreview(Sender: TObject);
begin
  with FrmDados do
  begin
    CDS_GradCur.Active := False;
    DBX_GradCur.Active := False;
    DBX_GradCur.SQL.Clear;
    DBX_GradCur.SQL.Add(SQLAntigo);
    DBX_GradCur.Active := True;
    CDS_GradCur.Active := True;

    CDS_Curso.Active := False;
    DBX_Curso.Active := False;
    DBX_Curso.SQL.Clear;
    DBX_Curso.SQL.Add('SELECT * FROM CURSO');
    DBX_Curso.Active := True;
    CDS_Curso.Active := True;
  end;
  //endth
end;

end.
