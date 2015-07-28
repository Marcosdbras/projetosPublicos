unit prevenda_cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tfrmprevenda_cliente = class(TForm)
    Label1: TLabel;
    ed_nome: TEdit;
    Label2: TLabel;
    ed_endereco: TEdit;
    Label3: TLabel;
    ed_bairro: TEdit;
    Label4: TLabel;
    ed_cidade: TEdit;
    Label5: TLabel;
    ed_cpf: TEdit;
    Label6: TLabel;
    ed_uf: TEdit;
    Panel1: TPanel;
    Bevel1: TBevel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure ed_nomeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprevenda_cliente: Tfrmprevenda_cliente;

implementation

uses prevenda;

{$R *.dfm}

procedure Tfrmprevenda_cliente.Button1Click(Sender: TObject);
begin
  spvc_nome := ed_nome.text;
  spvc_endereco := ed_endereco.Text;
  spvc_cidade := ed_cidade.text;
  spvc_bairro := ed_bairro.text;
  spvc_uf := ed_uf.text;
  spvc_cpf := ed_cpf.text;
  close;
end;

procedure Tfrmprevenda_cliente.ed_nomeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

end.
