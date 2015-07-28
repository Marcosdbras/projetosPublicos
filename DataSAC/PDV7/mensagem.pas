unit mensagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, TFlatEditUnit, TFlatComboBoxUnit,
  DB, TFlatPanelUnit;

type
  Tfrmmensagem = class(TForm)
    Image1: TImage;
    bsim: TBitBtn;
    bnao: TBitBtn;
    Label1: TLabel;
    bok: TBitBtn;
    DataSource1: TDataSource;
    FlatPanel1: TFlatPanel;
    procedure bsimClick(Sender: TObject);
    procedure bokClick(Sender: TObject);
    procedure bnaoClick(Sender: TObject);
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

procedure Tfrmmensagem.bsimClick(Sender: TObject);
begin
  resultado_mensagem := 'SIM';
  close;
end;

procedure Tfrmmensagem.bokClick(Sender: TObject);
begin
 resultado_mensagem := 'OK';
 close;
end;

procedure Tfrmmensagem.bnaoClick(Sender: TObject);
begin
 resultado_mensagem := 'NAO';
 close;
end;

end.
