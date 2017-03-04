unit log;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, TFlatPanelUnit, RxRichEd, PageView;

type
  Tfrmlog = class(TForm)
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    RichEdit1: TRichEdit;
    RichEdit2: TRichEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlog: Tfrmlog;

implementation

{$R *.dfm}

procedure Tfrmlog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ACTION := CAFREE;
  
end;

end.
