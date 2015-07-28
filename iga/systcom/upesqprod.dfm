object frmpesqprodD: TfrmpesqprodD
  Left = 19
  Top = 52
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Consulta de Produtos'
  ClientHeight = 596
  ClientWidth = 988
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlsuperior: TPanel
    Left = 0
    Top = 0
    Width = 988
    Height = 42
    Align = alTop
    TabOrder = 0
    object spdconfirma: TSpeedButton
      Left = 945
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
  object pnlesq: TPanel
    Left = 0
    Top = 42
    Width = 201
    Height = 513
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
      Left = 163
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
      Left = 163
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
    object Bevel4: TBevel
      Left = 3
      Top = 304
      Width = 194
      Height = 201
    end
    object Label41: TLabel
      Left = 8
      Top = 171
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
      Top = 220
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
      OnKeyPress = edicodigofKeyPress
    end
    object edicbar: TEdit
      Left = 8
      Top = 192
      Width = 145
      Height = 25
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = 'edicbar'
      OnKeyPress = edicbarKeyPress
    end
    object edicaux: TEdit
      Left = 8
      Top = 241
      Width = 145
      Height = 25
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = 'edicaux'
      OnKeyPress = edicauxKeyPress
    end
  end
  object pnldir: TPanel
    Left = 201
    Top = 42
    Width = 787
    Height = 513
    Align = alClient
    TabOrder = 2
    object Bevel2: TBevel
      Left = 1
      Top = 1
      Width = 785
      Height = 48
      Align = alTop
    end
    object Label4: TLabel
      Left = 221
      Top = 13
      Width = 183
      Height = 22
      Caption = 'Consulta de Produtos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Bevel5: TBevel
      Left = 1
      Top = 49
      Width = 785
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
    object spdadd178: TSpeedButton
      Left = 460
      Top = 70
      Width = 29
      Height = 25
      Hint = 'Adiciona Sem Fechar'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = spdadd178Click
    end
    object spdInserir179: TSpeedButton
      Left = 492
      Top = 70
      Width = 31
      Height = 25
      Hint = 'Adicioma Fechando'
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
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Visible = False
      OnClick = spdInserir179Click
    end
    object DBText1: TDBText
      Left = 110
      Top = 394
      Width = 403
      Height = 24
      DataField = 'LOCALIZACAO'
      DataSource = frmDados.Dts_vProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 3
      Top = 394
      Width = 99
      Height = 24
      Caption = 'Localiza'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 3
      Top = 426
      Width = 83
      Height = 24
      Caption = 'Aplica'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object DBText2: TDBText
      Left = 110
      Top = 426
      Width = 403
      Height = 22
      DataField = 'APLICACAO'
      DataSource = frmDados.Dts_vProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label8: TLabel
      Left = 520
      Top = 397
      Width = 96
      Height = 13
      Caption = 'Tabela Diferenciada'
    end
    object dbgprodutos: TDBGrid
      Left = 2
      Top = 100
      Width = 775
      Height = 285
      Color = clCream
      DataSource = frmDados.Dts_vProdutos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbgprodutosDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 195
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'APLICACAO'
          Title.Caption = 'Aplica'#231#227'o'
          Width = 154
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAUX'
          Title.Caption = 'Cod. Aux.'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nmarca'
          Title.Caption = 'Marca'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUA'
          Title.Caption = 'Quantidade'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nuni'
          Title.Caption = 'Unid.'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRVE'
          Title.Caption = 'Pre'#231'o'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          ReadOnly = True
          Title.Caption = 'C'#243'digo'
          Width = 52
          Visible = True
        end>
    end
    object edicodprod: TEdit
      Left = 139
      Top = 560
      Width = 78
      Height = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = 'edicodprod'
      Visible = False
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
      TabStop = False
      Text = 'cbxclassificar'
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
    object dbgtabprp: TDBGrid
      Left = 520
      Top = 416
      Width = 256
      Height = 89
      DataSource = frmDados.Dts_TabPrP
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ntab'
          Title.Caption = 'Tabela'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PER'
          Title.Caption = 'Markup'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRVE'
          Title.Caption = 'Pre'#231'o'
          Width = 68
          Visible = True
        end>
    end
  end
  object pnlinferior: TPanel
    Left = 0
    Top = 555
    Width = 988
    Height = 41
    Align = alBottom
    TabOrder = 3
  end
end
