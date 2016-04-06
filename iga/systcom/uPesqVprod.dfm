object frmPesqVProd: TfrmPesqVProd
  Left = 67
  Top = 27
  Width = 938
  Height = 667
  BorderIcons = []
  Caption = 'Pesquisa de Produtos'
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
    Width = 930
    Height = 42
    Align = alTop
    TabOrder = 3
    object spdconfirma: TSpeedButton
      Left = 867
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
    Top = 599
    Width = 930
    Height = 41
    Align = alBottom
    TabOrder = 2
  end
  object pnlesq: TPanel
    Left = 0
    Top = 42
    Width = 201
    Height = 557
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
      Width = 66
      Height = 17
      Caption = 'C'#243'digo de'
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
    object Label9: TLabel
      Left = 8
      Top = 163
      Width = 40
      Height = 17
      Caption = 'Marca'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 16
      Top = 529
      Width = 133
      Height = 17
      Caption = 'Mov. de Produtos de'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label26: TLabel
      Left = 18
      Top = 533
      Width = 21
      Height = 17
      Caption = 'At'#233
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label29: TLabel
      Left = 8
      Top = 219
      Width = 40
      Height = 17
      Caption = 'Grupo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label41: TLabel
      Left = 8
      Top = 379
      Width = 106
      Height = 17
      Caption = 'C'#243'digo de Barra'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 8
      Top = 428
      Width = 96
      Height = 17
      Caption = 'C'#243'digo Auxiliar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label47: TLabel
      Left = 8
      Top = 276
      Width = 28
      Height = 17
      Caption = 'Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label61: TLabel
      Left = 8
      Top = 329
      Width = 44
      Height = 17
      Caption = 'Tabela'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object DtpDataIP: TDateTimePicker
      Left = 8
      Top = 525
      Width = 185
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
    object DtpDataFP: TDateTimePicker
      Left = 8
      Top = 533
      Width = 145
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
      TabOrder = 4
      Text = 'edicodigoi'
      OnExit = edicodigoiExit
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
      TabOrder = 5
      Text = 'edicodigof'
      OnKeyPress = edicodigofKeyPress
    end
    object cbxNomeMar: TDBLookupComboBox
      Left = 8
      Top = 186
      Width = 185
      Height = 25
      DataField = 'COD'
      DataSource = frmDados.Dts_Temp
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = frmDados.Dst_Marca
      NullValueKey = 46
      ParentFont = False
      TabOrder = 6
      OnEnter = cbxNomeMarEnter
    end
    object DtpDataI: TDateTimePicker
      Left = 8
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
      TabOrder = 2
      Visible = False
    end
    object DtpDataF: TDateTimePicker
      Left = 8
      Top = 531
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
      TabOrder = 3
      Visible = False
    end
    object CbxNomeGru: TDBLookupComboBox
      Left = 8
      Top = 242
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
      ListSource = frmDados.Dts_Grupo
      NullValueKey = 46
      ParentFont = False
      TabOrder = 7
      OnEnter = CbxNomeGruEnter
    end
    object edicbar: TEdit
      Left = 8
      Top = 400
      Width = 145
      Height = 25
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      Text = 'edicbar'
      OnKeyPress = edicbarKeyPress
    end
    object edicaux: TEdit
      Left = 8
      Top = 449
      Width = 145
      Height = 25
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      Text = 'edicaux'
      OnKeyPress = edicauxKeyPress
    end
    object CbxNomeTipo: TDBLookupComboBox
      Left = 8
      Top = 297
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
      ListSource = frmDados.Dts_Tipo_Prod
      NullValueKey = 46
      ParentFont = False
      TabOrder = 8
      OnEnter = CbxNomeGruEnter
    end
    object cbxnometipotab: TDBLookupComboBox
      Left = 8
      Top = 350
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
      ListField = 'DESCRICAO'
      ListSource = frmDados.Dts_Tipotab
      NullValueKey = 46
      ParentFont = False
      TabOrder = 9
      Visible = False
      OnEnter = CbxNomeGruEnter
    end
  end
  object pnldir: TPanel
    Left = 201
    Top = 42
    Width = 729
    Height = 557
    Align = alClient
    TabOrder = 0
    object Bevel2: TBevel
      Left = 1
      Top = 1
      Width = 727
      Height = 48
      Align = alTop
    end
    object Bevel5: TBevel
      Left = 1
      Top = 49
      Width = 727
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
    object spdIncluir171b: TSpeedButton
      Left = 581
      Top = 10
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
      Visible = False
      OnClick = spdIncluir171bClick
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
    object pnlficha: TPanel
      Left = 1
      Top = 98
      Width = 727
      Height = 458
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 6
      object pnlcab: TPanel
        Left = 0
        Top = 0
        Width = 727
        Height = 73
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label5: TLabel
          Left = 14
          Top = 11
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
          FocusControl = edidescricao
        end
        object DBText1: TDBText
          Left = 104
          Top = 9
          Width = 97
          Height = 17
          DataField = 'CODIGO'
          DataSource = frmDados.Dts_vProdutos
        end
        object Label4: TLabel
          Left = 12
          Top = 37
          Width = 48
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = edidescricao
        end
        object edidescricao: TDBEdit
          Left = 104
          Top = 34
          Width = 361
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DESCRICAO'
          DataSource = frmDados.Dts_vProdutos
          TabOrder = 0
          OnExit = edicodbarExit
          OnKeyPress = edicodbarKeyPress
        end
      end
      object pcldetalhe: TPageControl
        Left = 0
        Top = 73
        Width = 727
        Height = 385
        ActivePage = tbscarac
        Align = alClient
        Images = imgfichadetalhe
        TabOrder = 1
        OnChange = pcldetalheChange
        object tbscarac: TTabSheet
          Caption = 'Caracter'#237'sticas'
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 719
            Height = 356
            Align = alClient
            TabOrder = 0
            OnEnter = pnlfichaEnter
            object Bevel3: TBevel
              Left = 579
              Top = 5
              Width = 130
              Height = 143
            end
            object spdcodbar: TSpeedButton
              Left = 283
              Top = 83
              Width = 23
              Height = 22
              Hint = 'C'#243'digo de Barra'
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
              OnClick = spdcodbarClick
            end
            object Label11: TLabel
              Left = 8
              Top = 10
              Width = 55
              Height = 13
              Caption = 'Quantidade'
              FocusControl = ediqtde
            end
            object Label14: TLabel
              Left = 402
              Top = 10
              Width = 64
              Height = 13
              Caption = 'Dt. Invent'#225'rio'
              FocusControl = ediultcont
            end
            object Label12: TLabel
              Left = 213
              Top = 10
              Width = 40
              Height = 13
              Caption = 'Unidade'
              FocusControl = cbxnomeund
            end
            object Label13: TLabel
              Left = 8
              Top = 57
              Width = 43
              Height = 13
              Caption = 'Pr. Custo'
              FocusControl = ediprcu
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 402
              Top = 57
              Width = 47
              Height = 13
              Caption = 'Pr. Venda'
              FocusControl = ediprve
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label21: TLabel
              Left = 8
              Top = 134
              Width = 30
              Height = 13
              Caption = 'Marca'
            end
            object Label22: TLabel
              Left = 311
              Top = 134
              Width = 29
              Height = 13
              Caption = 'Grupo'
              FocusControl = cbxnomegrupo
            end
            object Label23: TLabel
              Left = 8
              Top = 86
              Width = 50
              Height = 13
              Caption = 'Cod. Barra'
              FocusControl = edicodbar
            end
            object Label30: TLabel
              Left = 8
              Top = 34
              Width = 40
              Height = 13
              Caption = 'Pr. Base'
              FocusControl = ediprcubs
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label31: TLabel
              Left = 213
              Top = 34
              Width = 79
              Height = 13
              Caption = 'Perc. Out. Desp.'
              FocusControl = edialiqcus
            end
            object Label32: TLabel
              Left = 367
              Top = 34
              Width = 8
              Height = 13
              Caption = '%'
            end
            object Label33: TLabel
              Left = 402
              Top = 34
              Width = 86
              Height = 13
              Caption = 'Vlr. Out. Desp. R$'
              FocusControl = edivlradd
            end
            object Label34: TLabel
              Left = 213
              Top = 57
              Width = 36
              Height = 13
              Caption = 'Markup'
              FocusControl = ediper
            end
            object Label35: TLabel
              Left = 367
              Top = 57
              Width = 8
              Height = 13
              Caption = '%'
            end
            object Label36: TLabel
              Left = 8
              Top = 158
              Width = 57
              Height = 13
              Caption = 'Localiza'#231#227'o'
              FocusControl = edilocalizacao
            end
            object Label37: TLabel
              Left = 8
              Top = 109
              Width = 47
              Height = 13
              Caption = 'Aplica'#231#227'o'
              FocusControl = ediaplicacao
            end
            object Label38: TLabel
              Left = 311
              Top = 182
              Width = 78
              Height = 13
              Caption = 'Dif. entre Custos'
            end
            object lbldif: TLabel
              Left = 441
              Top = 182
              Width = 21
              Height = 13
              Alignment = taRightJustify
              Caption = 'lbldif'
            end
            object Label39: TLabel
              Left = 470
              Top = 181
              Width = 84
              Height = 13
              Caption = 'Margem de Contr.'
            end
            object lblmrgcon: TLabel
              Left = 580
              Top = 181
              Width = 45
              Height = 13
              Alignment = taRightJustify
              Caption = 'lblmrgcon'
            end
            object imgFoto: TImage
              Left = 581
              Top = 6
              Width = 125
              Height = 140
              ParentShowHint = False
              ShowHint = False
              Stretch = True
            end
            object SpeedButton1: TSpeedButton
              Left = 660
              Top = 149
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
              OnClick = SpeedButton1Click
            end
            object SpeedButton2: TSpeedButton
              Left = 686
              Top = 149
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
              OnClick = SpeedButton2Click
            end
            object barra1: TABarra
              Left = 611
              Top = 222
              Width = 96
              Height = 22
              Digito = '7'
              CorBarra = clBlack
              CorEspaco = clWhite
              Tipo = cdEAN13
              Codigo = '100000100023'
              Largura = 1
            end
            object Label40: TLabel
              Left = 311
              Top = 109
              Width = 21
              Height = 13
              Caption = 'Tipo'
              FocusControl = cbxnometipo_prod
            end
            object Label42: TLabel
              Left = 311
              Top = 86
              Width = 69
              Height = 13
              Caption = 'C'#243'digo Auxiliar'
              FocusControl = edicodaux
            end
            object Label44: TLabel
              Left = 311
              Top = 158
              Width = 35
              Height = 13
              Caption = 'M'#237'nimo'
              FocusControl = estmin
            end
            object Label45: TLabel
              Left = 470
              Top = 158
              Width = 36
              Height = 13
              Caption = 'M'#225'ximo'
              FocusControl = estmax
            end
            object Label60: TLabel
              Left = 8
              Top = 182
              Width = 33
              Height = 13
              Caption = 'Tabela'
              FocusControl = cbxnometipotabela
              Visible = False
            end
            object SpeedButton3: TSpeedButton
              Left = 172
              Top = 29
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = SpeedButton3Click
            end
            object ediqtde: TDBEdit
              Left = 105
              Top = 6
              Width = 89
              Height = 21
              DataField = 'QUA'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 0
              OnKeyPress = ediqtdeKeyPress
            end
            object ediultcont: TDBEdit
              Left = 498
              Top = 6
              Width = 77
              Height = 21
              DataField = 'ULTCONT'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 2
              OnKeyPress = ediultcontKeyPress
            end
            object cbxnomeund: TDBLookupComboBox
              Left = 296
              Top = 6
              Width = 66
              Height = 21
              DataField = 'nuni'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 1
              OnKeyPress = ediqtdeKeyPress
            end
            object ediprcu: TDBEdit
              Left = 105
              Top = 53
              Width = 89
              Height = 21
              DataField = 'PRCU'
              DataSource = frmDados.Dts_vProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              OnExit = ediprcuExit
              OnKeyPress = ediqtdeKeyPress
            end
            object ediprve: TDBEdit
              Left = 498
              Top = 53
              Width = 79
              Height = 21
              DataField = 'PRVE'
              DataSource = frmDados.Dts_vProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnExit = ediprveExit
              OnKeyPress = ediqtdeKeyPress
            end
            object edicmar: TEdit
              Left = 684
              Top = 350
              Width = 31
              Height = 21
              TabOrder = 16
              Text = 'edicmar'
              Visible = False
              OnExit = edicmarExit
            end
            object cbxnomemarca: TDBLookupComboBox
              Left = 105
              Top = 130
              Width = 202
              Height = 21
              DataField = 'nmarca'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 13
              OnKeyPress = cbxnomemarcaKeyPress
            end
            object edicgru: TEdit
              Left = 683
              Top = 373
              Width = 31
              Height = 21
              TabOrder = 18
              Text = 'edicgru'
              Visible = False
              OnExit = edicgruExit
            end
            object cbxnomegrupo: TDBLookupComboBox
              Left = 392
              Top = 130
              Width = 184
              Height = 21
              DataField = 'ngrupo'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 14
              OnKeyPress = cbxnomegrupoKeyPress
            end
            object edicodbar: TDBEdit
              Left = 105
              Top = 83
              Width = 177
              Height = 21
              DataField = 'CBAR'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 9
              OnExit = edicodbarExit
              OnKeyPress = edicodbarKeyPress
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 450
              Top = 229
              Width = 71
              Height = 21
              DataField = 'codmar'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 17
              Visible = False
              OnKeyPress = DBLookupComboBox1KeyPress
            end
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 370
              Top = 229
              Width = 71
              Height = 21
              DataField = 'codgru'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 19
              Visible = False
              OnKeyPress = DBLookupComboBox2KeyPress
            end
            object ediprcubs: TDBEdit
              Left = 105
              Top = 29
              Width = 64
              Height = 21
              DataField = 'PRCUBS'
              DataSource = frmDados.Dts_vProdutos
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnExit = ediprcubsExit
              OnKeyPress = ediqtdeKeyPress
            end
            object edialiqcus: TDBEdit
              Left = 296
              Top = 31
              Width = 65
              Height = 21
              DataField = 'ALIQCUS'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 4
              OnExit = edialiqcusExit
              OnKeyPress = ediqtdeKeyPress
            end
            object edivlradd: TDBEdit
              Left = 498
              Top = 29
              Width = 79
              Height = 21
              DataField = 'VLRADD'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 5
              OnExit = edivlraddExit
              OnKeyPress = ediqtdeKeyPress
            end
            object ediper: TDBEdit
              Left = 296
              Top = 53
              Width = 63
              Height = 21
              DataField = 'PER'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 7
              OnExit = ediperExit
              OnKeyPress = ediqtdeKeyPress
            end
            object edilocalizacao: TDBEdit
              Left = 105
              Top = 154
              Width = 202
              Height = 21
              DataField = 'LOCALIZACAO'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 15
              OnExit = edicodbarExit
              OnKeyPress = edicodbarKeyPress
            end
            object ediaplicacao: TDBEdit
              Left = 105
              Top = 106
              Width = 202
              Height = 21
              DataField = 'APLICACAO'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 11
              OnExit = edicodbarExit
              OnKeyPress = edicodbarKeyPress
            end
            object ckbactdesc: TCheckBox
              Left = 582
              Top = 153
              Width = 69
              Height = 17
              TabStop = False
              Caption = 'Ac. &Desc.'
              TabOrder = 20
            end
            object cbxnometipo_prod: TDBLookupComboBox
              Left = 392
              Top = 106
              Width = 185
              Height = 21
              DataField = 'tipo_prod'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 12
              OnKeyPress = cbxnometipo_prodKeyPress
            end
            object edicodaux: TDBEdit
              Left = 392
              Top = 82
              Width = 185
              Height = 21
              DataField = 'CAUX'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 10
              OnExit = edicodbarExit
              OnKeyPress = edicodbarKeyPress
            end
            object estmin: TDBEdit
              Left = 392
              Top = 154
              Width = 71
              Height = 21
              DataField = 'ESTMIN'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 21
              OnKeyPress = estminKeyPress
            end
            object estmax: TDBEdit
              Left = 512
              Top = 154
              Width = 64
              Height = 21
              DataField = 'ESTMAX'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 22
              OnKeyPress = estmaxKeyPress
            end
            object cbxnometipotabela: TDBLookupComboBox
              Left = 104
              Top = 178
              Width = 203
              Height = 21
              DataField = 'ntipotab'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 23
              Visible = False
            end
          end
        end
        object tbstributacao: TTabSheet
          Caption = 'Tributa'#231#227'o'
          ImageIndex = 4
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 719
            Height = 356
            Align = alClient
            TabOrder = 0
            object Label19: TLabel
              Left = 6
              Top = 12
              Width = 26
              Height = 13
              Caption = 'ICMS'
              FocusControl = cbxnomeicms
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 255
              Top = 12
              Width = 13
              Height = 13
              Caption = 'IPI'
              FocusControl = cbxnomeipi
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label17: TLabel
              Left = 473
              Top = 12
              Width = 49
              Height = 13
              Caption = 'Sit. Trib. A'
              FocusControl = cbxnomesita
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 6
              Top = 36
              Width = 49
              Height = 13
              Caption = 'Sit. Trib. B'
              FocusControl = cbxnomesitb
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 255
              Top = 36
              Width = 19
              Height = 13
              Caption = 'C.F.'
              FocusControl = cbxnomecf
            end
            object Label50: TLabel
              Left = 475
              Top = 36
              Width = 28
              Height = 13
              Caption = 'CFOP'
              FocusControl = DBLookupComboBox3
            end
            object Label51: TLabel
              Left = 8
              Top = 59
              Width = 17
              Height = 13
              Caption = 'PIS'
              FocusControl = cbxnomepis
            end
            object Label52: TLabel
              Left = 258
              Top = 57
              Width = 39
              Height = 13
              Caption = 'COFINS'
              FocusControl = cbxnomecofins
            end
            object Label53: TLabel
              Left = 476
              Top = 57
              Width = 78
              Height = 13
              Caption = 'Mod. Base Calc.'
              FocusControl = cbxnomemodbc
            end
            object Label54: TLabel
              Left = 8
              Top = 83
              Width = 111
              Height = 13
              Caption = 'Base Calc. Subst. Calc.'
              FocusControl = cbxnomemodbcst
            end
            object Label55: TLabel
              Left = 259
              Top = 81
              Width = 23
              Height = 13
              Caption = 'Aliq I'
              FocusControl = cbxnomeirii
            end
            object Label56: TLabel
              Left = 478
              Top = 82
              Width = 26
              Height = 13
              Caption = 'Aliq II'
              FocusControl = cbxnomevii
            end
            object Label57: TLabel
              Left = 8
              Top = 108
              Width = 32
              Height = 13
              Caption = 'Aliq. III'
              FocusControl = cbxnomeoimp
            end
            object Label58: TLabel
              Left = 9
              Top = 141
              Width = 105
              Height = 13
              Caption = 'Base Calc. Subs. Trib.'
              FocusControl = DBEdit1
            end
            object Label59: TLabel
              Left = 10
              Top = 165
              Width = 120
              Height = 13
              Caption = 'ICMS Subs. Calc. S. Trib.'
              FocusControl = DBEdit2
            end
            object Label62: TLabel
              Left = 9
              Top = 190
              Width = 24
              Height = 13
              Caption = 'NCM'
              FocusControl = DBEdit3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label63: TLabel
              Left = 9
              Top = 215
              Width = 37
              Height = 13
              Caption = 'CSOSN'
              FocusControl = DBEdit4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label64: TLabel
              Left = 261
              Top = 109
              Width = 12
              Height = 13
              Caption = 'Ex'
            end
            object Label66: TLabel
              Left = 257
              Top = 143
              Width = 53
              Height = 13
              Caption = 'COD. ESP.'
              FocusControl = DBEdit6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object cbxnomeicms: TDBLookupComboBox
              Left = 134
              Top = 7
              Width = 112
              Height = 21
              DataField = 'nsiglaicms'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 0
              OnKeyPress = cbxnomeicmsKeyPress
            end
            object cbxnomeipi: TDBLookupComboBox
              Left = 327
              Top = 7
              Width = 131
              Height = 21
              DataField = 'nipi'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 1
              OnKeyPress = cbxnomeipiKeyPress
            end
            object cbxnomesita: TDBLookupComboBox
              Left = 567
              Top = 7
              Width = 129
              Height = 21
              DataField = 'nsita'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 2
              OnKeyPress = cbxnomesitaKeyPress
            end
            object cbxnomesitb: TDBLookupComboBox
              Left = 134
              Top = 31
              Width = 112
              Height = 21
              DataField = 'nsitb'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 3
              OnKeyPress = cbxnomesitbKeyPress
            end
            object cbxnomecf: TDBLookupComboBox
              Left = 327
              Top = 31
              Width = 131
              Height = 21
              DataField = 'ncf'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 4
              OnKeyPress = cbxnomecfKeyPress
            end
            object DBLookupComboBox3: TDBLookupComboBox
              Left = 567
              Top = 32
              Width = 128
              Height = 21
              DataField = 'ncfop'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 5
              OnKeyPress = DBLookupComboBox3KeyPress
            end
            object cbxnomepis: TDBLookupComboBox
              Left = 134
              Top = 56
              Width = 112
              Height = 21
              DataField = 'nomepis'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 6
              OnKeyPress = cbxnomepisKeyPress
            end
            object cbxnomecofins: TDBLookupComboBox
              Left = 327
              Top = 56
              Width = 131
              Height = 21
              DataField = 'nomecofins'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 7
              OnKeyPress = cbxnomecofinsKeyPress
            end
            object cbxnomemodbc: TDBLookupComboBox
              Left = 567
              Top = 56
              Width = 129
              Height = 21
              DataField = 'nomemodbc'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 8
              OnKeyPress = cbxnomemodbcKeyPress
            end
            object cbxnomemodbcst: TDBLookupComboBox
              Left = 134
              Top = 80
              Width = 112
              Height = 21
              DataField = 'nomemodbcst'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 9
              OnKeyPress = cbxnomemodbcstKeyPress
            end
            object cbxnomeirii: TDBLookupComboBox
              Left = 567
              Top = 80
              Width = 131
              Height = 21
              DataField = 'nomeirii'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 11
              OnKeyPress = cbxnomeiriiKeyPress
            end
            object cbxnomevii: TDBLookupComboBox
              Left = 327
              Top = 80
              Width = 129
              Height = 21
              DataField = 'nomevii'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 10
              OnKeyPress = cbxnomeviiKeyPress
            end
            object cbxnomeoimp: TDBLookupComboBox
              Left = 134
              Top = 104
              Width = 112
              Height = 21
              DataField = 'nomeoimp'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 12
              OnKeyPress = cbxnomeoimpKeyPress
            end
            object DBEdit1: TDBEdit
              Left = 133
              Top = 138
              Width = 111
              Height = 21
              DataField = 'VBCST'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 14
              OnKeyPress = ediqtdeKeyPress
            end
            object DBEdit2: TDBEdit
              Left = 133
              Top = 162
              Width = 111
              Height = 21
              DataField = 'VICMSST'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 15
              OnKeyPress = ediqtdeKeyPress
            end
            object DBEdit3: TDBEdit
              Left = 132
              Top = 187
              Width = 111
              Height = 21
              DataField = 'NCM'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 16
              OnKeyPress = ediqtdeKeyPress
            end
            object ckbindtot: TCheckBox
              Left = 10
              Top = 235
              Width = 135
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Comp'#245'e Total da NF'
              TabOrder = 18
            end
            object DBEdit4: TDBEdit
              Left = 132
              Top = 212
              Width = 111
              Height = 21
              DataField = 'CSOSN'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 17
              OnKeyPress = ediqtdeKeyPress
            end
            object DBEdit5: TDBEdit
              Left = 327
              Top = 104
              Width = 25
              Height = 21
              DataField = 'EX'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 13
              OnKeyPress = ediqtdeKeyPress
            end
            object DBEdit6: TDBEdit
              Left = 327
              Top = 140
              Width = 111
              Height = 21
              DataField = 'cest'
              DataSource = frmDados.Dts_vProdutos
              TabOrder = 19
              OnKeyPress = ediqtdeKeyPress
            end
          end
        end
        object tbsentrada: TTabSheet
          Caption = 'Entrada'
          ImageIndex = 1
          OnShow = tbsentradaShow
          object Bevel6: TBevel
            Left = 0
            Top = 0
            Width = 719
            Height = 35
            Align = alTop
          end
          object spdfiltrare: TSpeedButton
            Left = 433
            Top = 1
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
            OnClick = spdfiltrareClick
          end
          object spdlimpare: TSpeedButton
            Left = 469
            Top = 1
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
            OnClick = spdlimpareClick
          end
          object Label7: TLabel
            Left = 193
            Top = 12
            Width = 17
            Height = 13
            Caption = 'De:'
          end
          object Label8: TLabel
            Left = 312
            Top = 12
            Width = 19
            Height = 13
            Caption = 'At'#233':'
          end
          object dbgentrada: TDBGrid
            Left = 0
            Top = 35
            Width = 719
            Height = 299
            Align = alClient
            DataSource = frmDados.Dts_Ent_Prod
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnEnter = dbgentradaEnter
            OnExit = dbgentradaExit
            OnKeyDown = dbgentradaKeyDown
            OnKeyPress = dbgentradaKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'DATA_ENT'
                Title.Caption = 'Data Entrega'
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nfor'
                Title.Caption = 'Fornecedor'
                Width = 221
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDE'
                Title.Caption = 'Quantidade'
                Width = 78
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRUNIT'
                Title.Caption = 'Pr. Unit'#225'rio'
                Width = 104
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COMENTARIO'
                Title.Caption = 'Obs.'
                Width = 199
                Visible = True
              end>
          end
          object dtpdataIe: TDateTimePicker
            Left = 216
            Top = 8
            Width = 89
            Height = 21
            Date = 39681.419013310190000000
            Time = 39681.419013310190000000
            TabOrder = 0
          end
          object dtpdataFe: TDateTimePicker
            Left = 338
            Top = 8
            Width = 89
            Height = 21
            Date = 39681.419162858800000000
            Time = 39681.419162858800000000
            DateMode = dmUpDown
            TabOrder = 1
          end
          object Panel2: TPanel
            Left = 0
            Top = 334
            Width = 719
            Height = 22
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 3
            object Label27: TLabel
              Left = 334
              Top = 5
              Width = 53
              Height = 13
              Caption = 'Qtde Total:'
            end
            object lbltote: TLabel
              Left = 442
              Top = 5
              Width = 28
              Height = 13
              Alignment = taRightJustify
              Caption = 'lbltote'
            end
          end
        end
        object tbssaida: TTabSheet
          Caption = 'Sa'#237'da Ped. Int.'
          ImageIndex = 2
          OnShow = tbssaidaShow
          object Bevel8: TBevel
            Left = 0
            Top = 0
            Width = 719
            Height = 35
            Align = alTop
          end
          object Label10: TLabel
            Left = 193
            Top = 12
            Width = 17
            Height = 13
            Caption = 'De:'
          end
          object Label24: TLabel
            Left = 312
            Top = 12
            Width = 19
            Height = 13
            Caption = 'At'#233':'
          end
          object spdfiltrars: TSpeedButton
            Left = 433
            Top = 1
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
            OnClick = spdfiltrarsClick
          end
          object spdlimpars: TSpeedButton
            Left = 469
            Top = 1
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
            OnClick = spdlimparsClick
          end
          object dbgsaida: TDBGrid
            Left = 0
            Top = 35
            Width = 719
            Height = 299
            Align = alClient
            DataSource = frmDados.Dst_dVenda
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnEnter = dbgsaidaEnter
            OnExit = dbgsaidaExit
            OnKeyDown = dbgsaidaKeyDown
            OnKeyPress = dbgsaidaKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'DATA_OP'
                Title.Caption = 'Data Sa'#237'da'
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ncli'
                Title.Caption = 'Cliente'
                Width = 220
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDE'
                Title.Caption = 'Quantidade'
                Width = 78
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRVE'
                Title.Caption = 'Pr. Venda'
                Width = 106
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COMENTARIO'
                Title.Caption = 'Obs.'
                Width = 201
                Visible = True
              end>
          end
          object dtpDataIs: TDateTimePicker
            Left = 216
            Top = 8
            Width = 89
            Height = 21
            Date = 39681.419013310190000000
            Time = 39681.419013310190000000
            TabOrder = 1
          end
          object DtpDataFs: TDateTimePicker
            Left = 338
            Top = 8
            Width = 89
            Height = 21
            Date = 39681.419162858800000000
            Time = 39681.419162858800000000
            DateMode = dmUpDown
            TabOrder = 2
          end
          object pnlrodape: TPanel
            Left = 0
            Top = 334
            Width = 719
            Height = 22
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 3
            object Label28: TLabel
              Left = 344
              Top = 5
              Width = 53
              Height = 13
              Caption = 'Qtde Total:'
            end
            object lbltots: TLabel
              Left = 442
              Top = 5
              Width = 27
              Height = 13
              Alignment = taRightJustify
              Caption = 'lbltots'
            end
          end
        end
        object tbssaidab: TTabSheet
          Caption = 'Saida Balc'#227'o'
          ImageIndex = 3
          object Bevel4: TBevel
            Left = 0
            Top = 0
            Width = 719
            Height = 35
            Align = alTop
          end
          object Label46: TLabel
            Left = 193
            Top = 12
            Width = 17
            Height = 13
            Caption = 'De:'
          end
          object Label48: TLabel
            Left = 312
            Top = 12
            Width = 19
            Height = 13
            Caption = 'At'#233':'
          end
          object spdfiltrarsb: TSpeedButton
            Left = 433
            Top = 1
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
            OnClick = spdfiltrarsbClick
          end
          object spdlimparsb: TSpeedButton
            Left = 469
            Top = 1
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
            OnClick = spdlimparsbClick
          end
          object DtpDataIsb: TDateTimePicker
            Left = 216
            Top = 8
            Width = 89
            Height = 21
            Date = 39681.419013310190000000
            Time = 39681.419013310190000000
            TabOrder = 0
          end
          object DtpDataFsb: TDateTimePicker
            Left = 338
            Top = 8
            Width = 89
            Height = 21
            Date = 39681.419162858800000000
            Time = 39681.419162858800000000
            DateMode = dmUpDown
            TabOrder = 1
          end
          object dbgsaidab: TDBGrid
            Left = 0
            Top = 35
            Width = 719
            Height = 299
            Align = alClient
            DataSource = frmDados.Dts_Vendab
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnEnter = dbgsaidabEnter
            OnExit = dbgsaidabExit
            OnKeyDown = dbgsaidabKeyDown
            OnKeyPress = dbgsaidabKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'DATA_OP'
                Title.Caption = 'Data Sa'#237'da'
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ncli'
                Title.Caption = 'Cliente'
                Width = 220
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDE'
                Title.Caption = 'Quantidade'
                Width = 78
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRVE'
                Title.Caption = 'Pr. Venda'
                Width = 106
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'COMENTARIO'
                Title.Caption = 'Obs.'
                Width = 201
                Visible = True
              end>
          end
          object Panel3: TPanel
            Left = 0
            Top = 334
            Width = 719
            Height = 22
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 3
            object Label49: TLabel
              Left = 344
              Top = 5
              Width = 53
              Height = 13
              Caption = 'Qtde Total:'
            end
            object lbltotsb: TLabel
              Left = 436
              Top = 5
              Width = 33
              Height = 13
              Alignment = taRightJustify
              Caption = 'lbltotsb'
            end
          end
        end
        object tbstabpr: TTabSheet
          Caption = 'Tabela Diferenciada'
          ImageIndex = 5
          OnShow = tbstabprShow
          object dbgtabprp: TDBGrid
            Left = 0
            Top = 57
            Width = 719
            Height = 299
            Align = alClient
            DataSource = frmDados.Dts_TabPrP
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnColEnter = dbgtabprpColEnter
            OnKeyPress = dbgtabprpKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'ntab'
                Title.Caption = 'Tabela'
                Width = 306
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PER'
                Title.Caption = 'Markup'
                Width = 86
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRVE'
                Title.Caption = 'Pre'#231'o de Venda'
                Width = 121
                Visible = True
              end>
          end
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 719
            Height = 57
            Align = alTop
            TabOrder = 1
            object Label65: TLabel
              Left = 8
              Top = 20
              Width = 81
              Height = 13
              Caption = 'Localizar Tabela:'
            end
            object DBLookupComboBox4: TDBLookupComboBox
              Left = 104
              Top = 16
              Width = 329
              Height = 21
              DataField = 'COD9'
              DataSource = frmDados.Dts_Temp
              KeyField = 'CODIGO'
              ListField = 'DESCRICAO'
              ListSource = frmDados.Dts_Tipotab
              TabOrder = 0
              OnEnter = DBLookupComboBox4Enter
              OnExit = DBLookupComboBox4Exit
            end
            object Button1: TButton
              Left = 437
              Top = 14
              Width = 54
              Height = 25
              Caption = 'Filtrar'
              TabOrder = 1
              OnClick = Button1Click
            end
            object Button2: TButton
              Left = 495
              Top = 14
              Width = 54
              Height = 25
              Caption = 'Limpar'
              TabOrder = 2
              OnClick = Button2Click
            end
          end
        end
      end
    end
    object pnlsalvarficha: TPanel
      Left = 379
      Top = 8
      Width = 150
      Height = 34
      BevelOuter = bvNone
      TabOrder = 4
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
      end
    end
    object edicodprod: TEdit
      Left = 689
      Top = 520
      Width = 30
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'edicodprod'
      Visible = False
      OnChange = edidescChange
    end
    object cbxclassificar: TComboBox
      Left = 4
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
      Text = 'cbxclassificar'
      OnChange = cbxclassificarChange
      OnKeyDown = cbxclassificarKeyDown
      OnKeyPress = cbxclassificarKeyPress
    end
    object edidesc: TEdit
      Left = 172
      Top = 69
      Width = 285
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
    object pnllista: TPanel
      Left = 2
      Top = 8
      Width = 367
      Height = 35
      BevelOuter = bvNone
      TabOrder = 3
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
        Hint = 'Etiquetas C'#243'digo de Barra'
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
      object spdilustracao177: TSpeedButton
        Left = 323
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
      object spdetq: TSpeedButton
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
        OnClick = spdetqClick
      end
      object spdExp: TSpeedButton
        Left = 215
        Top = 2
        Width = 106
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
        OnClick = spdExpClick
      end
    end
    object dbgProdutos: TDBGrid
      Left = 16
      Top = 480
      Width = 697
      Height = 40
      DataSource = frmDados.Dts_vProdutos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgProdutosDblClick
      OnKeyDown = dbgProdutosKeyDown
      OnKeyPress = dbgProdutosKeyPress
      OnTitleClick = dbgProdutosTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 413
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          ReadOnly = True
          Title.Caption = 'C'#243'digo'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUA'
          Title.Caption = 'Quantidade'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nuni'
          Title.Caption = 'Unidade'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRVE'
          Title.Caption = 'Pr. Venda'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'totprod'
          Title.Caption = 'Tot. Prods.'
          Visible = False
        end>
    end
  end
  object imgfichadetalhe: TImageList
    Left = 839
    Top = 538
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007B7B7B00000000007B7B
      7B0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000FFFFFF00000000007B7B7B00000000007B7B
      7B0000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF0000000000FFFFFF00000000007B7B7B00000000007B7B
      7B0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF0000000000FFFFFF00000000007B7B7B00000000007B7B
      7B0000000000000000000000000000000000FFFFFF0000000000000000000000
      000000000000FFFFFF00FFFFFF0000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      FF000000FF000000FF0000000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00007B7B7B00000000000000000000000000FFFFFF0000000000BDBDBD00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF0000000000000000007B7B7B000000
      0000000000007B7B7B000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000FFFFFF0000000000000000007B7B7B000000
      000000000000000000007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF00000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B0000000000000000007B7B7B00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF00000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF0000000000000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      00007B7B7B007B7B7B0000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008E00FFFFFFFF80000600E7F8FFF88000
      2600E7F8FFF8C000260081FF81FFE000060081FC81FCF0008E00E7FCFFFCF800
      DE00E7FFFFFFFC00C600FFFCFFFCFE00C201FEFCF7FCFF008803FE7FE7FFFF80
      9C07801380138380C8E18013801383E0E040FE7FE7FF83E0F30CFEF8F7F883E0
      FFC0FFF8FFF88384FFE1FFFFFFFFFFFE00000000000000000000000000000000
      000000000000}
  end
  object opdAbrirfig: TOpenPictureDialog
    Left = 897
    Top = 46
  end
end
