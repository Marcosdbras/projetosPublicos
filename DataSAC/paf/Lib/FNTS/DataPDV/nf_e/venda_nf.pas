unit venda_nf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmvenda_nf = class(TForm)
    Label1: TLabel;
    enf: TEdit;
    procedure enfKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_nf: Tfrmvenda_nf;

implementation

uses modulo_nfe, principal;

{$R *.dfm}

procedure Tfrmvenda_nf.enfKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
  begin
    enf.Text := frmprincipal.zerarcodigo(enf.Text,6);

    NUMERO_NOTAZ := enf.text;


    close;
  end;
end;

procedure Tfrmvenda_nf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

   NUMERO_NOTAZ := enf.text;
   action := cafree;
end;

end.
