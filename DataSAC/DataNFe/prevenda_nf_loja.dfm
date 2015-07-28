object frmprevenda_nf_loja: Tfrmprevenda_nf_loja
  Left = 370
  Top = 422
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'VENDA | Impress'#227'o da Nota Fiscal'
  ClientHeight = 99
  ClientWidth = 304
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 89
    Top = 18
    Width = 127
    Height = 13
    Caption = 'N'#250'mero da Nota Fiscal:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object enf: TEdit
    Left = 113
    Top = 40
    Width = 89
    Height = 33
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '000000'
    OnKeyPress = enfKeyPress
  end
end
