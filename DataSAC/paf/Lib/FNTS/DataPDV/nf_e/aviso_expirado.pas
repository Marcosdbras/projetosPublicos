unit aviso_expirado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Collection, TFlatPanelUnit, Registry, jpeg,
  AdvGlowButton, AdvShapeButton;

type
  Tfrmaviso_expirado = class(TForm)
    Panel1: TPanel;
    bitbtn1: TAdvGlowButton;
    bitbtn2: TAdvGlowButton;
    Bevel1: TBevel;
    Label2: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    AdvShapeButton1: TAdvShapeButton;
    Bevel2: TBevel;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaviso_expirado: Tfrmaviso_expirado;

implementation

uses principal, ativacao, modulo;

{$R *.dfm}

procedure Tfrmaviso_expirado.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmaviso_expirado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmaviso_expirado.BitBtn2Click(Sender: TObject);
begin

 FRMATIVACAO := TFRMATIVACAO.CREATE(SELF);
 FRMATIVACAO.SHOWMODAL;

 close;

end;

procedure Tfrmaviso_expirado.FormShow(Sender: TObject);
begin
  bitbtn1.setfocus;
end;

end.
