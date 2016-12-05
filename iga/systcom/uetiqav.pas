unit uetiqav;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmetiqav = class(TForm)
    Label1: TLabel;
    edincopias: TEdit;
    btnimprimir: TButton;
    btncancelar: TButton;
    procedure btnimprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edincopiasKeyPress(Sender: TObject; var Key: Char);
    procedure btncancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmetiqav: Tfrmetiqav;

implementation
   uses ugeral, udados, uimpetqav, uimpetqav29mm;

{$R *.dfm}

procedure Tfrmetiqav.btnimprimirClick(Sender: TObject);
var x:integer;
begin
for x := 1 to strtoint(edincopias.Text) do
  begin

    if frmdados.Cds_Indice.FieldByName('tipoetiq').asInteger = 1 then
       begin

         frmimpetqav := tfrmimpetqav.create(self);
         frmimpetqav.lblempresa.Caption := frmdados.Cds_Config.fieldbyname('campo2').asString ;
         frmimpetqav.lblnome.Caption := copy(frmdados.Cds_vProdutos.fieldbyname('descricao').AsString,1,30);
         if frmdados.Cds_Indice.FieldByName('impvlrcb').AsInteger = 1 then
            frmimpetqav.lblprve.Caption := 'R$ '+formatfloat('###,###,##0.00',frmdados.Cds_vProdutos.fieldbyname('prve').Asfloat)
         else
            frmimpetqav.lblprve.Caption := '';
         //endi
         frmimpetqav.ABarra1.Codigo :=  copy(frmdados.Cds_vProdutos.fieldbyname('cbar').asstring,1,12);
         frmimpetqav.lblcbar.Caption :=  frmdados.Cds_vProdutos.fieldbyname('cbar').asstring;
         frmimpetqav.Print;
         frmimpetqav.Free;

       end;
    //endi

    if frmdados.Cds_Indice.FieldByName('tipoetiq').asInteger = 2 then
       begin

         frmimpetqav29mm := tfrmimpetqav29mm.create(self);
         frmimpetqav29mm.lblempresa.Caption := frmdados.Cds_Config.fieldbyname('campo2').asString ;
         frmimpetqav29mm.lblnome.Caption := copy(frmdados.Cds_vProdutos.fieldbyname('descricao').AsString,1,30);
         if frmdados.Cds_Indice.FieldByName('impvlrcb').AsInteger = 1 then
            frmimpetqav29mm.lblprve.Caption := 'R$ '+formatfloat('###,###,##0.00',frmdados.Cds_vProdutos.fieldbyname('prve').Asfloat)
         else
            frmimpetqav29mm.lblprve.Caption := '';
         //endi
         frmimpetqav29mm.ABarra1.Codigo :=  copy(frmdados.Cds_vProdutos.fieldbyname('cbar').asstring,1,12);
         frmimpetqav29mm.lblcbar.Caption :=  frmdados.Cds_vProdutos.fieldbyname('cbar').asstring;
         frmimpetqav29mm.lblcaux.Caption :=  frmdados.Cds_vProdutos.fieldbyname('caux').asstring;

         frmimpetqav29mm.Print;
         frmimpetqav29mm.Free;

       end;
    //endi




  end;
//endf
close;
end;

procedure Tfrmetiqav.FormShow(Sender: TObject);
begin
edincopias.Text := '0';
end;

procedure Tfrmetiqav.edincopiasKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     exit;
   end;
//endi
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure Tfrmetiqav.btncancelarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmetiqav.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmetiqav:=nil;

end;

end.
