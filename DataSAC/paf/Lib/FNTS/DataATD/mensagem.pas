unit mensagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, TFlatEditUnit, TFlatComboBoxUnit,
  DB, TFlatPanelUnit, AdvShapeButton;

type
  Tfrmmensagem = class(TForm)
    Label1: TLabel;
    DataSource1: TDataSource;
    Panel1: TPanel;
    bsim: TBitBtn;
    bok: TBitBtn;
    bnao: TBitBtn;
    Bevel1: TBevel;
    img_alerta: TAdvShapeButton;
    img_erro: TAdvShapeButton;
    img_excluir: TAdvShapeButton;
    img_info: TAdvShapeButton;
    img_ok: TAdvShapeButton;
    img_pergunta: TAdvShapeButton;
    img_padrao: TAdvShapeButton;
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
