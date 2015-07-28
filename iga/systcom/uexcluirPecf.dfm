object frmExcluirPecf: TfrmExcluirPecf
  Left = 171
  Top = 235
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Excluir Item'
  ClientHeight = 283
  ClientWidth = 608
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
  object sPdGravar: TSpeedButton
    Left = 10
    Top = 6
    Width = 90
    Height = 36
    Hint = 'Salvar'
    Caption = '&Excluir'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
      77777777777777777777777700000000007777770FFFFFFFF07777770FFFFFFF
      F077771F0F888888F077711F0F85BFB8F0777711F11BFBF8F077777151788888
      F077777511FFFFFFF07775111F1FFF00007771570FF1FF0F077777770FFFFF00
      7777777700000007777777777777777777777777777777777777}
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = sPdGravarClick
  end
  object spdcancelar2310: TSpeedButton
    Left = 109
    Top = 6
    Width = 90
    Height = 36
    Hint = 'Cancelar'
    Caption = '&Cancelar'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      3333333777333777FF3333993333339993333377FF3333377FF3399993333339
      993337777FF3333377F3393999333333993337F777FF333337FF993399933333
      399377F3777FF333377F993339993333399377F33777FF33377F993333999333
      399377F333777FF3377F993333399933399377F3333777FF377F993333339993
      399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
      99333773FF3333777733339993333339933333773FFFFFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = spdcancelar2310Click
  end
  object Label3: TLabel
    Left = 27
    Top = 134
    Width = 125
    Height = 29
    Caption = 'Quantidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 286
    Top = 134
    Width = 64
    Height = 29
    Caption = 'Pre'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 470
    Top = 134
    Width = 106
    Height = 29
    Caption = 'Sub-Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 203
    Top = 173
    Width = 17
    Height = 29
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 409
    Top = 172
    Width = 14
    Height = 29
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblnpro: TLabel
    Left = 24
    Top = 68
    Width = 97
    Height = 37
    Caption = 'lblnpro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 417
    Top = 242
    Width = 90
    Height = 36
    Caption = '&Anterior'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 512
    Top = 242
    Width = 90
    Height = 36
    Caption = '&Pr'#243'ximo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object lblqtde: TLabel
    Left = 78
    Top = 174
    Width = 74
    Height = 29
    Alignment = taRightJustify
    Caption = 'lblqtde'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblprve: TLabel
    Left = 277
    Top = 174
    Width = 73
    Height = 29
    Alignment = taRightJustify
    Caption = 'lblprve'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblsubtotal: TLabel
    Left = 466
    Top = 174
    Width = 110
    Height = 29
    Alignment = taRightJustify
    Caption = 'lblsubtotal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
end
