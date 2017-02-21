unit papelparede;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons;

type
  TfrmPapelParede = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    ListBox1: TListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure ListBox1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPapelParede: TfrmPapelParede;

implementation

uses modulo, principal;

{$R *.dfm}

procedure TfrmPapelParede.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure TfrmPapelParede.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPapelParede.ListBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then BitBtn1.setfocus;
  if key = #27 then close;
end;

end.


512 792   128 1 
