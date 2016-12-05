unit URelContasRecebidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TFrmRelContasRecebidas = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    LblData: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
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
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape23: TQRShape;
    QRShape21: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    lbltittroco: TQRLabel;
    lbltroco: TQRLabel;
    lbltitsangria: TQRLabel;
    lblsangria: TQRLabel;
    lbltitentrada: TQRLabel;
    lblentrada: TQRLabel;
    lbltitsaida: TQRLabel;
    lblsaida: TQRLabel;
    lbltitsaldo: TQRLabel;
    lblsaldo: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    dValor, dentrada, dsaida : double;
  public
    { Public declarations }
  end;

var
  FrmRelContasRecebidas: TFrmRelContasRecebidas;

implementation

uses UDados, UMenuPrincipal, ugeral;

{$R *.dfm}

procedure TFrmRelContasRecebidas.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //LblData.Caption := FrmPrincipal.sData;
//  dValor := 0;

end;

procedure TFrmRelContasRecebidas.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with FrmDados do
  begin
    dValor := dValor + CDS_ContasRecNubia.FieldBYName('valor').AsFloat;
    dentrada := dentrada + CDS_ContasRecNubia.FieldBYName('entrada').AsFloat;
    dsaida := dsaida + CDS_ContasRecNubia.FieldBYName('saida').AsFloat;

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

procedure TFrmRelContasRecebidas.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  dValor := 0;
  dsaida := 0;
  dentrada := 0;
end;

procedure TFrmRelContasRecebidas.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  sdatai, sdataf:string;

begin
  if FrmDados.CDS_ContasRecNubia.Eof then
    begin

      lbltitsaldo.Caption :=   'Saldo   R$';
      lbltitentrada.Caption := 'Entrada R$';
      lbltitsaida.Caption :=   'Saida   R$';
      lbltittroco.Caption :=   'Troco   R$';
      lbltitsangria.Caption := 'Sangria R$';

      sDataI := lbldata.caption;
      sDataI := bar_is_point( sDataI  );

      sDataF := lbldata.caption;
      sDataF := bar_is_point( sDataF  );

      FrmDados.dbx_exec.Active := false;
      FrmDados.dbx_exec.SQL.Clear;
      FrmDados.dbx_exec.SQL.Add('Select sum(valor) as tot from sangria  group by data having ('+'data >= '+quotedstr(sDataI)+') and (data <= '+quotedstr(sDataF)+')');
      FrmDados.dbx_exec.Active := true;

      lblsangria.Caption := formatfloat('###,##0.00',FrmDados.dbx_exec.fieldbyname('tot').asfloat);

      FrmDados.cds_ingestao.Active := false;
      FrmDados.dbx_ingestao.Active := false;
      FrmDados.dbx_ingestao.SQL.Clear;
      FrmDados.dbx_ingestao.SQL.Add('Select * from ingestao');
      FrmDados.dbx_ingestao.Active := true;
      FrmDados.cds_ingestao.Active := true;

      lbltroco.Caption := formatfloat('###,##0.00',FrmDados.cds_ingestao.fieldbyname('valor').asfloat);

      FrmDados.DBX_EXEC.Active:=False;
      FrmDados.DBX_EXEC.SQL.Clear;
      FrmDados.DBX_EXEC.SQL.Add('SELECT SUM(VALOR) AS TOT, SUM (ENTRADA) AS TOTE, SUM(SAIDA) AS TOTS FROM CONTASARECEBERNUBIA GROUP BY PAGO HAVING ('+'PAGO >= '+quotedstr(sDataI)+') and (PAGO <= '+quotedstr(sDataF)+')');
      FrmDados.DBX_EXEC.Active:=True;

      lblentrada.Caption := formatfloat('###,##0.00',FrmDados.dbx_exec.fieldbyname('tote').asfloat);
      lblsaida.Caption := formatfloat('###,##0.00',FrmDados.dbx_exec.fieldbyname('tots').asfloat);

      lblsaldo.Caption :=  formatfloat('###,###,##0.00',  strtofloat(tirapontos(lbltroco.Caption)) +  strtofloat(tirapontos(lblentrada.Caption)) -  strtofloat(tirapontos(lblsangria.Caption))  -  strtofloat(tirapontos(lblsaida.Caption))  );

      LblTotal.Caption := 'Total: R$ ' + formatfloat('###,###,##0.00',dValor);
    end
  else
  begin
    LblTotal.Caption := '';
    lblsaldo.Caption := '';
    lblentrada.Caption := '';
    lblsaida.Caption := '';
    lbltroco.Caption := '';
    lblsangria.Caption := '';

    lbltitsaldo.Caption := '';
    lbltitentrada.Caption := '';
    lbltitsaida.Caption := '';
    lbltittroco.Caption := '';
    lbltitsangria.Caption := '';


  end;
  //endi






end;

end.
