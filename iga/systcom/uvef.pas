unit uvef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  Tfrmvef = class(TForm)
    Label1: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvef: Tfrmvef;

implementation

{$R *.dfm}

procedure Tfrmvef.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure Tfrmvef.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmvef:=nil;

end;

end.
