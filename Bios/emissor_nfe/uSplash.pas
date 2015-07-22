unit uSplash;

interface

uses
  dbiprocs, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, DBTables, jpeg;

type
  TfrmSplash = class(TForm)
    imgSplash: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

uses uGeral, uDados;
{$R *.DFM}

procedure TfrmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmSplash:=nil;

end;

procedure TfrmSplash.FormShow(Sender: TObject);
begin
label2.Caption := '';
{
try
  if frmdados.Cds_Indice.FieldByName('pct5').asString <> '' then
     begin
       imgsplash.Picture.LoadFromFile(frmdados.Cds_Indice.FieldByName('pct5').asString);
     end;
  //endi

except
  smsg := 'erro qdo tentei carregar figura';
end;
}


end;

end.
