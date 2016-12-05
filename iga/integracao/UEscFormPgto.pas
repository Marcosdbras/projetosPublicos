unit UEscFormPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFrmEscFormPgto = class(TForm)
    RGPFormaPgto: TRadioGroup;
    RGPTipo: TRadioGroup;
    BtnConfirmar: TBitBtn;
    BtnCancelar: TBitBtn;
    RGPCartao: TRadioGroup;
    procedure RGPFormaPgtoClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEscFormPgto: TFrmEscFormPgto;

implementation

uses UPesqContasRec, UFrmPesqContasRecNubia;

{$R *.dfm}

procedure TFrmEscFormPgto.RGPFormaPgtoClick(Sender: TObject);
begin
  if RGPFormaPgto.Items.Strings[RGPFormaPgto.ItemIndex] = 'Cartão' then
  begin
    RGPCartao.Visible := True;
    RgpTipo.Visible := True;
  end
  else
  begin
    RGPCartao.Visible := False;
    RgpTipo.Visible := False;
  end;
  //endi
end;

procedure TFrmEscFormPgto.BtnConfirmarClick(Sender: TObject);
begin
  if RGPFormaPgto.Items.Strings[RGPFormaPgto.ItemIndex] = 'Cartão' then
  begin
    if FrmPesqContasRec <> nil then
      FrmPesqContasRec.sFormaPgto := RGPFormaPgto.Items.Strings[RGPFormaPgto.ItemIndex] + '/' + RGPTipo.Items.Strings[RGPTipo.ItemIndex] + '/' + RGPCartao.Items.Strings[RGPCartao.ItemIndex]
    else
      FrmPesqContasRecNubia.sFormaPgto := RGPFormaPgto.Items.Strings[RGPFormaPgto.ItemIndex] + '/' + RGPTipo.Items.Strings[RGPTipo.ItemIndex] + '/' + RGPCartao.Items.Strings[RGPCartao.ItemIndex];
    //endi
  end
  else
  begin
    if FrmPesqContasRec <> nil then
      FrmPesqContasRec.sFormaPgto := RGPFormaPgto.Items.Strings[RGPFormaPgto.ItemIndex]
    else
      FrmPesqContasRecNubia.sFormaPgto := RGPFormaPgto.Items.Strings[RGPFormaPgto.ItemIndex];
    //endi
  end;
  //endi
  Close;
end;

procedure TFrmEscFormPgto.BtnCancelarClick(Sender: TObject);
begin
  if FrmPesqContasRec <> nil then
    FrmPEsqContasRec.sFormaPgto := ''
  else
    FrmPEsqContasRecNubia.sFormaPgto := '';
  Close;
end;

end.
