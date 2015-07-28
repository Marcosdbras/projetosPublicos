unit legenda_csosn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvGlowButton, StdCtrls, Collection;

type
  Tfrmlegenda_csosn = class(TForm)
    plegenda: THeaderView;
    HeaderView3: THeaderView;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    bfechar_legenda: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure bfechar_legendaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlegenda_csosn: Tfrmlegenda_csosn;

implementation

{$R *.dfm}

procedure Tfrmlegenda_csosn.FormShow(Sender: TObject);
begin
  bfechar_legenda.SetFocus;
end;

procedure Tfrmlegenda_csosn.bfechar_legendaClick(Sender: TObject);
begin
  close;
end;

end.
