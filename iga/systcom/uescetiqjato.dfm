object frmescetiqjato: Tfrmescetiqjato
  Left = 353
  Top = 257
  BorderStyle = bsDialog
  Caption = 'Etiqueta'
  ClientHeight = 215
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object rgbetiq: TRadioGroup
    Left = 80
    Top = 67
    Width = 313
    Height = 81
    Caption = 'Etiqueta'
    Items.Strings = (
      'Altura 23 mm'
      'Altura 60 mm')
    TabOrder = 2
  end
  object btnimprime: TBitBtn
    Left = 407
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Imprime'
    TabOrder = 1
    OnClick = btnimprimeClick
  end
  object btncancela: TBitBtn
    Left = 328
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Cancela'
    TabOrder = 0
    OnClick = btncancelaClick
  end
end
