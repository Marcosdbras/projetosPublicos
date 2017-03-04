unit mensagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, 
  ExtCtrls, StdCtrls, Buttons, TFlatPanelUnit,
  AdvOfficeStatusBar, AdvOfficeStatusBarStylers, VrControls, VrLcd,
  AdvShapeButton, RzPanel;

type
  Tfrmmensagem = class(TForm)
    RzPanel1: TRzPanel;
    AdvShapeButton2: TAdvShapeButton;
    VrNum1: TVrNum;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmensagem: Tfrmmensagem;

implementation

uses modulo, principal;

{$R *.dfm}

procedure Tfrmmensagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
  close;

end;

end.
