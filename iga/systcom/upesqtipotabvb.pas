unit upesqtipotabvb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls;

type
  Tfrmpesqtipotabvb = class(TForm)
    cbxnometipotab: TDBLookupComboBox;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpesqtipotabvb: Tfrmpesqtipotabvb;

implementation
   uses ugeral, udados, upesqvprod;
{$R *.dfm}

procedure Tfrmpesqtipotabvb.FormShow(Sender: TObject);
begin

tabela := 'Temp';

with frmdados do
  begin
    cds_tipotab.Active := false;
    dbx_tipotab.Active := false;
    dbx_tipotab.SQL.Clear;
    dbx_tipotab.SQL.Add('Select * from tipotab');
    dbx_tipotab.Active := true;
    cds_tipotab.Active := true;
  end;
//endth
end;

procedure Tfrmpesqtipotabvb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//showmessage(frmdados.Cds_Temp.fieldbyname('cod').asString);
end;

end.
