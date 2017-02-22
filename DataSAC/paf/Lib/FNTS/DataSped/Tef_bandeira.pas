unit Tef_bandeira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmTef_Bandeira = class(TForm)
    rb_visanet: TRadioButton;
    rb_redecard: TRadioButton;
    rb_amex: TRadioButton;
    rb_tecban: TRadioButton;
    rb_hipercard: TRadioButton;
    rb_tribanco: TRadioButton;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rb_visanetKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTef_Bandeira: TfrmTef_Bandeira;

implementation

uses Principal, funcoes, unTEF;

{$R *.dfm}

procedure TfrmTef_Bandeira.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmTef_Bandeira.rb_visanetKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) or (key = #27) then
  begin
    case TRadioButton(sender).Tag of
    1: begin Tef_Bandeira_escolhida := Tef_Visanet;   sTEFPath := 'C:\TEF_DIAL\';end;
    2: begin Tef_Bandeira_escolhida := Tef_Redecard;  sTEFPath := 'C:\TEF_DIAL\';end;
    3: begin Tef_Bandeira_escolhida := Tef_Amex;      sTEFPath := 'C:\TEF_DIAL\';end;
    4: begin Tef_Bandeira_escolhida := Tef_TecBan;    sTEFPath := 'C:\TEF_DISC\';end;
    5: begin Tef_Bandeira_escolhida := Tef_Hipercard; sTEFPath := 'C:\HiperTEF\HiperLINK\';end;
    6: begin Tef_Bandeira_escolhida := Tef_Tribanco;  sTEFPath := 'C:\TEF_DISC\';end;
    end;
    close;
  end;
end;

procedure TfrmTef_Bandeira.FormShow(Sender: TObject);
begin
  BlockInput(false);

  if rb_visanet.Enabled then
    rb_visanet.SetFocus
  else
    rb_redecard.SetFocus;
end;

end.
