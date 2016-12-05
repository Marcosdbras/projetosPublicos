unit uMRVD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, Mask, ComCtrls;

type
  TfrmMRVD = class(TForm)
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
  frmMRVD: TfrmMRVD;

implementation

uses urelest, uPrincipal, uDados, uPesqPro, uRelProdSS, uRelProdVB, uGeral,
  urelest_cr, ureldfatu, ureldlu, urelvdint , urelvdd ;

{$R *.DFM}

procedure TfrmMRVD.sPdGravarClick(Sender: TObject);
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
     frmrelvdint := tfrmrelvdint.Create(self);
     frmrelvdint.relatorio.Preview;
     frmrelvdint.Free;
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
     frmrelvdd := tfrmrelvdd.Create(self);
     frmrelvdd.relatorio.Preview;
     frmrelvdd.Free;

   end;
//endi

if rgbtiporel.ItemIndex = 4 then
   begin

   end;
//endi


end;

procedure TfrmMRVD.spdSairClick(Sender: TObject);
begin
close;
end;

procedure TfrmMRVD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmMRvd:=nil;

end;

end.
