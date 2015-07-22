unit uimpetqav29mm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, abarra, StdCtrls;

type
  Tfrmimpetqav29mm = class(TForm)
    ABarra1: TABarra;
    lblempresa: TLabel;
    lblnome: TLabel;
    lblprve: TLabel;
    lblcbar: TLabel;
    lblcaux: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmimpetqav29mm: Tfrmimpetqav29mm;

implementation

{$R *.dfm}

procedure Tfrmimpetqav29mm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmimpetqav29mm :=nil;

end;

end.
