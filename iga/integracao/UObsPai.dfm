object FrmObsPai: TFrmObsPai
  Left = 192
  Top = 108
  Width = 696
  Height = 141
  BorderIcons = []
  Caption = 'Observa'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BtnConfirmar: TBitBtn
    Left = 464
    Top = 5
    Width = 75
    Height = 25
    Caption = '&Confirmar'
    TabOrder = 0
    OnClick = BtnConfirmarClick
  end
  object BtnCancelar: TBitBtn
    Left = 552
    Top = 5
    Width = 75
    Height = 25
    Caption = 'C&ancelar'
    TabOrder = 1
    OnClick = BtnCancelarClick
  end
  object MemoObs: TMemo
    Left = 0
    Top = 37
    Width = 688
    Height = 76
    Align = alBottom
    TabOrder = 2
    OnChange = MemoObsChange
  end
end
