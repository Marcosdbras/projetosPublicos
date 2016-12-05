object frmPesqOST: TfrmPesqOST
  Left = 94
  Top = 18
  Width = 924
  Height = 717
  BorderIcons = []
  Caption = 'Pesquisa de Ordem de Tratamento'
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
    Width = 916
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
    Top = 642
    Width = 916
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
    Height = 600
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
      Visible = False
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
      Visible = False
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
      Visible = False
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
      Visible = False
      OnEnter = cbxnomerepEnter
    end
  end
  object pnldir: TPanel
    Left = 201
    Top = 42
    Width = 715
    Height = 600
    Align = alClient
    TabOrder = 3
    object Bevel2: TBevel
      Left = 1
      Top = 1
      Width = 713
      Height = 48
      Align = alTop
    end
    object pnlficha: TPanel
      Left = 1
      Top = 113
      Width = 713
      Height = 486
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 0
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 711
        Height = 101
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label4: TLabel
          Left = 5
          Top = 9
          Width = 45
          Height = 13
          Caption = 'CLIENTE'
          FocusControl = cbxncli
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 5
          Top = 32
          Width = 60
          Height = 13
          Caption = 'ENDERE'#199'O'
          FocusControl = ediendent
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 5
          Top = 59
          Width = 41
          Height = 13
          Caption = 'BAIRRO'
          FocusControl = edibairroent
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 5
          Top = 81
          Width = 63
          Height = 13
          Caption = 'TELEFONES'
          FocusControl = editelefones
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 269
          Top = 57
          Width = 40
          Height = 13
          Caption = 'CIDADE'
          FocusControl = edicidadeent
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 333
          Top = 81
          Width = 52
          Height = 13
          Caption = 'CONTATO'
          FocusControl = edicontato
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 440
          Top = 56
          Width = 21
          Height = 13
          Caption = 'CEP'
          FocusControl = edicepent
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 440
          Top = 32
          Width = 40
          Height = 13
          Caption = 'COMPL.'
          FocusControl = edicomplent
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbltitnroent: TLabel
          Left = 367
          Top = 32
          Width = 17
          Height = 13
          Caption = 'N.o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object rgbtipoop: TDBRadioGroup
          Left = 592
          Top = 2
          Width = 113
          Height = 97
          Caption = ' Tipo '
          Ctl3D = True
          DataField = 'TIPOOP'
          DataSource = frmDados.Dts_sVenda
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            '&Or'#231'amento'
            '&Tratamento')
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Values.Strings = (
            '0'
            '1')
          OnChange = rgbtipoopChange
          OnClick = rgbtipoopClick
        end
        object edincli: TDBEdit
          Left = 172
          Top = 0
          Width = 229
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = frmDados.Dts_Clientes
          TabOrder = 2
          OnKeyPress = edincliKeyPress
        end
        object edinfant: TDBEdit
          Left = 407
          Top = 0
          Width = 178
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FANTASIA'
          DataSource = frmDados.Dts_Clientes
          TabOrder = 4
          OnKeyPress = edinfantKeyPress
        end
        object ediccli: TDBEdit
          Left = 109
          Top = 5
          Width = 58
          Height = 21
          DataField = 'CCLI'
          DataSource = frmDados.Dts_sVenda
          TabOrder = 1
          OnKeyPress = DBEdit1KeyPress
        end
        object cbxncli: TDBLookupComboBox
          Left = 172
          Top = 5
          Width = 229
          Height = 21
          DataField = 'ncli'
          DataSource = frmDados.Dts_sVenda
          TabOrder = 3
          OnExit = cbxncliExit
          OnKeyPress = cbxncliKeyPress
        end
        object cbxnfant: TDBLookupComboBox
          Left = 408
          Top = 5
          Width = 177
          Height = 21
          DataField = 'nfant'
          DataSource = frmDados.Dts_sVenda
          TabOrder = 5
          OnExit = cbxnfantExit
          OnKeyPress = cbxnfantKeyPress
        end
        object ediendent: TDBEdit
          Left = 109
          Top = 29
          Width = 252
          Height = 21
          CharCase = ecUpperCase
          DataSource = frmDados.Dts_Clientes
          TabOrder = 6
          OnKeyPress = ediendentKeyPress
        end
        object edicomplent: TDBEdit
          Left = 496
          Top = 29
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMPLENT'
          DataSource = frmDados.Dts_Clientes
          TabOrder = 8
          OnKeyPress = edicomplentKeyPress
        end
        object edibairroent: TDBEdit
          Left = 109
          Top = 53
          Width = 149
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRROENT'
          DataSource = frmDados.Dts_Clientes
          TabOrder = 9
          OnKeyPress = edibairroentKeyPress
        end
        object edicidadeent: TDBEdit
          Left = 318
          Top = 53
          Width = 115
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CIDADEENT'
          DataSource = frmDados.Dts_Clientes
          TabOrder = 10
          OnKeyPress = edicidadeentKeyPress
        end
        object edicepent: TDBEdit
          Left = 496
          Top = 53
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEPENT'
          DataSource = frmDados.Dts_Clientes
          TabOrder = 11
          OnKeyPress = edicepentKeyPress
        end
        object edidddfs: TDBEdit
          Left = 109
          Top = 76
          Width = 36
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DDDFS'
          DataSource = frmDados.Dts_Clientes
          TabOrder = 12
          OnKeyPress = editelefonesKeyPress
        end
        object editelefones: TDBEdit
          Left = 152
          Top = 76
          Width = 169
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TELEFONES'
          DataSource = frmDados.Dts_Clientes
          TabOrder = 13
          OnKeyPress = editelefonesKeyPress
        end
        object edicontato: TDBEdit
          Left = 392
          Top = 76
          Width = 193
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CONTATO'
          DataSource = frmDados.Dts_Clientes
          TabOrder = 14
          OnKeyPress = edicontatoKeyPress
        end
        object edinroent: TDBEdit
          Left = 392
          Top = 29
          Width = 41
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NROENT'
          DataSource = frmDados.Dts_Clientes
          TabOrder = 7
          OnKeyPress = ediendentKeyPress
        end
      end
      object pctficha: TPageControl
        Left = 1
        Top = 161
        Width = 711
        Height = 324
        ActivePage = tbsmaodeobra
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MultiLine = True
        ParentFont = False
        TabOrder = 2
        object tbsident: TTabSheet
          Caption = 'INFORMA'#199#213'ES CADASTRAIS'
          ImageIndex = 7
          object Bevel4: TBevel
            Left = 0
            Top = 0
            Width = 703
            Height = 113
            Align = alTop
          end
          object imgFoto: TImage
            Left = 621
            Top = 6
            Width = 75
            Height = 75
            ParentShowHint = False
            ShowHint = False
            Stretch = True
          end
          object Bevel8: TBevel
            Left = 0
            Top = 113
            Width = 703
            Height = 165
            Align = alClient
          end
          object lbltittelent: TLabel
            Left = 9
            Top = 147
            Width = 85
            Height = 13
            Caption = 'DDD/TELEFONE'
            FocusControl = editelent
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbltitresponsavelent: TLabel
            Left = 7
            Top = 123
            Width = 79
            Height = 13
            Caption = 'RESPONS'#193'VEL'
            FocusControl = editelent
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbltitresponsavelrgent: TLabel
            Left = 226
            Top = 123
            Width = 22
            Height = 13
            Caption = 'R.G.'
            FocusControl = editelent
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbltitresponsavelcpfent: TLabel
            Left = 426
            Top = 123
            Width = 29
            Height = 13
            Caption = 'C.P.F.'
            FocusControl = editelent
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label38: TLabel
            Left = 7
            Top = 31
            Width = 73
            Height = 13
            Caption = 'C.P.F./C.N.P.J.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label39: TLabel
            Left = 226
            Top = 31
            Width = 43
            Height = 13
            Caption = 'R.G./I.E.'
            FocusControl = EDIIE
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label40: TLabel
            Left = 426
            Top = 31
            Width = 47
            Height = 13
            Caption = 'NASCTO.'
            FocusControl = EDIDATANASC
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object spdinsfoto: TSpeedButton
            Left = 648
            Top = 84
            Width = 23
            Height = 22
            Hint = 'Importar Figura'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
              FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
              00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
              F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
              00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
              F033777777777337F73309999990FFF0033377777777FFF77333099999000000
              3333777777777777333333399033333333333337773333333333333903333333
              3333333773333333333333303333333333333337333333333333}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = spdinsfotoClick
          end
          object spdapafoto: TSpeedButton
            Left = 674
            Top = 84
            Width = 23
            Height = 22
            Hint = 'Apagar Figura'
            Flat = True
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
              305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
              005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
              B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
              B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
              B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
              B0557777FF577777F7F500000E055550805577777F7555575755500000555555
              05555777775555557F5555000555555505555577755555557555}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            OnClick = spdapafotoClick
          end
          object Label41: TLabel
            Left = 7
            Top = 54
            Width = 93
            Height = 13
            Caption = 'CADASTRADO EM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 226
            Top = 55
            Width = 78
            Height = 13
            Caption = 'PESQ. SERASA'
            FocusControl = EDIDTPESPCERASA
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbloutinf1: TLabel
            Left = 7
            Top = 8
            Width = 42
            Height = 13
            Caption = 'lbloutinf1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbloutinf2: TLabel
            Left = 226
            Top = 8
            Width = 42
            Height = 13
            Caption = 'lbloutinf2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbloutinf3: TLabel
            Left = 426
            Top = 8
            Width = 42
            Height = 13
            Caption = 'lbloutinf3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbloutinf5: TLabel
            Left = 7
            Top = 80
            Width = 42
            Height = 13
            Caption = 'lbloutinf5'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 426
            Top = 56
            Width = 41
            Height = 13
            Caption = 'TABELA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edidddeent: TDBEdit
            Left = 108
            Top = 142
            Width = 29
            Height = 21
            DataField = 'DDDEENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 13
            OnKeyPress = edidddeentKeyPress
          end
          object editelent: TDBEdit
            Left = 141
            Top = 142
            Width = 82
            Height = 21
            CharCase = ecUpperCase
            DataField = 'TELEFONEENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 14
            OnKeyPress = ediendentKeyPress
          end
          object ediresponsavelent: TDBEdit
            Left = 109
            Top = 118
            Width = 113
            Height = 21
            CharCase = ecUpperCase
            DataField = 'RESPONSAVELENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 10
            OnKeyPress = ediresponsavelentKeyPress
          end
          object ediresponsavelrgent: TDBEdit
            Left = 313
            Top = 118
            Width = 107
            Height = 21
            CharCase = ecUpperCase
            DataField = 'RGRESPONSAVELENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 11
            OnKeyPress = ediresponsavelrgentKeyPress
          end
          object ediresponsavelcpfent: TDBEdit
            Left = 508
            Top = 118
            Width = 108
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CPFRESPONSAVELENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 12
            OnKeyPress = ediresponsavelcpfentKeyPress
          end
          object edicpf: TDBEdit
            Left = 108
            Top = 28
            Width = 113
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CPF'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 3
            OnKeyPress = edicpfKeyPress
          end
          object EDIIE: TDBEdit
            Left = 313
            Top = 27
            Width = 107
            Height = 21
            CharCase = ecUpperCase
            DataField = 'IE'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 4
            OnKeyPress = EDIIEKeyPress
          end
          object EDIDATANASC: TDBEdit
            Left = 508
            Top = 28
            Width = 108
            Height = 21
            DataField = 'DATANASC'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 5
            OnKeyPress = EDIDATANASCKeyPress
          end
          object edidtcad: TDBEdit
            Left = 108
            Top = 51
            Width = 113
            Height = 21
            DataField = 'DTCAD'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 6
            OnKeyPress = edidtcadKeyPress
          end
          object EDIDTPESPCERASA: TDBEdit
            Left = 313
            Top = 51
            Width = 107
            Height = 21
            DataField = 'DTPESPCERASA'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 7
            OnKeyPress = EDIDTPESPCERASAKeyPress
          end
          object cbxoutinf1: TDBComboBox
            Left = 108
            Top = 4
            Width = 113
            Height = 21
            CharCase = ecUpperCase
            DataField = 'OUTINF1'
            DataSource = frmDados.Dts_Clientes
            ItemHeight = 13
            TabOrder = 0
            OnKeyPress = cbxoutinf1KeyPress
          end
          object cbxoutinf2: TDBComboBox
            Left = 313
            Top = 4
            Width = 107
            Height = 21
            CharCase = ecUpperCase
            DataField = 'OUTINF2'
            DataSource = frmDados.Dts_Clientes
            ItemHeight = 13
            TabOrder = 1
            OnKeyPress = cbxoutinf2KeyPress
          end
          object cbxoutinf3: TDBComboBox
            Left = 508
            Top = 4
            Width = 108
            Height = 21
            CharCase = ecUpperCase
            DataField = 'OUTINF3'
            DataSource = frmDados.Dts_Clientes
            ItemHeight = 13
            TabOrder = 2
            OnKeyPress = cbxoutinf3KeyPress
          end
          object cbxoutinf5: TDBComboBox
            Left = 108
            Top = 75
            Width = 113
            Height = 21
            CharCase = ecUpperCase
            DataField = 'OUTINF5'
            DataSource = frmDados.Dts_Clientes
            ItemHeight = 13
            TabOrder = 9
            OnKeyPress = cbxoutinf5KeyPress
          end
          object cbxntabela: TDBLookupComboBox
            Left = 508
            Top = 53
            Width = 108
            Height = 21
            DataField = 'CTIPOTAB'
            DataSource = frmDados.Dts_Clientes
            KeyField = 'CODIGO'
            ListField = 'DESCRICAO'
            ListSource = frmDados.Dts_Tipotab
            TabOrder = 8
            OnClick = cbxnmoduloClick
            OnEnter = cbxnmoduloEnter
            OnExit = cbxnmoduloExit
            OnKeyPress = cbxnmoduloKeyPress
          end
        end
        object tbscob: TTabSheet
          Caption = 'END. COBRAN'#199'A'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ImageIndex = 5
          ParentFont = False
          object Bevel10: TBevel
            Left = 0
            Top = 0
            Width = 703
            Height = 278
            Align = alClient
          end
          object lbltitendent: TLabel
            Left = 3
            Top = 10
            Width = 60
            Height = 13
            Caption = 'ENDERE'#199'O'
            FocusControl = ediendcob
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 511
            Top = 10
            Width = 17
            Height = 13
            Caption = 'N.o'
            FocusControl = edibaicob
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbltitcompent: TLabel
            Left = 3
            Top = 35
            Width = 83
            Height = 13
            Caption = 'COMPLEMENTO'
            FocusControl = edicompcob
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbltitbaient: TLabel
            Left = 322
            Top = 34
            Width = 41
            Height = 13
            Caption = 'BAIRRO'
            FocusControl = edibaicob
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbltitcident: TLabel
            Left = 3
            Top = 57
            Width = 40
            Height = 13
            Caption = 'CIDADE'
            FocusControl = edicidcob
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbltitestent: TLabel
            Left = 322
            Top = 57
            Width = 44
            Height = 13
            Caption = 'ESTADO'
            FocusControl = ediestcob
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbltitcepent: TLabel
            Left = 491
            Top = 57
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = edicepcob
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 3
            Top = 80
            Width = 85
            Height = 13
            Caption = 'DDD/TELEFONE'
            FocusControl = editelefonecob
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 323
            Top = 80
            Width = 79
            Height = 13
            Caption = 'RESPONS'#193'VEL'
            FocusControl = editelefonecob
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 3
            Top = 103
            Width = 22
            Height = 13
            Caption = 'R.G.'
            FocusControl = editelefonecob
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label33: TLabel
            Left = 323
            Top = 103
            Width = 29
            Height = 13
            Caption = 'C.P.F.'
            FocusControl = editelefonecob
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object ediendcob: TDBEdit
            Left = 107
            Top = 5
            Width = 390
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ENDCOB'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 0
            OnKeyPress = ediendentKeyPress
          end
          object edinrocob: TDBEdit
            Left = 536
            Top = 5
            Width = 83
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NROCOB'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 1
            OnKeyPress = ediendentKeyPress
          end
          object edicompcob: TDBEdit
            Left = 107
            Top = 28
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COMPLCOB'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 2
            OnKeyPress = ediendentKeyPress
          end
          object edibaicob: TDBEdit
            Left = 408
            Top = 28
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'BAIRROCOB'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 3
            OnKeyPress = ediendentKeyPress
          end
          object edicidcob: TDBEdit
            Left = 107
            Top = 51
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CIDADECOB'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 4
            OnKeyPress = ediendentKeyPress
          end
          object ediestcob: TDBEdit
            Left = 408
            Top = 51
            Width = 38
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ESTADOCOB'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 5
            OnKeyPress = ediendentKeyPress
          end
          object edicepcob: TDBEdit
            Left = 542
            Top = 51
            Width = 75
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CEPCOB'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 6
            OnKeyPress = ediendentKeyPress
          end
          object edidddcob: TDBEdit
            Left = 107
            Top = 75
            Width = 38
            Height = 21
            DataField = 'DDDECOB'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 7
            OnKeyPress = edidddcobKeyPress
          end
          object editelefonecob: TDBEdit
            Left = 152
            Top = 75
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'TELEFONECOB'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 8
            OnKeyPress = ediendentKeyPress
          end
          object ediresponsavelcob: TDBEdit
            Left = 408
            Top = 75
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'RESPONSAVELFIN'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 9
            OnKeyPress = ediresponsavelcobKeyPress
          end
          object edirgresponsavelcob: TDBEdit
            Left = 106
            Top = 98
            Width = 167
            Height = 21
            CharCase = ecUpperCase
            DataField = 'RGRESPONSAVELFIN'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 10
            OnKeyPress = edirgresponsavelcobKeyPress
          end
          object edicpfresponsavelcob: TDBEdit
            Left = 408
            Top = 98
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CPFRESPONSAVELFIN'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 11
            OnKeyPress = edicpfresponsavelcobKeyPress
          end
        end
        object tbscom: TTabSheet
          Caption = 'END. COMERCIAL'
          ImageIndex = 6
          object Label34: TLabel
            Left = 3
            Top = 10
            Width = 60
            Height = 13
            Caption = 'ENDERE'#199'O'
            FocusControl = ediendcom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 511
            Top = 10
            Width = 17
            Height = 13
            Caption = 'N.o'
            FocusControl = edibairrocom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label37: TLabel
            Left = 3
            Top = 35
            Width = 83
            Height = 13
            Caption = 'COMPLEMENTO'
            FocusControl = edicomplcom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label43: TLabel
            Left = 322
            Top = 34
            Width = 41
            Height = 13
            Caption = 'BAIRRO'
            FocusControl = edibairrocom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label44: TLabel
            Left = 3
            Top = 57
            Width = 40
            Height = 13
            Caption = 'CIDADE'
            FocusControl = edicidadecom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label45: TLabel
            Left = 322
            Top = 57
            Width = 44
            Height = 13
            Caption = 'ESTADO'
            FocusControl = ediestadocom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel
            Left = 491
            Top = 57
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = edicepcom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 3
            Top = 80
            Width = 85
            Height = 13
            Caption = 'DDD/TELEFONE'
            FocusControl = editelefonecom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 323
            Top = 80
            Width = 79
            Height = 13
            Caption = 'RESPONS'#193'VEL'
            FocusControl = editelefonecom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 3
            Top = 103
            Width = 22
            Height = 13
            Caption = 'R.G.'
            FocusControl = editelefonecom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel
            Left = 323
            Top = 103
            Width = 29
            Height = 13
            Caption = 'C.P.F.'
            FocusControl = editelefonecom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Bevel9: TBevel
            Left = 0
            Top = 0
            Width = 703
            Height = 278
            Align = alClient
          end
          object ediendcom: TDBEdit
            Left = 107
            Top = 5
            Width = 390
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ENDCOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 0
            OnKeyPress = ediendentKeyPress
          end
          object edinrocom: TDBEdit
            Left = 536
            Top = 5
            Width = 83
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NROCOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 1
            OnKeyPress = ediendentKeyPress
          end
          object edicomplcom: TDBEdit
            Left = 107
            Top = 28
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COMPLCOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 2
            OnKeyPress = ediendentKeyPress
          end
          object edibairrocom: TDBEdit
            Left = 408
            Top = 28
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'BAIRROCOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 3
            OnKeyPress = ediendentKeyPress
          end
          object edicidadecom: TDBEdit
            Left = 107
            Top = 51
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CIDADECOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 4
            OnKeyPress = ediendentKeyPress
          end
          object ediestadocom: TDBEdit
            Left = 408
            Top = 51
            Width = 38
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ESTADOCOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 5
            OnKeyPress = ediendentKeyPress
          end
          object edicepcom: TDBEdit
            Left = 542
            Top = 51
            Width = 75
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CEPCOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 6
            OnKeyPress = ediendentKeyPress
          end
          object edidddecom: TDBEdit
            Left = 107
            Top = 75
            Width = 38
            Height = 21
            DataField = 'DDDECOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 7
            OnKeyPress = edidddecomKeyPress
          end
          object editelefonecom: TDBEdit
            Left = 152
            Top = 75
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'TELEFONECOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 8
            OnKeyPress = ediendentKeyPress
          end
          object ediresponsavelcom: TDBEdit
            Left = 408
            Top = 75
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'RESPONSAVELCOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 9
            OnKeyPress = ediresponsavelcomKeyPress
          end
          object edirgresponsavelcom: TDBEdit
            Left = 106
            Top = 98
            Width = 167
            Height = 21
            CharCase = ecUpperCase
            DataField = 'RGRESPONSAVELCOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 10
            OnKeyPress = edirgresponsavelcomKeyPress
          end
          object edicpfresponsavelcom: TDBEdit
            Left = 408
            Top = 98
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CPFRESPONSAVELCOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 11
            OnKeyPress = edicpfresponsavelcomKeyPress
          end
        end
        object tbsDadosG: TTabSheet
          Caption = 'INFORMA'#199#213'ES CL'#205'NICAS'
          object Bevel12: TBevel
            Left = 0
            Top = 0
            Width = 703
            Height = 125
            Align = alTop
          end
          object Bevel5: TBevel
            Left = 0
            Top = 125
            Width = 703
            Height = 153
            Align = alClient
          end
          object lbloutinf4: TLabel
            Left = 4
            Top = 132
            Width = 42
            Height = 13
            Caption = 'lbloutinf4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbloutinf6: TLabel
            Left = 229
            Top = 132
            Width = 42
            Height = 13
            Caption = 'lbloutinf6'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblid1: TLabel
            Left = 4
            Top = 102
            Width = 17
            Height = 13
            Caption = 'ID1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblid2: TLabel
            Left = 229
            Top = 102
            Width = 17
            Height = 13
            Caption = 'ID2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc1: TLabel
            Left = 4
            Top = 7
            Width = 35
            Height = 13
            Caption = 'DESC1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc2: TLabel
            Left = 229
            Top = 8
            Width = 35
            Height = 13
            Caption = 'DESC2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc3: TLabel
            Left = 477
            Top = 8
            Width = 35
            Height = 13
            Caption = 'DESC3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc4: TLabel
            Left = 4
            Top = 30
            Width = 35
            Height = 13
            Caption = 'DESC4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc5: TLabel
            Left = 229
            Top = 32
            Width = 35
            Height = 13
            Caption = 'DESC5'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc6: TLabel
            Left = 477
            Top = 32
            Width = 35
            Height = 13
            Caption = 'DESC6'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc7: TLabel
            Left = 4
            Top = 52
            Width = 35
            Height = 13
            Caption = 'DESC7'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc8: TLabel
            Left = 229
            Top = 56
            Width = 35
            Height = 13
            Caption = 'DESC8'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc9: TLabel
            Left = 477
            Top = 56
            Width = 35
            Height = 13
            Caption = 'DESC9'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc10: TLabel
            Left = 4
            Top = 75
            Width = 41
            Height = 13
            Caption = 'DESC10'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc11: TLabel
            Left = 229
            Top = 80
            Width = 41
            Height = 13
            Caption = 'DESC11'
            FocusControl = edidesc11
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc12: TLabel
            Left = 477
            Top = 80
            Width = 41
            Height = 13
            Caption = 'DESC12'
            FocusControl = edidesc12
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object ediid1: TEdit
            Left = 106
            Top = 98
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 12
            Text = 'EDIID1'
            OnExit = ediid1Exit
            OnKeyPress = ediid1KeyPress
          end
          object ediid2: TEdit
            Left = 353
            Top = 98
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            TabOrder = 13
            Text = 'EDIID2'
            OnKeyPress = ediid2KeyPress
          end
          object cbxdesc1: TComboBox
            Left = 106
            Top = 5
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 0
            TabOrder = 0
            Text = 'CBXDESC1'
            OnKeyPress = cbxdesc1KeyPress
          end
          object cbxdesc2: TComboBox
            Left = 353
            Top = 5
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 0
            TabOrder = 1
            Text = 'CBXDESC2'
            OnKeyPress = cbxdesc2KeyPress
          end
          object cbxdesc3: TComboBox
            Left = 592
            Top = 5
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 0
            TabOrder = 2
            Text = 'CBXDESC3'
            OnKeyPress = cbxdesc3KeyPress
          end
          object cbxdesc4: TComboBox
            Left = 106
            Top = 28
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 0
            TabOrder = 3
            Text = 'CBXDESC4'
            OnKeyPress = cbxdesc4KeyPress
          end
          object cbxdesc5: TComboBox
            Left = 353
            Top = 28
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 0
            TabOrder = 4
            Text = 'CBXDESC5'
            OnKeyPress = cbxdesc5KeyPress
          end
          object cbxdesc6: TComboBox
            Left = 592
            Top = 28
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 0
            TabOrder = 5
            Text = 'CBXDESC6'
            OnKeyPress = cbxdesc6KeyPress
          end
          object cbxdesc7: TComboBox
            Left = 106
            Top = 52
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 0
            TabOrder = 6
            Text = 'CBXDESC7'
            OnKeyPress = cbxdesc7KeyPress
          end
          object cbxdesc8: TComboBox
            Left = 353
            Top = 52
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 0
            TabOrder = 7
            Text = 'CBXDESC8'
            OnKeyPress = cbxdesc8KeyPress
          end
          object cbxdesc9: TComboBox
            Left = 591
            Top = 52
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 0
            TabOrder = 8
            Text = 'CBXDESC9'
            OnKeyPress = cbxdesc9KeyPress
          end
          object cbxdesc10: TComboBox
            Left = 106
            Top = 75
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 0
            TabOrder = 9
            Text = 'CBXDESC10'
            OnKeyPress = cbxdesc10KeyPress
          end
          object edidesc11: TDBEdit
            Left = 353
            Top = 75
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC11'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 10
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc12: TDBEdit
            Left = 590
            Top = 75
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC12'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 11
            OnKeyPress = edidesc11KeyPress
          end
          object cbxoutinf4: TDBComboBox
            Left = 106
            Top = 131
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            DataField = 'OUTINF4'
            DataSource = frmDados.Dts_Clientes
            ItemHeight = 13
            TabOrder = 14
            OnKeyPress = cbxoutinf4KeyPress
          end
          object cbxoutinf6: TDBComboBox
            Left = 353
            Top = 131
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            DataField = 'OUTINF6'
            DataSource = frmDados.Dts_Clientes
            ItemHeight = 13
            TabOrder = 15
            OnKeyPress = cbxoutinf6KeyPress
          end
        end
        object tbsoutrasinf: TTabSheet
          Caption = 'OUTRAS &INFORMA'#199#213'ES'
          ImageIndex = 3
          object Bevel7: TBevel
            Left = 0
            Top = 0
            Width = 703
            Height = 278
            Align = alClient
          end
          object lbldesc13: TLabel
            Left = 7
            Top = 9
            Width = 41
            Height = 13
            Caption = 'DESC13'
            FocusControl = edidesc13
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc14: TLabel
            Left = 216
            Top = 10
            Width = 41
            Height = 13
            Caption = 'DESC14'
            FocusControl = edidesc14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc15: TLabel
            Left = 423
            Top = 10
            Width = 41
            Height = 13
            Caption = 'DESC15'
            FocusControl = edidesc15
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc16: TLabel
            Left = 7
            Top = 34
            Width = 41
            Height = 13
            Caption = 'DESC16'
            FocusControl = edidesc16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc17: TLabel
            Left = 216
            Top = 34
            Width = 41
            Height = 13
            Caption = 'DESC17'
            FocusControl = edidesc17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc18: TLabel
            Left = 423
            Top = 34
            Width = 41
            Height = 13
            Caption = 'DESC18'
            FocusControl = edidesc18
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc19: TLabel
            Left = 7
            Top = 58
            Width = 41
            Height = 13
            Caption = 'DESC19'
            FocusControl = edidesc19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc20: TLabel
            Left = 216
            Top = 58
            Width = 41
            Height = 13
            Caption = 'DESC20'
            FocusControl = edidesc20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc21: TLabel
            Left = 423
            Top = 58
            Width = 41
            Height = 13
            Caption = 'DESC21'
            FocusControl = edidesc21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc22: TLabel
            Left = 7
            Top = 81
            Width = 41
            Height = 13
            Caption = 'DESC22'
            FocusControl = edidesc22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc23: TLabel
            Left = 216
            Top = 82
            Width = 41
            Height = 13
            Caption = 'DESC23'
            FocusControl = edidesc23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc24: TLabel
            Left = 423
            Top = 82
            Width = 41
            Height = 13
            Caption = 'DESC24'
            FocusControl = edidesc24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc25: TLabel
            Left = 7
            Top = 106
            Width = 41
            Height = 13
            Caption = 'DESC25'
            FocusControl = edidesc25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc26: TLabel
            Left = 216
            Top = 107
            Width = 41
            Height = 13
            Caption = 'DESC26'
            FocusControl = edidesc26
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc27: TLabel
            Left = 423
            Top = 107
            Width = 41
            Height = 13
            Caption = 'DESC27'
            FocusControl = edidesc27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc28: TLabel
            Left = 7
            Top = 131
            Width = 41
            Height = 13
            Caption = 'DESC28'
            FocusControl = edidesc28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc29: TLabel
            Left = 216
            Top = 129
            Width = 41
            Height = 13
            Caption = 'DESC29'
            FocusControl = edidesc29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc30: TLabel
            Left = 423
            Top = 129
            Width = 41
            Height = 13
            Caption = 'DESC30'
            FocusControl = edidesc30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc31: TLabel
            Left = 7
            Top = 153
            Width = 41
            Height = 13
            Caption = 'DESC31'
            FocusControl = edidesc31
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc32: TLabel
            Left = 216
            Top = 154
            Width = 41
            Height = 13
            Caption = 'DESC32'
            FocusControl = edidesc32
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc33: TLabel
            Left = 423
            Top = 156
            Width = 41
            Height = 13
            Caption = 'DESC33'
            FocusControl = edidesc33
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc34: TLabel
            Left = 7
            Top = 178
            Width = 41
            Height = 13
            Caption = 'DESC34'
            FocusControl = edidesc34
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc35: TLabel
            Left = 216
            Top = 180
            Width = 41
            Height = 13
            Caption = 'DESC35'
            FocusControl = edidesc35
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc36: TLabel
            Left = 423
            Top = 180
            Width = 41
            Height = 13
            Caption = 'DESC36'
            FocusControl = edidesc36
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc37: TLabel
            Left = 7
            Top = 204
            Width = 41
            Height = 13
            Caption = 'DESC37'
            FocusControl = edidesc37
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc38: TLabel
            Left = 216
            Top = 203
            Width = 41
            Height = 13
            Caption = 'DESC38'
            FocusControl = edidesc38
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edidesc13: TDBEdit
            Left = 100
            Top = 5
            Width = 101
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC13'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 0
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc14: TDBEdit
            Left = 308
            Top = 6
            Width = 97
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC14'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 1
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc15: TDBEdit
            Left = 519
            Top = 6
            Width = 129
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC15'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 2
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc16: TDBEdit
            Left = 100
            Top = 30
            Width = 102
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC16'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 3
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc17: TDBEdit
            Left = 308
            Top = 30
            Width = 97
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC17'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 4
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc18: TDBEdit
            Left = 519
            Top = 30
            Width = 129
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC18'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 5
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc19: TDBEdit
            Left = 100
            Top = 54
            Width = 103
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC19'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 6
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc20: TDBEdit
            Left = 308
            Top = 54
            Width = 97
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC20'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 7
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc21: TDBEdit
            Left = 519
            Top = 54
            Width = 129
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC21'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 8
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc22: TDBEdit
            Left = 100
            Top = 77
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC22'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 9
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc23: TDBEdit
            Left = 308
            Top = 78
            Width = 97
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC23'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 10
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc24: TDBEdit
            Left = 519
            Top = 78
            Width = 129
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC24'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 11
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc25: TDBEdit
            Left = 100
            Top = 102
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC25'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 12
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc26: TDBEdit
            Left = 308
            Top = 102
            Width = 97
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC26'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 13
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc27: TDBEdit
            Left = 519
            Top = 102
            Width = 129
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC27'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 14
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc28: TDBEdit
            Left = 100
            Top = 126
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC28'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 15
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc29: TDBEdit
            Left = 308
            Top = 126
            Width = 97
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC29'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 16
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc30: TDBEdit
            Left = 519
            Top = 126
            Width = 130
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC30'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 17
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc31: TDBEdit
            Left = 100
            Top = 150
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC31'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 18
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc32: TDBEdit
            Left = 308
            Top = 150
            Width = 97
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC32'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 19
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc33: TDBEdit
            Left = 519
            Top = 150
            Width = 130
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC33'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 20
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc34: TDBEdit
            Left = 100
            Top = 174
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC34'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 21
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc35: TDBEdit
            Left = 308
            Top = 174
            Width = 97
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC35'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 22
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc36: TDBEdit
            Left = 519
            Top = 174
            Width = 130
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC36'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 23
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc37: TDBEdit
            Left = 100
            Top = 198
            Width = 105
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC37'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 24
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc38: TDBEdit
            Left = 308
            Top = 198
            Width = 97
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC38'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 25
            OnKeyPress = edidesc11KeyPress
          end
        end
        object tbsmaodeobra: TTabSheet
          Caption = '&M'#195'O-DE-OBRA'
          ImageIndex = 2
          OnShow = tbsmaodeobraShow
          object Bevel6: TBevel
            Left = 0
            Top = 0
            Width = 703
            Height = 278
            Align = alClient
          end
          object Label15: TLabel
            Left = 41
            Top = 32
            Width = 26
            Height = 13
            Caption = 'Qtde.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 90
            Top = 32
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 473
            Top = 33
            Width = 52
            Height = 13
            Caption = 'Pr. Unit'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 564
            Top = 32
            Width = 24
            Height = 13
            Caption = 'Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object spdalterarparcM: TSpeedButton
            Left = 4
            Top = 148
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
            OnClick = spdalterarparcMClick
          end
          object spdsalvarprodM: TSpeedButton
            Left = 44
            Top = 148
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
            OnClick = spdsalvarprodMClick
          end
          object spdexcluirparcM: TSpeedButton
            Left = 84
            Top = 148
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
            OnClick = spdexcluirparcMClick
          end
          object lbltittotal: TLabel
            Left = 493
            Top = 154
            Width = 62
            Height = 13
            Caption = 'Total M'#243'dulo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbltotalM: TLabel
            Left = 632
            Top = 154
            Width = 39
            Height = 13
            Alignment = taRightJustify
            Caption = 'lbltotalM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 18
            Top = 12
            Width = 55
            Height = 13
            Caption = 'Modalidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 596
            Top = 32
            Width = 55
            Height = 13
            Caption = 'Funcion'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbltotalMG: TLabel
            Left = 625
            Top = 178
            Width = 47
            Height = 13
            Alignment = taRightJustify
            Caption = 'lbltotalMG'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label36: TLabel
            Left = 493
            Top = 178
            Width = 52
            Height = 13
            Caption = 'Total Geral'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbltitid: TLabel
            Left = 398
            Top = 33
            Width = 26
            Height = 13
            Caption = 'lbltitid'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object cbxnmodulo: TDBLookupComboBox
            Left = 112
            Top = 8
            Width = 217
            Height = 21
            DataField = 'COD4'
            DataSource = frmDados.Dts_Temp
            KeyField = 'CODIGO'
            ListField = 'DESCRICAO'
            ListSource = frmDados.Dts_Modulo
            TabOrder = 0
            OnClick = cbxnmoduloClick
            OnEnter = cbxnmoduloEnter
            OnExit = cbxnmoduloExit
            OnKeyPress = cbxnmoduloKeyPress
          end
          object ediqtdeM: TEdit
            Left = 15
            Top = 49
            Width = 50
            Height = 21
            MaxLength = 14
            TabOrder = 1
            Text = 'ediqtde'
            OnExit = ediqtdeMExit
            OnKeyPress = ediqtdeMKeyPress
          end
          object ediprveM: TEdit
            Left = 470
            Top = 49
            Width = 59
            Height = 21
            MaxLength = 15
            TabOrder = 4
            Text = 'ediprve'
            OnExit = ediprveMExit
            OnKeyPress = ediprveMKeyPress
          end
          object edisubtotalM: TEdit
            Left = 531
            Top = 49
            Width = 62
            Height = 21
            MaxLength = 15
            TabOrder = 5
            Text = 'edisubtotal'
            OnKeyDown = edisubtotalMKeyDown
            OnKeyPress = edisubtotalMKeyPress
          end
          object dbgmao: TDBGrid
            Left = 2
            Top = 72
            Width = 695
            Height = 73
            DataSource = frmDados.Dts_dMobra
            Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 7
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = dbgdvendaDrawColumnCell
            OnKeyDown = dbgdvendaKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'QTDE'
                Title.Caption = 'Qtde'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NDESC'
                Width = 326
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'idmat_restaurar'
                Width = 76
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Caption = 'Pr. Unit'#225'rio'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SUBTOTAL'
                Title.Caption = 'Subtotal'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nfunc'
                Width = 82
                Visible = True
              end>
          end
          object cbxnomefuns: TDBLookupComboBox
            Left = 595
            Top = 49
            Width = 84
            Height = 21
            DataField = 'COD5'
            DataSource = frmDados.Dts_Temp
            KeyField = 'CODIGO'
            ListField = 'NOME'
            ListSource = frmDados.Dst_Funcionarios
            NullValueKey = 46
            TabOrder = 6
            OnKeyPress = cbxnomefunsKeyPress
          end
          object cbxnproM: TDBLookupComboBox
            Left = 67
            Top = 49
            Width = 326
            Height = 21
            DataField = 'COD6'
            DataSource = frmDados.Dts_Temp
            KeyField = 'CODIGO'
            ListField = 'DESCR'
            ListSource = frmDados.Dts_cmobra
            TabOrder = 2
            OnEnter = cbxnproMEnter
            OnExit = cbxnproMExit
            OnKeyPress = cbxnmoduloKeyPress
          end
          object cbxidmat: TDBLookupComboBox
            Left = 394
            Top = 49
            Width = 75
            Height = 21
            DataField = 'COD10'
            DataSource = frmDados.Dts_Temp
            KeyField = 'CODIGO'
            ListField = 'ID'
            ListSource = frmDados.Dts_Mat_Restaurar
            TabOrder = 3
            OnClick = cbxidmatClick
            OnKeyPress = cbxidmatKeyPress
          end
        end
        object tbsproc: TTabSheet
          Caption = 'PROCEDIMENTOS'
          ImageIndex = 3
          OnShow = tbsprocShow
          object DBGrid2: TDBGrid
            Left = 0
            Top = 0
            Width = 697
            Height = 121
            DataSource = frmDados.Dts_Procedimentos
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnEnter = DBGrid2Enter
            OnExit = DBGrid2Exit
            OnKeyPress = DBGrid2KeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'DATA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'idmat_rest_id'
                Title.Caption = 'ID'
                Width = 48
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Width = 355
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TEMPO'
                Width = 61
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nfun'
                Title.Caption = 'FUNCION'#193'RIO'
                Width = 129
                Visible = True
              end>
          end
        end
        object tbsfin: TTabSheet
          Caption = 'FINANCEIRO'
          ImageIndex = 4
          TabVisible = False
          OnShow = tbsfinShow
          object Bevel11: TBevel
            Left = 0
            Top = 0
            Width = 703
            Height = 278
            Align = alClient
          end
          object Label23: TLabel
            Left = 537
            Top = 160
            Width = 37
            Height = 16
            Caption = 'Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbltotg: TLabel
            Left = 647
            Top = 160
            Width = 44
            Height = 16
            Alignment = taRightJustify
            Caption = 'lbltotg'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 14
            Top = 166
            Width = 55
            Height = 13
            Caption = 'Desconto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object Label25: TLabel
            Left = 128
            Top = 166
            Width = 10
            Height = 13
            Caption = '%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object Label26: TLabel
            Left = 160
            Top = 166
            Width = 17
            Height = 13
            Caption = 'R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object Label27: TLabel
            Left = 269
            Top = 168
            Width = 42
            Height = 13
            Caption = 'Liquido'
            FocusControl = ediliquido
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object Label28: TLabel
            Left = 402
            Top = 170
            Width = 41
            Height = 13
            Caption = 'A Vista'
            FocusControl = edidin
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object pctcontacli: TPageControl
            Left = 5
            Top = 8
            Width = 692
            Height = 153
            ActivePage = tbspagar
            Style = tsFlatButtons
            TabOrder = 0
            object tbspagar: TTabSheet
              Caption = 'D'#201'BITO'
              OnShow = tbspagarShow
              object btnbaixair: TBitBtn
                Left = 0
                Top = 0
                Width = 123
                Height = 25
                Caption = '&Baixar Parcela'
                TabOrder = 1
                Visible = False
                OnClick = btnbaixairClick
              end
              object dbgpagar: TDBGrid
                Left = 0
                Top = 0
                Width = 681
                Height = 121
                DataSource = frmDados.Dts_Vencto
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clBlack
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnColEnter = dbgpagarColEnter
                OnEnter = dbgpagarEnter
                OnExit = dbgpagarExit
                OnKeyPress = dbgpagarKeyPress
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'n_tipo_pgto'
                    Title.Caption = 'Forma Pgto'
                    Width = 110
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRAZO'
                    Title.Caption = 'Prazo'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DTV'
                    Title.Caption = 'Vencto'
                    Width = 90
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DOC'
                    Title.Caption = 'Documento'
                    Width = 170
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALOR'
                    Title.Caption = 'Valor'
                    Width = 82
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'nfun'
                    Title.Caption = 'Funcion'#225'rio'
                    Width = 123
                    Visible = True
                  end>
              end
            end
            object tbspagas: TTabSheet
              Caption = 'CR'#201'DITO'
              ImageIndex = 1
              OnShow = tbspagasShow
              object BitBtn1: TBitBtn
                Left = 0
                Top = 0
                Width = 123
                Height = 25
                Caption = '&Estornar Parcela'
                TabOrder = 0
                Visible = False
              end
              object DBGrid3: TDBGrid
                Left = 0
                Top = 0
                Width = 681
                Height = 121
                DataSource = frmDados.Dts_Vencto
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clBlack
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnColEnter = dbgpagarColEnter
                OnEnter = dbgpagarEnter
                OnExit = dbgpagarExit
                OnKeyPress = dbgpagarKeyPress
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'n_tipo_pgto'
                    Title.Caption = 'Forma Pgto'
                    Width = 110
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PRAZO'
                    Title.Caption = 'Prazo'
                    Width = 34
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DTV'
                    Title.Caption = 'Vencto'
                    Width = 66
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DTL'
                    Title.Caption = 'Liqda'#231#227'o'
                    Width = 70
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DOC'
                    Title.Caption = 'Documento'
                    Width = 189
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALLIQ'
                    Title.Caption = 'Valor'
                    Width = 69
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'nfun'
                    Title.Caption = 'Funcion'#225'rio'
                    Width = 100
                    Visible = True
                  end>
              end
            end
            object tbspagto: TTabSheet
              Caption = 'PAGTOS'
              ImageIndex = 2
              OnShow = tbspagtoShow
              object Label51: TLabel
                Left = 3
                Top = 11
                Width = 42
                Height = 13
                Caption = 'Situa'#231#227'o'
                FocusControl = edicsit
              end
              object Label52: TLabel
                Left = 230
                Top = 11
                Width = 52
                Height = 13
                Caption = 'Liquida'#231#227'o'
                FocusControl = edidtl
              end
              object Label53: TLabel
                Left = 519
                Top = 11
                Width = 69
                Height = 13
                Caption = 'Data Da Baixa'
                FocusControl = edidtb
              end
              object Label54: TLabel
                Left = 3
                Top = 39
                Width = 61
                Height = 13
                Caption = 'Valor Liquido'
                FocusControl = edivalliq
              end
              object Label55: TLabel
                Left = 230
                Top = 39
                Width = 110
                Height = 13
                Caption = 'Forma de Recebimento'
                FocusControl = cbxntipoop
              end
              object edicsit: TDBEdit
                Left = 80
                Top = 7
                Width = 25
                Height = 21
                DataField = 'CSIT'
                DataSource = frmDados.Dts_Vencto
                TabOrder = 0
              end
              object edinsit: TDBLookupComboBox
                Left = 109
                Top = 7
                Width = 113
                Height = 21
                DataField = 'nsiturec'
                DataSource = frmDados.Dts_Vencto
                TabOrder = 1
              end
              object edidtl: TDBEdit
                Left = 360
                Top = 7
                Width = 89
                Height = 21
                DataField = 'DTL'
                DataSource = frmDados.Dts_Vencto
                TabOrder = 2
              end
              object edidtb: TDBEdit
                Left = 604
                Top = 7
                Width = 81
                Height = 21
                DataField = 'DTB'
                DataSource = frmDados.Dts_Vencto
                TabOrder = 3
              end
              object edivalliq: TDBEdit
                Left = 80
                Top = 35
                Width = 89
                Height = 21
                DataField = 'VALLIQ'
                DataSource = frmDados.Dts_Vencto
                TabOrder = 4
              end
              object cbxntipoop: TDBLookupComboBox
                Left = 360
                Top = 35
                Width = 145
                Height = 21
                DataField = 'ntipoop'
                DataSource = frmDados.Dts_Vencto
                TabOrder = 5
              end
              object btnfechar: TBitBtn
                Left = 466
                Top = 88
                Width = 105
                Height = 33
                Caption = '&Salvar'
                TabOrder = 6
              end
              object btncancelar: TBitBtn
                Left = 578
                Top = 88
                Width = 105
                Height = 33
                Caption = '&Cancelar'
                TabOrder = 7
              end
            end
            object tbsparcelar: TTabSheet
              Caption = 'PARCELAR'
              ImageIndex = 3
              OnShow = tbsparcelarShow
              object Label56: TLabel
                Left = 6
                Top = 16
                Width = 74
                Height = 13
                Caption = 'N.o Parcelas'
                FocusControl = ediparc
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object ediparc: TDBEdit
                Left = 127
                Top = 13
                Width = 41
                Height = 21
                DataField = 'PARC_P'
                DataSource = frmDados.Dts_sVenda
                TabOrder = 0
              end
            end
          end
          object edipdesc: TDBEdit
            Left = 75
            Top = 164
            Width = 50
            Height = 21
            DataField = 'PDESC_P'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 1
            Visible = False
          end
          object edivaldesc: TDBEdit
            Left = 186
            Top = 164
            Width = 59
            Height = 21
            DataField = 'VALDESC_P'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 2
            Visible = False
          end
          object ediliquido: TDBEdit
            Left = 322
            Top = 166
            Width = 66
            Height = 21
            DataField = 'LIQUIDO_P'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 3
            Visible = False
          end
          object edidin: TDBEdit
            Left = 461
            Top = 168
            Width = 75
            Height = 21
            DataField = 'DIN_P'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 4
            Visible = False
          end
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 102
        Width = 711
        Height = 59
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel2'
        TabOrder = 1
        object dbgmat_rest: TDBCtrlGrid
          Left = 0
          Top = 2
          Width = 705
          Height = 52
          ColCount = 16
          Color = clSkyBlue
          DataSource = frmDados.Dts_Mat_Restaurar
          PanelBorder = gbNone
          PanelHeight = 26
          PanelWidth = 43
          ParentColor = False
          TabOrder = 0
          RowCount = 2
          SelectedColor = clYellow
          ShowFocus = False
          OnClick = dbgmat_restClick
          OnKeyPress = dbgmat_restKeyPress
          OnPaintPanel = dbgmat_restPaintPanel
          object Shape1: TShape
            Left = 0
            Top = 0
            Width = 43
            Height = 26
            Align = alClient
            Brush.Color = clMoneyGreen
            Pen.Style = psClear
            Visible = False
          end
          object imgfundo: TImage
            Left = 0
            Top = 0
            Width = 43
            Height = 26
            Align = alClient
            Visible = False
          end
          object imgfoto1: TImage
            Left = 0
            Top = 0
            Width = 43
            Height = 26
            Align = alClient
            Center = True
            Visible = False
          end
          object DBText1: TDBText
            Left = 8
            Top = 0
            Width = 35
            Height = 14
            Alignment = taRightJustify
            DataField = 'ID'
            DataSource = frmDados.Dts_Mat_Restaurar
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
            OnClick = DBText1Click
          end
        end
      end
    end
    object pnllista: TPanel
      Left = 2
      Top = 8
      Width = 239
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
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
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
        Left = 193
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
        Left = 72
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Excluir'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
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
        Left = 37
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Consulta e Altera'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Times New Roman'
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
      object spdcodbar175: TSpeedButton
        Left = 116
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Gera Qtde de etiquetas'
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
        Visible = False
      end
      object spdilustracao177: TSpeedButton
        Left = 152
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
      Left = 624
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
      Width = 713
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object Bevel3: TBevel
        Left = 0
        Top = 0
        Width = 713
        Height = 64
        Align = alClient
      end
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
    object dbgos: TDBGrid
      Left = 664
      Top = 544
      Width = 33
      Height = 40
      DataSource = frmDados.Dts_sVenda
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = dbgosEnter
      OnKeyDown = dbgosKeyDown
      OnKeyPress = dbgosKeyPress
    end
    object pnlop: TPanel
      Left = 381
      Top = 8
      Width = 236
      Height = 35
      BevelOuter = bvNone
      TabOrder = 5
      object spdimp: TSpeedButton
        Left = 112
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Visualizar'
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
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0000377777777777777707FFFFFFFFFFFF70773FF33333333F770F77FFFFFFFF
          77F07F773FFFFFFF77F70FFF7700000000007F337777777777770FFFFF0FFFFF
          FFF07F333F7F3FFFF3370FFF700F0000FFF07F3F777F777733370F707F0FFFFF
          FFF07F77337F3FFFFFF7007EEE0F000000F077FFFF7F777777370777770FFFFF
          FFF07777777F3FFFFFF7307EEE0F000000F03773FF7F7777773733707F0FFFFF
          FFF03337737F3FFF33373333700F000FFFF03333377F77733FF73333330FFFFF
          00003333337F3FF377773333330F00FF0F033333337F77337F733333330FFFFF
          00333333337FFFFF773333333300000003333333337777777333}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = spdimpClick
      end
      object spdimpnf: TSpeedButton
        Left = 75
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Fecha Pedido'
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
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
          333333333F777773FF333333008888800333333377333F3773F3333077870787
          7033333733337F33373F3308888707888803337F33337F33337F330777880887
          7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
          7703337F33377733337F33088888888888033373FFFFFFFFFF73333000000000
          00333337777777777733333308033308033333337F7F337F7F33333308033308
          033333337F7F337F7F33333308033308033333337F73FF737F33333377800087
          7333333373F77733733333333088888033333333373FFFF73333333333000003
          3333333333777773333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = spdimpnfClick
      end
      object spdlanca: TSpeedButton
        Left = 2
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
        Left = 150
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
        Left = 192
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
        Left = 37
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
  object opdAbrirfig: TOpenPictureDialog
    Left = 809
    Top = 6
  end
end
