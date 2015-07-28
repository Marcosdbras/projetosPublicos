object FrmMsgRecibo: TFrmMsgRecibo
  Left = 365
  Top = 263
  Width = 243
  Height = 119
  Caption = 'Recibo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 184
    Height = 13
    Caption = 'Deseja gerar o recibo para esta conta?'
  end
  object BtnSim: TBitBtn
    Left = 24
    Top = 48
    Width = 75
    Height = 25
    Caption = '&Sim'
    TabOrder = 0
    OnClick = BtnSimClick
  end
  object BtnNao: TBitBtn
    Left = 128
    Top = 48
    Width = 75
    Height = 25
    Caption = '&N'#227'o'
    TabOrder = 1
    OnClick = BtnNaoClick
  end
end
