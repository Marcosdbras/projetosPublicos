object FrmObsNotasFaltas: TFrmObsNotasFaltas
  Left = 388
  Top = 275
  Width = 354
  Height = 170
  Caption = 'FrmObsNotasFaltas'
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
    Width = 346
    Height = 97
    Align = alTop
    TabOrder = 0
  end
  object BtnSalvar: TBitBtn
    Left = 176
    Top = 112
    Width = 75
    Height = 25
    Caption = '&Salvar'
    TabOrder = 1
    OnClick = BtnSalvarClick
  end
  object BtnCancelar: TBitBtn
    Left = 256
    Top = 112
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 2
    OnClick = BtnCancelarClick
  end
end
