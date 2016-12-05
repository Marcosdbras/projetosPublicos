unit urelest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBClient, SimpleDS, StdCtrls;

type
  Tfrmrelest = class(TForm)
    relatorio: TQuickRep;
    rodape: TQRBand;
    detalhe: TQRBand;
    cabecalho: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit4: TQRLabel;
    lbltit3: TQRLabel;
    lbltit2: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure rodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ftotcusto, ftotpreco, ftotlucro:real;
  public
    { Public declarations }
  end;

var
  frmrelest: Tfrmrelest;

implementation
   uses udados, ugeral;
{$R *.dfm}

procedure Tfrmrelest.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  ftotcusto := 0;
  ftotpreco := 0;
  ftotlucro := 0;

  

end;

procedure Tfrmrelest.detalheBeforePrint(Sender: TQRCustomBand;
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

  ftotcusto := ftotcusto + frmdados.CdsAdo_ItensV.fieldbyname('custo').asfloat;
  ftotpreco := ftotpreco + frmdados.CdsAdo_ItensV.fieldbyname('preco').asfloat;
end;

procedure Tfrmrelest.rodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if not frmdados.CdsAdo_ItensV.Eof then
   begin
   end
else
   begin
   end;
//endi
end;

procedure Tfrmrelest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmrelest:=nil;

end;

end.
