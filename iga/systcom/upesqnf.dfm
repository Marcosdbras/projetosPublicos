object frmPesqNF: TfrmPesqNF
  Left = 61
  Top = 128
  Width = 921
  Height = 688
  BorderIcons = []
  Caption = 'Pesquisa de Notas Fiscais'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlsuperior: TPanel
    Left = 0
    Top = 0
    Width = 913
    Height = 42
    Align = alTop
    TabOrder = 0
    object spdconfirma: TSpeedButton
      Left = 851
      Top = 4
      Width = 38
      Height = 33
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333C3333333333333337F3333333333333C0C3333
        333333333777F33333333333C0F0C3333333333377377F333333333C0FFF0C33
        3333333777F377F3333333CCC0FFF0C333333373377F377F33333CCCCC0FFF0C
        333337333377F377F3334CCCCCC0FFF0C3337F3333377F377F33C4CCCCCC0FFF
        0C3377F333F377F377F33C4CC0CCC0FFF0C3377F3733F77F377333C4CCC0CC0F
        0C333377F337F3777733333C4C00CCC0333333377F773337F3333333C4CCCCCC
        3333333377F333F7333333333C4CCCC333333333377F37733333333333C4C333
        3333333333777333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = spdconfirmaClick
    end
    object spdprinter: TSpeedButton
      Left = 5
      Top = 4
      Width = 38
      Height = 33
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFF5050505050505050501F201F1F201F1F201F1F201F1F201F1F201F4040
        404040404040404040404040404040404040404040404040401F201F1F201F1F
        201F1F201F1F201F1F201F505050505050505050FFFFFFFFFFFFFFFFFFFFFFFF
        505050DFD8DFDFD8DFDFD8DF4040404040404040404040404040404040404040
        40CFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CF40404040404040404040
        4040404040404040404040DFD8DFDFD8DFDFD8DF505050FFFFFFFFFFFFFFFFFF
        505050DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFA09F
        9F707770707770707770707770707770707770707770A09F9FDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFFFFFFFFFFFFFF
        505050BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF505050FFFFFFFFFFFFFFFFFF
        505050A09F9FA09F9FA09F9FA09F9F0000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000A09F9FA09F9FA09F9FA09F9F505050FFFFFFFFFFFF505050
        7077707077707077707077707077704040404040404040404040404040404040
        4040404040404040404040404040404040404040404040404040404040404040
        4040404040404040707770707770707770707770707770505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DF707770BFBFBF707770BFBFBF707770DFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        7077707077707077707077707077707077707077707077707077707077707077
        7070777070777070777070777070777070777070777070777070777070777070
        7770707770707770707770707770707770707770707770505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DF2F67FFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFA09F
        9FDFD8DFDFD8DFDFD8DF00B800DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFF505050
        DFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFA09F9F505050505050505050A09F9FDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF505050FFFFFFFFFFFF
        5050505050505050505050505050505050505050505050505050505050505050
        50505050505050DFD8DF505050DFD8DF50505050505050505050505050505050
        5050505050505050505050505050505050505050505050FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF404040505050BFBFBF404040DFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDF
        D8DFDFD8DF404040909790404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF404040707770BFBFBF404040EFF8FFEFF8FFEFF8FFEFF8
        FFEFF8FFEFF8FFEFF8FFEFF8FFEFF8FFEFF8FFEFF8FFEFF8FFEFF8FFEFF8FFEF
        F8FFEFF8FF404040BFBFBF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF404040707770BFBFBF404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040BFBFBF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF404040707770BFBFBF404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040BFBFBF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF404040BFBFBF404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4040404040404040404040404040
        4040404040404040404040404040404040404040404040404040404040404040
        4040404040404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = spdprinterClick
    end
  end
  object pnlinferior: TPanel
    Left = 0
    Top = 620
    Width = 913
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Label7: TLabel
      Left = 245
      Top = 12
      Width = 369
      Height = 13
      Caption = 
        'CTRL+I - Inserir / CTRL+A - Alterar / ALT+T - Produtos / CTRL+P ' +
        '- Impress'#227'o'
    end
  end
  object pnlesq: TPanel
    Left = 0
    Top = 42
    Width = 201
    Height = 578
    Align = alLeft
    TabOrder = 2
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 199
      Height = 48
      Align = alTop
    end
    object Label3: TLabel
      Left = 57
      Top = 12
      Width = 79
      Height = 22
      Caption = 'Pesquisa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbltitdatai: TLabel
      Left = 8
      Top = 58
      Width = 61
      Height = 17
      Caption = 'Venda de'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 110
      Width = 21
      Height = 17
      Caption = 'At'#233
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object spdlimpar: TSpeedButton
      Left = 164
      Top = 127
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
    object spdfiltrar: TSpeedButton
      Left = 164
      Top = 75
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
    object Label18: TLabel
      Left = 9
      Top = 162
      Width = 45
      Height = 17
      Caption = 'Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 9
      Top = 215
      Width = 62
      Height = 17
      Caption = 'Vendedor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 9
      Top = 267
      Width = 96
      Height = 17
      Caption = 'Representante'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DtpDataI: TDateTimePicker
      Left = 8
      Top = 81
      Width = 153
      Height = 25
      Date = 39647.643559745370000000
      Time = 39647.643559745370000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DtpDataF: TDateTimePicker
      Left = 8
      Top = 131
      Width = 153
      Height = 25
      Date = 39647.643731724540000000
      Time = 39647.643731724540000000
      DateMode = dmUpDown
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 376
      Width = 113
      Height = 120
      DataSource = frmDados.Dts_sVenda
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Visible = False
    end
    object cbxnomecli: TDBLookupComboBox
      Left = 8
      Top = 184
      Width = 188
      Height = 25
      DataField = 'CODCLI'
      DataSource = frmDados.Dts_Temp
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = frmDados.Dts_Clientes
      NullValueKey = 46
      ParentFont = False
      TabOrder = 3
      OnEnter = cbxnomecliEnter
    end
    object cbxnomefun: TDBLookupComboBox
      Left = 8
      Top = 237
      Width = 189
      Height = 25
      DataField = 'COD'
      DataSource = frmDados.Dts_Temp
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = frmDados.Dst_Funcionarios
      NullValueKey = 46
      ParentFont = False
      TabOrder = 4
      OnEnter = cbxnomefunEnter
    end
    object cbxnomerep: TDBLookupComboBox
      Left = 8
      Top = 289
      Width = 189
      Height = 25
      DataField = 'COD1'
      DataSource = frmDados.Dts_Temp
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = frmDados.Dst_Representantes
      NullValueKey = 46
      ParentFont = False
      TabOrder = 5
      OnEnter = cbxnomerepEnter
    end
  end
  object pnldir: TPanel
    Left = 201
    Top = 42
    Width = 712
    Height = 578
    Align = alClient
    TabOrder = 3
    object Bevel2: TBevel
      Left = 1
      Top = 1
      Width = 710
      Height = 48
      Align = alTop
    end
    object spdrelatorios176: TSpeedButton
      Left = 124
      Top = 10
      Width = 33
      Height = 30
      Hint = 'Relat'#243'rios'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton1: TSpeedButton
      Left = 212
      Top = 10
      Width = 33
      Height = 30
      Hint = 'Relat'#243'rios'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object pnlficha: TPanel
      Left = 1
      Top = 113
      Width = 710
      Height = 464
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 0
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 708
        Height = 105
        Align = alTop
        TabOrder = 0
        object Label5: TLabel
          Left = 4
          Top = 11
          Width = 46
          Height = 13
          Caption = 'Vendedor'
          FocusControl = cbxnfun
        end
        object Label6: TLabel
          Left = 4
          Top = 35
          Width = 70
          Height = 13
          Caption = 'Representante'
          FocusControl = cbxnrep
        end
        object Label4: TLabel
          Left = 4
          Top = 60
          Width = 32
          Height = 13
          Caption = 'Cliente'
          FocusControl = cbxncli
        end
        object Label42: TLabel
          Left = 4
          Top = 84
          Width = 96
          Height = 13
          Caption = 'Tabela Diferenciada'
          FocusControl = cbxncli
        end
        object ediccli: TEdit
          Left = 105
          Top = 56
          Width = 61
          Height = 21
          TabOrder = 4
          Text = 'ediccli'
          OnExit = ediccliExit
          OnKeyPress = ediccliKeyPress
        end
        object edicrep: TEdit
          Left = 105
          Top = 32
          Width = 61
          Height = 21
          TabOrder = 2
          Text = 'edicrep'
          OnExit = edicrepExit
          OnKeyPress = edicrepKeyPress
        end
        object edicfun: TEdit
          Left = 105
          Top = 8
          Width = 61
          Height = 21
          TabOrder = 0
          Text = 'edicfun'
          OnExit = edicfunExit
          OnKeyPress = edicfunKeyPress
        end
        object cbxnfun: TDBLookupComboBox
          Left = 168
          Top = 8
          Width = 513
          Height = 21
          DataField = 'nfun'
          DataSource = frmDados.Dts_NF
          TabOrder = 1
          OnKeyDown = cbxnfunKeyDown
          OnKeyPress = cbxnfunKeyPress
        end
        object cbxnrep: TDBLookupComboBox
          Left = 168
          Top = 32
          Width = 513
          Height = 21
          DataField = 'nrep'
          DataSource = frmDados.Dts_NF
          TabOrder = 3
          OnKeyDown = cbxnrepKeyDown
          OnKeyPress = cbxnrepKeyPress
        end
        object cbxncli: TDBLookupComboBox
          Left = 168
          Top = 56
          Width = 352
          Height = 21
          DataField = 'ncli'
          DataSource = frmDados.Dts_NF
          TabOrder = 5
          OnKeyPress = cbxncliKeyPress
        end
        object cbxnfant: TDBLookupComboBox
          Left = 523
          Top = 56
          Width = 157
          Height = 21
          DataField = 'nfan'
          DataSource = frmDados.Dts_NF
          TabOrder = 6
          OnKeyPress = cbxnfantKeyPress
        end
        object cbxnometab: TDBLookupComboBox
          Left = 104
          Top = 80
          Width = 217
          Height = 21
          DataField = 'CTAB'
          DataSource = frmDados.Dts_NF
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO'
          ListSource = frmDados.Dts_Tipotab
          TabOrder = 7
        end
      end
      object pctficha: TPageControl
        Left = 1
        Top = 106
        Width = 708
        Height = 357
        ActivePage = tbsDadosG
        Align = alClient
        MultiLine = True
        TabOrder = 1
        object tbsDadosG: TTabSheet
          Caption = 'Dados &Gerais'
          object Bevel5: TBevel
            Left = 0
            Top = 0
            Width = 700
            Height = 329
            Align = alClient
          end
          object Label12: TLabel
            Left = 321
            Top = 40
            Width = 40
            Height = 13
            Caption = 'Volumes'
            FocusControl = edivolumes
          end
          object Label11: TLabel
            Left = 8
            Top = 40
            Width = 29
            Height = 13
            Caption = 'Sa'#237'da'
            FocusControl = edisaida
          end
          object Label13: TLabel
            Left = 8
            Top = 61
            Width = 75
            Height = 13
            Caption = 'Res. das Unids.'
            FocusControl = ediresuni
          end
          object Label14: TLabel
            Left = 320
            Top = 61
            Width = 86
            Height = 13
            Caption = 'Prazo de Validade'
            FocusControl = ediprazo_validade
          end
          object Label46: TLabel
            Left = 8
            Top = 95
            Width = 82
            Height = 13
            Caption = 'Dados Adicionais'
            FocusControl = edida1
          end
          object Label21: TLabel
            Left = 8
            Top = 8
            Width = 91
            Height = 20
            Caption = 'Nota Fiscal'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 8
            Top = 118
            Width = 73
            Height = 13
            Caption = 'e observa'#231#245'es '
            FocusControl = edida1
          end
          object Label8: TLabel
            Left = 8
            Top = 139
            Width = 81
            Height = 13
            Caption = 'Sobre o pedido e'
            FocusControl = edida1
          end
          object Label10: TLabel
            Left = 8
            Top = 160
            Width = 53
            Height = 13
            Caption = 'Nota Fiscal'
            FocusControl = edida1
          end
          object Label15: TLabel
            Left = 536
            Top = 141
            Width = 4
            Height = 13
            Caption = '*'
          end
          object edivolumes: TDBEdit
            Left = 424
            Top = 34
            Width = 115
            Height = 21
            DataField = 'VOLUMES'
            DataSource = frmDados.Dts_NF
            TabOrder = 1
            OnKeyPress = edivolumesKeyPress
          end
          object edisaida: TDBEdit
            Left = 116
            Top = 34
            Width = 149
            Height = 21
            DataField = 'SAIDA'
            DataSource = frmDados.Dts_NF
            TabOrder = 0
            OnKeyPress = edisaidaKeyPress
          end
          object ediresuni: TDBEdit
            Left = 116
            Top = 57
            Width = 149
            Height = 21
            DataField = 'RESUNI'
            DataSource = frmDados.Dts_NF
            TabOrder = 2
            OnKeyPress = ediresuniKeyPress
          end
          object ediprazo_validade: TDBEdit
            Left = 424
            Top = 57
            Width = 116
            Height = 21
            DataField = 'PRAZO_VALIDADE'
            DataSource = frmDados.Dts_NF
            TabOrder = 3
            OnKeyPress = ediprazo_validadeKeyPress
          end
          object edida1: TDBEdit
            Left = 116
            Top = 91
            Width = 200
            Height = 21
            DataField = 'DA1'
            DataSource = frmDados.Dts_NF
            TabOrder = 4
            OnKeyPress = edida1KeyPress
          end
          object edida2: TDBEdit
            Left = 320
            Top = 91
            Width = 220
            Height = 21
            DataField = 'DA2'
            DataSource = frmDados.Dts_NF
            TabOrder = 5
            OnKeyPress = edida2KeyPress
          end
          object edida3: TDBEdit
            Left = 116
            Top = 114
            Width = 201
            Height = 21
            DataField = 'DA3'
            DataSource = frmDados.Dts_NF
            TabOrder = 6
            OnKeyPress = edida3KeyPress
          end
          object edida4: TDBEdit
            Left = 320
            Top = 114
            Width = 221
            Height = 21
            DataField = 'DA4'
            DataSource = frmDados.Dts_NF
            TabOrder = 7
            OnKeyPress = edida4KeyPress
          end
          object edida5: TDBEdit
            Left = 116
            Top = 137
            Width = 200
            Height = 21
            DataField = 'DA5'
            DataSource = frmDados.Dts_NF
            TabOrder = 8
            OnKeyPress = edida5KeyPress
          end
          object edida6: TDBEdit
            Left = 320
            Top = 137
            Width = 209
            Height = 21
            DataField = 'DA6'
            DataSource = frmDados.Dts_NF
            TabOrder = 9
            OnKeyPress = edida6KeyPress
          end
          object edida7: TDBEdit
            Left = 116
            Top = 160
            Width = 201
            Height = 21
            DataField = 'DA7'
            DataSource = frmDados.Dts_NF
            TabOrder = 10
            OnKeyPress = edida7KeyPress
          end
          object edida8: TDBEdit
            Left = 321
            Top = 160
            Width = 220
            Height = 21
            DataField = 'DA8'
            DataSource = frmDados.Dts_NF
            TabOrder = 11
            OnKeyPress = edida8KeyPress
          end
        end
        object TbsProdutos: TTabSheet
          Caption = 'Produ&tos'
          ImageIndex = 1
          OnShow = TbsProdutosShow
          object Bevel4: TBevel
            Left = 0
            Top = 0
            Width = 700
            Height = 329
            Align = alClient
          end
          object spdconsultaproduto: TSpeedButton
            Left = 84
            Top = 19
            Width = 23
            Height = 22
            Flat = True
            Glyph.Data = {
              42010000424D4201000000000000760000002800000011000000110000000100
              040000000000CC00000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
              DDDDD0000000D00DDDDDDDDDDDDDD0000000D000DDDDDDDDDDDDD0000000DD00
              0DDDDDDDDDDDD0000000DDD000D800008DDDD0000000DDDD0000777700DDD000
              0000DDDDD08EE777780DD0000000DDDD807E77777708D0000000DDDD07E77777
              7770D0000000DDDD077777777770D0000000DDDD077777777E70D0000000DDDD
              077777777E70D0000000DDDD80777777EE08D0000000DDDDD08777EEE80DD000
              0000DDDDDD00777700DDD0000000DDDDDDD800008DDDD0000000DDDDDDDDDDDD
              DDDDD0000000}
            OnClick = spdconsultaprodutoClick
          end
          object lbltotal: TLabel
            Left = 615
            Top = 190
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'lbltotal'
          end
          object Label16: TLabel
            Left = 530
            Top = 190
            Width = 24
            Height = 13
            Caption = 'Total'
          end
          object Label23: TLabel
            Left = 14
            Top = 2
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
          end
          object Label24: TLabel
            Left = 142
            Top = 2
            Width = 26
            Height = 13
            Caption = 'Qtde.'
          end
          object Label25: TLabel
            Left = 181
            Top = 2
            Width = 23
            Height = 13
            Caption = 'Und.'
          end
          object Label26: TLabel
            Left = 210
            Top = 2
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
          end
          object Label27: TLabel
            Left = 522
            Top = 3
            Width = 52
            Height = 13
            Caption = 'Pr. Unit'#225'rio'
          end
          object Label28: TLabel
            Left = 626
            Top = 2
            Width = 24
            Height = 13
            Caption = 'Total'
          end
          object lblnuni: TLabel
            Left = 431
            Top = 189
            Width = 30
            Height = 13
            Caption = 'lblnuni'
          end
          object Label29: TLabel
            Left = 134
            Top = 185
            Width = 76
            Height = 13
            Caption = 'Tipo de Material'
            Visible = False
          end
          object spdalterarparc: TSpeedButton
            Left = 4
            Top = 182
            Width = 33
            Height = 30
            Hint = 'Alterar'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            Glyph.Data = {
              42050000424D4205000000000000360000002800000016000000130000000100
              1800000000000C050000C30E0000C30E00000000000000000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7B7B7BCAFAE9A7E
              7B9F756F288686978E8EC0B9B9BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB4B4B4BFACAB9E8785DC
              756EF5A39FA3BFBA4DB5B5914844BC837FC0B6B6BFBFBFBFBFBFBFBFBFBFBFBF
              0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB3B3B3BBA6A4AE8D8BD48582
              B3B3AEF8AAA89EDCE167E8EBBEBCBFB76865974B47B9827FC0B5B5BFBFBFBFBF
              BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFB4B4B4B5A09EBA908D8D9B97DDA9
              A7A8D4D86BE7EAE0DEE36FE6EA8BE0E477E4E8AEACAB974B4786433FB9817EC0
              B6B5BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFB4B4B4AC9695939F9BBFB0AFAA
              D2D4CDE3E790E3E7DEE3E7E3DDE1A9A8AB4FA8B97F8EBC75CECF7F7F7B773B39
              AA544FAB918FB9B9B9BFBFBF0000BFBFBFBFBFBFBFBFBFB6B6B68BB8B77FD9DA
              7BE3E7B9E8EBE9E0E4BCA7AAA1B0B1B19C9F9E9E9E5F5F7F4B4DA2C2E3E7B3A2
              A08E4643AA544F937977949494BBBBBB0000BFBFBFBFBFBFBFBFBFBFBFBFB7C9
              CBD7E3E7D0E1E5C4F1F4F3D5DB4B8B8C27CFCF33D4D4A5A5B4404995AEBCD9E8
              E1E5E7CBCEC8787690778DA0A2ABABABABBDBDBD0000BFBFBFBFBFBFBFBFBFBF
              BFBFC4BFC0E6DFE0FFF7F8F8DDE2B19F576C811E9CF4EB033E9922748A3C3495
              B5DDE286E5E9E7E3E7D3A09DB69BA1B9BCBFBFBFBFBFBFBF0000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFDFC6CAFFEAEDB3AF668381597F7F12218D8200707F1269
              6B77212D9BAFAFC2FCFCE7E3E7E0DFE1CD9A96C2ABAABFBFBFBFBFBF0000BFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBDBCBC99999980807576761E1616006503030C
              767F323F9BDBDCDBE5BBB8D7E8EB82E3E793E1E5E08F8DC5A5A2BFBDBDBFBFBF
              0000BFBFBFBFBFBFBFBFBFBFBFBFB2B2B29090907F7F737171231A1A00000000
              121212989293DDEFF2FDD0D6A5DFE461E3E585DDE089F9FAECDCE1D9817CC1B0
              AFBFBFBF0000BFBFBFBFBFBFBFBFBFAFAFAF6D6262694F4D7469311F1F000000
              001A1A1A948789FFD5DBFFDCE1E6FFFF6FF6FB3FBCCA95B5C3BADBE5C9F0F3D8
              9F9CD0B6B7C0BFBF0000BFBFBFBFBFBFAEAEAE616161715440D983675C302E00
              0000202020959595F7D6DAF7FFFFB2FBFBB6E5EA36C4E452A5D54FA8D73BBEE1
              91E4EAE1CDD1B2D7DBD0C3C60000BFBFBFB1B1B15E5E5E4F4F3C6767296B4E28
              3B2221242424979797F2F2F2FFE8EBDDFFFF6CF8F8A1D5DD44B5DD49AFDA45B4
              DC47B1DB95D3DDD5C8CB81E0E3D8C6CA0000B6B6B65555555252416868272222
              00000000272727818181CECECEF9F9F9E7E7EAD1FFFFD1FFFF63FFFF7CEEF788
              B1CB85ACC680EAF5A8E8E8D7C9CCDDC3C6C1BFBF0000B5B5B55757496B6B231F
              1F00000000272727828282B6B6B6BFBFBFD2D2D2EAFBFBE0FFFF69F8FAB2E4E8
              B7FFFF72D9D97AD3D393E7E770E1E1A1C9C9BFBFBFBFBFBF0000B9B9B16F6F1D
              1A1A00000000252525848484B7B7B7BFBFBFBFBFBFBFBFBFF9F9F9F8FBFCC3D4
              DAF3C9CFC8E0E0BAE4E45FDFDF6FD9D99BCACABAE6E6C0C6C6BFBFBF0000BDBD
              BC949481000000222222868686B9B9B9BFBFBFBFBFBFBFBFBFBFBFBFC9C9C9FA
              D0D5CBC0C2C8C0C1D4C5C7E4CACDC7C8CBC5C6C8BFBFBFC1C8C8BFC0C0BFBFBF
              0000BFBFBFBCBCBCADADADB1B1B1BBBBBBBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFC4BFC0BFBFBFBFBFBFC0BFBFC2BFBFC2BFBFC1BFBFBFBFBFBFBFBFBFBF
              BFBFBFBF0000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = spdalterarparcClick
          end
          object spdsalvarprod: TSpeedButton
            Left = 44
            Top = 182
            Width = 33
            Height = 30
            Hint = 'Salvar'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
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
            OnClick = spdsalvarprodClick
          end
          object spdexcluirparc: TSpeedButton
            Left = 84
            Top = 182
            Width = 33
            Height = 30
            Hint = 'Excluir'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
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
            OnClick = spdexcluirparcClick
          end
          object dbgnfp: TDBGrid
            Left = 2
            Top = 43
            Width = 690
            Height = 138
            DataSource = frmDados.Dts_NFP
            Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 6
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = dbgnfpDrawColumnCell
            OnDblClick = dbgnfpDblClick
            OnEnter = dbgnfpEnter
            OnKeyDown = dbgnfpKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'CPRO'
                Width = 91
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDE'
                Title.Caption = 'Qtde'
                Width = 61
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nunid'
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NPRO'
                Width = 292
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRVE'
                Title.Caption = 'Pr. Unit'#225'rio'
                Width = 78
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SUBTOTAL'
                Title.Caption = 'Subtotal'
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IMPNF'
                Width = 13
                Visible = True
              end>
          end
          object edicpro: TEdit
            Left = 14
            Top = 19
            Width = 69
            Height = 21
            TabOrder = 0
            Text = 'edicpro'
            OnExit = edicproExit
            OnKeyPress = edicproKeyPress
          end
          object ediqtde: TEdit
            Left = 108
            Top = 19
            Width = 60
            Height = 21
            MaxLength = 14
            TabOrder = 1
            Text = 'ediqtde'
            OnExit = ediqtdeExit
            OnKeyPress = ediqtdeKeyPress
          end
          object edinpro: TEdit
            Left = 210
            Top = 19
            Width = 290
            Height = 21
            TabOrder = 3
            Text = 'edinpro'
            OnKeyPress = edinproKeyPress
          end
          object ediprve: TEdit
            Left = 504
            Top = 19
            Width = 76
            Height = 21
            MaxLength = 15
            TabOrder = 4
            Text = 'ediprve'
            OnEnter = ediprveEnter
            OnExit = ediprveExit
            OnKeyPress = ediprveKeyPress
          end
          object edisubtotal: TEdit
            Left = 582
            Top = 19
            Width = 71
            Height = 21
            MaxLength = 15
            TabOrder = 5
            Text = 'edisubtotal'
            OnKeyDown = edisubtotalKeyDown
            OnKeyPress = edisubtotalKeyPress
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 229
            Top = 181
            Width = 68
            Height = 21
            DataField = 'ntipo_prod'
            DataSource = frmDados.Dts_Temp
            TabOrder = 7
            Visible = False
          end
          object cbxunid: TComboBox
            Left = 170
            Top = 19
            Width = 38
            Height = 21
            ItemHeight = 0
            TabOrder = 2
            Text = 'cbxunid'
            OnExit = cbxunidExit
            OnKeyPress = cbxunidKeyPress
          end
          object ckbimpnf: TCheckBox
            Left = 656
            Top = 20
            Width = 17
            Height = 17
            TabOrder = 8
            Visible = False
            OnClick = ckbimpnfClick
          end
        end
        object tbstributacao: TTabSheet
          Caption = 'Tributa'#231#227'o'
          ImageIndex = 2
          OnShow = tbstributacaoShow
          object Bevel6: TBevel
            Left = 0
            Top = 0
            Width = 700
            Height = 329
            Align = alClient
          end
          object Label17: TLabel
            Left = 4
            Top = 44
            Width = 26
            Height = 13
            Caption = 'ICMS'
          end
          object Label22: TLabel
            Left = 4
            Top = 14
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
          end
          object lbldescricao: TLabel
            Left = 76
            Top = 13
            Width = 56
            Height = 13
            Caption = 'lbldescricao'
          end
          object Label30: TLabel
            Left = 171
            Top = 44
            Width = 13
            Height = 13
            Caption = 'IPI'
          end
          object Label31: TLabel
            Left = 348
            Top = 44
            Width = 25
            Height = 13
            Caption = 'Sit. A'
          end
          object Label32: TLabel
            Left = 490
            Top = 44
            Width = 25
            Height = 13
            Caption = 'Sit. B'
          end
          object Label33: TLabel
            Left = 4
            Top = 72
            Width = 19
            Height = 13
            Caption = 'C.F.'
          end
          object Label34: TLabel
            Left = 171
            Top = 72
            Width = 28
            Height = 13
            Caption = 'CFOP'
          end
          object Label35: TLabel
            Left = 348
            Top = 72
            Width = 17
            Height = 13
            Caption = 'PIS'
          end
          object Label36: TLabel
            Left = 490
            Top = 72
            Width = 39
            Height = 13
            Caption = 'COFINS'
          end
          object Label37: TLabel
            Left = 4
            Top = 100
            Width = 41
            Height = 13
            Caption = 'Mod. BC'
          end
          object Label38: TLabel
            Left = 171
            Top = 99
            Width = 58
            Height = 13
            Caption = 'Mod. BC ST'
          end
          object Label39: TLabel
            Left = 348
            Top = 100
            Width = 23
            Height = 13
            Caption = 'Aliq I'
          end
          object Label40: TLabel
            Left = 490
            Top = 98
            Width = 26
            Height = 13
            Caption = 'Aliq II'
          end
          object Label41: TLabel
            Left = 4
            Top = 128
            Width = 29
            Height = 13
            Caption = 'Aliq III'
          end
          object spdantp: TSpeedButton
            Left = 628
            Top = 4
            Width = 23
            Height = 22
            Flat = True
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              04000000000080000000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000033333
              3333330003333333333333000333333333333300033333333333000000033333
              3333300000333333333333000333333333333330333333333333333333333333
              3333333333333333333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
            OnClick = spdantpClick
          end
          object spdproxp: TSpeedButton
            Left = 654
            Top = 4
            Width = 23
            Height = 22
            Flat = True
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              04000000000080000000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333333333333333
              0333333333333330003333333333330000033333333330000000333333333330
              0033333333333330003333333333333000333333333330000333}
            OnClick = spdproxpClick
          end
          object spdgravartrib: TSpeedButton
            Left = 644
            Top = 126
            Width = 33
            Height = 30
            Hint = 'Salvar'
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
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
            OnClick = spdgravartribClick
          end
          object Label62: TLabel
            Left = 169
            Top = 128
            Width = 24
            Height = 13
            Caption = 'NCM'
            FocusControl = DBEdit3
          end
          object ediicms: TDBLookupComboBox
            Left = 76
            Top = 40
            Width = 88
            Height = 21
            DataField = 'CODICMS'
            DataSource = frmDados.Dts_NFP
            KeyField = 'CODIGO'
            ListField = 'SIGLA'
            ListSource = frmDados.Dts_AliqImpFis
            TabOrder = 0
            OnKeyPress = ediicmsKeyPress
          end
          object ediipi: TDBLookupComboBox
            Left = 255
            Top = 40
            Width = 88
            Height = 21
            DataField = 'CODIPI'
            DataSource = frmDados.Dts_NFP
            KeyField = 'CODIGO'
            ListField = 'SIGLA'
            ListSource = frmDados.Dts_IPI
            TabOrder = 1
            OnKeyPress = ediipiKeyPress
          end
          object edisita: TDBLookupComboBox
            Left = 400
            Top = 40
            Width = 88
            Height = 21
            DataField = 'CODSITA'
            DataSource = frmDados.Dts_NFP
            KeyField = 'CODIGO'
            ListField = 'SIGLA'
            ListSource = frmDados.Dts_SITA
            TabOrder = 2
            OnKeyPress = edisitaKeyPress
          end
          object edisitb: TDBLookupComboBox
            Left = 561
            Top = 40
            Width = 88
            Height = 21
            DataField = 'CODSITB'
            DataSource = frmDados.Dts_NFP
            KeyField = 'CODIGO'
            ListField = 'SIGLA'
            ListSource = frmDados.Dts_SITB
            TabOrder = 3
            OnKeyPress = edisitbKeyPress
          end
          object edicf: TDBLookupComboBox
            Left = 76
            Top = 68
            Width = 88
            Height = 21
            DataField = 'CODCF'
            DataSource = frmDados.Dts_NFP
            KeyField = 'CODIGO'
            ListField = 'SIGLA'
            ListSource = frmDados.Dts_CF
            TabOrder = 4
            OnKeyPress = edicfKeyPress
          end
          object edicfop: TDBLookupComboBox
            Left = 255
            Top = 68
            Width = 88
            Height = 21
            DataField = 'CODCFOP'
            DataSource = frmDados.Dts_NFP
            KeyField = 'CODIGO'
            ListField = 'CFOP'
            ListSource = frmDados.Dts_NatOp
            TabOrder = 5
            OnKeyPress = edicfopKeyPress
          end
          object edipis: TDBLookupComboBox
            Left = 400
            Top = 68
            Width = 88
            Height = 21
            DataField = 'CODPIS'
            DataSource = frmDados.Dts_NFP
            KeyField = 'CODIGO'
            ListField = 'SIGLA'
            ListSource = frmDados.Dts_Pis
            TabOrder = 6
            OnKeyPress = edipisKeyPress
          end
          object edicofins: TDBLookupComboBox
            Left = 561
            Top = 68
            Width = 88
            Height = 21
            DataField = 'CODCOFINS'
            DataSource = frmDados.Dts_NFP
            KeyField = 'CODIGO'
            ListField = 'SIGLA'
            ListSource = frmDados.Dts_Cofins
            TabOrder = 7
            OnKeyPress = edicofinsKeyPress
          end
          object edimodbc: TDBLookupComboBox
            Left = 76
            Top = 96
            Width = 88
            Height = 21
            DataField = 'CODMODBC'
            DataSource = frmDados.Dts_NFP
            KeyField = 'CODIGO'
            ListField = 'SIGLA'
            ListSource = frmDados.Dts_ModBc
            TabOrder = 8
            OnKeyPress = edimodbcKeyPress
          end
          object edimodbcst: TDBLookupComboBox
            Left = 255
            Top = 95
            Width = 88
            Height = 21
            DataField = 'CODMODBCST'
            DataSource = frmDados.Dts_NFP
            KeyField = 'CODIGO'
            ListField = 'SIGLA'
            ListSource = frmDados.Dts_modbcst
            TabOrder = 9
            OnKeyPress = edimodbcstKeyPress
          end
          object edialiq1: TDBLookupComboBox
            Left = 401
            Top = 96
            Width = 88
            Height = 21
            DataField = 'CODVII'
            DataSource = frmDados.Dts_NFP
            KeyField = 'CODIGO'
            ListField = 'SIGLA'
            ListSource = frmDados.Dts_vii
            TabOrder = 10
            OnKeyPress = edialiq1KeyPress
          end
          object edialiq2: TDBLookupComboBox
            Left = 561
            Top = 94
            Width = 88
            Height = 21
            DataField = 'CODIRII'
            DataSource = frmDados.Dts_NFP
            KeyField = 'CODIGO'
            ListField = 'SIGLA'
            ListSource = frmDados.Dts_IR_II
            TabOrder = 11
            OnKeyPress = edialiq2KeyPress
          end
          object edialiq3: TDBLookupComboBox
            Left = 76
            Top = 124
            Width = 88
            Height = 21
            DataField = 'CODOIMP'
            DataSource = frmDados.Dts_NFP
            KeyField = 'CODIGO'
            ListField = 'SIGLA'
            ListSource = frmDados.Dts_Oimp
            TabOrder = 12
            OnKeyPress = edialiq3KeyPress
          end
          object DBEdit3: TDBEdit
            Left = 255
            Top = 123
            Width = 84
            Height = 21
            DataField = 'NCM'
            DataSource = frmDados.Dts_NFP
            TabOrder = 13
            OnKeyPress = ediqtdeKeyPress
          end
          object ckbindtot: TCheckBox
            Left = 345
            Top = 126
            Width = 140
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Comp'#245'e Total da NF'
            TabOrder = 14
          end
        end
      end
    end
    object pnllista: TPanel
      Left = 2
      Top = 8
      Width = 191
      Height = 35
      BevelOuter = bvNone
      TabOrder = 1
      object spdIncluir171: TSpeedButton
        Left = 2
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Incluir'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Glyph.Data = {
          7A040000424D7A04000000000000360000002800000011000000150000000100
          1800000000004404000000000000000000000000000000000000BFBFBFBFBFBF
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F00BFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F007F00007F00007F00007F00007F00007F00007F00007F00007F00007F0000
          7F00007F00007F00007F00007F00007F7F7F7F7F7F007F000000FFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFF
          7F00007F7F7F7F7F7F007F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F00007F7F7F7F7F7F007F00
          00FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00
          FFFFFFFFFFFFFFFF7F00007F7F7F7F7F7F007F0000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F00007F
          7F7F7F7F7F007F000000FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFF00FFFF7F00007F7F7F7F7F7F007F0000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF7F00007F7F7F7F7F7F007F0000FFFFFFFFFFFF00FFFFFFFFFFFFFFFF
          FFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF7F00007F7F7F7F7F
          7F007F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF7F00007F7F7F7F7F7F007F000000FFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFF
          7F00007F7F7F7F7F7F007F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F00007F7F7F7F7F7F007F00
          00FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00
          FFFFFFFFFFFFFFFF7F00007F7F7F7F7F7F007F0000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007F7FBFBFBFBFBFBF7F00007F
          7F7FBFBFBF007F000000FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FF00FFFF7F00007F00007F00007F00007F0000BFBFBFBFBFBF007F0000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0000FFFFFFFFFF
          FF7F0000BFBFBFBFBFBFBFBFBF007F0000FFFFFFFFFFFF00FFFFFFFFFFFFFFFF
          FFFFFF00FFFFFFFFFFFFFFFF7F0000FFFFFF7F0000BFBFBFBFBFBFBFBFBFBFBF
          BF007F0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          7F00007F0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F00007F00007F00007F
          00007F00007F00007F00007F00007F00007F00007F0000BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = spdIncluir171Click
      end
      object spdAlterar172: TSpeedButton
        Left = 157
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Alterar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = spdAlterar172Click
      end
      object spdExcluir173: TSpeedButton
        Left = 81
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Excluir'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
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
        OnClick = spdExcluir173Click
      end
      object spdConsultar174: TSpeedButton
        Left = 38
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Consulta e Altera'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Glyph.Data = {
          42050000424D4205000000000000360000002800000016000000130000000100
          1800000000000C050000C30E0000C30E00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB7B7B7BCAFAE9A7E
          7B9F756F288686978E8EC0B9B9BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB4B4B4BFACAB9E8785DC
          756EF5A39FA3BFBA4DB5B5914844BC837FC0B6B6BFBFBFBFBFBFBFBFBFBFBFBF
          0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB3B3B3BBA6A4AE8D8BD48582
          B3B3AEF8AAA89EDCE167E8EBBEBCBFB76865974B47B9827FC0B5B5BFBFBFBFBF
          BFBFBFBF0000BFBFBFBFBFBFBFBFBFBFBFBFB4B4B4B5A09EBA908D8D9B97DDA9
          A7A8D4D86BE7EAE0DEE36FE6EA8BE0E477E4E8AEACAB974B4786433FB9817EC0
          B6B5BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBFB4B4B4AC9695939F9BBFB0AFAA
          D2D4CDE3E790E3E7DEE3E7E3DDE1A9A8AB4FA8B97F8EBC75CECF7F7F7B773B39
          AA544FAB918FB9B9B9BFBFBF0000BFBFBFBFBFBFBFBFBFB6B6B68BB8B77FD9DA
          7BE3E7B9E8EBE9E0E4BCA7AAA1B0B1B19C9F9E9E9E5F5F7F4B4DA2C2E3E7B3A2
          A08E4643AA544F937977949494BBBBBB0000BFBFBFBFBFBFBFBFBFBFBFBFB7C9
          CBD7E3E7D0E1E5C4F1F4F3D5DB4B8B8C27CFCF33D4D4A5A5B4404995AEBCD9E8
          E1E5E7CBCEC8787690778DA0A2ABABABABBDBDBD0000BFBFBFBFBFBFBFBFBFBF
          BFBFC4BFC0E6DFE0FFF7F8F8DDE2B19F576C811E9CF4EB033E9922748A3C3495
          B5DDE286E5E9E7E3E7D3A09DB69BA1B9BCBFBFBFBFBFBFBF0000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFDFC6CAFFEAEDB3AF668381597F7F12218D8200707F1269
          6B77212D9BAFAFC2FCFCE7E3E7E0DFE1CD9A96C2ABAABFBFBFBFBFBF0000BFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBDBCBC99999980807576761E1616006503030C
          767F323F9BDBDCDBE5BBB8D7E8EB82E3E793E1E5E08F8DC5A5A2BFBDBDBFBFBF
          0000BFBFBFBFBFBFBFBFBFBFBFBFB2B2B29090907F7F737171231A1A00000000
          121212989293DDEFF2FDD0D6A5DFE461E3E585DDE089F9FAECDCE1D9817CC1B0
          AFBFBFBF0000BFBFBFBFBFBFBFBFBFAFAFAF6D6262694F4D7469311F1F000000
          001A1A1A948789FFD5DBFFDCE1E6FFFF6FF6FB3FBCCA95B5C3BADBE5C9F0F3D8
          9F9CD0B6B7C0BFBF0000BFBFBFBFBFBFAEAEAE616161715440D983675C302E00
          0000202020959595F7D6DAF7FFFFB2FBFBB6E5EA36C4E452A5D54FA8D73BBEE1
          91E4EAE1CDD1B2D7DBD0C3C60000BFBFBFB1B1B15E5E5E4F4F3C6767296B4E28
          3B2221242424979797F2F2F2FFE8EBDDFFFF6CF8F8A1D5DD44B5DD49AFDA45B4
          DC47B1DB95D3DDD5C8CB81E0E3D8C6CA0000B6B6B65555555252416868272222
          00000000272727818181CECECEF9F9F9E7E7EAD1FFFFD1FFFF63FFFF7CEEF788
          B1CB85ACC680EAF5A8E8E8D7C9CCDDC3C6C1BFBF0000B5B5B55757496B6B231F
          1F00000000272727828282B6B6B6BFBFBFD2D2D2EAFBFBE0FFFF69F8FAB2E4E8
          B7FFFF72D9D97AD3D393E7E770E1E1A1C9C9BFBFBFBFBFBF0000B9B9B16F6F1D
          1A1A00000000252525848484B7B7B7BFBFBFBFBFBFBFBFBFF9F9F9F8FBFCC3D4
          DAF3C9CFC8E0E0BAE4E45FDFDF6FD9D99BCACABAE6E6C0C6C6BFBFBF0000BDBD
          BC949481000000222222868686B9B9B9BFBFBFBFBFBFBFBFBFBFBFBFC9C9C9FA
          D0D5CBC0C2C8C0C1D4C5C7E4CACDC7C8CBC5C6C8BFBFBFC1C8C8BFC0C0BFBFBF
          0000BFBFBFBCBCBCADADADB1B1B1BBBBBBBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFC4BFC0BFBFBFBFBFBFC0BFBFC2BFBFC2BFBFC1BFBFBFBFBFBFBFBFBFBF
          BFBFBFBF0000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = spdConsultar174Click
      end
      object spdilustracao177: TSpeedButton
        Left = 120
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Ilustra'#231#227'o'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
          55555575555555775F55509999999901055557F55555557F75F5001111111101
          105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
          01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
          8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
          0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
          0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
          05555555575FF777755555555500055555555555557775555555}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Visible = False
      end
    end
    object pnlsalvarficha: TPanel
      Left = 576
      Top = 8
      Width = 81
      Height = 34
      BevelOuter = bvNone
      TabOrder = 2
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
    end
    object pnllocaliza: TPanel
      Left = 1
      Top = 49
      Width = 710
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object lbltitdesc: TLabel
        Left = 3
        Top = 6
        Width = 94
        Height = 17
        Caption = 'Classificar por'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 171
        Top = 6
        Width = 59
        Height = 17
        Caption = 'Localizar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Bevel3: TBevel
        Left = 0
        Top = 0
        Width = 710
        Height = 64
        Align = alClient
      end
      object spdant: TSpeedButton
        Left = 500
        Top = 27
        Width = 23
        Height = 22
        Flat = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000033333
          3333330003333333333333000333333333333300033333333333000000033333
          3333300000333333333333000333333333333330333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        OnClick = spdantClick
      end
      object spdprox: TSpeedButton
        Left = 526
        Top = 27
        Width = 23
        Height = 22
        Flat = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          0333333333333330003333333333330000033333333330000000333333333330
          0033333333333330003333333333333000333333333330000333}
        OnClick = spdproxClick
      end
      object edidesc: TEdit
        Left = 171
        Top = 25
        Width = 326
        Height = 25
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = 'EDIDESC'
        OnChange = edidescChange
        OnKeyPress = edidescKeyPress
      end
      object cbxclassificar: TComboBox
        Left = 3
        Top = 25
        Width = 165
        Height = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 17
        ParentFont = False
        TabOrder = 0
        Text = 'cbxclassificar'
        OnClick = cbxclassificarClick
        OnKeyDown = cbxclassificarKeyDown
        OnKeyPress = cbxclassificarKeyPress
      end
    end
    object dbgnf: TDBGrid
      Left = 8
      Top = 536
      Width = 673
      Height = 88
      DataSource = frmDados.Dts_NF
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = dbgnfEnter
      OnKeyDown = dbgnfKeyDown
      OnKeyPress = dbgnfKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'DATACAD'
          Title.Caption = 'Data Cadastro'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ncli'
          Title.Caption = 'Cliente'
          Width = 251
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CCLI'
          Title.Caption = 'C'#243'digo'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NPED'
          Title.Caption = 'N.o Pedido'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'totg'
          Title.Caption = 'Total'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDESC'
          Title.Caption = '% Desc.'
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALDESC'
          Title.Caption = 'Valor Desc.'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LIQUIDO'
          Title.Caption = 'Liquido'
          Width = 73
          Visible = True
        end>
    end
    object pnlop: TPanel
      Left = 264
      Top = 8
      Width = 273
      Height = 35
      BevelOuter = bvNone
      TabOrder = 5
      object spdrel: TSpeedButton
        Left = 153
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Relat'#243'rios'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33F333337F3333373B33333BB33333B337FF33377F33337F3BB3333BB333
          3BB3377FF3377F33377333BB777BB777BB333377FFF77FFF7733330000000000
          B3333377777777777333330FFFFFFFF03333337F3FF3FFF7F333330F00F000F0
          33333F7F77377737FFFFBB0FFF8FFFF0BBB3777F3F33FFF7777F3B0F08700000
          000B377F73F7777777773308880FFFFFF033337F377333333733330807FFFFF8
          033333737FFFFFFF7F33333000000000B3333337777777777FF333BB333BB333
          BB33337733377F3377FF3BB3333BB3333BB3377333377F33377F3B33333BB333
          33B33733333773333373B333333B3333333B7333333733333337}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = spdrelClick
      end
      object spdimpnf: TSpeedButton
        Left = 77
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Imp. N.F.'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555500000000
          0555555F7777777775F55500FFFFFFFFF0555577F5FFFFFFF7F550F0FEEEEEEE
          F05557F7F777777757F550F0FFFFFFFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
          F05557F7F777777757F550F0FF777FFFF05557F7F5FFFFFFF7F550F0FEEEEEEE
          F05557F7F777777757F550F0FF7F777FF05557F7F5FFFFFFF7F550F0FEEEEEEE
          F05557F7F777777757F550F0FF77F7FFF05557F7F5FFFFFFF7F550F0FEEEEEEE
          F05557F7F777777757F550F0FFFFFFFFF05557F7FF5F5F5F57F550F00F0F0F0F
          005557F77F7F7F7F77555055070707070555575F7F7F7F7F7F55550507070707
          0555557575757575755555505050505055555557575757575555}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = spdimpnfClick
      end
      object spdlanca: TSpeedButton
        Left = 3
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Lan'#231'a Pedido'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
          55555575555555775F55509999999901055557F55555557F75F5001111111101
          105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
          01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
          0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
          0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
          0005555555575FF7777555555555000555555555555577755555555555555555
          5555555555555555555555555555555555555555555555555555}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = spdlancaClick
      end
      object spdemail: TSpeedButton
        Left = 191
        Top = 2
        Width = 33
        Height = 30
        Hint = 'enviar email'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333FFFFFFFFFFFFFFF000000000000
          000077777777777777770FFFFFFFFFFFFFF07F3333FFF33333370FFFF777FFFF
          FFF07F333777333333370FFFFFFFFFFFFFF07F3333FFFFFF33370FFFF777777F
          FFF07F33377777733FF70FFFFFFFFFFF99907F3FFF33333377770F777FFFFFFF
          9CA07F77733333337F370FFFFFFFFFFF9A907FFFFFFFFFFF7FF7000000000000
          0000777777777777777733333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = spdemailClick
      end
      object spdconflan: TSpeedButton
        Left = 233
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Finaliza Lan'#231'amento'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
          333333333337F33333333333333033333333333333373F333333333333090333
          33333333337F7F33333333333309033333333333337373F33333333330999033
          3333333337F337F33333333330999033333333333733373F3333333309999903
          333333337F33337F33333333099999033333333373333373F333333099999990
          33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
          33333333337F7F33333333333309033333333333337F7F333333333333090333
          33333333337F7F33333333333309033333333333337F7F333333333333090333
          33333333337F7F33333333333300033333333333337773333333}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = spdconflanClick
      end
      object spdcanclan: TSpeedButton
        Left = 40
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Cancela Lan'#231'amento'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
          3333333333777F33333333333309033333333333337F7F333333333333090333
          33333333337F7F33333333333309033333333333337F7F333333333333090333
          33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
          3333333777737777F333333099999990333333373F3333373333333309999903
          333333337F33337F33333333099999033333333373F333733333333330999033
          3333333337F337F3333333333099903333333333373F37333333333333090333
          33333333337F7F33333333333309033333333333337373333333333333303333
          333333333337F333333333333330333333333333333733333333}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = spdcanclanClick
      end
      object spdcodbar175: TSpeedButton
        Left = 114
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Gera Etiquetas para Remessa'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          33333F3F3F3F3F3F3F3F03030303030303037373737373737373333333333333
          33333F3FFFFFFFFFFF3F03000000000003037377777777777F73330800808080
          03333F7F77F7F7F77F3F0308008080800303737F77F737F77F73330080080008
          03333F77F77F777F7F3F03000000000003037377777777777373333333333333
          33333F3F3F3F3F3F3F3F03030303030303037373737373737373333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = spdcodbar175Click
      end
    end
  end
  object SayPrint: TSayPrint
    Porta = Lpt1
    Impressora = imEpsom
    EjectPage = False
    DelayPauseHide = 0
    CommandFile = False
    OutputFile = 'imprime.txt'
    Left = 856
    Top = 115
  end
  object Lista_img: TImageList
    Left = 825
    Top = 114
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008484000084840000848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000848400008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000084
      8400000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B007B7B7B007B7B7B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF00000000FE3FFE3F00000000FC1FFC1F00000000
      F80FF80F00000000F00FF00F00000000F00FF00F00000000F01FF01F00000000
      F83FF83F00000000FC7FFC7F00000000FFFFFFFF00000000FFFFFFFF00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
end
