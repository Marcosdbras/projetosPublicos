
unit splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, VrProgressBar, VrControls, VrGauge,
  TFlatProgressBarUnit, ComCtrls, XPMan,
  ExtCtrls, StdCtrls, jpeg, ExeInfo, RzPrgres, AdvShapeButton;

type
  Tfrmsplash = class(TForm)
    XPManifest1: TXPManifest;
    Timer1: TTimer;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    ExeInfo1: TExeInfo;
    p: TRzProgressBar;
    AdvShapeButton1: TAdvShapeButton;
    Label3: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsplash: Tfrmsplash;
  I : INTEGER;

implementation

{$R *.dfm}

procedure Tfrmsplash.Timer1Timer(Sender: TObject);
begin
  I := I + 5;

  P.percent := P.percent + 5;

  IF (P.percent MOD 5) = 0 THEN
  BEGIN
    IF LABEL1.Font.Color = CLWHITE THEN
       LABEL1.FoNT.Color := clGray ELSE
       LABEL1.FoNT.Color := clWHITE;
  END;

  IF P.percent = 100 THEN
  BEGIN
    LABEL1.CAPTION := 'SISTEMA CARREGADO COM SUCESSO!';
  END;

  IF I = 120 THEN CLOSE;

end;

procedure Tfrmsplash.FormShow(Sender: TObject);
begin
  label2.caption := ExeInfo1.fileVersion;
end;

end.

