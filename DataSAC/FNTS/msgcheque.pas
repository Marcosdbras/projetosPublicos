unit msgcheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  Tfrmmsgcheque = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    dxButton3: TButton;
    dxButton1: TButton;
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmsgcheque: Tfrmmsgcheque;

implementation

uses principal;

{$R *.dfm}

procedure Tfrmmsgcheque.dxButton3Click(Sender: TObject);
begin
 retmsg := true;
 close;
end;

procedure Tfrmmsgcheque.dxButton1Click(Sender: TObject);
begin
  retmsg := false;
  close;
end;

procedure Tfrmmsgcheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
