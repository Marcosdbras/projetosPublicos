unit urelcden;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelcden = class(TForm)
    relatorio: TQuickRep;
    detalhe: TQRBand;
    cabecalho: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    lblnome: TQRLabel;
    lblnomfun: TQRLabel;
    QRLabel7: TQRLabel;
    lblvcomf: TQRLabel;
    lblvalor: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel1: TQRLabel;
    lblpcomf: TQRLabel;
    QRBand1: TQRBand;
    lbltittotal: TQRLabel;
    lbltotvcomf: TQRLabel;
    lbltotvalor: TQRLabel;
    lblncli: TQRLabel;
    QRLabel5: TQRLabel;
    lbldente: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    lblproc: TQRLabel;
    QRLabel2: TQRLabel;
    lbldata: TQRLabel;
    QRLabel8: TQRLabel;
    lblqtde: TQRLabel;
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
        ipag:integer ;
        ftotvalor,
        ftotvcom:real;

  public
    { Public declarations }
  end;

var
  frmrelcden: Tfrmrelcden  ;

implementation
 uses uDados ,ugeral ,uPesqcfunp;
{$R *.dfm}

procedure Tfrmrelcden.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmrelcden:=nil;
end;

procedure Tfrmrelcden.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var iccli:integer;
begin
     lbldata.Caption := frmDados.Cds_Comissao.fieldbyname('datafec').AsString;
     lblncli.Caption := '';
     lblqtde.Caption := '';
     lblproc.Caption := '';
     lbldente.Caption := '';

     with frmdados do
       begin
         dbx_exec.Active := false;
         dbx_exec.SQL.Clear;
         dbx_exec.SQL.Add('select * from svenda where codigo = '+inttostr(cds_comissao.fieldbyname('codsvenda').asInteger) );
         dbx_exec.Active := true;
         if dbx_exec.RecordCount > 0 then
            begin
              iccli := dbx_exec.fieldbyname('ccli').asInteger;
              dbx_exec.Active := false;
              dbx_exec.SQL.Clear;
              dbx_exec.SQL.Add('select * from clientes where codigo = '+inttostr(iccli) );
              dbx_exec.Active := true;
              lblncli.Caption := dbx_exec.fieldbyname('nome').asString;
            end;
         //endi

         cds_dmobra.Active := false;
         dbx_dmobra.Active := false;
         dbx_dmobra.SQL.Clear;
         dbx_dmobra.SQL.Add('select * from dmobra where codigo = '+inttostr(cds_comissao.fieldbyname('cdmobra').asInteger) );
         dbx_dmobra.Active := true;
         cds_dmobra.Active := true;
         if cds_dmobra.RecordCount > 0 then
            begin
              lblqtde.Caption := cds_dmobra.fieldbyname('qtde').asString;
              lblproc.Caption := cds_dmobra.fieldbyname('nlistaprod').asString;
              lbldente.Caption := cds_dmobra.fieldbyname('idmat_restaurar').asString;
            end;
         //endi




       end;
     //endth






     lblnomfun.Caption:=frmDados.Cds_Comissao.fieldbyname('nfun').AsString;
     lblvalor.Caption:=formatfloat('###,###,##0.00',frmDados.Cds_Comissao.fieldbyname('valor').Asfloat);
     lblpcomf.Caption:=formatfloat('###,###,##0.00',frmDados.Cds_Comissao.fieldbyname('PCOMF').Asfloat);
     lblvcomf.Caption:=formatfloat('###,###,##0.00',frmDados.Cds_Comissao.fieldbyname('VCOMF').Asfloat);

     ftotvalor := ftotvalor+frmDados.Cds_Comissao.fieldbyname('valor').Asfloat;
     ftotvcom := ftotvcom+frmDados.Cds_Comissao.fieldbyname('VCOMF').Asfloat;

end;

procedure Tfrmrelcden.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelcden.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

  ipag := 0;

  ftotvalor := 0;
  ftotvcom := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Comissão de Funcionarios';
  lbltit4.Caption := frmpesqcfunp.sTitRel;

end;

procedure Tfrmrelcden.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbltittotal.Caption := '';
  lbltotvalor.Caption := '';
  lbltotvcomf.Caption := '';

  if frmdados.Cds_Comissao.Eof then
     begin
       lbltittotal.Caption := 'Totais';
       lbltotvalor.Caption := formatfloat('###,###,##0.00',ftotvalor);
       lbltotvcomf.Caption := formatfloat('###,###,##0.00',ftotvcom);
     end;
  //endi
end;

end.
