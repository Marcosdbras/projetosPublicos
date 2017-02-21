unit contasreceber_tipoboleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Collection, TFlatPanelUnit, Menus,
  AdvGlowButton;

type
  Tfrmcontasreceber_tipoboleto = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    PopupMenu2: TPopupMenu;
    Fechar1: TMenuItem;
    RadioButton3: TRadioButton;
    Bevel2: TBevel;
    pgravar: TFlatPanel;
    BITBTN1: TAdvGlowButton;
    BITBTN2: TAdvGlowButton;
    RadioButton4: TRadioButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioButton1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_tipoboleto: Tfrmcontasreceber_tipoboleto;

implementation

uses contasreceber;

{$R *.dfm}

procedure Tfrmcontasreceber_tipoboleto.BitBtn2Click(Sender: TObject);
begin
   close;
end;

procedure Tfrmcontasreceber_tipoboleto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcontasreceber_tipoboleto.BitBtn1Click(Sender: TObject);
begin
    if radiobutton1.Checked then
    begin
      tipo_boleto := 1;
    end
    else
    begin
      tipo_boleto := 2;
    end;

    if radiobutton3.Checked then
    begin
      tipo_boleto := 3;
    end;


    if radiobutton4.Checked then
    begin
      tipo_boleto := 4;
    end;

    close;
end;

procedure Tfrmcontasreceber_tipoboleto.RadioButton1KeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then bitbtn1.setfocus;
end;

procedure Tfrmcontasreceber_tipoboleto.FormShow(Sender: TObject);
begin
  tipo_boleto := 0;
end;

end.
