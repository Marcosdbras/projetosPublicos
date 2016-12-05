unit URelAluDevemAdv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, QuickRpt, QRCtrls, ExtCtrls;

type
  TFrmRelAluDevemAdv = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    LblValorFinal: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    LblQntdMeses: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape15: TQRShape;
    QRLabel9: TQRLabel;
    QRShape16: TQRShape;
    QRDBText6: TQRDBText;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRep1AfterPreview(Sender: TObject);
  private
    data,
    SqlSerie,
    SqlContas,
    SqlAluno:String;
  public
    { Public declarations }
  end;

var
  FrmRelAluDevemAdv: TFrmRelAluDevemAdv;

implementation

uses UDados, uGeral;

{$R *.dfm}

procedure TFrmRelAluDevemAdv.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  data := datetostr(date);
  data := Bar_Is_Point(data);

  with FrmDados do
  begin
    SqlContas := DBX_ContasRec.SQL.Text;
    SqlSerie := DBX_Serie.SQL.Text;

    DBX_Teste.Active := False;
    DBX_Teste.SQL.Clear;
    DBX_Teste.SQL.Add('select distinct c.valor,c.codalu,c.tipo from contasareceber c where pago is null and data < ' + quotedstr(data));
    DBX_Teste.Active := True;
  end;
  //endth
end;

procedure TFrmRelAluDevemAdv.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with FrmDados do
  begin
    DBX_Indices.Active := True;
    CDS_Indices.Active := True;

    SqlAluno := DBX_CadAluno.SQL.Text;

    CDS_ContasRec.Active := False;
    DBX_ContasRec.Active := False;
    DBX_ContasRec.SQL.Clear;
    DBX_ContasRec.SQL.Add('Select * from contasareceber where codalu = 0' + DBX_Teste.FieldByName('CODALU').AsString + ' and pago is null and data < ' + quotedstr(data) + ' and tipo = ' + quotedstr('Mensalidade'));
    DBX_ContasRec.Active := True;
    CDS_ContasRec.Active := True;

    CDS_Serie.Active := False;
    DBX_Serie.Active := False;
    DBX_Serie.SQL.Clear;
    DBX_Serie.SQL.Add('select s.* from serie s inner join relturmaseriealu r on r.codserie = s.codigo and r.codaluno = 0' + DBX_Teste.FieldByName('CODALU').AsString + ' and r.anoletivo = ' + CDS_Indices.fieldByName('ANO').AsString);
    DBX_Serie.Active := True;
    CDS_Serie.Active := True;

    CDS_CadALuno.Active := False;
    DBX_CadAluno.Active := False;
    DBX_CadAluno.SQL.Clear;
    DBX_CadAluno.SQL.Add('Select * from cadaluno where codigo = 0' + DBX_Teste.FieldByName('CODALU').AsString);
    DBX_CadAluno.Active := True;
    CDS_CadALuno.Active := True;

    LblValorFinal.Caption := floattostr(CDS_ContasRec.FieldByName('VALOR').asFloat * CDS_ContasRec.RecordCount);
    LblQntdMeses.Caption := inttostr(CDS_ContasRec.RecordCount);
  end;
  //endth
end;

procedure TFrmRelAluDevemAdv.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  with FrmDados do
  begin
    CDS_CadALuno.Active := False;
    DBX_CadAluno.Active := False;
    DBX_CadAluno.SQL.Clear;
    DBX_CadAluno.SQL.Add(SqlAluno);
    DBX_CadAluno.Active := True;
    CDS_CadALuno.Active := True;
  end;
  //endi
end;

procedure TFrmRelAluDevemAdv.QuickRep1AfterPreview(Sender: TObject);
begin
  with FrmDados do
  begin
    CDS_ContasRec.Active := False;
    DBX_ContasRec.Active := False;
    DBX_ContasRec.SQL.Clear;
    DBX_ContasRec.SQL.Add(SqlContas);
    DBX_ContasRec.Active := True;
    CDS_ContasRec.Active := True;

    CDS_Serie.Active := False;
    DBX_Serie.Active := False;
    DBX_Serie.SQL.Clear;
    DBX_Serie.SQL.Add(SqlSerie);
    DBX_Serie.Active := True;
    CDS_Serie.Active := True;
  end;
  //endth
end;

end.
