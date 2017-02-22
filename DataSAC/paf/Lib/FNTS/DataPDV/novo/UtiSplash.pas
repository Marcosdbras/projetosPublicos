unit UtiSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, AdvOfficeImage, frxpngimage, ExtCtrls,
  AdvReflectionLabel, RzLabel, RzBckgnd, RzPrgres, ExeInfo, pngimage,
  dxGDIPlusClasses;

type
  TfrmUtiSplash = class(TForm)
    Image1: TImage;
    Image2: TImage;
    lb_total: TRzLabel;
    lblVersao: TAdvReflectionLabel;
    lb_msg: TLabel;
    Label1: TLabel;
    p: TRzProgressBar;
    ExeInfo1: TExeInfo;
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  frmUtiSplash: TfrmUtiSplash;

implementation

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmUtiSplash.FormShow(Sender: TObject);
begin
  Brush.Style := bsClear;
  lblVersao.HTMLText.Clear;
  lblVersao.HTMLText.Add('<P align=' + QuotedStr('right')
    + '>Versão ' + ExeInfo1.fileVersion + '</P>');
  application.ProcessMessages;
end;

// -------------------------------------------------------------------------- //
procedure TfrmUtiSplash.FormHide(Sender: TObject);
begin
  application.ProcessMessages;
end;


end.
