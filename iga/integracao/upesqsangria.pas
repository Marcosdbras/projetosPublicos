unit upesqsangria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB;

type
  Tfrmpesqsangria = class(TForm)
    DBGrid1: TDBGrid;
    Filtrar: TBitBtn;
    Sair: TBitBtn;
    btnlimpar: TBitBtn;
    procedure SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FiltrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpesqsangria: Tfrmpesqsangria;

implementation
  uses udados, ugeral, ufiltrosangria;
{$R *.dfm}

procedure Tfrmpesqsangria.SairClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmpesqsangria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := CaFree;
  Frmpesqsangria := nil;
end;

procedure Tfrmpesqsangria.FiltrarClick(Sender: TObject);
begin
frmfiltrosangria := tfrmfiltrosangria.create(self);
frmfiltrosangria.showmodal;
frmfiltrosangria.free;
end;

procedure Tfrmpesqsangria.FormShow(Sender: TObject);
begin
tabela :=  'Sangria';
end;

procedure Tfrmpesqsangria.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
  begin
    if frmdados.cds_sangria.State in [dsEdit, dsInsert] then
       frmdados.cds_sangria.Post;
    //endi
  end;
//endi
end;

procedure Tfrmpesqsangria.btnlimparClick(Sender: TObject);
begin
  WITH FrmDados do
  begin
    DBX_Sangria.Active:=False;
    DBX_Sangria.SQL.Clear;
    DBX_Sangria.SQL.Add('SELECT S.* FROM SANGRIA S ');
    DBX_Sangria.Active:=True;
    CDS_Sangria.Refresh;
  END;
  //endth

end;

end.
