unit urellistamatricula;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrellistamatricula = class(TForm)
    relatorio: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    lblsubtitulo: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    lbldtmatricula: TQRLabel;
    lblnome: TQRLabel;
    lblvalor: TQRLabel;
    lbldesconto: TQRLabel;
    lblmotivodesc: TQRLabel;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    vardir:string;
    f:TextFile;

  public
    { Public declarations }
  end;

var
  frmrellistamatricula: Tfrmrellistamatricula;

implementation
 uses udados, ugeral;
{$R *.dfm}

procedure Tfrmrellistamatricula.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbldtmatricula.Caption := frmdados.cds_listamatricula.fieldbyname('dtmatricula').AsString;
  lblnome.Caption := frmdados.cds_listamatricula.fieldbyname('nome').AsString;
  lblvalor.Caption :=  formatfloat('###,###,##0.00', frmdados.cds_listamatricula.fieldbyname('valor').Asfloat)  ;
  lbldesconto.Caption := frmdados.cds_listamatricula.fieldbyname('desconto').AsString;
  lblmotivodesc.Caption := frmdados.cds_listamatricula.fieldbyname('motivodesc').AsString;

    Writeln(f,  lbldtmatricula.caption+';'+
              lblnome.caption+';'+
              formatfloat('0.00',  strtofloat( tirapontos( lblvalor.Caption  )  ) )+';'+
              lbldesconto.caption +';'+
              lblmotivodesc.caption)


  
end;

procedure Tfrmrellistamatricula.relatorioBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  vardir:= extractfilepath(application.ExeName);

  AssignFile(f, vardir+ '\relatorios\matriculas.txt');

  Rewrite(f);

  Writeln(f,lblsubtitulo.Caption);
  Writeln(f,'');


  Writeln(f,'DT MATRICULA; NOME; VALOR; DESCONTO; MOTIVO DESCONTO');

  
end;

procedure Tfrmrellistamatricula.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if frmdados.cds_listamatricula.Eof then
     Closefile(f);
  //endi   

end;

end.
