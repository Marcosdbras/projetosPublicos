unit uinfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrminfo = class(TForm)
    Label1: TLabel;
    lblnserie: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frminfo: Tfrminfo;

implementation

{$R *.dfm}
   uses ugeral, udados;
procedure Tfrminfo.FormShow(Sender: TObject);
begin
lblnserie.Caption  := SerialNum('C');
end;

procedure Tfrminfo.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Action:=caFree;
  frminfo:=nil;
  form_ativo := '';

end;

end.
