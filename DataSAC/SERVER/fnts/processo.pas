unit processo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, VrControls, VrProgressBar,
  RzPrgres, AdvGlowButton;

type
  Tfrmprocesso = class(TForm)
    Bevel1: TBevel;
    bitbtn1: TAdvGlowButton;
    p: TRzProgressBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmprocesso: Tfrmprocesso;

implementation

{$R *.dfm}

procedure Tfrmprocesso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmprocesso.BitBtn1Click(Sender: TObject);
begin
  CLOSE;
end;

end.
