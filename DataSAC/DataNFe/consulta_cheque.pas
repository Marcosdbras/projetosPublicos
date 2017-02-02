unit consulta_cheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  Tfrmconsulta_cheque = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioButton1KeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconsulta_cheque: Tfrmconsulta_cheque;

implementation

uses principal;

{$R *.dfm}

procedure Tfrmconsulta_cheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmconsulta_cheque.BitBtn2Click(Sender: TObject);
begin
 ret_cheque := 0;
end;

procedure Tfrmconsulta_cheque.BitBtn1Click(Sender: TObject);
begin
 if radiobutton1.checked then ret_cheque := 1;
 if radiobutton2.checked then ret_cheque := 2;

 CLOSE;
end;

procedure Tfrmconsulta_cheque.RadioButton1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BitBtn1.SETFOCUS;
end;

procedure Tfrmconsulta_cheque.RadioButton2KeyPress(Sender: TObject;
  var Key: Char);
BEGIN
  IF KEY = #13 THEN BitBtn1.SETFOCUS;
end;

end.
