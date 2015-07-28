unit usige;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WinSkinData, Menus, ExtCtrls, ToolWin, ComCtrls, StdCtrls,
  Buttons;

type
  Tfrmsige = class(TForm)
    skin: TSkinData;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Func1: TMenuItem;
    Fornecedores1: TMenuItem;
    pnlcentral: TPanel;
    StatusBar1: TStatusBar;
    pnlsuperior: TPanel;
    pnlesquerda: TPanel;
    ScrollBox1: TScrollBox;
    spdfun: TSpeedButton;
    spdforn: TSpeedButton;
    spdsair: TSpeedButton;
    spdlogin: TSpeedButton;
    spdlogoff: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure spdfunClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    OLD_WIDTH,OLD_HEIGHT :Integer;
  public
    { Public declarations }
  end;

var
  frmsige: Tfrmsige;

implementation
   uses ugeral, udados, upesq;

{$R *.dfm}

procedure Tfrmsige.FormShow(Sender: TObject);
var
vardir:string;

begin
vardir := extractfilepath(application.ExeName);


skin.SkinFile := vardir+'SKIN.SKN';
skin.Active := true;

end;

procedure Tfrmsige.spdfunClick(Sender: TObject);
begin
if frmpesq=nil then
   begin
     fechatodos;
     frmpesq:=Tfrmpesq.Create(Self);
     frmpesq.Left := 1;
     frmpesq.Top := 1;

     frmpesq.pctdados.ActivePageIndex := 0;


     frmpesq.Show;
     form_ativo:= frmpesq.name;
     pnlcentral.Visible := false;
     itag := func1.Tag;
     if localiza_DetItens_Usuario(iTag,icUsu,'I') > 0 then
        begin
          bfuncionariosI := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'A') > 0 then
        begin
          bfuncionariosA := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'E') > 0 then
        begin
          bfuncionariosE := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'N') > 0 then
        begin
          bfuncionariosN := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'V') > 0 then
        begin
          bfuncionariosV := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'R') > 0 then
        begin
          bfuncionariosR := true;
        end;
     //endi
     if localiza_DetItens_Usuario(iTag,icUsu,'CF') > 0 then
        begin
          bfuncionariosCF := true;
        end;
     //endi

   end;
//endi
//if frmpesq=nil then
//    frmpesq:=Tfrmpesq.Create(Self);
//frmpesq.Show;
//pnlcentral.Visible := false;
end;

procedure Tfrmsige.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
SetScreenResolution(OLD_WIDTH , OLD_HEIGHT);
fechatodos;
end;

procedure Tfrmsige.FormCreate(Sender: TObject);
begin
OLD_WIDTH := Monitor.Width;
OLD_HEIGHT := Monitor.Height;

if (OLD_WIDTH<=800)and(OLD_HEIGHT<=600)then
begin
  SetScreenResolution(1024, 768);
end;

end;

end.
