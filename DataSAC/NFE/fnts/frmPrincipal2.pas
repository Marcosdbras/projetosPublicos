unit frmPrincipal2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, AdvShapeButton, AdvGlowButton,
  AdvOfficeStatusBar;

type
  TForm1 = class(TForm)
    ptopo: TAdvOfficeStatusBar;
    barquivo: TAdvGlowButton;
    bestoque: TAdvGlowButton;
    bmovimento: TAdvGlowButton;
    bsair: TAdvGlowButton;
    AdvShapeButton1: TAdvShapeButton;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
