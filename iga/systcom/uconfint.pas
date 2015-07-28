unit uconfint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Grids, DBGrids;

type
  Tfrmconfint = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconfint: Tfrmconfint;

implementation
 uses udados, ugeral;

{$R *.dfm}

procedure Tfrmconfint.FormShow(Sender: TObject);
begin

tabela := 'tgicms';

with frmdados do
  begin

    cds_tgicms.Active := false;
    cds_tgicmscsitb.DefaultExpression := cds_sitb.fieldbyname('codigo').asstring;
    dbx_tgicms.Active := false;
    dbx_tgicms.SQL.Clear;
    dbx_tgicms.sql.Add('Select * from tgicms where csitb = '+cds_sitb.fieldbyname('codigo').asString);
    dbx_tgicms.Active := true;
    cds_tgicms.Active := true;

  end;
//endi
end;

procedure Tfrmconfint.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmConfint:=nil;
  form_ativo := '';

end;

end.
