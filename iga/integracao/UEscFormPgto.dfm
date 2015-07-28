object FrmEscFormPgto: TFrmEscFormPgto
  Left = 364
  Top = 283
  Width = 316
  Height = 167
  BorderIcons = []
  Caption = 'Escolha da forma de pagamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RGPFormaPgto: TRadioGroup
    Left = 4
    Top = 0
    Width = 185
    Height = 105
    Caption = 'Forma de pagamento'
    Columns = 2
    Items.Strings = (
      'Cart'#227'o'
      'Dinheiro'
      'Boleto'
      'Cheque')
    TabOrder = 0
    OnClick = RGPFormaPgtoClick
    OnExit = RGPFormaPgtoClick
  end
  object RGPTipo: TRadioGroup
    Left = 200
    Top = 2
    Width = 73
    Height = 47
    Caption = 'Tipo'
    ItemIndex = 0
    Items.Strings = (
      'Cr'#233'dito'
      'D'#233'bito')
    TabOrder = 1
    Visible = False
  end
  object BtnConfirmar: TBitBtn
    Left = 32
    Top = 111
    Width = 75
    Height = 25
    Caption = 'Con&firmar'
    TabOrder = 2
    OnClick = BtnConfirmarClick
  end
  object BtnCancelar: TBitBtn
    Left = 120
    Top = 112
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 3
    OnClick = BtnCancelarClick
  end
  object RGPCartao: TRadioGroup
    Left = 200
    Top = 57
    Width = 73
    Height = 47
    Caption = 'Cart'#227'o'
    ItemIndex = 0
    Items.Strings = (
      'Visa'
      'Master')
    TabOrder = 4
    Visible = False
  end
end
