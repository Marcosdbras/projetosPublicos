unit uimpetqav;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, abarra, StdCtrls;

type
  Tfrmimpetqav = class(TForm)
    ABarra1: TABarra;
    lblempresa: TLabel;
    lblnome: TLabel;
    lblprve: TLabel;
    lblcbar: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmimpetqav: Tfrmimpetqav;

implementation

{$R *.dfm}

procedure Tfrmimpetqav.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmimpetqav:=nil;

end;

end.
