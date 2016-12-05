unit urellistpr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBClient, SimpleDS;

type
  Tfrmrellistpr = class(TForm)
    relatorio: TQuickRep;
    rodape: TQRBand;
    detalhe: TQRBand;
    cabecalho: TQRBand;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    lblprve: TQRLabel;
    QRLabel7: TQRLabel;
    lblcodigo: TQRDBText;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure rodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ftotcusto, ftotpreco, ftotlucro:real;
    ipag:integer;
  public
    { Public declarations }
  end;

var
  frmrellistpr: Tfrmrellistpr;

implementation
   uses udados, ugeral, uPesqVprod, urelest_cr;
{$R *.dfm}

procedure Tfrmrellistpr.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  ipag := 0;
  ftotcusto := 0;
  ftotpreco := 0;
  ftotlucro := 0;

  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Inventário';
  lbltit4.Caption := frmpesqvprod.sTitRel;

  lblcodigo.DataField := frmpesqvprod.dbgProdutos.Columns[1].FieldName;

end;

procedure Tfrmrellistpr.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //with frmdados do
  //  begin
  //    Dbx_Exec.Active := false;
  //    Dbx_Exec.SQL.Clear;
  //    Dbx_Exec.SQL.Add('select * from Ent_prod e inner join dProdutos p on e.cpro = p.codigo inner join Produtos u on p.cdescprod=u.codigo where p.codigo = e.cpro order by e.data_ent desc');
  //    Dbx_exec.Active := true;
  //  end;
  //endi

  //lblprcu.Caption := formatfloat('###,###,##0.00',frmdados.cds_vProdutos.fieldbyname('prcu').asfloat);
  lblprve.Caption := formatfloat('###,###,##0.00',frmdados.cds_vProdutos.fieldbyname('prve').asfloat);
  //lbllucrop.Caption := formatfloat('###,###,##0.00',frmdados.cds_vProdutos.fieldbyname('prve').asfloat-frmdados.cds_vProdutos.fieldbyname('prcu').asfloat);


  //ftotcusto := ftotcusto + frmdados.cds_vProdutos.fieldbyname('qua').asfloat*frmdados.cds_vProdutos.fieldbyname('prcu').asfloat;
  //ftotpreco := ftotpreco + frmdados.cds_vProdutos.fieldbyname('qua').asfloat*frmdados.cds_vProdutos.fieldbyname('prve').asfloat;
end;

procedure Tfrmrellistpr.rodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if not frmdados.cds_vProdutos.Eof then
   begin
     //lbltitprcusto.Caption := '';
     //lbltitprpreco.Caption := '';
     //lbltitlucro.Caption :=   '';
     //lbltotprcusto.Caption := '';
     //lbltotprvenda.Caption := '';
     //lbllucro.Caption := '';
   end
else
   begin
     //lbltitprcusto.Caption := 'Tot. G. Custo';
     //lbltitprpreco.Caption := 'Tot. G. Venda';
     //lbltitlucro.Caption := 'Lucro G.';
     //lbltotprcusto.Caption := formatfloat('###,###,##0.00',ftotcusto);
     //lbltotprvenda.Caption := formatfloat('###,###,##0.00',ftotpreco);
     //lbllucro.Caption := formatfloat('###,###,##0.00',ftotpreco-ftotcusto);
   end;
//endi
end;

procedure Tfrmrellistpr.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);

end;

procedure Tfrmrellistpr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmrelest_cr:=nil;

end;

end.
