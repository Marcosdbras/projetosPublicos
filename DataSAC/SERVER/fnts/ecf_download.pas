unit ecf_download;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, ExtCtrls, TFlatPanelUnit, StdCtrls, Mask, RzEdit,
  Menus;

type
  Tfrmecf_download = class(TForm)
    Label1: TLabel;
    edC1: TRzEdit;
    Label2: TLabel;
    edC2: TRzEdit;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    Bevel1: TBevel;
    procedure bcancelarClick(Sender: TObject);
    procedure edC1KeyPress(Sender: TObject; var Key: Char);
    procedure edC2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmecf_download: Tfrmecf_download;

implementation

uses ecf, principal, modulo, ecf_texto;

{$R *.dfm}

procedure Tfrmecf_download.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmecf_download.edC1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmecf_download.edC2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmecf_download.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmecf_download.bgravarClick(Sender: TObject);
var
    Str_Inicial: String;
    Str_Final: String;

begin
   Str_Inicial := Trim(edC1.Text);
   Str_Final   := Trim(edC2.Text);
   If (Str_Inicial= '') or (Str_Final= '')  then exit;

   if ecf_download_MFD(ecf_modelo,str_inicial,str_final) = 'OK' Then
   begin
     frmecf_texto := tfrmecf_texto.create(self);
     frmecf_texto.RichEdit1.Clear;
     frmecf_texto.RichEdit1.Lines.LoadFromFile('\retorno.txt');
     frmecf_texto.showmodal;
   end;
end;

end.
