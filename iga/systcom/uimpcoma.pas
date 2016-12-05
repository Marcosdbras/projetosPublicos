unit uimpcoma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, abarra, StdCtrls;

type
  Tfrmimpcoma = class(TForm)
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
  frmimpcoma: Tfrmimpcoma;

implementation

{$R *.dfm}

procedure Tfrmimpcoma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmimpcoma:=nil;

end;

end.
