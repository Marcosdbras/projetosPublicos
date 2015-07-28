object frmfechamento_dinheiro: Tfrmfechamento_dinheiro
  Left = 235
  Top = 295
  BorderStyle = bsDialog
  Caption = 'Fechamento Expresso'
  ClientHeight = 137
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 23
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 107
    Height = 23
    Caption = 'Valor - R$:'
  end
  object rdinheiro: TRxCalcEdit
    Left = 144
    Top = 56
    Width = 177
    Height = 41
    AutoSize = False
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 0
    OnKeyPress = rdinheiroKeyPress
  end
  object HeaderView1: THeaderView
    Left = 0
    Top = 0
    Width = 357
    Height = 24
    AdaptiveColors = True
    Align = alTop
    BorderStyle = bsNone
    Caption = '                                  DINHEIRO'
    HeaderColor = clHighlight
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -16
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = [fsBold]
    HeaderSize = 24
    ParentColor = False
  end
end
