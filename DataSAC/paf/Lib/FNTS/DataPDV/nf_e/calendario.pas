unit calendario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Menus;

type
  Tfrmcalendario = class(TForm)
    MonthCalendar1: TMonthCalendar;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcalendario: Tfrmcalendario;

implementation

{$R *.dfm}

procedure Tfrmcalendario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcalendario.FormShow(Sender: TObject);
begin
  MonthCalendar1.Date := date;
end;

procedure Tfrmcalendario.Fechar1Click(Sender: TObject);
begin
  close;
end;

end.
