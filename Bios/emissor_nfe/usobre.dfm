object frmsobre: Tfrmsobre
  Left = 11
  Top = 107
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Sobre'
  ClientHeight = 595
  ClientWidth = 995
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 599
    Top = 534
    Width = 393
    Height = 57
    Caption = 'FECHAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 1
    Top = 534
    Width = 593
    Height = 57
    Caption = 'CONTRATAR SERVI'#199'O / ENTRE OUTROS '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button3Click
  end
  object Memo1: TMemo
    Left = 0
    Top = 5
    Width = 993
    Height = 521
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    OnKeyPress = Memo1KeyPress
  end
end
