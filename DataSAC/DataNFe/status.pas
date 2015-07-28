unit status;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmStatus = class(TForm)
    Panel1: TPanel;
    lbl1: TLabel;
    lblStatus: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStatus: TfrmStatus;

implementation

{$R *.dfm}

procedure TfrmStatus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

end.
