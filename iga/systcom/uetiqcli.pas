unit uetiqcli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmetiqcli = class(TForm)
    etiqueta: TQuickRep;
    QRBand1: TQRBand;
    lblnome: TQRLabel;
    lblend: TQRLabel;
    lbln: TQRLabel;
    lblbai: TQRLabel;
    lblcep: TQRLabel;
    lblest: TQRLabel;
    lblcidade: TQRLabel;
    lblcomp: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmetiqcli: Tfrmetiqcli;

implementation
uses udados;

{$R *.dfm}

procedure Tfrmetiqcli.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     lblnome.Caption:=frmDados.Cds_Clientes.fieldbyname('NOME').AsString;
    lblend.Caption:=frmDados.Cds_Fornecedores.fieldbyname('ENDERECO').AsString;
    lbln.Caption:=frmDados.Cds_Fornecedores.fieldbyname('NRO').AsString;
    lblcomp.Caption:=frmDados.Cds_Fornecedores.fieldbyname('COMPLEMENT').AsString;
    lblbai.Caption:=frmDados.Cds_Fornecedores.fieldbyname('BAIRRO').AsString;
    lblcidade.Caption:=frmDados.Cds_Fornecedores.fieldbyname('CIDADE').AsString;
    lblest.Caption:=frmDados.Cds_Fornecedores.fieldbyname('ESTADO').AsString;
    lblcep.Caption:=frmDados.Cds_Fornecedores.fieldbyname('CEP').AsString;

end;

end.
