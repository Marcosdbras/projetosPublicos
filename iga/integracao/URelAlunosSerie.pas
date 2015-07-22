unit URelAlunosSerie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelAlunosSerie = class(TForm)
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    SHMateria: TQRShape;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    LblSerie: TQRLabel;
    QRShape7: TQRShape;
    QRLabel5: TQRLabel;
    QRShape9: TQRShape;
    QRDBText1: TQRDBText;
    procedure QuickRep1AfterPreview(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1AfterPrint(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
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
  FrmRelAlunosSerie: TFrmRelAlunosSerie;

implementation

uses UDados, UPesqSerie, uGeral;

{$R *.dfm}

procedure TFrmRelAlunosSerie.QuickRep1AfterPreview(Sender: TObject);
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

procedure TFrmRelAlunosSerie.QRBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  iCodAlu:integer;
begin
  count := count + 1;
  //LblNumero.Caption := inttostr(count);
  with FrmDados do
  begin
    iCodAlu := CDS_RelTurmaSerieAlu.FieldByName('CODALUNO').AsInteger;
    CDS_CadAluno.Active := False;
    DBX_CadAluno.Active := False;
    DBX_CadAluno.SQL.Clear;
    DBX_CadAluno.SQL.Add('SELECT * FROM CADALUNO WHERE CODIGO = ' + inttostr(iCodAlu));
    DBX_CadAluno.Active := True;

    CDS_CadAluno.Active := True;
  end;
  //endth
end;

procedure TFrmRelAlunosSerie.FormClose(Sender: TObject;
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

procedure TFrmRelAlunosSerie.FormCreate(Sender: TObject);
begin
  count := 0;
  sqlRelTurmaSerieAlu := FrmDados.DBX_RelTurmaSerieAlu.SQL.Text;
end;

procedure TFrmRelAlunosSerie.QuickRep1AfterPrint(Sender: TObject);
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

procedure TFrmRelAlunosSerie.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  count := 0;
end;

procedure TFrmRelAlunosSerie.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if FrmDados.CDS_RelTurmaSerieAlu.Eof then
  begin
    count := 0;
  end;
  //endi
end;

procedure TFrmRelAlunosSerie.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with FrmDados do
  begin
    LblSerie.Caption := '';
    LblSerie.Caption := CDS_Serie.FieldByName('SERIE').AsString + ' ' + CDS_Serie.FieldByName('TURMA').AsString + ' ' + CDS_Serie.FieldByName('GRAU').AsString + ' - ' + CDS_Serie.FieldByName('PERIODO').AsString;
  end;
  //endth
end;

end.
