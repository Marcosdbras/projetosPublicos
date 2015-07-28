unit transf_Mesa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, DB, MemDS, DBAccess, IBC;

type
  TfrmTransf_Mesa = class(TForm)
    Label1: TLabel;
    EDIT1: TRzNumericEdit;
    query: TIBCQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTransf_Mesa: TfrmTransf_Mesa;

implementation

uses Modulo, principal;

{$R *.dfm}

procedure TfrmTransf_Mesa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmTransf_Mesa.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then close;
  if key = #13 then
  begin
    if edit1.value <= 0 then exit;
    bContinua_mesa := true;
    sMesa_Numero := edit1.text;
    close;
  end;
end;

end.
