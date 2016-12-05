object frmagenda: Tfrmagenda
  Left = -4
  Top = -4
  Width = 1032
  Height = 746
  BorderIcons = []
  Caption = 'Agenda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlsuperior: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object spdcancelar: TSpeedButton
      Left = 887
      Top = 5
      Width = 128
      Height = 49
      Caption = '&FECHAR'
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
      Layout = blGlyphTop
      NumGlyphs = 2
      OnClick = spdcancelarClick
    end
    object SpeedButton1: TSpeedButton
      Left = 751
      Top = 5
      Width = 128
      Height = 49
      Caption = '&IMPRIMIR'
      Layout = blGlyphTop
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object BitBtn1: TBitBtn
      Left = 13
      Top = 8
      Width = 121
      Height = 49
      Caption = '&Copiar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 141
      Top = 8
      Width = 121
      Height = 49
      Caption = '&Colar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object pnlcentral: TPanel
    Left = 0
    Top = 73
    Width = 1024
    Height = 598
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object lbldata: TLabel
      Left = 728
      Top = 63
      Width = 54
      Height = 24
      Caption = 'lbldata'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblhora: TLabel
      Left = 888
      Top = 63
      Width = 57
      Height = 24
      Caption = 'lblhora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 208
      Top = 15
      Width = 39
      Height = 13
      Caption = 'Dentista'
    end
    object spdfiltrar: TSpeedButton
      Left = 590
      Top = 27
      Width = 33
      Height = 33
      Flat = True
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
      OnClick = spdfiltrarClick
    end
    object spdlimpar: TSpeedButton
      Left = 628
      Top = 27
      Width = 33
      Height = 33
      Flat = True
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
      OnClick = spdlimparClick
    end
    object dbgagedodia: TStringGrid
      Left = 208
      Top = 64
      Width = 513
      Height = 513
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      TabOrder = 0
      OnClick = dbgagedodiaClick
      OnDblClick = dbgagedodiaDblClick
      OnDrawCell = dbgagedodiaDrawCell
      ColWidths = (
        64
        64
        64
        64
        42)
      RowHeights = (
        24
        24
        24
        24
        24)
    end
    object mcagenda: TMonthCalendar
      Left = 8
      Top = 16
      Width = 191
      Height = 449
      Date = 40480.433537500000000000
      TabOrder = 1
      OnClick = mcagendaClick
    end
    object dbgassunto: TDBCtrlGrid
      Left = 728
      Top = 88
      Width = 289
      Height = 491
      Color = clMoneyGreen
      DataSource = frmDados.Dts_Agedodia
      PanelHeight = 163
      PanelWidth = 272
      ParentColor = False
      TabOrder = 2
      OnDblClick = dbgassuntoDblClick
      OnPaintPanel = dbgassuntoPaintPanel
      object Shape1: TShape
        Left = 0
        Top = 0
        Width = 272
        Height = 163
        Align = alClient
        Brush.Color = clMoneyGreen
      end
      object lblnomecli: TDBText
        Left = 4
        Top = 18
        Width = 173
        Height = 17
        DataField = 'ncli'
        DataSource = frmDados.Dts_Agedodia
        Transparent = True
      end
      object lblassunto: TDBText
        Left = 4
        Top = 69
        Width = 262
        Height = 17
        DataField = 'ASSUNTO'
        DataSource = frmDados.Dts_Agedodia
        Transparent = True
      end
      object lbltitnomecli: TLabel
        Left = 4
        Top = 4
        Width = 45
        Height = 13
        Caption = 'CLIENTE'
        Transparent = True
      end
      object lbltitassunto: TLabel
        Left = 4
        Top = 54
        Width = 52
        Height = 13
        Caption = 'ASSUNTO'
        Transparent = True
      end
      object lbldentista: TDBText
        Left = 4
        Top = 101
        Width = 181
        Height = 17
        DataField = 'nfun'
        DataSource = frmDados.Dts_Agedodia
        Transparent = True
      end
      object lbltitdentista: TLabel
        Left = 4
        Top = 87
        Width = 54
        Height = 13
        Caption = 'DENTISTA'
        Transparent = True
      end
      object lblrealizado: TLabel
        Left = 215
        Top = 102
        Width = 52
        Height = 13
        Alignment = taRightJustify
        Caption = 'lblrealizado'
        Transparent = True
      end
      object lblpago: TLabel
        Left = 233
        Top = 116
        Width = 34
        Height = 13
        Alignment = taRightJustify
        Caption = 'lblpago'
        Transparent = True
      end
      object lblmens: TLabel
        Left = 4
        Top = 134
        Width = 35
        Height = 13
        Caption = 'lblmens'
        Transparent = True
      end
      object lbltittratamento: TLabel
        Left = 192
        Top = 89
        Width = 75
        Height = 13
        Caption = 'TRATAMENTO'
        Transparent = True
      end
      object lbltitmens: TLabel
        Left = 4
        Top = 120
        Width = 62
        Height = 13
        Caption = 'MENSAGEM'
        Transparent = True
      end
      object lblmens2: TLabel
        Left = 4
        Top = 148
        Width = 41
        Height = 13
        Caption = 'lblmens2'
        Transparent = True
      end
      object lbltelefone: TLabel
        Left = 4
        Top = 34
        Width = 48
        Height = 13
        Caption = 'lbltelefone'
        Transparent = True
      end
    end
    object cbxnomefun: TDBLookupComboBox
      Left = 208
      Top = 34
      Width = 377
      Height = 21
      DataField = 'COD'
      DataSource = frmDados.Dts_Temp
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = frmDados.Dst_Funcionarios
      TabOrder = 3
    end
  end
  object pnlinferior: TPanel
    Left = 0
    Top = 671
    Width = 1024
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
  end
end
