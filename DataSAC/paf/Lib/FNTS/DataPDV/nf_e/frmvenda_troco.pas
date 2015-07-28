unit frmvenda_troco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  Tfrmvenda_troc = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    ltroco: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_troc: Tfrmvenda_troc;

implementation

{$R *.dfm}

procedure Tfrmvenda_troc.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_troc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
