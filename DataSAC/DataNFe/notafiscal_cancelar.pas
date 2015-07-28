unit notafiscal_cancelar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, AdvGlowButton, StdCtrls, AdvShapeButton;

type
  Tfrmnotafiscal_cancelar = class(TForm)
    AdvShapeButton1: TAdvShapeButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel1: TBevel;
    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnotafiscal_cancelar: Tfrmnotafiscal_cancelar;

implementation

uses notafiscal_menu;

{$R *.dfm}

procedure Tfrmnotafiscal_cancelar.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmnotafiscal_cancelar.bgravarClick(Sender: TObject);
begin
  cancela := true;
  close;
end;

procedure Tfrmnotafiscal_cancelar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmnotafiscal_cancelar.FormShow(Sender: TObject);
begin
  bcancelar.setfocus;
end;

end.
