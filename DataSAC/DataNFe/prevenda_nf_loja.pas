unit prevenda_nf_loja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmprevenda_nf_loja = class(TForm)
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
  frmprevenda_nf_loja: Tfrmprevenda_nf_loja;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmprevenda_nf_loja.enfKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    enf.Text := frmprincipal.zerarcodigo(enf.Text,6);
    NUMERO_NOTAZ := enf.text;
    close;
  end;
end;

procedure Tfrmprevenda_nf_loja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := cafree;
end;

end.
