unit urelforc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelforc = class(TForm)
    relatorio: TQuickRep;
    cabecalho: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRBand7: TQRBand;
    QRLabel116: TQRLabel;
    lblcod: TQRLabel;
    QRLabel118: TQRLabel;
    lblcnpj: TQRLabel;
    QRLabel120: TQRLabel;
    lblie: TQRLabel;
    QRLabel122: TQRLabel;
    lblnome: TQRLabel;
    QRLabel124: TQRLabel;
    lbltelefone: TQRLabel;
    QRLabel126: TQRLabel;
    lblemail: TQRLabel;
    QRLabel128: TQRLabel;
    lblsite: TQRLabel;
    QRLabel130: TQRLabel;
    lblcontato: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    lblend: TQRLabel;
    lblcomp: TQRLabel;
    lblcid: TQRLabel;
    QRLabel138: TQRLabel;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    lblest: TQRLabel;
    lblbai: TQRLabel;
    lbln: TQRLabel;
    lblcep: TQRLabel;
    QRLabel145: TQRLabel;
    QRLabel13: TQRLabel;
    lblcodpais1: TQRLabel;
    lblcodpais2: TQRLabel;
    QRLabel18: TQRLabel;
    lblcoduf1: TQRLabel;
    lblcoduf2: TQRLabel;
    QRLabel22: TQRLabel;
    lblcodmuni1: TQRLabel;
    lblcodmuni2: TQRLabel;
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ipag:integer ;
     public
    { Public declarations }
  end;

var
  frmrelforc: Tfrmrelforc;

implementation
uses udados, ugeral, upesqforc;

{$R *.dfm}

procedure Tfrmrelforc.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelforc.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 ipag := 0;

   lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Relatório Detalhado de Fornecedores';
  lbltit4.Caption := frmpesqforc.sTitRel;

end;

procedure Tfrmrelforc.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   lblcod.Caption:=frmDados.Cds_Fornecedores.fieldbyname('CODIGO').AsString;
   lblcnpj.Caption:=frmDados.Cds_Fornecedores.fieldbyname('CPF').AsString;
   lblie.Caption:=frmDados.Cds_Fornecedores.fieldbyname('RG').AsString;
   lblnome.Caption:=frmDados.Cds_Fornecedores.fieldbyname('NOME').AsString;
   lbltelefone.Caption:=frmDados.Cds_Fornecedores.fieldbyname('TELEFONES').AsString;
   lblemail.Caption:=frmDados.Cds_Fornecedores.fieldbyname('EMAIL').AsString;
   lblsite.Caption:=frmDados.Cds_Fornecedores.fieldbyname('SITE').AsString;
   lblcontato.Caption:=frmDados.Cds_Fornecedores.fieldbyname('CONTATO').AsString;
   lblend.Caption:=frmDados.Cds_Fornecedores.fieldbyname('ENDERECO').AsString;
   lbln.Caption:=frmDados.Cds_Fornecedores.fieldbyname('NRO').AsString;
   lblcomp.Caption:=frmDados.Cds_Fornecedores.fieldbyname('COMPLEMENT').AsString;
   lblbai.Caption:=frmDados.Cds_Fornecedores.fieldbyname('BAIRRO').AsString;
   lblcid.Caption:=frmDados.Cds_Fornecedores.fieldbyname('CIDADE').AsString;
   lblest.Caption:=frmDados.Cds_Fornecedores.fieldbyname('ESTADO').AsString;
   lblcep.Caption:=frmDados.Cds_Fornecedores.fieldbyname('CEP').AsString;
   lblcodpais1.Caption:=frmDados.Cds_Fornecedores.fieldbyname('descpaisibge').AsString;
   lblcodpais2.Caption:=frmDados.Cds_Fornecedores.fieldbyname('numpaisibge').AsString;
   lblcoduf1.Caption:=frmDados.Cds_Fornecedores.fieldbyname('descufibge').AsString;
   lblcoduf2.Caption:=frmDados.Cds_Fornecedores.fieldbyname('numufibge').AsString;
   lblcodmuni1.Caption:=frmDados.Cds_Fornecedores.fieldbyname('descmibge').AsString;
   lblcodmuni2.Caption:=frmDados.Cds_Fornecedores.fieldbyname('nummibge').AsString;

end;

procedure Tfrmrelforc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmrelforc:=nil;
end;

end.
