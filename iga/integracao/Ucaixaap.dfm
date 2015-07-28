object frmcaixaap: Tfrmcaixaap
  Left = 108
  Top = 127
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pesquisa Caixa Apurado'
  ClientHeight = 454
  ClientWidth = 607
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblcab2: TLabel
    Left = 343
    Top = 48
    Width = 44
    Height = 16
    Alignment = taCenter
    Caption = 'lblcab2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbltittroco: TLabel
    Left = 57
    Top = 120
    Width = 64
    Height = 29
    Caption = 'Troco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbltroco: TLabel
    Left = 395
    Top = 120
    Width = 80
    Height = 29
    Alignment = taRightJustify
    Caption = 'lbltroco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbltitsangria: TLabel
    Left = 57
    Top = 160
    Width = 83
    Height = 29
    Caption = 'Sangria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblsangria: TLabel
    Left = 370
    Top = 160
    Width = 105
    Height = 29
    Alignment = taRightJustify
    Caption = 'lblsangria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbltitentrada: TLabel
    Left = 57
    Top = 200
    Width = 83
    Height = 29
    Caption = 'Entrada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblentrada: TLabel
    Left = 368
    Top = 200
    Width = 107
    Height = 29
    Alignment = taRightJustify
    Caption = 'lblentrada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbltitsaida: TLabel
    Left = 57
    Top = 236
    Width = 62
    Height = 29
    Caption = 'Saida'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblsaida: TLabel
    Left = 391
    Top = 236
    Width = 84
    Height = 29
    Alignment = taRightJustify
    Caption = 'lblsaida'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbltitsaldo: TLabel
    Left = 57
    Top = 273
    Width = 63
    Height = 29
    Caption = 'Saldo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblsaldo: TLabel
    Left = 390
    Top = 273
    Width = 85
    Height = 29
    Alignment = taRightJustify
    Caption = 'lblsaldo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object pnlsuperior: TPanel
    Left = 0
    Top = 0
    Width = 585
    Height = 65
    TabOrder = 0
    object sPdGravar: TSpeedButton
      Left = 379
      Top = 18
      Width = 97
      Height = 30
      Hint = 'Imprimir'
      Caption = 'Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = sPdGravarClick
    end
    object spdcancela: TSpeedButton
      Left = 483
      Top = 18
      Width = 97
      Height = 30
      Hint = 'Cancela'
      Caption = 'Sair'
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
      OnClick = spdcancelaClick
    end
    object Label8: TLabel
      Left = 9
      Top = 41
      Width = 25
      Height = 13
      Caption = 'De.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 169
      Top = 41
      Width = 8
      Height = 13
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object spdFiltrar: TSpeedButton
      Left = 303
      Top = 2
      Width = 33
      Height = 30
      Hint = 'Filtrar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333300003333333333333333333300003333333330033003300300003333
        3333300330033003000033303333333333333333000033000333333333333333
        000030F000333333333333330000330F000333333333333300003330F0000000
        73333333000033330F0078887033333300003333300788FF8703333300003333
        30788888F877333300003333308888888F80333300003333307888888F803333
        000033333078FF8888803333000033333777FF88887733330000333333077888
        8703333300003333333077777033333300003333333370007333333300003333
        33333333333333330000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = spdFiltrarClick
    end
    object spdLimpar: TSpeedButton
      Left = 303
      Top = 33
      Width = 33
      Height = 30
      Hint = 'Mostrar Todos'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007777777777777777700000007770707070707070700000007777
        7777777777777000000077707770707777707000000077777777077777777000
        000077707778787777707000000077777070707070777000000071F077777777
        77707000000011F778877777777770000000711F11F070707070700000007718
        1777777777777000000077811F777777777770000000811771F7777777777000
        0000187777177777777770000000777777777777777770000000777777777777
        777770000000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = spdLimparClick
    end
    object dtpdataI: TDateTimePicker
      Left = 49
      Top = 37
      Width = 106
      Height = 21
      Date = 39357.349696979170000000
      Time = 39357.349696979170000000
      TabOrder = 0
    end
    object dtpdataf: TDateTimePicker
      Left = 190
      Top = 37
      Width = 106
      Height = 21
      Date = 39357.351658483800000000
      Time = 39357.351658483800000000
      DateMode = dmUpDown
      TabOrder = 1
    end
  end
  object PrintCaixa: TSayPrint
    Porta = Lpt1
    Impressora = imEpsom
    EjectPage = False
    DelayPauseHide = 0
    CommandFile = False
    Left = 552
    Top = 96
  end
end
