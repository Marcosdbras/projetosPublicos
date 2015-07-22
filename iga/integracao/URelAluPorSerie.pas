unit URelAluPorSerie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelAlunosPorSerie = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRShape7: TQRShape;
    QRDBText8: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    LblSerie: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    procedure QuickRep1AfterPreview(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1AfterPrint(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    sqlRelTurmaSerieAlu:String;
    count : integer;
  public
    { Public declarations }
  end;

var
  FrmRelAlunosPorSerie: TFrmRelAlunosPorSerie;

implementation

uses UDados, UPesqSerie, uGeral;

{$R *.dfm}

procedure TFrmRelAlunosPorSerie.QuickRep1AfterPreview(Sender: TObject);
begin
  with FrmDados do
  begin
    CDS_CadAluno.Active := False;
    DBX_CadAluno.Active := False;
    DBX_CadAluno.SQL.Clear;
    DBX_CadAluno.SQL.Add('SELECT * FROM CADALUNO');
    DBX_CadAluno.Active := True;
    CDS_CadAluno.Active := True;

    CDS_RelTurmaSerieAlu.Refresh;

    count := 0;
  end;
  //endth
end;

procedure TFrmRelAlunosPorSerie.FormClose(Sender: TObject;
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

    CDS_RelTurmaSerieAlu.Refresh;
  end;
  //endth
end;

procedure TFrmRelAlunosPorSerie.FormCreate(Sender: TObject);
begin
  count := 0;
  sqlRelTurmaSerieAlu := FrmDados.DBX_RelTurmaSerieAlu.SQL.Text;
end;

procedure TFrmRelAlunosPorSerie.QuickRep1AfterPrint(Sender: TObject);
begin
  with FrmDados do
  begin
    CDS_CadAluno.Active := False;
    DBX_CadAluno.Active := False;
    DBX_CadAluno.SQL.Clear;
    DBX_CadAluno.SQL.Add('SELECT * FROM CADALUNO');
    DBX_CadAluno.Active := True;
    CDS_CadAluno.Active := True;

    CDS_RelTurmaSerieAlu.Refresh;

    count := 0;
  end;
  //endth
end;

procedure TFrmRelAlunosPorSerie.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  count := 0;
  with FrmDados do
  begin
    // SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ON R.codaluno = A.codigo

    CDS_RelTurmaSerieAlu.Active := False;
    DBX_RelTurmaSerieAlu.Active := False;
    DBX_RelTurmaSerieAlu.SQL.Clear;
    //DBX_RelTurmaSerieAlu.SQL.Add('SELECT * FROM RELTURMASERIEALU WHERE CODSERIE = ' + inttostr(CDS_Serie.FieldByName('CODIGO').AsInteger) + ' and CANCEL_MATRICULA <> ' + quotedstr('V') + ' and ANOLETIVO = ' + CDS_Serie.FieldByName('ANO').AsString + ' order by numero');
    DBX_RelTurmaSerieAlu.SQL.Add('SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ON R.codaluno = A.codigo WHERE R.CODSERIE = ' + inttostr(CDS_Serie.FieldByName('CODIGO').AsInteger) + ' and R.CANCEL_MATRICULA <> ' + quotedstr('V') + ' and R.ANOLETIVO = ' + CDS_Serie.FieldByName('ANO').AsString + ' order by R.numero');
    DBX_RelTurmaSerieAlu.Active := True;
    CDS_RelTurmaSerieAlu.Active := True;
  end;
  //endth
end;

procedure TFrmRelAlunosPorSerie.QRSubDetail1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  if FrmDados.CDS_RelTurmaSerieAlu.Eof then
  begin
    count := 0;
  end;
  //endi
end;

procedure TFrmRelAlunosPorSerie.QRSubDetail1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  count := count + 1;
  //LblNumero.Caption := inttostr(count);
  with FrmDados do
  begin
    CDS_CadAluno.Active := False;
    DBX_CadAluno.Active := False;
    DBX_CadAluno.SQL.Clear;
    DBX_CadAluno.SQL.Add('SELECT * FROM CADALUNO WHERE CODIGO = ' + CDS_RelTurmaSerieAlu.FieldByName('CODALUNO').AsString);
    DBX_CadAluno.Active := True;
    CDS_CadAluno.Active := True;

    
  end;
  //endth
end;

procedure TFrmRelAlunosPorSerie.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with FrmDados do
  begin
    LblSerie.Caption := '';
    LblSerie.Caption := CDS_Serie.FieldByName('SERIE').AsString + ' ' + CDS_Serie.FieldByName('TURMA').AsString + ' ' + CDS_Serie.FieldByName('GRAU').AsString + ' - ' + CDS_Serie.FieldByName('PERIODO').AsString;
    // SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ON R.codaluno = A.codigo
    CDS_RelTurmaSerieAlu.Active := False;
    DBX_ReLTurmaSerieAlu.Active := False;
    DBX_RelTurmaSerieAlu.SQL.Clear;
    //DBX_RelTurmaSerieAlu.SQL.Add('SELECT * FROM RELTURMASERIEALU WHERE CODSERIE = ' + inttostr(CDS_Serie.FieldByName('CODIGO').AsInteger) + ' and ANOLETIVO = ' + CDS_SErie.FieldByName('ANO').AsString + ' and CANCEL_MATRICULA <> ' + quotedstr('V') + ' order by numero');
    DBX_RelTurmaSerieAlu.SQL.Add('SELECT R.*,A.nome FROM RELTURMASERIEALU R INNER JOIN CADALUNO A ON R.codaluno = A.codigo WHERE R.CODSERIE = ' + inttostr(CDS_Serie.FieldByName('CODIGO').AsInteger) + ' and R.ANOLETIVO = ' + CDS_SErie.FieldByName('ANO').AsString + ' and R.CANCEL_MATRICULA <> ' + quotedstr('V') + ' order by R.numero');

    DBX_RelTurmaSerieAlu.Active := True;
    CDS_RelTurmaSerieAlu.Active := True;

    count := 0;
  end;
  //endth
end;

end.
