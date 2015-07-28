unit nf_obs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmnf_obs = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmnf_obs: Tfrmnf_obs;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmnf_obs.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmnf_obs.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then close;
end;

procedure Tfrmnf_obs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  nf_obs1 := edit1.text;
  nf_obs2 := edit2.text;
  nf_obs3 := edit3.text;
end;

end.
