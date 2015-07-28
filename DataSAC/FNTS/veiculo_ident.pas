unit veiculo_ident;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmveiculo_ident = class(TForm)
    Label1: TLabel;
    ekm: TEdit;
    Label2: TLabel;
    eplaca: TEdit;
    Label3: TLabel;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ekmKeyPress(Sender: TObject; var Key: Char);
    procedure eplacaKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmveiculo_ident: Tfrmveiculo_ident;

implementation

uses venda_fechamento;

{$R *.dfm}

procedure Tfrmveiculo_ident.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

 texto_final :=  'PLACA: '+eplaca.text+'  KM: '+ekm.text+' Vend: '+edit1.text;
 action := cafree;
end;

procedure Tfrmveiculo_ident.ekmKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then eplaca.setfocus;
end;

procedure Tfrmveiculo_ident.eplacaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmveiculo_ident.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then close;
end;

end.
