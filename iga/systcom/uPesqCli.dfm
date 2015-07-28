object frmPesqcli: TfrmPesqcli
  Left = 115
  Top = 38
  Width = 906
  Height = 700
  BorderIcons = []
  Caption = 'Pesquisa de Clientes'
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlsuperior: TPanel
    Left = 0
    Top = 0
    Width = 898
    Height = 42
    Align = alTop
    TabOrder = 3
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
  end
  object pnlinferior: TPanel
    Left = 0
    Top = 632
    Width = 898
    Height = 41
    Align = alBottom
    TabOrder = 2
  end
  object pnlesq: TPanel
    Left = 0
    Top = 42
    Width = 201
    Height = 590
    Align = alLeft
    TabOrder = 1
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
    object Label1: TLabel
      Left = 8
      Top = 58
      Width = 85
      Height = 17
      Caption = 'C'#211'DIGO DE'
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
      Width = 28
      Height = 17
      Caption = 'AT'#201
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
    object lblid1: TLabel
      Left = 8
      Top = 164
      Width = 33
      Height = 17
      Caption = 'lblid1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 8
      Top = 217
      Width = 73
      Height = 17
      Caption = 'SITUA'#199#195'O'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 8
      Top = 270
      Width = 38
      Height = 17
      Caption = 'TIPO '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 8
      Top = 381
      Width = 100
      Height = 17
      Caption = 'M'#202'S NASCTO.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 8
      Top = 326
      Width = 134
      Height = 17
      Caption = 'TRANSPORTADOR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DtpDataI: TDateTimePicker
      Left = 16
      Top = 527
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
      Visible = False
    end
    object DtpDataF: TDateTimePicker
      Left = 16
      Top = 563
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
      Visible = False
    end
    object edicodigoi: TEdit
      Left = 8
      Top = 81
      Width = 129
      Height = 25
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'edicodigoi'
      OnChange = edicodigoiChange
      OnEnter = edicodigoiEnter
      OnKeyPress = edicodigoiKeyPress
    end
    object edicodigof: TEdit
      Left = 8
      Top = 131
      Width = 129
      Height = 25
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = 'edicodigof'
      OnChange = edicodigofChange
      OnEnter = edicodigofEnter
      OnKeyPress = edicodigofKeyPress
    end
    object ediid1: TEdit
      Left = 8
      Top = 184
      Width = 128
      Height = 25
      TabStop = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = 'EDIID1'
      OnKeyPress = ediid1KeyPress
    end
    object cbxsituclib: TDBLookupComboBox
      Left = 8
      Top = 239
      Width = 185
      Height = 25
      DataField = 'COD1'
      DataSource = frmDados.Dts_Temp
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = frmDados.Dts_SituCadCli
      NullValueKey = 46
      ParentFont = False
      TabOrder = 5
      TabStop = False
      OnEnter = cbxsituclibEnter
      OnExit = cbxsituclibExit
    end
    object cbxtipoclib: TDBLookupComboBox
      Left = 8
      Top = 292
      Width = 185
      Height = 25
      DataField = 'COD2'
      DataSource = frmDados.Dts_Temp
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = frmDados.Dts_TipoCli
      NullValueKey = 46
      ParentFont = False
      TabOrder = 6
      TabStop = False
      OnEnter = cbxtipoclibEnter
      OnExit = cbxtipoclibExit
    end
    object edimesani: TMaskEdit
      Left = 8
      Top = 404
      Width = 55
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 8
    end
    object cbxntransp: TDBLookupComboBox
      Left = 8
      Top = 348
      Width = 185
      Height = 25
      DataField = 'COD3'
      DataSource = frmDados.Dts_Temp
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'NOME'
      ListSource = frmDados.Dts_Transportadores
      NullValueKey = 46
      ParentFont = False
      TabOrder = 7
      TabStop = False
      OnEnter = cbxtipoclibEnter
      OnExit = cbxtipoclibExit
    end
  end
  object pnldir: TPanel
    Left = 201
    Top = 42
    Width = 697
    Height = 590
    Align = alClient
    TabOrder = 0
    object Bevel2: TBevel
      Left = 1
      Top = 1
      Width = 695
      Height = 48
      Align = alTop
    end
    object Bevel5: TBevel
      Left = 1
      Top = 49
      Width = 695
      Height = 49
      Align = alTop
    end
    object lbltitdesc: TLabel
      Left = 4
      Top = 50
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
    object Label6: TLabel
      Left = 172
      Top = 50
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
    object Label4: TLabel
      Left = 16
      Top = 16
      Width = 73
      Height = 13
      Caption = 'C.P.F./C.N.P.J.'
    end
    object spdant: TSpeedButton
      Left = 458
      Top = 70
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
      Left = 484
      Top = 70
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
    object cbxclassificar: TComboBox
      Left = 3
      Top = 69
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
      TabStop = False
      Text = 'cbxclassificar'
      OnChange = cbxclassificarChange
      OnKeyDown = cbxclassificarKeyDown
      OnKeyPress = cbxclassificarKeyPress
    end
    object edidesc: TEdit
      Left = 171
      Top = 69
      Width = 285
      Height = 25
      TabStop = False
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
      OnExit = edidescExit
      OnKeyPress = edidescKeyPress
    end
    object pnlsalvarficha: TPanel
      Left = 387
      Top = 8
      Width = 118
      Height = 34
      BevelOuter = bvNone
      TabOrder = 3
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
      object spdiconea: TSpeedButton
        Left = 73
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Parar de efetuar venda'
        Flat = True
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = spdcancelar2310Click
      end
    end
    object pnllista: TPanel
      Left = 2
      Top = 8
      Width = 383
      Height = 35
      BevelOuter = bvNone
      TabOrder = 4
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
        Left = 37
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
        OnClick = spdAlterar172Click
      end
      object spdExcluir173: TSpeedButton
        Left = 73
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
        Left = 108
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Consulta'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Glyph.Data = {
          EE000000424DEE000000000000007600000028000000100000000F0000000100
          04000000000078000000130B0000130B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          888800000888880000080F000888880F00080F000888880F0008000000080000
          000800F000000F00000800F000800F00000800F000800F000008800000000000
          0088880F00080F000888880000080000088888800088800088888880F08880F0
          888888800088800088888888888888888888}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = spdConsultar174Click
      end
      object spdcodbar175: TSpeedButton
        Left = 144
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
      end
      object spdrelatorios176: TSpeedButton
        Left = 180
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
        OnClick = spdrelatorios176Click
      end
      object spdilustracao177: TSpeedButton
        Left = 216
        Top = 2
        Width = 105
        Height = 30
        Hint = 'Exportar'
        Caption = 'Exportar'
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
        OnClick = spdilustracao177Click
      end
      object SpeedButton1: TSpeedButton
        Left = 333
        Top = 2
        Width = 33
        Height = 30
        Hint = 'Material Cliente'
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
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330FFFFF
          FFF03333337F3FFFF3F73333330F0000F0F03333337F777737373333330FFFFF
          FFF033FFFF7FFF33FFF77000000007F00000377777777FF777770BBBBBBBB0F0
          FF037777777777F7F3730B77777BB0F0F0337777777777F7F7330B7FFFFFB0F0
          0333777F333377F77F330B7FFFFFB0009333777F333377777FF30B7FFFFFB039
          9933777F333377F777FF0B7FFFFFB0999993777F33337777777F0B7FFFFFB999
          9999777F3333777777770B7FFFFFB0399933777FFFFF77F777F3070077007039
          99337777777777F777F30B770077B039993377FFFFFF77F777330BB7007BB999
          93337777FF777777733370000000073333333777777773333333}
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = SpeedButton1Click
      end
    end
    object pnlficha: TPanel
      Left = 1
      Top = 98
      Width = 695
      Height = 491
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 5
      object pnlcab: TPanel
        Left = 0
        Top = 0
        Width = 695
        Height = 161
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label8: TLabel
          Left = 12
          Top = 70
          Width = 43
          Height = 13
          Caption = 'R.G./I.E.'
          FocusControl = EDIIE
        end
        object Label7: TLabel
          Left = 280
          Top = 47
          Width = 73
          Height = 13
          Caption = 'C.P.F./C.N.P.J.'
        end
        object Label9: TLabel
          Left = 12
          Top = 3
          Width = 42
          Height = 13
          Caption = 'CODIGO'
        end
        object DBText1: TDBText
          Left = 137
          Top = 3
          Width = 117
          Height = 17
          DataField = 'CODIGO'
          DataSource = frmDados.Dts_Clientes
        end
        object Label10: TLabel
          Left = 12
          Top = 23
          Width = 93
          Height = 13
          Caption = 'CADASTRADO EM'
        end
        object Label11: TLabel
          Left = 12
          Top = 117
          Width = 119
          Height = 13
          Caption = 'NOME (RAZ'#194'O SOCIAL)'
          FocusControl = EDINOME
        end
        object Label12: TLabel
          Left = 12
          Top = 142
          Width = 107
          Height = 13
          Caption = 'FANTASIA (APELIDO)'
          FocusControl = EDIFANT
        end
        object Label5: TLabel
          Left = 280
          Top = 70
          Width = 28
          Height = 13
          Caption = 'TIPO '
        end
        object Label13: TLabel
          Left = 12
          Top = 47
          Width = 54
          Height = 13
          Caption = 'SITUA'#199#195'O'
        end
        object Label14: TLabel
          Left = 280
          Top = 94
          Width = 47
          Height = 13
          Caption = 'NASCTO.'
          FocusControl = EDIDATANASC
        end
        object Label15: TLabel
          Left = 12
          Top = 94
          Width = 100
          Height = 13
          Caption = 'PESQUISA SERASA'
          FocusControl = EDIDTPESPCERASA
        end
        object bvlfoto: TBevel
          Left = 542
          Top = 10
          Width = 115
          Height = 121
        end
        object imgFoto: TImage
          Left = 544
          Top = 12
          Width = 109
          Height = 117
          ParentShowHint = False
          ShowHint = False
          Stretch = True
        end
        object spdinsfoto: TSpeedButton
          Left = 607
          Top = 133
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
          Left = 633
          Top = 133
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
        object Label26: TLabel
          Left = 280
          Top = 23
          Width = 41
          Height = 13
          Caption = 'TABELA'
        end
        object edicpf: TDBEdit
          Left = 369
          Top = 42
          Width = 131
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CPF'
          DataSource = frmDados.Dts_Clientes
          TabOrder = 3
          OnKeyPress = edicpfKeyPress
        end
        object EDIIE: TDBEdit
          Left = 137
          Top = 66
          Width = 130
          Height = 21
          CharCase = ecUpperCase
          DataField = 'IE'
          DataSource = frmDados.Dts_Clientes
          TabOrder = 4
          OnKeyPress = EDIIEKeyPress
        end
        object EDINOME: TDBEdit
          Left = 137
          Top = 114
          Width = 365
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = frmDados.Dts_Clientes
          TabOrder = 8
          OnKeyPress = EDINOMEKeyPress
        end
        object EDIFANT: TDBEdit
          Left = 137
          Top = 138
          Width = 365
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FANTASIA'
          DataSource = frmDados.Dts_Clientes
          TabOrder = 9
          OnKeyPress = EDIFANTKeyPress
        end
        object edidtcad: TDBEdit
          Left = 137
          Top = 19
          Width = 85
          Height = 21
          DataField = 'DTCAD'
          DataSource = frmDados.Dts_Clientes
          TabOrder = 0
          OnKeyPress = edidtcadKeyPress
        end
        object CBXTIPOCLI: TDBLookupComboBox
          Left = 369
          Top = 66
          Width = 133
          Height = 21
          DataField = 'CTIPOCLI'
          DataSource = frmDados.Dts_Clientes
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO'
          ListSource = frmDados.Dts_TipoCli
          NullValueKey = 46
          TabOrder = 5
          OnKeyPress = CBXTIPOCLIKeyPress
        end
        object CBXSITUCLI: TDBLookupComboBox
          Left = 137
          Top = 42
          Width = 130
          Height = 21
          DataField = 'CSITCAD'
          DataSource = frmDados.Dts_Clientes
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO'
          ListSource = frmDados.Dts_SituCadCli
          NullValueKey = 46
          TabOrder = 2
          OnKeyPress = CBXSITUCLIKeyPress
        end
        object EDIDATANASC: TDBEdit
          Left = 368
          Top = 90
          Width = 133
          Height = 21
          DataField = 'DATANASC'
          DataSource = frmDados.Dts_Clientes
          TabOrder = 7
          OnKeyPress = EDIDATANASCKeyPress
        end
        object EDIDTPESPCERASA: TDBEdit
          Left = 137
          Top = 90
          Width = 130
          Height = 21
          DataField = 'DTPESPCERASA'
          DataSource = frmDados.Dts_Clientes
          TabOrder = 6
          OnKeyPress = EDIDTPESPCERASAKeyPress
        end
        object cbxntabela: TDBLookupComboBox
          Left = 369
          Top = 19
          Width = 130
          Height = 21
          DataField = 'CTIPOTAB'
          DataSource = frmDados.Dts_Clientes
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO'
          ListSource = frmDados.Dts_Tipotab
          TabOrder = 1
          OnKeyPress = cbxntabelaKeyPress
        end
      end
      object pctcli: TPageControl
        Left = 0
        Top = 161
        Width = 695
        Height = 330
        ActivePage = tabinf
        Align = alClient
        TabOrder = 1
        object tabinf: TTabSheet
          Caption = '&INFORMA'#199#195'O'
          object lbltittel: TLabel
            Left = 12
            Top = 16
            Width = 92
            Height = 13
            Caption = 'DDD/TELEFONES'
            FocusControl = editelefones
          end
          object lbltitemail: TLabel
            Left = 12
            Top = 41
            Width = 32
            Height = 13
            Caption = 'EMAIL'
            FocusControl = ediemail
          end
          object lbltitsite: TLabel
            Left = 12
            Top = 65
            Width = 24
            Height = 13
            Caption = 'SITE'
            FocusControl = edisite
          end
          object lbltitcontato: TLabel
            Left = 12
            Top = 90
            Width = 52
            Height = 13
            Caption = 'CONTATO'
            FocusControl = edicontato
          end
          object lbltitlimite: TLabel
            Left = 396
            Top = 16
            Width = 104
            Height = 13
            Caption = 'LIMITE DE CR'#201'DITO'
            FocusControl = edilimite
          end
          object lbloutinf1: TLabel
            Left = 12
            Top = 119
            Width = 42
            Height = 13
            Caption = 'lbloutinf1'
          end
          object lbloutinf2: TLabel
            Left = 398
            Top = 119
            Width = 42
            Height = 13
            Caption = 'lbloutinf2'
          end
          object lbloutinf3: TLabel
            Left = 12
            Top = 143
            Width = 42
            Height = 13
            Caption = 'lbloutinf3'
          end
          object lbloutinf6: TLabel
            Left = 396
            Top = 167
            Width = 42
            Height = 13
            Caption = 'lbloutinf6'
          end
          object lbloutinf5: TLabel
            Left = 12
            Top = 167
            Width = 42
            Height = 13
            Caption = 'lbloutinf5'
          end
          object lbloutinf4: TLabel
            Left = 397
            Top = 143
            Width = 42
            Height = 13
            Caption = 'lbloutinf4'
          end
          object lbltitcodaux: TLabel
            Left = 396
            Top = 90
            Width = 94
            Height = 13
            Caption = 'C'#211'DIGO AUXILIAR'
            FocusControl = edicaux
          end
          object lbltitreducaoicms: TLabel
            Left = 396
            Top = 65
            Width = 82
            Height = 13
            Caption = 'REDU'#199#195'O ICMS'
            FocusControl = edicaux
          end
          object Label27: TLabel
            Left = 398
            Top = 40
            Width = 103
            Height = 13
            Caption = 'CONDI'#199#212'ES PAGTO'
            FocusControl = DBLookupComboBox8
          end
          object editelefones: TDBEdit
            Left = 184
            Top = 11
            Width = 203
            Height = 21
            CharCase = ecUpperCase
            DataField = 'TELEFONES'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 1
            OnKeyPress = editelefonesKeyPress
          end
          object ediemail: TDBEdit
            Left = 134
            Top = 35
            Width = 254
            Height = 21
            CharCase = ecLowerCase
            DataField = 'EMAIL'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 3
            OnKeyPress = editelefonesKeyPress
          end
          object edisite: TDBEdit
            Left = 134
            Top = 60
            Width = 254
            Height = 21
            CharCase = ecLowerCase
            DataField = 'SITE'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 5
            OnKeyPress = editelefonesKeyPress
          end
          object edicontato: TDBEdit
            Left = 134
            Top = 84
            Width = 253
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CONTATO'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 7
            OnKeyPress = editelefonesKeyPress
          end
          object edilimite: TDBEdit
            Left = 512
            Top = 11
            Width = 166
            Height = 21
            CharCase = ecUpperCase
            DataField = 'LIMITE'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 2
            OnKeyPress = editelefonesKeyPress
          end
          object ckbreducaoicms: TCheckBox
            Left = 513
            Top = 63
            Width = 15
            Height = 17
            BiDiMode = bdLeftToRight
            Caption = 'Redu'#231#227'o ICMS'
            ParentBiDiMode = False
            TabOrder = 6
            OnKeyPress = editelefonesKeyPress
          end
          object edidddfs: TDBEdit
            Left = 134
            Top = 11
            Width = 43
            Height = 21
            DataField = 'DDDFS'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 0
            OnKeyPress = edidddfsKeyPress
          end
          object cbxoutinf1: TComboBox
            Left = 133
            Top = 114
            Width = 252
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 13
            TabOrder = 9
            Text = 'CBXOUTINF1'
            OnKeyPress = cbxoutinf1KeyPress
          end
          object CBXOUTINF2: TComboBox
            Left = 512
            Top = 114
            Width = 169
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 13
            TabOrder = 10
            Text = 'CBXOUTINF2'
            OnKeyPress = CBXOUTINF2KeyPress
          end
          object CBXOUTINF3: TComboBox
            Left = 133
            Top = 138
            Width = 252
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 13
            TabOrder = 11
            Text = 'CBXOUTINF3'
            OnKeyPress = CBXOUTINF3KeyPress
          end
          object CBXOUTINF6: TComboBox
            Left = 512
            Top = 161
            Width = 169
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 13
            TabOrder = 14
            Text = 'CBXOUTINF6'
            OnKeyPress = CBXOUTINF6KeyPress
          end
          object CBXOUTINF5: TComboBox
            Left = 133
            Top = 161
            Width = 252
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 13
            TabOrder = 13
            Text = 'CBXOUTINF5'
            OnKeyPress = CBXOUTINF5KeyPress
          end
          object CBXOUTINF4: TComboBox
            Left = 512
            Top = 138
            Width = 169
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 13
            TabOrder = 12
            Text = 'CBXOUTINF4'
            OnKeyPress = CBXOUTINF4KeyPress
          end
          object edicaux: TDBEdit
            Left = 513
            Top = 84
            Width = 168
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CAUX'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 8
            OnKeyPress = editelefonesKeyPress
          end
          object DBLookupComboBox8: TDBLookupComboBox
            Left = 512
            Top = 36
            Width = 169
            Height = 21
            DataField = 'ncondpgto'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 4
            OnKeyPress = editelefonesKeyPress
          end
        end
        object tabent: TTabSheet
          Caption = '&ENTREGA'
          ImageIndex = 1
          object lbltitendent: TLabel
            Left = 13
            Top = 10
            Width = 60
            Height = 13
            Caption = 'ENDERE'#199'O'
            FocusControl = ediendent
          end
          object lbltitcompent: TLabel
            Left = 13
            Top = 35
            Width = 83
            Height = 13
            Caption = 'COMPLEMENTO'
            FocusControl = edicompent
          end
          object lbltitbaient: TLabel
            Left = 346
            Top = 34
            Width = 41
            Height = 13
            Caption = 'BAIRRO'
            FocusControl = edibaient
          end
          object lbltitcident: TLabel
            Left = 13
            Top = 57
            Width = 40
            Height = 13
            Caption = 'CIDADE'
            FocusControl = edicident
          end
          object lbltitestent: TLabel
            Left = 346
            Top = 57
            Width = 44
            Height = 13
            Caption = 'ESTADO'
            FocusControl = ediestent
          end
          object lbltitcepent: TLabel
            Left = 515
            Top = 57
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = edicepent
          end
          object lbltittelent: TLabel
            Left = 13
            Top = 80
            Width = 85
            Height = 13
            Caption = 'DDD/TELEFONE'
            FocusControl = editelent
          end
          object lbltitnroent: TLabel
            Left = 535
            Top = 10
            Width = 17
            Height = 13
            Caption = 'N.o'
            FocusControl = edibaient
          end
          object lbltitresponsavelent: TLabel
            Left = 347
            Top = 80
            Width = 79
            Height = 13
            Caption = 'RESPONS'#193'VEL'
            FocusControl = editelent
          end
          object lbltitresponsavelrgent: TLabel
            Left = 13
            Top = 103
            Width = 22
            Height = 13
            Caption = 'R.G.'
            FocusControl = editelent
          end
          object lbltitresponsavelcpfent: TLabel
            Left = 347
            Top = 103
            Width = 29
            Height = 13
            Caption = 'C.P.F.'
            FocusControl = editelent
          end
          object ediendent: TDBEdit
            Left = 131
            Top = 5
            Width = 390
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ENDENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 0
            OnKeyPress = ediendentKeyPress
          end
          object edicompent: TDBEdit
            Left = 131
            Top = 28
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COMPLENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 2
            OnKeyPress = ediendentKeyPress
          end
          object edibaient: TDBEdit
            Left = 432
            Top = 28
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'BAIRROENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 3
            OnKeyPress = ediendentKeyPress
          end
          object edicident: TDBEdit
            Left = 131
            Top = 51
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CIDADEENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 4
            OnKeyPress = ediendentKeyPress
          end
          object ediestent: TDBEdit
            Left = 432
            Top = 51
            Width = 38
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ESTADOENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 5
            OnKeyPress = ediendentKeyPress
          end
          object edicepent: TDBEdit
            Left = 566
            Top = 51
            Width = 75
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CEPENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 6
            OnKeyPress = ediendentKeyPress
          end
          object editelent: TDBEdit
            Left = 176
            Top = 75
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'TELEFONEENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 8
            OnKeyPress = ediendentKeyPress
          end
          object edidddeent: TDBEdit
            Left = 131
            Top = 75
            Width = 38
            Height = 21
            DataField = 'DDDEENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 7
            OnKeyPress = edidddeentKeyPress
          end
          object edinroent: TDBEdit
            Left = 560
            Top = 5
            Width = 83
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NROENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 1
            OnKeyPress = ediendentKeyPress
          end
          object ediresponsavelent: TDBEdit
            Left = 432
            Top = 75
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'RESPONSAVELENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 9
            OnKeyPress = edidddeentKeyPress
          end
          object ediresponsavelrgent: TDBEdit
            Left = 130
            Top = 98
            Width = 167
            Height = 21
            CharCase = ecUpperCase
            DataField = 'RGRESPONSAVELENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 10
            OnKeyPress = edidddeentKeyPress
          end
          object ediresponsavelcpfent: TDBEdit
            Left = 432
            Top = 98
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CPFRESPONSAVELENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 11
            OnKeyPress = edidddeentKeyPress
          end
        end
        object tabcob: TTabSheet
          Caption = '&COBRAN'#199'A'
          ImageIndex = 2
          object lbltitendcob: TLabel
            Left = 13
            Top = 27
            Width = 60
            Height = 13
            Caption = 'ENDERE'#199'O'
            FocusControl = ediendcob
          end
          object lbltitcompcob: TLabel
            Left = 13
            Top = 67
            Width = 83
            Height = 13
            Caption = 'COMPLEMENTO'
            FocusControl = edicompcob
          end
          object lbltitbaicob: TLabel
            Left = 368
            Top = 67
            Width = 41
            Height = 13
            Caption = 'BAIRRO'
            FocusControl = edibaicob
          end
          object lbltitcidcob: TLabel
            Left = 13
            Top = 107
            Width = 40
            Height = 13
            Caption = 'CIDADE'
            FocusControl = edicidcob
          end
          object lbltitestcob: TLabel
            Left = 368
            Top = 107
            Width = 44
            Height = 13
            Caption = 'ESTADO'
            FocusControl = ediestcob
          end
          object lbltitcepcob: TLabel
            Left = 515
            Top = 107
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = edicepcob
          end
          object lbltittelcob: TLabel
            Left = 13
            Top = 152
            Width = 85
            Height = 13
            Caption = 'DDD/TELEFONE'
            FocusControl = editelcob
          end
          object lbltitnrocob: TLabel
            Left = 535
            Top = 26
            Width = 17
            Height = 13
            Caption = 'N.o'
            FocusControl = edibaient
          end
          object lbltitresponsavelcob: TLabel
            Left = 355
            Top = 152
            Width = 79
            Height = 13
            Caption = 'RESPONS'#193'VEL'
            FocusControl = editelent
          end
          object lbltitresponsavelrgcob: TLabel
            Left = 13
            Top = 191
            Width = 22
            Height = 13
            Caption = 'R.G.'
            FocusControl = editelent
          end
          object lbltitresponsavelcpfcob: TLabel
            Left = 347
            Top = 191
            Width = 29
            Height = 13
            Caption = 'C.P.F.'
            FocusControl = editelent
          end
          object ediendcob: TDBEdit
            Left = 131
            Top = 22
            Width = 390
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ENDCOB'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 0
            OnKeyPress = ediendcobKeyPress
          end
          object edicompcob: TDBEdit
            Left = 131
            Top = 61
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COMPLCOB'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 2
            OnKeyPress = ediendcobKeyPress
          end
          object edibaicob: TDBEdit
            Left = 437
            Top = 61
            Width = 204
            Height = 21
            CharCase = ecUpperCase
            DataField = 'BAIRROCOB'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 3
            OnKeyPress = ediendcobKeyPress
          end
          object edicidcob: TDBEdit
            Left = 131
            Top = 102
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CIDADECOB'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 4
            OnKeyPress = ediendcobKeyPress
          end
          object ediestcob: TDBEdit
            Left = 437
            Top = 102
            Width = 38
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ESTADOCOB'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 5
            OnKeyPress = ediendcobKeyPress
          end
          object edicepcob: TDBEdit
            Left = 566
            Top = 102
            Width = 75
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CEPCOB'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 6
            OnKeyPress = ediendcobKeyPress
          end
          object editelcob: TDBEdit
            Left = 203
            Top = 148
            Width = 134
            Height = 21
            CharCase = ecUpperCase
            DataField = 'TELEFONECOB'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 8
            OnKeyPress = ediendcobKeyPress
          end
          object edidddecob: TDBEdit
            Left = 132
            Top = 146
            Width = 37
            Height = 21
            DataField = 'DDDECOB'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 7
            OnKeyPress = edidddecobKeyPress
          end
          object edinrocob: TDBEdit
            Left = 560
            Top = 21
            Width = 83
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NROCOB'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 1
            OnKeyPress = ediendentKeyPress
          end
          object ediresponsavelcob: TDBEdit
            Left = 440
            Top = 147
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'RESPONSAVELFIN'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 9
            OnKeyPress = edidddeentKeyPress
          end
          object ediresponsavelrgcob: TDBEdit
            Left = 130
            Top = 186
            Width = 167
            Height = 21
            CharCase = ecUpperCase
            DataField = 'RGRESPONSAVELFIN'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 10
            OnKeyPress = edidddeentKeyPress
          end
          object ediresponsavelcpfcob: TDBEdit
            Left = 432
            Top = 186
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CPFRESPONSAVELFIN'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 11
            OnKeyPress = edidddeentKeyPress
          end
        end
        object tabcom: TTabSheet
          Caption = 'CO&MERCIAL'
          ImageIndex = 3
          object lbltitendcom: TLabel
            Left = 0
            Top = 27
            Width = 60
            Height = 13
            Caption = 'ENDERE'#199'O'
            FocusControl = ediendcom
          end
          object lbltitcompcom: TLabel
            Left = 0
            Top = 67
            Width = 83
            Height = 13
            Caption = 'COMPLEMENTO'
            FocusControl = edicompcom
          end
          object lbltitbaicom: TLabel
            Left = 320
            Top = 75
            Width = 41
            Height = 13
            Caption = 'BAIRRO'
            FocusControl = edibaicom
          end
          object lbltitcidcom: TLabel
            Left = 16
            Top = 115
            Width = 40
            Height = 13
            Caption = 'CIDADE'
            FocusControl = edicidcom
          end
          object lbltitestcom: TLabel
            Left = 312
            Top = 115
            Width = 44
            Height = 13
            Caption = 'ESTADO'
            FocusControl = ediestcom
          end
          object lbltitcepcom: TLabel
            Left = 419
            Top = 115
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = edicepcom
          end
          object lbltittelcom: TLabel
            Left = 16
            Top = 163
            Width = 85
            Height = 13
            Caption = 'DDD/TELEFONE'
            FocusControl = editelcom
          end
          object lbltitnrocom: TLabel
            Left = 535
            Top = 26
            Width = 17
            Height = 13
            Caption = 'N.o'
            FocusControl = edibaient
          end
          object lbltitresponsavelcom: TLabel
            Left = 339
            Top = 160
            Width = 79
            Height = 13
            Caption = 'RESPONS'#193'VEL'
            FocusControl = editelent
          end
          object lbltitresponsavelrgcom: TLabel
            Left = 5
            Top = 199
            Width = 22
            Height = 13
            Caption = 'R.G.'
            FocusControl = editelent
          end
          object lbltitresponsavelcpfcom: TLabel
            Left = 339
            Top = 199
            Width = 29
            Height = 13
            Caption = 'C.P.F.'
            FocusControl = editelent
          end
          object ediendcom: TDBEdit
            Left = 109
            Top = 23
            Width = 412
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ENDCOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 0
            OnKeyPress = ediendcomKeyPress
          end
          object edicompcom: TDBEdit
            Left = 110
            Top = 63
            Width = 169
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COMPLCOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 2
            OnKeyPress = ediendcomKeyPress
          end
          object edibaicom: TDBEdit
            Left = 368
            Top = 71
            Width = 185
            Height = 21
            CharCase = ecUpperCase
            DataField = 'BAIRROCOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 3
            OnKeyPress = ediendcomKeyPress
          end
          object edicidcom: TDBEdit
            Left = 104
            Top = 111
            Width = 161
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CIDADECOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 4
            OnKeyPress = ediendcomKeyPress
          end
          object ediestcom: TDBEdit
            Left = 361
            Top = 112
            Width = 38
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ESTADOCOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 5
            OnKeyPress = ediendcomKeyPress
          end
          object edicepcom: TDBEdit
            Left = 462
            Top = 110
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CEPCOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 6
            OnKeyPress = ediendcomKeyPress
          end
          object editelcom: TDBEdit
            Left = 176
            Top = 160
            Width = 134
            Height = 21
            CharCase = ecUpperCase
            DataField = 'TELEFONECOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 8
            OnKeyPress = ediendcomKeyPress
          end
          object edidddecom: TDBEdit
            Left = 104
            Top = 160
            Width = 41
            Height = 21
            DataField = 'DDDECOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 7
            OnKeyPress = edidddecomKeyPress
          end
          object edinrocom: TDBEdit
            Left = 560
            Top = 21
            Width = 83
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NROCOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 1
            OnKeyPress = ediendentKeyPress
          end
          object ediresponsavelcom: TDBEdit
            Left = 424
            Top = 155
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'RESPONSAVELCOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 9
            OnKeyPress = edidddeentKeyPress
          end
          object ediresponsavelrgcom: TDBEdit
            Left = 122
            Top = 194
            Width = 167
            Height = 21
            CharCase = ecUpperCase
            DataField = 'RESPONSAVELCOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 10
            OnKeyPress = edidddeentKeyPress
          end
          object ediresponsavelcpfcom: TDBEdit
            Left = 424
            Top = 194
            Width = 209
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CPFRESPONSAVELCOM'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 11
            OnKeyPress = edidddeentKeyPress
          end
        end
        object tabobj: TTabSheet
          Caption = 'V'#205'NCULO'
          ImageIndex = 5
          OnShow = tabobjShow
          object spdincluir172: TSpeedButton
            Left = 646
            Top = 0
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
            OnClick = spdincluir172Click
          end
          object spdexcluir174: TSpeedButton
            Left = 646
            Top = 32
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
            OnClick = spdexcluir174Click
          end
          object dbgequipcli: TDBGrid
            Left = 0
            Top = 0
            Width = 641
            Height = 302
            Align = alLeft
            DataSource = frmDados.Dts_EquipCli
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnEnter = dbgequipcliEnter
            OnKeyPress = dbgequipcliKeyPress
          end
        end
        object tabobs: TTabSheet
          Caption = 'OUTRAS INF.'
          ImageIndex = 5
          object Label20: TLabel
            Left = 8
            Top = 15
            Width = 66
            Height = 13
            Caption = 'Transportador'
          end
          object Label22: TLabel
            Left = 8
            Top = 40
            Width = 86
            Height = 13
            Caption = 'Cod. Estado IBGE'
            FocusControl = DBLookupComboBox1
          end
          object Label24: TLabel
            Left = 317
            Top = 40
            Width = 85
            Height = 13
            Caption = 'Cod. Munic. IBGE'
            FocusControl = DBLookupComboBox3
          end
          object Label23: TLabel
            Left = 318
            Top = 16
            Width = 75
            Height = 13
            Caption = 'Cod. Pa'#237's IBGE'
            FocusControl = DBLookupComboBox6
          end
          object Label25: TLabel
            Left = 7
            Top = 98
            Width = 57
            Height = 13
            Caption = 'Tipo Tabela'
            FocusControl = DBLookupComboBox7
          end
          object lbloutinf7: TLabel
            Left = 6
            Top = 122
            Width = 42
            Height = 13
            Caption = 'lbloutinf7'
          end
          object lbloutinf8: TLabel
            Left = 319
            Top = 118
            Width = 42
            Height = 13
            Caption = 'lbloutinf8'
          end
          object lbloutinf9: TLabel
            Left = 6
            Top = 145
            Width = 42
            Height = 13
            Caption = 'lbloutinf9'
          end
          object lbloutinf10: TLabel
            Left = 320
            Top = 143
            Width = 48
            Height = 13
            Caption = 'lbloutinf10'
          end
          object lbltitprazo: TLabel
            Left = 319
            Top = 95
            Width = 86
            Height = 13
            Caption = 'PRAZO M'#193'XIMO '
            FocusControl = ediprazo
          end
          object lbltitdia: TLabel
            Left = 467
            Top = 94
            Width = 25
            Height = 13
            Caption = 'DIAS'
            FocusControl = ediprazo
          end
          object cbxnometransp: TDBLookupComboBox
            Left = 104
            Top = 12
            Width = 201
            Height = 21
            DataField = 'CTRANSP'
            DataSource = frmDados.Dts_Clientes
            KeyField = 'CODIGO'
            ListField = 'NOME'
            ListSource = frmDados.Dts_Transportadores
            TabOrder = 0
            OnKeyPress = cbxnometranspKeyPress
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 104
            Top = 36
            Width = 73
            Height = 21
            DataField = 'descufibge'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 3
            OnKeyPress = DBLookupComboBox1KeyPress
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 184
            Top = 36
            Width = 121
            Height = 21
            DataField = 'numufibge'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 4
            OnKeyPress = DBLookupComboBox2KeyPress
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 416
            Top = 36
            Width = 97
            Height = 21
            DataField = 'descmibge'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 5
            OnKeyPress = DBLookupComboBox3KeyPress
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 520
            Top = 35
            Width = 128
            Height = 21
            DataField = 'nummibge'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 6
            OnKeyPress = DBLookupComboBox4KeyPress
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 416
            Top = 12
            Width = 95
            Height = 21
            DataField = 'descpaisibge'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 1
            OnKeyPress = DBLookupComboBox5KeyPress
          end
          object DBLookupComboBox6: TDBLookupComboBox
            Left = 520
            Top = 11
            Width = 129
            Height = 21
            DataField = 'numpaisibge'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 2
            OnKeyPress = DBLookupComboBox6KeyPress
          end
          object DBLookupComboBox7: TDBLookupComboBox
            Left = 104
            Top = 93
            Width = 201
            Height = 21
            DataField = 'ntipotab'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 7
          end
          object CBXOUTINF7: TComboBox
            Left = 103
            Top = 117
            Width = 202
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 0
            TabOrder = 9
            Text = 'CBXOUTINF7'
            OnKeyPress = CBXOUTINF7KeyPress
          end
          object CBXOUTINF8: TComboBox
            Left = 415
            Top = 115
            Width = 201
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 0
            TabOrder = 10
            Text = 'CBXOUTINF8'
            OnKeyPress = CBXOUTINF8KeyPress
          end
          object CBXOUTINF9: TComboBox
            Left = 104
            Top = 142
            Width = 201
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 0
            TabOrder = 11
            Text = 'CBXOUTINF9'
            OnKeyPress = CBXOUTINF9KeyPress
          end
          object CBXOUTINF10: TComboBox
            Left = 416
            Top = 140
            Width = 201
            Height = 21
            CharCase = ecUpperCase
            ItemHeight = 0
            TabOrder = 12
            Text = 'CBXOUTINF10'
            OnKeyPress = CBXOUTINF10KeyPress
          end
          object ediprazo: TDBEdit
            Left = 416
            Top = 90
            Width = 41
            Height = 21
            DataField = 'PRAZO'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 8
            OnKeyPress = editelefonesKeyPress
          end
        end
        object tabobscli: TTabSheet
          Caption = 'OBSERVA'#199#213'ES'
          ImageIndex = 6
          object Label17: TLabel
            Left = 19
            Top = 152
            Width = 63
            Height = 13
            Caption = 'Observa'#231#245'es'
            Visible = False
          end
          object DBMemo1: TDBMemo
            Left = 3
            Top = 0
            Width = 641
            Height = 177
            DataField = 'OBSERVACAO'
            DataSource = frmDados.Dts_Clientes
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
      end
    end
    object dbgClientes: TDBGrid
      Left = 12
      Top = 503
      Width = 681
      Height = 105
      DataSource = frmDados.Dts_Clientes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgClientesDblClick
      OnEnter = dbgClientesEnter
      OnExit = dbgClientesExit
      OnKeyDown = dbgClientesKeyDown
      OnKeyPress = dbgClientesKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Nome'
          Width = 324
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FANTASIA'
          Width = 261
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          ReadOnly = True
          Title.Caption = 'C'#243'digo'
          Width = 72
          Visible = True
        end>
    end
  end
  object imgfichadetalhe: TImageList
    Left = 839
    Top = 538
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      00000000000000000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B0000FFFF007B7B7B00000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF00000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF00000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF00000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000007B7B
      7B0000FFFF007B7B7B0000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000FFFFFF00F01FFFFFFFFF0000F83FE7F8FFF80000
      EC6FE7F8FFF80000FEFF81FF81FF0000BFFB81FC81FC0000FFFFE7FCFFFC0000
      7FFDE7FFFFFF0000FFFFFFFCFFFC00007FFDFEFCF7FC0000FFE3FE7FE7FF0000
      07C180138013000007C180138013000007C1FE7FE7FF000007E3FEF8F7F80000
      07EFFFF8FFF80000FABFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object opdAbrirfig: TOpenPictureDialog
    Left = 833
    Top = 46
  end
end
