unit urelestmin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  Tfrmrelestmin = class(TForm)
    relatorio: TQuickRep;
    rodape: TQRBand;
    detalhe: TQRBand;
    cabecalho: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    lbl1: TQRLabel;
    QRLabel6: TQRLabel;
    lblqua: TQRLabel;
    lbluni: TQRLabel;
    lbldescricao: TQRLabel;
    lblatimin: TQRLabel;
    lblatimax: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit4: TQRLabel;
    lbltit3: TQRLabel;
    lbltit2: TQRLabel;
    lblcodigo: TQRLabel;
    QRLabel7: TQRLabel;
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    ftotcusto, ftotpreco, ftotlucro:real;
    ipag:integer;
  public
    { Public declarations }
  end;

var
  frmrelestmin: Tfrmrelestmin;

implementation
   uses udados, ugeral, uPesqVprod;
{$R *.dfm}

procedure Tfrmrelestmin.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  ipag := 0;

  ftotcusto := 0;
  ftotpreco := 0;
  ftotlucro := 0;

  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Estoque Crítico' ;
  lbltit4.Caption := frmpesqvprod.sTitRel;
end;

procedure Tfrmrelestmin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmrelestmin:=nil;

end;

procedure Tfrmrelestmin.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

if frmpesqvprod.cbxclassificar.Text = 'Descrição' then
   begin
     lblcodigo.Caption := frmdados.Cds_dados.fieldbyname('codigo').AsString;
   end;
//endi
if frmpesqvprod.cbxclassificar.Text = 'Automático' then
   begin
     lblcodigo.Caption := frmdados.Cds_dados.fieldbyname('codigo').AsString;
   end;
//endi
if frmpesqvprod.cbxclassificar.Text = 'Auxiliar' then
   begin
     lblcodigo.Caption := frmdados.Cds_dados.fieldbyname('caux').AsString;
   end;
//endi
if frmpesqvprod.cbxclassificar.Text = 'Barra' then
   begin
     lblcodigo.Caption := frmdados.Cds_dados.fieldbyname('cbar').AsString;
   end;
//endi

lblqua.Caption := formatfloat('###,###,##0.000',frmdados.Cds_dados.fieldbyname('qua').asfloat);
lbldescricao.Caption := frmdados.Cds_dados.fieldbyname('descricao').AsString;
lbluni.Caption := '';
if frmdados.Cds_Unidade.Locate('codigo',frmdados.Cds_dados.fieldbyname('cuni').asInteger,[]) then
   lbluni.Caption := frmdados.Cds_dados.fieldbyname('descricao').AsString;
//endi
lblatimin.Caption := formatfloat('###,###,##0.000',frmdados.Cds_dados.fieldbyname('comprar1').asfloat);
if frmdados.Cds_dados.fieldbyname('estmax').asfloat > frmdados.Cds_dados.fieldbyname('estmin').asfloat then
   lblatimax.Caption := formatfloat('###,###,##0.000',frmdados.Cds_dados.fieldbyname('comprar2').asfloat)
else
   lblatimax.Caption := '0,000';
//endi
end;

procedure Tfrmrelestmin.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  ipag := ipag + 1;
  lbltit2.Caption := 'PAG. '+inttostr(ipag);


end;

end.
