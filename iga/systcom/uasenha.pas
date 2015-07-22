unit uasenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TfrmAsenha = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edisenhan: TEdit;
    edisenhacf: TEdit;
    spdcancelar2310: TSpeedButton;
    sPdGravar: TSpeedButton;
    procedure spdcancelar2310Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sPdGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAsenha: TfrmAsenha;

implementation
  uses ugeral, udados;

{$R *.dfm}

procedure TfrmAsenha.spdcancelar2310Click(Sender: TObject);
begin
close;
end;

procedure TfrmAsenha.FormShow(Sender: TObject);
begin
tabela := 'Usuarios';
form_ativo := 'frmasenha';

with frmdados do
  begin
    cds_usuarios.Active := false;
    dbx_usuarios.Active := false;
    dbx_usuarios.SQL.Clear;
    dbx_usuarios.SQL.Add('Select * from usuarios where codigo = '+inttostr(icusu));
    dbx_usuarios.Active := true;
    cds_usuarios.Active := true;
  end;
//endw

edisenhan.Text := '';
edisenhacf.Text := '';

end;

procedure TfrmAsenha.sPdGravarClick(Sender: TObject);
begin
if edisenhan.Text = '' then
   exit;
//endi
if edisenhacf.Text = '' then
   exit;
//endi

tabela := 'Usuarios';


with frmdados do
  begin
    if edisenhan.Text = edisenhacf.Text then
       begin
         //cds_usuarios.Edit;
         //cds_usuarios.FieldByName('senha').asString := edisenhan.Text;
         //cds_usuarios.Post;

         dbx_exec.Active := false;
         dbx_exec.SQL.Clear;
         dbx_exec.SQL.Add('update usuarios set senha = '+quotedstr(edisenhan.Text)+' where codigo = '+inttostr(icusu));
         dbx_exec.ExecSQL;

         close;
       end
    else
       begin
         showmessage('Senha Inconsistente, redigite-a novamente...');
       end;
    //endi

  end;
//endw
end;

procedure TfrmAsenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmasenha:=nil;
  form_ativo := '';

end;

end.
