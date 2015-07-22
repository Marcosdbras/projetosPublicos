unit URelAluDevemSec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, QuickRpt, QRCtrls, ExtCtrls;

type
  TFrmRelAluDevemSec = class(TForm)
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
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    LblQntdMeses: TQRLabel;
    QRLabel6: TQRLabel;
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1AfterPreview(Sender: TObject);
  private
    data,
    SqlContas,
    SqlSerie:String;
  public
    { Public declarations }
  end;

var
  FrmRelAluDevemSec: TFrmRelAluDevemSec;

implementation

uses UDados, uGeral;

{$R *.dfm}

procedure TFrmRelAluDevemSec.QuickRep1BeforePrint(Sender: TCustomQuickRep;
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

procedure TFrmRelAluDevemSec.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with FrmDados do
  begin
    DBX_Indices.Active := True;
    CDS_Indices.Active := True;

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

    LblValorFinal.Caption := floattostr(CDS_ContasRec.FieldByName('VALOR').asFloat * CDS_ContasRec.RecordCount);
    LblQntdMeses.Caption := inttostr(CDS_ContasRec.RecordCount);
  end;
  //endth
end;

procedure TFrmRelAluDevemSec.QuickRep1AfterPreview(Sender: TObject);
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
