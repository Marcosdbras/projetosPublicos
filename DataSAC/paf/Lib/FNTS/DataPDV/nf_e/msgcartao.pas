unit msgcartao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  Tfrmmsgcartao = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmsgcartao: Tfrmmsgcartao;

implementation

uses principal;

{$R *.dfm}

procedure Tfrmmsgcartao.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if edit1.text = '1' then
    begin
      retmsg := true;
      close;
    end;
    if edit1.text = '2' then
    begin
     retmsg := false;
     close;
    end;
  end;
end;

procedure Tfrmmsgcartao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
