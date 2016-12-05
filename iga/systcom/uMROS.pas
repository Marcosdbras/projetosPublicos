unit uMROS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Mask, ComCtrls;

type
  TfrmMROS = class(TForm)
    rgbtiporel: TRadioGroup;
    sPdGravar: TSpeedButton;
    spdSair: TSpeedButton;
    tabprodutos: TTable;
    tabEstCri: TTable;
    tabEstCricodigo: TFloatField;
    tabEstCrinome: TStringField;
    tabEstCriQUA: TFloatField;
    tabEstCriUNI: TStringField;
    tabEstCriCBAR: TStringField;
    tabEstCriCAUX: TStringField;
    tabEstCriCFAB: TStringField;
    tabEstCriESTMIN: TFloatField;
    tabEstCriESTMAX: TFloatField;
    tabEstCriRESERVA: TFloatField;
    tabEstCriSALDOEST: TFloatField;
    tabEstCriCOMPRA: TFloatField;
    tabmarcas: TTable;
    Label1: TLabel;
    Label8: TLabel;
    Bevel1: TBevel;
    pnldata: TPanel;
    procedure sPdGravarClick(Sender: TObject);
    procedure spdSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    ftotal, ftotalc:real;
  end;

var
  frmMROS: TfrmMROS;

implementation

uses urelest, uPrincipal, uDados, uPesqPro, uRelProdSS, uRelProdVB, uGeral,
  urelest_cr, ureldfatu, ureldlu, urelos;

{$R *.DFM}

procedure TfrmMROS.sPdGravarClick(Sender: TObject);
  var
    vardir, sDatai, sDataf:String;

begin
VarDir := Extractfilepath(application.exename);
if rgbtiporel.ItemIndex = -1 then
   begin
     Showmessage('Antes de clicar nesse botão, selecione o relatório desejado');
     exit;
   end;
//endi

if rgbtiporel.ItemIndex = 1 then
   begin
   end;
//endi

if rgbtiporel.ItemIndex = 3 then
   begin


   end;
//endi

if rgbtiporel.ItemIndex = 2 then
   begin

   end;
//endi

if rgbtiporel.ItemIndex = 0 then
   begin
     frmrelos := tfrmrelos.Create(self);
     frmrelos.relatorio.Preview;
     frmrelos.Free;

   end;
//endi

if rgbtiporel.ItemIndex = 4 then
   begin

   end;
//endi


end;

procedure TfrmMROS.spdSairClick(Sender: TObject);
begin
close;
end;

procedure TfrmMROS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmMROS:=nil;

end;

end.
