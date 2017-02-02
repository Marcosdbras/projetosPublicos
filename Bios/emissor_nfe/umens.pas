unit umens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmmens = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Memo1Enter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmens: Tfrmmens;

implementation

{$R *.dfm}

procedure Tfrmmens.Memo1Enter(Sender: TObject);
begin
SelectNext(ActiveControl,True,True);
end;

procedure Tfrmmens.Button1Click(Sender: TObject);
begin
close;
end;

procedure Tfrmmens.FormCreate(Sender: TObject);
begin
memo1.Clear;
end;

end.
