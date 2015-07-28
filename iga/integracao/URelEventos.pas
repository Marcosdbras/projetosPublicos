unit URelEventos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TFrmRelEventos = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    LblEvento: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape15: TQRShape;
    QRLabel9: TQRLabel;
    QRShape16: TQRShape;
    QRDBText8: TQRDBText;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    QRShape6: TQRShape;
    LblNum: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape12: TQRShape;
    QRLabel10: TQRLabel;
    QRShape14: TQRShape;
    QRLabel11: TQRLabel;
    QRShape17: TQRShape;
    LblDtCheque: TQRLabel;
    QRShape18: TQRShape;
    LblBanco: TQRLabel;
    QRBand3: TQRBand;
    LblTotal: TQRLabel;
    LblTurma: TQRLabel;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    dValor : double;
  public
    { Public declarations }
  end;

var
  FrmRelEventos: TFrmRelEventos;

implementation

uses UDados, UMenuPrincipal;

{$R *.dfm}

procedure TFrmRelEventos.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with FrmDados do
  begin
    dValor := dValor + CDS_ContasRecNubia.FieldBYName('valor').AsFloat;

    if CDS_ContasRecNubia.RecordCount = 0 then
      Exit;
    //endi

    CDS_DadosCheque.Active := False;
    DBX_DadosCheque.Active := False;
    DBX_DadosCheque.SQL.Clear;
    DBX_DadosCheque.SQL.Add('select * from dados_cheque where codcontaNubia = ' + CDS_ContasRecNubia.FieldByName('codigo').AsString);
    DBX_DadosCheque.Active := True;
    CDS_DadosCheque.Active := True;

    if CDS_DadosCheque.RecordCount <> 0 then
    begin
      LblNum.Caption := CDS_DadosCheque.FieldByName('NUMERO').AsString;
      LblDtCheque.Caption := CDS_DadosCheque.FieldByName('DATA').AsString;
      LblBanco.Caption := CDS_DadosCheque.FieldByName('BANCO').AsString;
    end
    else
    begin
      LblNum.Caption := '';
      LblDtCheque.Caption := '';
      LblBanco.Caption := '';
    end;
    //endi
  end;
  //endth
end;

procedure TFrmRelEventos.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  dValor := 0;
end;

procedure TFrmRelEventos.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if FrmDados.CDS_ContasRecNubia.Eof then
  begin
    //LblTotal.Caption := 'Total: R$' + formatfloat('###,###,##0.00',dValor);
    LblTotal.Caption := '';
  end
  else
  begin
    //LblValor.Caption := '';
    LblTotal.Caption := '';
  end;
  //endi
end;

end.
