object frmAlteraP: TfrmAlteraP
  Left = 351
  Top = 289
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Alterar'
  ClientHeight = 187
  ClientWidth = 395
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
    Left = 2
    Top = 2
    Width = 33
    Height = 30
    Hint = 'Salvar'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Glyph.Data = {
      06020000424D0602000000000000760000002800000028000000140000000100
      0400000000009001000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      33333333333333333333333333333FFFFFFFFFFFF33333380000000000008333
      33338888888888883F333330CC08CCF770CC03333338F38F333338F38F333330
      CC08CCF770CC03333338F38F333338F38F333330CC07887770CC03333338F38F
      FFFFF8338F333330CC60000006CC03333338F338888883338F333330CCCCCCCC
      CCCC03333338F33FFFFFFFF38F333330C6000000006C03333338F3888888883F
      8F333330C0FFFFFFFF0C03333338F8F33333338F8F333330C0FFFFFFFF0C0333
      3338F8F33333338F8F333330C0FFFFFFFF0C03333338F8F33333338F8F333330
      C0FFFFFFFF0C03333338F8F33333338F8F33333000FFFFFFFF0003333338F8F3
      3333338F8F333330C0FFFFFFFF0C03333338F8FFFFFFFF8F8333333800000000
      0000833333338888888888883333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      33333333333333333333}
    NumGlyphs = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = sPdGravarClick
  end
  object spdcancelar2310: TSpeedButton
    Left = 37
    Top = 2
    Width = 33
    Height = 30
    Hint = 'Cancelar'
    Flat = True
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
    ParentShowHint = False
    ShowHint = True
    OnClick = spdcancelar2310Click
  end
  object Label3: TLabel
    Left = 40
    Top = 107
    Width = 55
    Height = 13
    Caption = 'Quantidade'
    FocusControl = ediqtde
  end
  object Label4: TLabel
    Left = 195
    Top = 107
    Width = 28
    Height = 13
    Caption = 'Pre'#231'o'
    FocusControl = ediprve
  end
  object Label5: TLabel
    Left = 310
    Top = 107
    Width = 46
    Height = 13
    Caption = 'Sub-Total'
    FocusControl = edisubtotal
  end
  object Label1: TLabel
    Left = 112
    Top = 137
    Width = 7
    Height = 13
    Caption = 'X'
  end
  object Label2: TLabel
    Left = 248
    Top = 136
    Width = 6
    Height = 13
    Caption = '='
  end
  object lblnpro: TLabel
    Left = 8
    Top = 64
    Width = 49
    Height = 16
    Caption = 'lblnpro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ediqtde: TDBEdit
    Left = 8
    Top = 134
    Width = 89
    Height = 21
    DataField = 'QTDE'
    DataSource = frmDados.Dts_Vendab
    TabOrder = 0
    OnExit = ediqtdeExit
    OnKeyPress = ediqtdeKeyPress
  end
  object ediprve: TDBEdit
    Left = 136
    Top = 134
    Width = 89
    Height = 21
    DataField = 'PRVE'
    DataSource = frmDados.Dts_Vendab
    TabOrder = 1
    OnExit = ediprveExit
    OnKeyPress = ediqtdeKeyPress
  end
  object edisubtotal: TDBEdit
    Left = 272
    Top = 134
    Width = 89
    Height = 21
    DataField = 'SUBTOTAL'
    DataSource = frmDados.Dts_Vendab
    ReadOnly = True
    TabOrder = 2
    OnKeyPress = ediqtdeKeyPress
  end
end
