unit urelnfemi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  Tfrmrelnfemi = class(TForm)
    relatorio: TQuickRep;
    cabecalho: TQRBand;
    delalhe: TQRBand;
    rodape: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit4: TQRLabel;
    lbltit3: TQRLabel;
    lbltit2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    lblnome: TQRLabel;
    lblcodigo: TQRLabel;
    QRLabel3: TQRLabel;
    lbldataemi: TQRLabel;
    QRLabel4: TQRLabel;
    lblnnf: TQRLabel;
    lblvalor: TQRLabel;
    QRLabel5: TQRLabel;
    lblvalortotal: TQRLabel;
    lbltittotal: TQRLabel;
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure delalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    iPag:integer;
    ftotal:real;
  public
    { Public declarations }
  end;

var
  frmrelnfemi: Tfrmrelnfemi;

implementation
  uses udados, ugeral, upesqnfemi;

{$R *.dfm}

procedure Tfrmrelnfemi.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelnfemi.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 ipag := 0;
 ftotal := 0;

 //lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;

 lblcab1.Caption := 'EMISSOR NOTA FISCAL ELETRÔNICA';
 lbltit1.Caption := datetostr(date);
 lbltit3.Caption := 'RELAÇÃO DE NOTAS FISCAIS EMITIDAS';
 lbltit4.Caption := frmpesqnfemi.sTitRel;

end;

procedure Tfrmrelnfemi.delalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if frmdados.sql_nfe.FieldByName('tipodest').AsString = 'C' then
     begin
       if frmdados.cds_clientes.Locate('codigo',frmdados.sql_nfe.FieldByName('cdest').AsInteger,[]) then
          lblnome.Caption:=frmDados.Cds_clientes.fieldbyname('nome').AsString;
     end
  else
     begin
       if frmdados.cds_fornecedores.Locate('codigo',frmdados.sql_nfe.FieldByName('cdest').AsInteger,[]) then
          lblnome.Caption:=frmDados.Cds_fornecedores.fieldbyname('nome').AsString;

     end;


  lblcodigo.Caption:=frmDados.sql_nfe.fieldbyname('codigo').AsString;
  lbldataemi.Caption:=frmDados.sql_nfe.fieldbyname('dataemi').AsString;
  lblnnf.Caption:=frmDados.sql_nfe.fieldbyname('nnf').AsString;
  lblvalor.Caption:= formatfloat('###,###,##0.00', frmDados.sql_nfe.fieldbyname('vlrtotal').Asfloat);

  ftotal := ftotal + frmDados.sql_nfe.fieldbyname('vlrtotal').Asfloat;

end;

procedure Tfrmrelnfemi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmRelnfemi:=nil;
  form_ativo := '';

end;

procedure Tfrmrelnfemi.rodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

lbltittotal.Caption := '';
lblvalortotal.Caption := '';


if frmdados.sql_nfe.Eof then
   begin
     lbltittotal.Caption := 'TOTAL';
     lblvalortotal.Caption := formatfloat('###,###,##0.00',ftotal);
   end;
//endi

end;

end.
