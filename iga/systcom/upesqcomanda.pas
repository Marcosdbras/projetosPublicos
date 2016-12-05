unit upesqcomanda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DB;

type
  Tfrmpesqcomanda = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    edicomanda: TEdit;
    procedure edicomandaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edicomandaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpesqcomanda: Tfrmpesqcomanda;

implementation
    uses ugeral, udados, ucomandap;
{$R *.dfm}

procedure Tfrmpesqcomanda.edicomandaKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqcomanda.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     frmcomandap.edicomanda.Text := frmdados.Cds_totalcmdb.fieldbyname('cmdb').asString;
     close;
     //SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqcomanda.FormShow(Sender: TObject);
begin
edicomanda.Text := '';

with frmdados do
  begin
    cds_totalcmdb.Active := false;
    dbx_totalcmdb.Active := false;
    dbx_totalcmdb.SQL.Clear; 
    dbx_totalcmdb.SQL.Add('Select * from totalcmdb');
    dbx_totalcmdb.Active := true;
    cds_totalcmdb.Active := true;

  end;
//endth
end;

procedure Tfrmpesqcomanda.FormCreate(Sender: TObject);
begin
frmcomandap.edicomanda.SetFocus; 
end;

procedure Tfrmpesqcomanda.edicomandaChange(Sender: TObject);
begin
if edicomanda.Text <> '' then
   begin
     frmdados.cds_totalcmdb.Locate('cmdb',edicomanda.Text,[loPartialKey,loCaseInsensitive]);
   end;
//endi

end;

procedure Tfrmpesqcomanda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = VK_ESCAPE then
   close;
//endi


end;

end.
