object FrmObsContas: TFrmObsContas
  Left = 266
  Top = 270
  Width = 401
  Height = 190
  Caption = 'FrmObsContas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MemoObs: TMemo
    Left = 0
    Top = 0
    Width = 393
    Height = 106
    Align = alTop
    TabOrder = 0
  end
  object BtnOk: TBitBtn
    Left = 90
    Top = 120
    Width = 75
    Height = 25
    Caption = '&Confirmar'
    TabOrder = 1
    OnClick = BtnOkClick
  end
  object BitBtn1: TBitBtn
    Left = 200
    Top = 120
    Width = 75
    Height = 25
    Caption = 'C&ancelar'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
