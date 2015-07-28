unit senha_supervisor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, AdvOfficeImage, frxpngimage, ExtCtrls,
  pngimage;

type
  TfrmSenha_Supervisor = class(TForm)
    Label1: TLabel;
    ed_senha: TRzEdit;
    AdvOfficeImage3: TAdvOfficeImage;
    Image1: TImage;
    procedure ed_senhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ed_senhaEnter(Sender: TObject);
    procedure ed_senhaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSenha_Supervisor: TfrmSenha_Supervisor;

implementation

uses principal, funcoes, venda;

{$R *.dfm}

procedure TfrmSenha_Supervisor.ed_senhaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if Executa_Login('MESTREDATAPDV',ed_senha.text,'') then
    begin
      bSupervisor_autenticado := true;
      close;
    end
    else
    begin
      application.messagebox('Acesso não autorizado!','Erro',mb_ok+mb_iconerror);
      bSair_campo := true;
      close;
    end;
  end
  else
  begin
    if key = #27 then
    begin
      // aborta o cancelamento do item
      bSair_campo := true;
      close;
    end
    else
    begin
      if iTeclado_Modelo = 1 then
      begin
        if key = #8 then strpcopy(@men,key) else strpcopy(@men,'*');
        DispStr(@men);
      end;
    end;
  end;
end;

procedure TfrmSenha_Supervisor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmSenha_Supervisor.FormShow(Sender: TObject);
begin
  Brush.Style := bsClear;
  bsupervisor_autenticado := false;
end;

procedure TfrmSenha_Supervisor.ed_senhaEnter(Sender: TObject);
begin
  if iTeclado_Modelo = 1 then
  begin
    LineFeed;
    CarRet;
  end;
  PopupMenu := nil;
  frmvenda.Imprime_display('SENHA/CARTÃO DO SUPERVISOR...',clYellow,tiAlerta);
  // controlar a saida do edit de cancelamento de item
  bSair_campo := false;
end;

procedure TfrmSenha_Supervisor.ed_senhaExit(Sender: TObject);
begin
  // nao permitir a saida do campo clicando com o mouse em outro lugar
  // ou pressionando tab
  if not bsair_campo then ed_senha.setfocus;
end;

end.
