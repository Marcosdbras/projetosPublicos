unit pedido_troco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  Tfrmpedido_troco = class(TForm)
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
  frmpedido_troco: Tfrmpedido_troco;

implementation

{$R *.dfm}

procedure Tfrmpedido_troco.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmpedido_troco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
