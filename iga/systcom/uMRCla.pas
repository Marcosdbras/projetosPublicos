unit uMRCla;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables;

type
  TfrmMRCla = class(TForm)
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
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    imgdocno: TImage;
    imgdocin: TImage;
    Timer1: TTimer;
    Label8: TLabel;
    Bevel1: TBevel;
    procedure sPdGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rgbtiporelClick(Sender: TObject);
    procedure spdSairClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMRCla: TfrmMRCla;

implementation

uses urelest, uPrincipal, uDados, uPesqPro, uRelProdSS, urelrescla ,urelcla , uRelclas;

{$R *.DFM}

procedure TfrmMRCla.sPdGravarClick(Sender: TObject);
  var
    vardir:String;
begin
VarDir := Extractfilepath(application.exename);
if rgbtiporel.ItemIndex = -1 then
   begin
     Showmessage('Antes de clicar nesse botão, selecione o relatório desejado');
     exit;
   end;
//endi

if rgbtiporel.ItemIndex = 0 then
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

if rgbtiporel.ItemIndex = 1 then
   begin
      with frmdados do
        begin
          sqp_dados.Close;
          sqp_dados.StoredProcName := 'res_cla_conta';
        end;
      //endth
      frmrelrescla := tfrmrelrescla.Create(self);
      frmrelrescla.relatorio.Preview;
      frmrelrescla.Free;
   end;
//endi

if rgbtiporel.ItemIndex = 4 then
   begin
   frmrelcla := tfrmrelcla.create(self);
   frmrelcla.relatorio.preview;
   frmrelcla.free;
   end;
//endi
if rgbtiporel.ItemIndex = 5 then
   begin
   frmrelclas := tfrmrelclas.create(self);
   frmrelclas.relatorio.preview;
   frmrelclas.free;
   end;
//endi

end;

procedure TfrmMRCla.FormShow(Sender: TObject);
begin
imgdocno.Visible := true;
imgdocin.Visible := false;
spdgravar.Enabled := false;
timer1.Enabled := true;
end;

procedure TfrmMRCla.rgbtiporelClick(Sender: TObject);
begin
spdgravar.Enabled := true;

end;

procedure TfrmMRCla.spdSairClick(Sender: TObject);
begin
close;
end;

procedure TfrmMRCla.Timer1Timer(Sender: TObject);
begin
if imgdocno.Visible then
   begin
     imgdocno.Visible := false;
     imgdocin.Visible := true;
   end
else
   begin
     imgdocno.Visible := true;
     imgdocin.Visible := false;
   end;
//endi

end;

procedure TfrmMRCla.FormClose(Sender: TObject; var Action: TCloseAction);
begin
timer1.Enabled := false;
Action:=caFree;
frmMRcla:=nil;

end;

end.
