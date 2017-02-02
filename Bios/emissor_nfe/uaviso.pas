unit uaviso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmaviso = class(TForm)
    Memo1: TMemo;
    Button3: TButton;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaviso: Tfrmaviso;

implementation
   uses shellapi;
{$R *.dfm}

procedure Tfrmaviso.Button1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmaviso.Button3Click(Sender: TObject);
begin

ShellExecute(handle,'open','http://aplicacao.esy.es','','',SW_SHOWNORMAL);
  
end;

procedure Tfrmaviso.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

end.
