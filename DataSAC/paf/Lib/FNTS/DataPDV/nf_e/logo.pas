unit logo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtDlgs;

type
  Tfrmlogo = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlogo: Tfrmlogo;

implementation

uses config, modulo;

{$R *.dfm}

procedure Tfrmlogo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

end.
