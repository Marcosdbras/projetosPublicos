unit produto_total;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Collection, TFlatPanelUnit,
  AdvGlowButton;

type
  Tfrmproduto_total = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    bitbtn1: TAdvGlowButton;
    Bevel2: TBevel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_total: Tfrmproduto_total;

implementation

{$R *.dfm}

procedure Tfrmproduto_total.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_total.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmproduto_total.FormShow(Sender: TObject);
begin
  bitbtn1.setfocus;
end;

end.
