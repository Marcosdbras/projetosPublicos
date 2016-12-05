 unit URelPgmtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  TFrmRelPgmtos = class(TForm)
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
    LblPgmto3: TQRLabel;
    LblPgmto4: TQRLabel;
    LblPgmto5: TQRLabel;
    LblPgmto6: TQRLabel;
    LblPgmto7: TQRLabel;
    LblPgmto8: TQRLabel;
    LblPgmto1: TQRLabel;
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
  FrmRelPgmtos: TFrmRelPgmtos;

implementation

uses UDados, UEscSerie;

{$R *.dfm}

procedure TFrmRelPgmtos.QRBand1BeforePrint(Sender: TQRCustomBand;
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

procedure TFrmRelPgmtos.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  count,
  i : integer;
begin
  count := 0;
  i := 8;
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

    //LblNome.Caption := DBX_CadAluno.FieldBYName('Nome').AsString;

    LblNome.Caption := CDS_RelTurmaSerieAlu.fieldbyname('Nome').AsString;


    repeat
    begin
      count := count + 1;
      if DBX_ContasRecNubia.FieldByName('PAGO').AsString <> '' then
      begin
        if count = 1 then
          LblPgmto1.Caption := 'Pago'
        else if count = 2 then
          LblPgmto2.Caption := 'Pago'
        else if count = 3 then
          LblPgmto3.Caption := 'Pago'
        else if count = 4 then
          LblPgmto4.Caption := 'Pago'
        else if count = 5 then
          LblPgmto5.Caption := 'Pago'
        else if count = 6 then
          LblPgmto6.Caption := 'Pago'
        else if count = 7 then
          LblPgmto7.Caption := 'Pago'
        else
          LblPgmto8.Caption := 'Pago';
        //endi
      end
      else
      begin
        if count = 1 then
          LblPgmto1.Caption := 'Não pago'
        else if count = 2 then
          LblPgmto2.Caption := 'Não pago'
        else if count = 3 then
          LblPgmto3.Caption := 'Não pago'
        else if count = 4 then
          LblPgmto4.Caption := 'Não pago'
        else if count = 5 then
          LblPgmto5.Caption := 'Não pago'
        else if count = 6 then
          LblPgmto6.Caption := 'Não pago'
        else if count = 7 then
          LblPgmto7.Caption := 'Não pago'
        else
          LblPgmto8.Caption := 'Não pago';
        //endi
      end;
      //endi
      DBX_ContasRecNubia.Next;
    end;
    until DBX_COntasRecNubia.Eof;
    //endwh

    if DBX_ContasRecNubia.RecordCount = 0 then
      count := 0;
    //endi

    while i > count do
    begin
      if i = 1 then
        LblPgmto1.Caption := 'Não gerado'
      else if i = 2 then
        LblPgmto2.Caption := 'Não gerado'
      else if i = 3 then
        LblPgmto3.Caption := 'Não gerado'
      else if i = 4 then
        LblPgmto4.Caption := 'Não gerado'
      else if i = 5 then
        LblPgmto5.Caption := 'Não gerado'
      else if i = 6 then
        LblPgmto6.Caption := 'Não gerado'
      else if i = 7 then
        LblPgmto7.Caption := 'Não gerado'
      else
        LblPgmto8.Caption := 'Não gerado';
      //endi

      i := i - 1;
    end;
    //endwh
  end;
  //endth
end;

procedure TFrmRelPgmtos.QuickRep1AfterPreview(Sender: TObject);
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
