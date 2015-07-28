unit cnif;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmCNIF = class(TForm)
    ListBox1: TListBox;
    procedure ListBox1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCNIF: TfrmCNIF;

implementation

uses principal;

{$R *.dfm}

procedure TfrmCNIF.ListBox1DblClick(Sender: TObject);
var i : integer;
begin
   i := ListBox1.ItemIndex;

  frmprincipal.ed_ecf_cnif.Text :=
    copy(ListBox1.Items.Strings[i],11,2)+
    copy(ListBox1.Items.Strings[i],18,2)+
    copy(ListBox1.Items.Strings[i],25,2);

  close;


end;

end.


