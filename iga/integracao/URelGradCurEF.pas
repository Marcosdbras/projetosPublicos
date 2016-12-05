unit URelGradCurEF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  TFrmRelGradCurEF = class(TForm)
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
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    LblAno1: TQRLabel;
    LblAno2: TQRLabel;
    LblAno3: TQRLabel;
    LblAno4: TQRLabel;
    LblAno5: TQRLabel;
    LblAno6: TQRLabel;
    LblAno7: TQRLabel;
    LblAno8: TQRLabel;
    LblAno9: TQRLabel;
    QRDBText1: TQRDBText;
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
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRLabel16: TQRLabel;
    LblAnoT1: TQRLabel;
    LblAnoT2: TQRLabel;
    LblAnoT3: TQRLabel;
    LblAnoT4: TQRLabel;
    LblAnoT5: TQRLabel;
    LblAnoT6: TQRLabel;
    LblAnoT7: TQRLabel;
    LblAnoT8: TQRLabel;
    LblAnoT9: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText4: TQRDBText;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1AfterPrint(Sender: TObject);
    procedure QuickRep1AfterPreview(Sender: TObject);
  private
    { Private declarations }
    SQLAntigo,
    sCodCurso : String;
    iAno1,
    iAno2,
    iAno3,
    iAno4,
    iAno5,
    iAno6,
    iAno7,
    iAno8,
    iAno9 : integer;
  public
    { Public declarations }
  end;

var
  FrmRelGradCurEF: TFrmRelGradCurEF;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmRelGradCurEF.QRBand2BeforePrint(Sender: TQRCustomBand;
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

    for cont:= 1 to 9 do
    begin
      DBX_Teste.Active := False;
      DBX_Teste.SQL.Clear;
      sSerie := inttostr(cont)+'º Ano';
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

      if cont = 4 then
      begin
        LblAno4.Caption := Dbx_Teste.FieldByName('Qntd_Aulas').AsString;
        iAno4 := iAno4 + Dbx_Teste.FieldByName('Qntd_Aulas').AsInteger;
      end;
      //endi

      if cont = 5 then
      begin
        LblAno5.Caption := Dbx_Teste.FieldByName('Qntd_Aulas').AsString;
        iAno5 := iAno5 + Dbx_Teste.FieldByName('Qntd_Aulas').AsInteger;
      end;
      //endi

      if cont = 6 then
      begin
        LblAno6.Caption := Dbx_Teste.FieldByName('Qntd_Aulas').AsString;
        iAno6 := iAno6 + Dbx_Teste.FieldByName('Qntd_Aulas').AsInteger;
      end;
      //endi

      if cont = 7 then
      begin
        LblAno7.Caption := Dbx_Teste.FieldByName('Qntd_Aulas').AsString;
        iAno7 := iAno7 + Dbx_Teste.FieldByName('Qntd_Aulas').AsInteger;
      end;
      //endi

      if cont = 8 then
      begin
        LblAno8.Caption := Dbx_Teste.FieldByName('Qntd_Aulas').AsString;
        iAno8 := iAno8 + Dbx_Teste.FieldByName('Qntd_Aulas').AsInteger;
      end;
      //endi

      if cont = 9 then
      begin
        LblAno9.Caption := Dbx_Teste.FieldByName('Qntd_Aulas').AsString;
        iAno9 := iAno9 + Dbx_Teste.FieldByName('Qntd_Aulas').AsInteger;
      end;
      //endi
    end;
    //endfor
  end;
  //endth
end;

procedure TFrmRelGradCurEF.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  iAno1 := 0;
  iAno2 := 0;
  iAno3 := 0;
  iAno4 := 0;
  iAno5 := 0;
  iAno6 := 0;
  iAno7 := 0;
  iAno8 := 0;
  iAno9 := 0;

  with FrmDados do
  begin
    SQLAntigo := DBX_GradCur.SQL.Text;
    sCodCurso := CDS_GradCur.FieldByName('CodCurso').AsString;

    DBX_Exec.Active := False;
    DBX_Exec.SQL.Clear;
    DBX_Exec.SQL.Add('SELECT distinct codmat, codcurso, ano, area_conhec FROM GRADE_CURRICULAR WHERE CODCurso = '+SCodCurso + ' and ano = ' + CDS_GradCur.FieldByName('ano').AsString);
    DBX_Exec.Active := True;
  end;
  //endth
end;

procedure TFrmRelGradCurEF.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  LblAnoT1.Caption := inttostr(iAno1);
  LblAnoT2.Caption := inttostr(iAno2);
  LblAnoT3.Caption := inttostr(iAno3);
  LblAnoT4.Caption := inttostr(iAno4);
  LblAnoT5.Caption := inttostr(iAno5);
  LblAnoT6.Caption := inttostr(iAno6);
  LblAnoT7.Caption := inttostr(iAno7);
  LblAnoT8.Caption := inttostr(iAno8);
  LblAnoT9.Caption := inttostr(iAno9);

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

procedure TFrmRelGradCurEF.QuickRep1AfterPrint(Sender: TObject);
begin
  with FrmDados do
  begin
    CDS_GradCur.Active := False;
    DBX_GradCur.Active := False;
    DBX_GradCur.SQL.Clear;
    DBX_GradCur.SQL.Add(SQLAntigo);
    DBX_GradCur.Active := True;
    CDS_GradCur.Active := True;
  end;
  //endth
end;

procedure TFrmRelGradCurEF.QuickRep1AfterPreview(Sender: TObject);
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
