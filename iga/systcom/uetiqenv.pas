unit uetiqenv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SayPrint;

type
  Tfrmetiqenv = class(TForm)
    Label1: TLabel;
    edinvol1: TEdit;
    btnimprimir: TButton;
    btncancelar: TButton;
    Label2: TLabel;
    edincli: TEdit;
    Label3: TLabel;
    edinvol2: TEdit;
    Label4: TLabel;
    edinfs: TEdit;
    sImpEtq: TSayPrint;
    procedure btnimprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edinvol1KeyPress(Sender: TObject; var Key: Char);
    procedure btncancelarClick(Sender: TObject);
    procedure edinvol2KeyPress(Sender: TObject; var Key: Char);
    procedure edincliKeyPress(Sender: TObject; var Key: Char);
    procedure edinfsKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmetiqenv: Tfrmetiqenv;

implementation
   uses ugeral, udados;

{$R *.dfm}

procedure Tfrmetiqenv.btnimprimirClick(Sender: TObject);
var x,y,z:integer;
begin
x := strtoint(edinvol1.Text);
y := strtoint(edinvol2.Text);

if x > y then
   exit;
//endi



for z := x to y do
  begin
    sImpEtq.BeginPrn;

    sImpEtq.Say(0,1,copy(edincli.Text,1,30));
    sImpEtq.Say(1,1,'');

    sImpEtq.Say(2,1,'Vol(s) '+inttostr(z)+' / '+inttostr(y)  );

    sImpEtq.Say(3,1,'NF(s) '+copy(edinfs.Text,1,23));

    sImpEtq.Say(6,1,'');

    sImpEtq.EndPrn;

    sleep(500);

  end;
//endi




close;
end;

procedure Tfrmetiqenv.FormShow(Sender: TObject);
begin
edinvol1.Text := '1';

try
  edinvol2.Text := inttostr(frmdados.Cds_NF.fieldbyname('quantidade').asInteger);
except
  edinvol2.Text := '1';
end;

edincli.Text := frmdados.Cds_NF.fieldbyname('ncli').asString;
edinfs.Text := '';

with frmdados do
  begin
    cds_nfe.Active := false;
    Dbx_nfe.Active := false;
    Dbx_nfe.SQL.Clear;
    Dbx_nfe.SQL.Add('Select * from nfe where codnf = '+inttostr(cds_nf.fieldbyname('codigo').asInteger));
    Dbx_nfe.Active := true;
    Cds_nfe.Active := true;

    while true do
      begin
        edinfs.Text := edinfs.Text + cds_nfe.fieldbyname('nnf').asString;

        cds_nfe.Next;
        if cds_nfe.Eof then
           break;
        //endi

        edinfs.Text := edinfs.Text + ' / '

      end;
    //endi

  end;
//endi

end;

procedure Tfrmetiqenv.edinvol1KeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmetiqenv.btncancelarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmetiqenv.edinvol2KeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmetiqenv.edincliKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     exit;
   end;
//endi

end;

procedure Tfrmetiqenv.edinfsKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     exit;
   end;
//endi

end;

end.
