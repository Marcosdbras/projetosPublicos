unit lancamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB;

type
  Tfrmlancamentos = class(TForm)
    DBGrid1: TDBGrid;
    dslancamento: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlancamentos: Tfrmlancamentos;

implementation
     uses modulo;
{$R *.dfm}

procedure Tfrmlancamentos.FormCreate(Sender: TObject);
begin
  with frmmodulo do
     begin
       zquery2.Active := false;
       zquery2.SQL.Clear;
       zquery2.SQL.Add('select * from c000089');
       zquery2.Active := true;

     end;

end;

end.
