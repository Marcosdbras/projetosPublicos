unit venda_relrazao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, StdCtrls;

type
  Tfrmvenda_relrazao = class(TForm)
    relatorio: TQuickRep;
    QRBand1: TQRBand;
    rempresa: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    RR: TQRLabel;
    QRShape5: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    rcodcliente: TQRLabel;
    rcliente: TQRLabel;
    rendereco: TQRLabel;
    rtelefone: TQRLabel;
    rcpf: TQRLabel;
    rrg: TQRLabel;
    rcodigo: TQRLabel;
    rprazo: TQRLabel;
    rvendedor: TQRLabel;
    remissao: TQRLabel;
    QRShape6: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    ritens: TQRLabel;
    rsubtotal: TQRLabel;
    rdesconto: TQRLabel;
    rtotal: TQRLabel;
    QRShape7: TQRShape;
    QRLabel26: TQRLabel;
    QRShape9: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel3: TQRLabel;
    procedure rcodigoPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_relrazao: Tfrmvenda_relrazao;
    xsubtotal, xdesconto, xtotal, xitens : string;

implementation

uses venda_pdv, modulo;

{$R *.DFM}

procedure Tfrmvenda_relrazao.rcodigoPrint(sender: TObject;
  var Value: String);
var
 ii,vpaginas : integer;
 vtot,vtotal_pagina : double;
begin

  vtotal_pagina := frmvenda_pdv.qrvenda_produto.RecordCount;
  vtot := int(vtotal_pagina/17);
  vpaginas := strtoint(floattostr(vtot))-relatorio.PageNumber;

  if vpaginas >= 0 then
  begin
    ritens.Caption    := 'XXXXXXXX';
    rsubtotal.Caption := 'XXXXXXXX';
    rdesconto.Caption := 'XXXXXXXX';
    rtotal.Caption    := 'XXXXXXXX';
  end
  else
  begin
    rsubtotal.Caption := xsubtotal;
    ritens.Caption    := xitens;
    rdesconto.Caption := xdesconto;
    rtotal.Caption    := xtotal;
  end;
end;

end.
