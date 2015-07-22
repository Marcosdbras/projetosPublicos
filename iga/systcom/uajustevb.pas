unit uajustevb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmajustevb = class(TForm)
    btnalteraritem: TButton;
    btncancupom: TButton;
    btnsair: TButton;
    btnexcluiritem: TButton;
    btndevolveritem: TButton;
    procedure btnsairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnalteraritemClick(Sender: TObject);
    procedure btnexcluiritemClick(Sender: TObject);
    procedure btndevolveritemClick(Sender: TObject);
    procedure btncancupomClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmajustevb: Tfrmajustevb;

implementation


{$R *.dfm}

uses ugeral, udados, ufrenteecf, uMp20i, usangriaecf, uingestaoecf, ucaixaapecf,
  ualterapecf;


procedure Tfrmajustevb.btnsairClick(Sender: TObject);
begin
close;
end;

procedure Tfrmajustevb.FormShow(Sender: TObject);
begin

   btncancupom.Enabled := false;
   btnalteraritem.Enabled := false;
   btnexcluiritem.Enabled := false;
   btndevolveritem.Enabled := false;

   if bcancupom then
      btncancupom.Enabled := true;
   //endi

   if balteraritem then
      btnalteraritem.Enabled := true;
   //endi

   if bexcluiritem then
      btnexcluiritem.Enabled := true;
   //endi

   if bdevolveritem then
      btndevolveritem.Enabled := true;
   //endi

end;

procedure Tfrmajustevb.btnalteraritemClick(Sender: TObject);
begin
if  frmfrenteecf.spdAlterar232.Enabled then
    frmfrenteecf.alteraritem;
//endi
end;

procedure Tfrmajustevb.btnexcluiritemClick(Sender: TObject);
begin
if  frmfrenteecf.spdExcluir234.Enabled then
    frmfrenteecf.excluiProduto;
//endi
if frmdados.Cds_Vendab.RecordCount = 0 then
   begin
     btncancupom.Enabled := false;
     btnalteraritem.Enabled := false;
     btnexcluiritem.Enabled := false;
     btndevolveritem.Enabled := false;
   end;
//endi
end;

procedure Tfrmajustevb.btndevolveritemClick(Sender: TObject);
begin
frmfrenteecf.modoentrada;
end;

procedure Tfrmajustevb.btncancupomClick(Sender: TObject);
begin
frmfrenteecf.cancelapedido;

btncancupom.Enabled := false;
btnalteraritem.Enabled := false;
btnexcluiritem.Enabled := false;
btndevolveritem.Enabled := false;

end;

end.
