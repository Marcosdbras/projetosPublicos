unit uqtdecoma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmqtdecoma = class(TForm)
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
  frmqtdecoma: Tfrmqtdecoma;

implementation
   uses ugeral, udados, uimpcoma;

{$R *.dfm}

procedure Tfrmqtdecoma.btnimprimirClick(Sender: TObject);
var x:integer;
begin
for x := 1 to strtoint(edincopias.Text) do
  begin
    frmimpcoma := tfrmimpcoma.create(self);
    frmimpcoma.lblempresa.Caption := frmdados.Cds_Config.fieldbyname('campo2').asString ;
    frmimpcoma.lblnome.Caption := '';
    frmimpcoma.lblprve.Caption := '';
    frmimpcoma.ABarra1.Codigo :=  '823456789'+formatfloat('000',x);
    frmimpcoma.lblcbar.Caption := frmimpcoma.ABarra1.Codigo+frmimpcoma.ABarra1.Digito;
    frmimpcoma.Print;
    frmimpcoma.Free;
  end;
//endf
close;
end;

procedure Tfrmqtdecoma.FormShow(Sender: TObject);
begin
edincopias.Text := '0';
end;

procedure Tfrmqtdecoma.edincopiasKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmqtdecoma.btncancelarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmqtdecoma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmqtdecoma:=nil;

end;

end.
