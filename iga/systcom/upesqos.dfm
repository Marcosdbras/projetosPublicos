object frmPesqOS: TfrmPesqOS
  Left = 225
  Top = 40
  Width = 1036
  Height = 780
  BorderIcons = []
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
    Width = 1028
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
  end
  object pnlinferior: TPanel
    Left = 0
    Top = 712
    Width = 1028
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
    Height = 670
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
      Left = 8
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
      Left = 8
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
      Left = 8
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
      Left = 48
      Top = 504
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
    Width = 827
    Height = 670
    Align = alClient
    TabOrder = 3
    object Bevel2: TBevel
      Left = 1
      Top = 1
      Width = 825
      Height = 48
      Align = alTop
    end
    object pnlficha: TPanel
      Left = 1
      Top = 113
      Width = 1043
      Height = 488
      BevelOuter = bvLowered
      TabOrder = 0
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 1041
        Height = 176
        Align = alTop
        TabOrder = 0
        object lblid1: TLabel
          Left = 5
          Top = 3
          Width = 17
          Height = 13
          Caption = 'ID1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblid2: TLabel
          Left = 193
          Top = 3
          Width = 17
          Height = 13
          Caption = 'ID2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbldesc1: TLabel
          Left = 392
          Top = 3
          Width = 35
          Height = 13
          Caption = 'DESC1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbldesc2: TLabel
          Left = 5
          Top = 45
          Width = 35
          Height = 13
          Caption = 'DESC2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbldesc3: TLabel
          Left = 193
          Top = 45
          Width = 35
          Height = 13
          Caption = 'DESC3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbldesc4: TLabel
          Left = 392
          Top = 45
          Width = 35
          Height = 13
          Caption = 'DESC4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbltittipo: TLabel
          Left = 551
          Top = 4
          Width = 25
          Height = 13
          Caption = 'TIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbltipo_cob: TLabel
          Left = 551
          Top = 46
          Width = 67
          Height = 13
          Caption = 'COBERTURA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbldesc5: TLabel
          Left = 5
          Top = 86
          Width = 35
          Height = 13
          Caption = 'DESC5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbldesc6: TLabel
          Left = 392
          Top = 86
          Width = 35
          Height = 13
          Caption = 'DESC6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbldesc7: TLabel
          Left = 551
          Top = 86
          Width = 35
          Height = 13
          Caption = 'DESC7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbldesc8: TLabel
          Left = 5
          Top = 129
          Width = 35
          Height = 13
          Caption = 'DESC8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbldesc9: TLabel
          Left = 392
          Top = 129
          Width = 35
          Height = 13
          Caption = 'DESC9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbldesc10: TLabel
          Left = 551
          Top = 129
          Width = 41
          Height = 13
          Caption = 'DESC10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cbxdesc1: TComboBox
          Left = 392
          Top = 22
          Width = 157
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 2
          Text = 'CBXDESC1'
          OnExit = cbxdesc1Exit
          OnKeyPress = cbxdesc1KeyPress
        end
        object cbxdesc2: TComboBox
          Left = 5
          Top = 64
          Width = 186
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 4
          Text = 'CBXDESC2'
          OnExit = cbxdesc2Exit
          OnKeyPress = cbxdesc2KeyPress
        end
        object cbxdesc3: TComboBox
          Left = 193
          Top = 64
          Width = 196
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 5
          Text = 'CBXDESC3'
          OnExit = cbxdesc3Exit
          OnKeyPress = cbxdesc3KeyPress
        end
        object cbxdesc4: TComboBox
          Left = 392
          Top = 64
          Width = 157
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 6
          Text = 'CBXDESC4'
          OnExit = cbxdesc4Exit
          OnKeyPress = cbxdesc4KeyPress
        end
        object ediid1: TEdit
          Left = 5
          Top = 22
          Width = 186
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          Text = 'EDIID1'
          OnExit = ediid1Exit
          OnKeyPress = ediid1KeyPress
        end
        object ediid2: TEdit
          Left = 193
          Top = 22
          Width = 196
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'EDIID2'
          OnKeyPress = ediid2KeyPress
        end
        object cbxtipo: TComboBox
          Left = 551
          Top = 23
          Width = 171
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 3
          Text = 'CBXTIPO'
          OnKeyPress = cbxtipoKeyPress
        end
        object CBXTIPO_COB: TComboBox
          Left = 551
          Top = 64
          Width = 171
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 7
          Text = 'CBXTIPO_COB'
          OnKeyPress = CBXTIPO_COBKeyPress
        end
        object cbxdesc5: TComboBox
          Left = 5
          Top = 105
          Width = 383
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 8
          Text = 'CBXDESC5'
          OnExit = cbxdesc5Exit
          OnKeyPress = cbxdesc5KeyPress
        end
        object cbxdesc6: TComboBox
          Left = 392
          Top = 105
          Width = 157
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 9
          Text = 'CBXDESC6'
          OnExit = cbxdesc6Exit
          OnKeyPress = cbxdesc6KeyPress
        end
        object cbxdesc7: TComboBox
          Left = 551
          Top = 105
          Width = 171
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 10
          Text = 'CBXDESC7'
          OnExit = cbxdesc7Exit
          OnKeyPress = cbxdesc7KeyPress
        end
        object cbxdesc8: TComboBox
          Left = 5
          Top = 147
          Width = 383
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 11
          Text = 'CBXDESC8'
          OnExit = cbxdesc8Exit
          OnKeyPress = cbxdesc8KeyPress
        end
        object cbxdesc9: TComboBox
          Left = 392
          Top = 147
          Width = 157
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 12
          Text = 'CBXDESC9'
          OnExit = cbxdesc9Exit
          OnKeyPress = cbxdesc9KeyPress
        end
        object cbxdesc10: TComboBox
          Left = 551
          Top = 147
          Width = 171
          Height = 21
          CharCase = ecUpperCase
          ItemHeight = 13
          TabOrder = 13
          Text = 'CBXDESC10'
          OnExit = cbxdesc10Exit
          OnKeyPress = cbxdesc10KeyPress
        end
      end
      object pctficha: TPageControl
        Left = 1
        Top = 177
        Width = 1041
        Height = 344
        ActivePage = tbsDadosG
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MultiLine = True
        ParentFont = False
        TabOrder = 1
        object tbsDadosG: TTabSheet
          Caption = 'DADOS &GERAIS'
          object Bevel5: TBevel
            Left = 0
            Top = 0
            Width = 1033
            Height = 316
            Align = alClient
          end
          object Label4: TLabel
            Left = 8
            Top = 7
            Width = 42
            Height = 13
            Caption = 'C'#211'DIGO'
            FocusControl = cbxncli
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 8
            Top = 49
            Width = 60
            Height = 13
            Caption = 'ENDERE'#199'O'
            FocusControl = ediendent
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 364
            Top = 49
            Width = 40
            Height = 13
            Caption = 'COMPL.'
            FocusControl = edicomplent
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 165
            Top = 90
            Width = 40
            Height = 13
            Caption = 'CIDADE'
            FocusControl = edicidadeent
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 8
            Top = 90
            Width = 41
            Height = 13
            Caption = 'BAIRRO'
            FocusControl = edibairroent
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 364
            Top = 90
            Width = 21
            Height = 13
            Caption = 'CEP'
            FocusControl = edicepent
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 8
            Top = 130
            Width = 63
            Height = 13
            Caption = 'TELEFONES'
            FocusControl = editelefones
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 364
            Top = 130
            Width = 52
            Height = 13
            Caption = 'CONTATO'
            FocusControl = edicontato
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 364
            Top = 7
            Width = 52
            Height = 13
            Caption = 'FANTASIA'
            FocusControl = cbxncli
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 72
            Top = 7
            Width = 32
            Height = 13
            Caption = 'NOME'
            FocusControl = cbxncli
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 304
            Top = 49
            Width = 24
            Height = 13
            Caption = 'NRO'
            FocusControl = edinroent
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object cbxncli: TDBLookupComboBox
            Left = 71
            Top = 23
            Width = 285
            Height = 21
            DataField = 'ncli'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 1
            OnExit = cbxncliExit
            OnKeyPress = cbxncliKeyPress
          end
          object cbxnfant: TDBLookupComboBox
            Left = 364
            Top = 23
            Width = 212
            Height = 21
            DataField = 'nfant'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 3
            OnExit = cbxnfantExit
            OnKeyPress = cbxnfantKeyPress
          end
          object ediendent: TDBEdit
            Left = 8
            Top = 65
            Width = 289
            Height = 21
            CharCase = ecUpperCase
            DataSource = frmDados.Dts_Clientes
            TabOrder = 5
            OnKeyPress = ediendentKeyPress
          end
          object edicomplent: TDBEdit
            Left = 364
            Top = 65
            Width = 213
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COMPLENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 7
            OnKeyPress = edicomplentKeyPress
          end
          object edicidadeent: TDBEdit
            Left = 166
            Top = 106
            Width = 187
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CIDADEENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 9
            OnKeyPress = edicidadeentKeyPress
          end
          object edibairroent: TDBEdit
            Left = 8
            Top = 106
            Width = 149
            Height = 21
            CharCase = ecUpperCase
            DataField = 'BAIRROENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 8
            OnKeyPress = edibairroentKeyPress
          end
          object edicepent: TDBEdit
            Left = 364
            Top = 106
            Width = 89
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CEPENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 10
            OnKeyPress = edicepentKeyPress
          end
          object editelefones: TDBEdit
            Left = 56
            Top = 148
            Width = 297
            Height = 21
            CharCase = ecUpperCase
            DataField = 'TELEFONES'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 12
            OnKeyPress = editelefonesKeyPress
          end
          object edicontato: TDBEdit
            Left = 364
            Top = 148
            Width = 150
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CONTATO'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 13
            OnKeyPress = edicontatoKeyPress
          end
          object edincli: TDBEdit
            Left = 588
            Top = 15
            Width = 109
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NOME'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 2
            OnChange = edincliChange
            OnExit = edincliExit
            OnKeyPress = edincliKeyPress
          end
          object edinfant: TDBEdit
            Left = 591
            Top = 51
            Width = 82
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FANTASIA'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 4
            OnKeyPress = edinfantKeyPress
          end
          object ediccli: TDBEdit
            Left = 8
            Top = 23
            Width = 58
            Height = 21
            DataField = 'CCLI'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 0
            OnKeyPress = DBEdit1KeyPress
          end
          object edidddfs: TDBEdit
            Left = 8
            Top = 148
            Width = 36
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DDDFS'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 11
            OnKeyPress = editelefonesKeyPress
          end
          object edinroent: TDBEdit
            Left = 304
            Top = 65
            Width = 49
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NROENT'
            DataSource = frmDados.Dts_Clientes
            TabOrder = 6
            OnKeyPress = ediendentKeyPress
          end
        end
        object TbsProdutos: TTabSheet
          Caption = '&PRODUTOS'
          ImageIndex = 1
          OnShow = TbsProdutosShow
          object Bevel4: TBevel
            Left = 0
            Top = 0
            Width = 1033
            Height = 316
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
            Top = 192
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'lbltotal'
          end
          object Label16: TLabel
            Left = 522
            Top = 192
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
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 142
            Top = 2
            Width = 26
            Height = 13
            Caption = 'Qtde.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 181
            Top = 2
            Width = 23
            Height = 13
            Caption = 'Und.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 210
            Top = 2
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 522
            Top = 3
            Width = 52
            Height = 13
            Caption = 'Pr. Unit'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 626
            Top = 2
            Width = 24
            Height = 13
            Caption = 'Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lblnuni: TLabel
            Left = 87
            Top = 275
            Width = 30
            Height = 13
            Caption = 'lblnuni'
          end
          object Label29: TLabel
            Left = 134
            Top = 187
            Width = 76
            Height = 13
            Caption = 'Tipo de Material'
            Visible = False
          end
          object spdalterarparc: TSpeedButton
            Left = 4
            Top = 184
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
            Top = 184
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
            Top = 184
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
          object lbltotalc: TLabel
            Left = 609
            Top = 214
            Width = 36
            Height = 13
            Alignment = taRightJustify
            Caption = 'lbltotalc'
            Visible = False
          end
          object dbgdvenda: TDBGrid
            Left = 2
            Top = 43
            Width = 691
            Height = 134
            DataSource = frmDados.Dst_dVenda
            Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 6
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = dbgdvendaDrawColumnCell
            OnDblClick = dbgdvendaDblClick
            OnKeyDown = dbgdvendaKeyDown
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
                Title.Caption = 'Und.'
                Width = 38
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
            OnChange = edicproChange
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
            Left = 133
            Top = 271
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
        object tbsmaodeobra: TTabSheet
          Caption = '&M'#195'O-DE-OBRA'
          ImageIndex = 2
          OnShow = tbsmaodeobraShow
          object Bevel6: TBevel
            Left = 0
            Top = 0
            Width = 1033
            Height = 316
            Align = alClient
          end
          object Label14: TLabel
            Left = 14
            Top = 34
            Width = 33
            Height = 13
            Caption = 'C'#243'digo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object spdconsultaprodutoM: TSpeedButton
            Left = 84
            Top = 51
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
            OnClick = spdconsultaprodutoMClick
          end
          object Label15: TLabel
            Left = 150
            Top = 34
            Width = 26
            Height = 13
            Caption = 'Qtde.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 183
            Top = 34
            Width = 48
            Height = 13
            Caption = 'Descri'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 366
            Top = 35
            Width = 52
            Height = 13
            Caption = 'Pr. Unit'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 457
            Top = 34
            Width = 24
            Height = 13
            Caption = 'Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object spdalterarparcM: TSpeedButton
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
            OnClick = spdalterarparcMClick
          end
          object spdsalvarprodM: TSpeedButton
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
            OnClick = spdsalvarprodMClick
          end
          object spdexcluirparcM: TSpeedButton
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
            OnClick = spdexcluirparcMClick
          end
          object lbltittotal: TLabel
            Left = 493
            Top = 188
            Width = 62
            Height = 13
            Caption = 'Total M'#243'dulo'
          end
          object lbltotalM: TLabel
            Left = 632
            Top = 188
            Width = 39
            Height = 13
            Alignment = taRightJustify
            Caption = 'lbltotalM'
          end
          object Label32: TLabel
            Left = 14
            Top = 10
            Width = 35
            Height = 13
            Caption = 'M'#243'dulo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 489
            Top = 34
            Width = 55
            Height = 13
            Caption = 'Funcion'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label33: TLabel
            Left = 576
            Top = 34
            Width = 35
            Height = 13
            Caption = '% Com.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label34: TLabel
            Left = 626
            Top = 34
            Width = 42
            Height = 13
            Caption = 'Vlr. Com.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbltotalMG: TLabel
            Left = 625
            Top = 212
            Width = 47
            Height = 13
            Alignment = taRightJustify
            Caption = 'lbltotalMG'
          end
          object Label36: TLabel
            Left = 493
            Top = 212
            Width = 52
            Height = 13
            Caption = 'Total Geral'
          end
          object cbxnmodulo: TDBLookupComboBox
            Left = 72
            Top = 8
            Width = 233
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
          object edicproM: TEdit
            Left = 14
            Top = 51
            Width = 69
            Height = 21
            TabOrder = 1
            Text = 'edicpro'
            OnChange = edicproMChange
            OnExit = edicproMExit
            OnKeyPress = edicproKeyPress
          end
          object ediqtdeM: TEdit
            Left = 108
            Top = 51
            Width = 72
            Height = 21
            MaxLength = 14
            TabOrder = 2
            Text = 'ediqtde'
            OnExit = ediqtdeMExit
            OnKeyPress = ediqtdeMKeyPress
          end
          object edinproM: TEdit
            Left = 183
            Top = 51
            Width = 177
            Height = 21
            TabOrder = 3
            Text = 'edinpro'
            OnKeyPress = edinproKeyPress
          end
          object ediprveM: TEdit
            Left = 362
            Top = 51
            Width = 59
            Height = 21
            MaxLength = 15
            TabOrder = 4
            Text = 'ediprve'
            OnEnter = ediprveEnter
            OnExit = ediprveMExit
            OnKeyPress = ediprveMKeyPress
          end
          object edisubtotalM: TEdit
            Left = 423
            Top = 51
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
            Top = 75
            Width = 695
            Height = 102
            DataSource = frmDados.Dts_dMobra
            Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 9
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = dbgdvendaDrawColumnCell
            OnDblClick = dbgdvendaDblClick
            OnKeyDown = dbgdvendaKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'CDESC'
                Width = 91
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDE'
                Title.Caption = 'Qtde'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NDESC'
                Width = 181
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Caption = 'Pr. Unit'#225'rio'
                Width = 59
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SUBTOTAL'
                Title.Caption = 'Subtotal'
                Width = 63
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nfunc'
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PCOM'
                Width = 46
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VCOM'
                Width = 51
                Visible = True
              end>
          end
          object cbxnomefuns: TDBLookupComboBox
            Left = 487
            Top = 51
            Width = 84
            Height = 21
            DataField = 'COD5'
            DataSource = frmDados.Dts_Temp
            KeyField = 'CODIGO'
            ListField = 'NOME'
            ListSource = frmDados.Dst_Funcionarios
            NullValueKey = 46
            TabOrder = 6
            OnExit = cbxnomefunsExit
            OnKeyPress = cbxnomefunsKeyPress
          end
          object edipcomM: TEdit
            Left = 573
            Top = 51
            Width = 43
            Height = 21
            TabOrder = 7
            Text = 'edipcomM'
            OnExit = edipcomMExit
            OnKeyPress = edipcomMKeyPress
          end
          object edivcomM: TEdit
            Left = 619
            Top = 51
            Width = 53
            Height = 21
            TabOrder = 8
            Text = 'edivcomM'
            OnKeyDown = edivcomMKeyDown
            OnKeyPress = edivcomMKeyPress
          end
        end
        object tbsoutrasinf: TTabSheet
          Caption = '&OUTRAS INF.'
          ImageIndex = 3
          object Bevel7: TBevel
            Left = 0
            Top = 0
            Width = 1033
            Height = 316
            Align = alClient
          end
          object lbldesc11: TLabel
            Left = 5
            Top = 16
            Width = 41
            Height = 13
            Caption = 'DESC11'
            FocusControl = edidesc11
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc12: TLabel
            Left = 208
            Top = 16
            Width = 41
            Height = 13
            Caption = 'DESC12'
            FocusControl = edidesc12
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc13: TLabel
            Left = 432
            Top = 16
            Width = 41
            Height = 13
            Caption = 'DESC13'
            FocusControl = edidesc13
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc14: TLabel
            Left = 5
            Top = 40
            Width = 41
            Height = 13
            Caption = 'DESC14'
            FocusControl = edidesc14
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc15: TLabel
            Left = 208
            Top = 40
            Width = 41
            Height = 13
            Caption = 'DESC15'
            FocusControl = edidesc15
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc16: TLabel
            Left = 432
            Top = 40
            Width = 41
            Height = 13
            Caption = 'DESC16'
            FocusControl = edidesc16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc17: TLabel
            Left = 5
            Top = 64
            Width = 41
            Height = 13
            Caption = 'DESC17'
            FocusControl = edidesc17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc18: TLabel
            Left = 208
            Top = 64
            Width = 41
            Height = 13
            Caption = 'DESC18'
            FocusControl = edidesc18
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc19: TLabel
            Left = 432
            Top = 64
            Width = 41
            Height = 13
            Caption = 'DESC19'
            FocusControl = edidesc19
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc20: TLabel
            Left = 5
            Top = 88
            Width = 41
            Height = 13
            Caption = 'DESC20'
            FocusControl = edidesc20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc21: TLabel
            Left = 208
            Top = 88
            Width = 41
            Height = 13
            Caption = 'DESC21'
            FocusControl = edidesc21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc22: TLabel
            Left = 432
            Top = 88
            Width = 41
            Height = 13
            Caption = 'DESC22'
            FocusControl = edidesc22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc23: TLabel
            Left = 5
            Top = 112
            Width = 41
            Height = 13
            Caption = 'DESC23'
            FocusControl = edidesc23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc24: TLabel
            Left = 208
            Top = 112
            Width = 41
            Height = 13
            Caption = 'DESC24'
            FocusControl = edidesc24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc25: TLabel
            Left = 432
            Top = 112
            Width = 41
            Height = 13
            Caption = 'DESC25'
            FocusControl = edidesc25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc26: TLabel
            Left = 5
            Top = 137
            Width = 41
            Height = 13
            Caption = 'DESC26'
            FocusControl = edidesc26
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc27: TLabel
            Left = 208
            Top = 137
            Width = 41
            Height = 13
            Caption = 'DESC27'
            FocusControl = edidesc27
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc28: TLabel
            Left = 432
            Top = 137
            Width = 41
            Height = 13
            Caption = 'DESC28'
            FocusControl = edidesc28
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc29: TLabel
            Left = 5
            Top = 159
            Width = 41
            Height = 13
            Caption = 'DESC29'
            FocusControl = edidesc29
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc30: TLabel
            Left = 208
            Top = 159
            Width = 41
            Height = 13
            Caption = 'DESC30'
            FocusControl = edidesc30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc31: TLabel
            Left = 432
            Top = 159
            Width = 41
            Height = 13
            Caption = 'DESC31'
            FocusControl = edidesc31
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc32: TLabel
            Left = 5
            Top = 184
            Width = 41
            Height = 13
            Caption = 'DESC32'
            FocusControl = edidesc32
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc33: TLabel
            Left = 208
            Top = 184
            Width = 41
            Height = 13
            Caption = 'DESC33'
            FocusControl = edidesc33
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc34: TLabel
            Left = 432
            Top = 184
            Width = 41
            Height = 13
            Caption = 'DESC34'
            FocusControl = edidesc34
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc35: TLabel
            Left = 5
            Top = 210
            Width = 41
            Height = 13
            Caption = 'DESC35'
            FocusControl = edidesc35
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc36: TLabel
            Left = 208
            Top = 210
            Width = 41
            Height = 13
            Caption = 'DESC36'
            FocusControl = edidesc36
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc37: TLabel
            Left = 432
            Top = 210
            Width = 41
            Height = 13
            Caption = 'DESC37'
            FocusControl = edidesc37
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object lbldesc38: TLabel
            Left = 5
            Top = 233
            Width = 41
            Height = 13
            Caption = 'DESC38'
            FocusControl = edidesc38
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object edidesc11: TDBEdit
            Left = 88
            Top = 12
            Width = 113
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC11'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 0
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc12: TDBEdit
            Left = 304
            Top = 12
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC12'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 1
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc13: TDBEdit
            Left = 520
            Top = 12
            Width = 137
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC13'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 2
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc14: TDBEdit
            Left = 88
            Top = 36
            Width = 113
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC14'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 3
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc15: TDBEdit
            Left = 304
            Top = 36
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC15'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 4
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc16: TDBEdit
            Left = 520
            Top = 36
            Width = 137
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC16'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 5
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc17: TDBEdit
            Left = 88
            Top = 60
            Width = 113
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC17'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 6
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc18: TDBEdit
            Left = 304
            Top = 60
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC18'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 7
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc19: TDBEdit
            Left = 520
            Top = 60
            Width = 137
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC19'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 8
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc20: TDBEdit
            Left = 88
            Top = 84
            Width = 113
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC20'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 9
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc21: TDBEdit
            Left = 304
            Top = 84
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC21'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 10
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc22: TDBEdit
            Left = 520
            Top = 84
            Width = 137
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC22'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 11
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc23: TDBEdit
            Left = 88
            Top = 108
            Width = 113
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC23'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 12
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc24: TDBEdit
            Left = 304
            Top = 108
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC24'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 13
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc25: TDBEdit
            Left = 520
            Top = 108
            Width = 137
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC25'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 14
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc26: TDBEdit
            Left = 88
            Top = 132
            Width = 113
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC26'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 15
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc27: TDBEdit
            Left = 304
            Top = 132
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC27'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 16
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc28: TDBEdit
            Left = 520
            Top = 132
            Width = 137
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC28'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 17
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc29: TDBEdit
            Left = 88
            Top = 156
            Width = 113
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC29'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 18
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc30: TDBEdit
            Left = 304
            Top = 156
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC30'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 19
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc31: TDBEdit
            Left = 520
            Top = 156
            Width = 140
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC31'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 20
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc32: TDBEdit
            Left = 88
            Top = 180
            Width = 113
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC32'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 21
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc33: TDBEdit
            Left = 304
            Top = 180
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC33'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 22
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc34: TDBEdit
            Left = 520
            Top = 180
            Width = 137
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC34'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 23
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc35: TDBEdit
            Left = 88
            Top = 204
            Width = 113
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC35'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 24
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc36: TDBEdit
            Left = 304
            Top = 204
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC36'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 25
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc37: TDBEdit
            Left = 520
            Top = 204
            Width = 137
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC37'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 26
            OnKeyPress = edidesc11KeyPress
          end
          object edidesc38: TDBEdit
            Left = 88
            Top = 228
            Width = 113
            Height = 21
            CharCase = ecUpperCase
            DataField = 'DESC38'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 27
            OnKeyPress = edidesc11KeyPress
          end
        end
        object tbsimg: TTabSheet
          Caption = '&FOTOS'
          ImageIndex = 4
          OnShow = tbsimgShow
          object spdimportarfig: TSpeedButton
            Left = 527
            Top = 10
            Width = 95
            Height = 50
            Hint = 'Importar Figura'
            Caption = 'Importar'
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
            OnClick = spdimportarfigClick
          end
          object spdapagarfig: TSpeedButton
            Left = 527
            Top = 66
            Width = 95
            Height = 50
            Hint = 'Apagar Figura'
            Caption = 'Apagar'
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
            OnClick = spdapagarfigClick
          end
          object spdampliafig: TSpeedButton
            Left = 527
            Top = 123
            Width = 95
            Height = 50
            Hint = 'Ampliar'
            Caption = 'Ampliar'
            Flat = True
            Glyph.Data = {
              FE0A0000424DFE0A00000000000036000000280000001E0000001E0000000100
              180000000000C80A0000C40E0000C40E00000000000000000000D5D5D5DADADA
              D8D8D8DCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000DEDEDED3D3D3E6E6E6D6
              D6D6D8D8D8E3E3E3D5D5D5EAEAEAD6D6D6E9E9E9D5D5D5E8E8E8E2E2E2E8E8E8
              D3D3D3E0E0E0E0E0E0D9D9D9D4D4D4E6E6E6D5D5D5E6E6E6DFDFDFE2E2E2D4D4
              D4DBDBDBE2E2E2C4C4C4ADADADE6E6E60000E0E0E0E3E3E3E8E8E8D7D7D7D5D5
              D5E0E0E0D4D4D4DBDBDBE5E5E5EDEDEDDCDCDCE9E9E9E9E9E9E3E3E3D2D2D2E4
              E4E4D4D4D4E5E5E5DEDEDEE8E8E8D7D7D7E9E9E9D9D9D9CFCFCFD1D1D1E4E4E4
              7D7B7A898786A7A5A5ABA9A90000E7E7E7DDDDDDE3E3E3E6E6E6E5E5E5DEDEDE
              DEDEDEE4E4E4D1D1D1DEDEDED3D3D3DEDEDED2D2D2E7E7E7DFDFDFD6D6D6E5E5
              E5DBDBDBD2D2D2E2E2E2D5D5D5DDDDDDE7E7E7DADADAE7E7E7C6C6C686848390
              8E8DD9D7D7C9C7C70000E7E7E7E9E9E9D1D1D1E7E7E7E7E7E7DADADAEEEEEED6
              D6D6E4E4E4D2D2D2E6E6E6DDDDDDE0E0E0D5D5D5E3E3E3E0E0E0DFDFDFE6E6E6
              E4E4E4D5D5D5E7E7E7DCDCDCDBDBDBE7E7E7BEBCBC858383949292D3D1D1C1C1
              C1D7D7D70000EAEAEAE8E8E8DADADAD7D7D7D5D5D5D5D5D5B8B8B89F9F9FA0A0
              A0AAAAAABBBBBBD1D1D1A3A3A3A7A7A79C9C9CB8B8B8C2C2C2BEBEBE9B9B9BA6
              A6A6B7B7B7D2D2D2BCBCBCA6A6A67D7B7B8B8989BEBCBCEBE9E9C8C8C8E8E8E8
              0000E4E4E4E5E5E5E3E3E3D5D5D5E4E4E47A7A7A5A5A5A5B5B5B525252777777
              7474745B5B5B5353535555555757576767677F7F7F4E4E4E5757575252527F7F
              7F7E7E7E5A5A5A5D5D5D949292A5A3A3F2F0F0A4A2A2E6E6E6D9D9D90000E5E5
              E5E6E6E6E8E8E8E1E1E1515151E8E8E8E4E2E1F2F0EFE1DFDEEEECEBDCDAD9ED
              EBEAECEAE9EEECEBD7D5D5D2D0D0BDBBBBBCBABACFCDCDEDEBEBD9D7D7E9E7E6
              868483807E7DEAE8E7B4B2B1BDBDBDD9D9D9F0F0F0E6E6E60000E4E4E4E6E6E6
              DADADAE6E6E65F5F5FDADADAEDEBEAEFEDECEBE9E8E8E6E5EBE9E8D9D7D6D5D3
              D2AFADAC9F9D9D5351514E4C4C5C5A5A8F8D8DACAAAAEDEBEBB4B2B18A88879A
              9897B3B1B0545251CBCBCBDADADAE6E6E6E0E0E00000E2E2E2E4E4E4D5D5D5E1
              E1E1505050F7F7F7DFDDDCDAD8D7EDEBEADFDDDCE8E6E5EDEBEA999394AFAAAC
              9E9B97B4B1ADA5A29EABA7A6A9ABAC5D5F609395966D6B6BA2A0A0D6D4D4D7D5
              D45E5C5BBBBBBBE7E7E7D6D6D6E5E5E50000DEDEDEE0E0E0DFDFDFD8D8D8E6E6
              E6DBDBDBECEAE9EDEBEAE2E0DFE3E1E0F0EEED615F5EDCD7CEECE3D9F6EADEE2
              D6CAFAEBE2E5DAD2F0EDE9B2B0AF878584C0BEBEB1AFAFE1DFDFF4F2F1595756
              DFDFDFD7D7D7E4E4E4D7D7D70000D8D8D8DBDBDBE9E9E9D5D5D5EDEDEDDFDFDF
              EDEBEAE5E3E2EBE9E8D9D7D6D9D7D6C3C1C0E4DAD0EDE0D2F8E8DBE9D9CCFFF3
              E6F0E4DAF2EEE9E0DDD99F9C98A09E9E9F9D9DD4D2D2EBE9E8A9A7A6DCDCDCDD
              DDDDDDDDDDD5D5D50000D3D3D3D6D6D6E5E5E5E5E5E5484848D3D3D3ECEAE9EE
              ECEBDFDDDCE3E1E0A5A4A6C2BCB5E7D7C7F6E6D6F9E7D6E7D5C4FAE8D7E5D5C4
              EBDFD3ECE2D8F4ECE59A96917775747C7C7CE9E7E79E9C9CCFCFCFD5D5D5E8E8
              E8DADADA0000CFCFCFD2D2D2DFDFDFEAEAEA535353ECECECE3E1E0E0DEDDF1EF
              EEB4B0AF999594FAF0E6F5E5D5F5E5D5EDD8C3FAE5D0ECD7C2F9E6D1F7E8D8F6
              E9DBF3E9DFF6F2ED8785847B7B7BD7D5D5585656BDBDBDE5E5E5D6D6D6E6E6E6
              0000DADADAD7D7D7D3D3D3DFDFDF545454EFEFEFDEDCDBE6E4E3E6E4E3BAB8B7
              C3BCB9FDF2EAF6E4D3FFEFDDF1DAC4FFEAD4EDD5BFF8E4D2DDCFBDF9ECDCE9E0
              D3FAF3EA878486838181DCDADA585656C1C1C1E4E4E4E1E1E1E9E9E90000DBDB
              DBD9D9D9E4E4E4D2D2D25C5C5CD9D9D9EFEDECECEAE9E5E3E2A8A9A7D7CECAEB
              DFD9E5D5C4F4E0CEFAE2CCE9D1BBFCE4CEEED9C4F6E4D3E1D2C2F4E8DCECE3DA
              848183868484E8E6E6585656C9C9C9D7D7D7E4E4E4DCDCDC0000DEDEDEDBDBDB
              E7E7E7DBDBDBD1D1D1EAEAEADBD9D8E9E7E6F0EEEDF7F8F6CDC4C0FBEFE9FAED
              DFFFF4E4EDD5BFFDE5CFEFD7C1F9E1C9F2DCCAF9E6D7E3D3C7FAF1E8AEABADA8
              A6A6D5D3D35A5858D2D2D2E4E4E4E3E3E3E6E6E60000E2E2E2DFDFDFE0E0E0E6
              E6E6DFDFDFECECECEBE9E8DEDCDBF2F0EFDFDDDCD7D0CDEFE6DDFFF3E9EADED4
              FAEBE2FDEDDDF0D9C3FFF1E2F9E8DBEFDFD2FCF1E3F4EDE4A9A8AAB4B1B3EBE9
              E9A8A6A6CDCDCDE8E8E8D3D3D3DDDDDD0000E5E5E5E2E2E2CDCDCDDDDDDD5555
              55F1F1F1D7D5D4DDDBDAF0EEEDF5F3F2B0A9A6F2E9E0FDF1E7F7EBE1EADED4F3
              E2D5EFD8C2FFEFE2FFF0E4FEF0E4F7EFE2FFFFF8ABAAAE9F9A9CE7E5E5B1AFAF
              C0C0C0E9E9E9D6D6D6E5E5E50000E7E7E7E5E5E5DCDCDCE3E3E35D5D5DDBDBDB
              F1EFEEEDEBEADCDAD9DBDCDAFFFFFEC4BABAE6DCD2F4E8DCFAE8D7E1D1C1FEEF
              E6F0E6DCFEF2E6E6DCD2F7EFE8B1AFAEB3B1B0A19F9EE8E6E5565453CACACADA
              DADAE7E7E7D7D7D70000E8E8E8E7E7E7E8E8E8D4D4D4555555EBEBEBE0DEDDDD
              DBDAEDEBEAE3E1E0FFFFFECDCBCAF3E9DFE2D6CAF3E3D6FDEFE3EBE0D8FCF2E8
              FFF5EBFDF3ECAEA7A4C0BEBDA5A3A2D8D6D5DEDCDB5B5958B9B9B9E7E7E7D6D6
              D6E4E4E40000E9E9E9E8E8E8E6E6E6DDDDDD585858E4E4E4E3E1E0E9E7E6DBD9
              D8EAE8E7D3D4D2FDFFFEC7BDB3E7DBCFF4E6DAF6E9E1FAEFEBEDE3D9F6EDE4C7
              C1BCBBB7B6B3B1B0E4E2E1DFDDDCDEDCDB565453C9C9C9D6D6D6E8E8E8E5E5E5
              0000EBEBEBEAEAEADFDFDFE7E7E7D3D3D3EBEBEBE2E0DFDFDDDCF0EEEDE8E6E5
              EBE9E8EFEDECFFFFFEE9E7E6EFECE87976725F5C589B9894DBD9D8CBC9C8E2E0
              DFF6F4F3E0DEDDDDDBDADFDDDCB0AEADD0D0D0EBEBEBD1D1D1E5E5E50000E5E5
              E5E6E6E6D8D8D8E4E4E4D9D9D9DFDFDFEAE8E7EFEDECDEDCDBF0EEEDD8D6D5E6
              E4E3E2E0DFF0EEEDCFD2D0C2C5C3DADDDBBCBAB9DBD9D8E7E5E4E2E0DFE3E1E0
              ECEAE9ECEAE9E5E3E2A19F9EDCDCDCD6D6D6E6E6E6DEDEDE0000DCDCDCDFDFDF
              DADADAD5D5D55F5F5FD4D4D4ECEAE9E2E0DFEEECEBDBD9D8EFEDECD5D3D2E6E4
              E3D9D7D6EDEBEAE4E2E1E5E3E2EEECEBEEECEBDBD9D8EEECEBE3E1E0E3E1E0EF
              EDECF7F5F4A09E9DC5C5C5E6E6E6D9D9D9D5D5D50000D6D6D6DADADAE8E8E8DC
              DCDC515151E4E4E4E5E3E2F4F2F1E1DFDEECEAE9DEDCDBEFEDECEAE8E7EBE9E8
              E0DEDDF5F3F2E2E0DFE5E3E2DFDDDCEEECEBDBD9D8E9E7E6E3E1E0DFDDDCD7D5
              D4575554BCBCBCDFDFDFE3E3E3E8E8E80000D4D4D4D8D8D8E7E7E7E4E4E45A5A
              5A5A5A5AF8F6F5605E5D5D5B5A6765645C5A59DCDAD95C5A596866656A686762
              605FC5C3C2D5D3D2615F5E6866655F5D5C696766F0EEEDE4E2E16A6867555352
              DCDCDCD4D4D4E7E7E7DDDDDD0000D8D8D8D9D9D9DBDBDBE7E7E7D9D9D9E7E7E7
              D9D9D9E5E5E5D8D8D8E6E6E6D8D8D8E6E6E6E2E2E2E6E6E6CFCFCFE3E3E3DDDD
              DDDDDDDDD3D3D3E2E2E2D4D4D4E6E6E6E4E4E4D3D3D3D6D6D6DBDBDBDFDFDFD1
              D1D1E5E5E5E8E8E80000DEDEDEDBDBDBD9D9D9D8D8D8DADADAE6E6E6E8E8E8DF
              DFDFD9D9D9D3D3D3DBDBDBE4E4E4ECECECDEDEDEDFDFDFE6E6E6D8D8D8DDDDDD
              E6E6E6E5E5E5E2E2E2D8D8D8D6D6D6D8D8D8E5E5E5E8E8E8E5E5E5D9D9D9D6D6
              D6DFDFDF0000E2E2E2DEDEDED8D8D8D4D4D4D6D6D6DCDCDCE5E5E5EBEBEBE9E9
              E9E8E8E8E8E8E8E6E6E6E3E3E3DFDFDFDCDCDCDADADAD0D0D0D3D3D3D9D9D9DE
              DEDEE2E2E2E5E5E5E6E6E6E6E6E6E8E8E8ECECECE3E3E3E3E3E3E1E1E1D1D1D1
              0000}
            ParentShowHint = False
            ShowHint = True
            OnClick = spdampliafigClick
          end
          object dbgimg: TDBCtrlGrid
            Left = 0
            Top = 9
            Width = 520
            Height = 240
            AllowDelete = False
            AllowInsert = False
            ColCount = 3
            Color = clWhite
            DataSource = frmDados.Dts_ImgEquipCli
            PanelBorder = gbNone
            PanelHeight = 120
            PanelWidth = 168
            ParentColor = False
            TabOrder = 0
            TabStop = False
            RowCount = 2
            OnDblClick = dbgimgDblClick
            OnPaintPanel = dbgimgPaintPanel
            object imgfoto1: TImage
              Left = 1
              Top = 3
              Width = 165
              Height = 114
              Stretch = True
            end
          end
        end
        object tbsobs: TTabSheet
          Caption = 'OBS. &1'
          ImageIndex = 6
          object mmoobs: TDBMemo
            Left = 8
            Top = 8
            Width = 529
            Height = 217
            DataField = 'OBS'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 0
          end
        end
        object tbsobs2: TTabSheet
          Caption = 'OBS. &2'
          ImageIndex = 6
          object mmoobs1: TDBMemo
            Left = 8
            Top = 8
            Width = 529
            Height = 217
            DataField = 'OBS1'
            DataSource = frmDados.Dts_sVenda
            TabOrder = 0
          end
        end
        object TabSheet1: TTabSheet
          Caption = 'SUBSTITUI'#199#195'O'
          ImageIndex = 7
          object Label47: TLabel
            Left = 32
            Top = 8
            Width = 98
            Height = 24
            Caption = 'PRODUTO:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBText12: TDBText
            Left = 173
            Top = 10
            Width = 497
            Height = 27
            DataField = 'NPRO'
            DataSource = frmDados.Dst_dVenda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 48
            Top = 45
            Width = 101
            Height = 13
            Caption = 'Substitui'#231#227'o Material:'
          end
          object Label49: TLabel
            Left = 51
            Top = 68
            Width = 54
            Height = 13
            Caption = 'Altera'#231#227'o +'
          end
          object Label50: TLabel
            Left = 52
            Top = 93
            Width = 51
            Height = 13
            Caption = 'Altera'#231#227'o -'
          end
          object DBEdit1: TDBEdit
            Left = 176
            Top = 40
            Width = 345
            Height = 21
            DataField = 'SUBS'
            DataSource = frmDados.Dst_dVenda
            TabOrder = 0
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit2: TDBEdit
            Left = 176
            Top = 64
            Width = 153
            Height = 21
            DataField = 'ALTMAIS'
            DataSource = frmDados.Dst_dVenda
            TabOrder = 1
            OnKeyPress = DBEdit2KeyPress
          end
          object DBEdit3: TDBEdit
            Left = 176
            Top = 88
            Width = 153
            Height = 21
            DataField = 'ALTMENOS'
            DataSource = frmDados.Dst_dVenda
            TabOrder = 2
            OnKeyPress = DBEdit3KeyPress
          end
          object BitBtn1: TBitBtn
            Left = 539
            Top = 65
            Width = 75
            Height = 25
            Caption = 'PR'#211'XIMO'
            TabOrder = 4
            OnClick = BitBtn1Click
          end
          object BitBtn2: TBitBtn
            Left = 539
            Top = 36
            Width = 75
            Height = 25
            Caption = 'ANTERIOR'
            TabOrder = 3
            OnClick = BitBtn2Click
          end
          object BitBtn3: TBitBtn
            Left = 539
            Top = 93
            Width = 75
            Height = 25
            Caption = 'SALVAR'
            TabOrder = 5
            OnClick = BitBtn3Click
          end
        end
      end
    end
    object pnllista: TPanel
      Left = 10
      Top = 8
      Width = 303
      Height = 35
      BevelOuter = bvNone
      TabOrder = 1
      object spdIncluir171: TSpeedButton
        Left = 3
        Top = 4
        Width = 95
        Height = 30
        Hint = 'Incluir'
        Caption = 'Incluir'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
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
        Left = 301
        Top = 4
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
        Left = 199
        Top = 4
        Width = 95
        Height = 30
        Hint = 'Excluir'
        Caption = 'Excluir'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
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
        Left = 101
        Top = 4
        Width = 95
        Height = 30
        Hint = 'Consulta e Altera'
        Caption = 'Alterar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
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
      object spdcodbar175: TSpeedButton
        Left = 338
        Top = 4
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
        Left = 375
        Top = 4
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
      Left = 838
      Top = 10
      Width = 201
      Height = 34
      BevelOuter = bvNone
      TabOrder = 2
      object sPdGravar: TSpeedButton
        Left = 2
        Top = 2
        Width = 90
        Height = 30
        Hint = 'Salvar'
        Caption = 'Salvar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
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
        OnClick = sPdGravarClick
      end
      object spdcancelar2310: TSpeedButton
        Left = 101
        Top = 2
        Width = 90
        Height = 30
        Hint = 'Cancelar'
        Caption = 'Cancelar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
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
    end
    object pnllocaliza: TPanel
      Left = 1
      Top = 49
      Width = 825
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
        Width = 825
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
    object dbgos: TDBGrid
      Left = 880
      Top = 240
      Width = 97
      Height = 42
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
      Left = 312
      Top = 8
      Width = 513
      Height = 35
      BevelOuter = bvNone
      TabOrder = 5
      object spdimp: TSpeedButton
        Left = 305
        Top = 2
        Width = 95
        Height = 30
        Hint = 'Visualizar Impress'#227'o Fechamento'
        Caption = 'Visualizar'
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
        Left = 3
        Top = 2
        Width = 95
        Height = 30
        Hint = 'Fecha Pedido'
        Caption = 'Lan'#231'ar'
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
        Left = 530
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
        Left = 526
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
        Left = 528
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
        Left = 103
        Top = 2
        Width = 95
        Height = 30
        Hint = 'Cancela Lan'#231'amento'
        Caption = 'Estornar'
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
      object SpeedButton1: TSpeedButton
        Left = 406
        Top = 2
        Width = 95
        Height = 30
        Hint = 'Relat'#243'rios'
        Caption = 'Relat'#243'rio'
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
      object spdfolha: TSpeedButton
        Left = 204
        Top = 2
        Width = 95
        Height = 30
        Hint = 'Folha de Rosto'
        Caption = 'Folha'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1A91D52497D6148BD2148BD2
          148BD2148BD2148BD2148BD2148BD2148BD2148BD2148BD2167EBDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF148BD262
          E6FF49DEFF49DEFF3CDDFF34DBFF34DBFF25D7FF1DD5FF1DD5FF0BD0FF76F4FF
          148BD2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF148BD27CEFFF6DE8FF6DE8FF62E6FF59E4FF4FE0FF49DEFF49DEFF3C
          DDFF30D8FF84F6FF148BD2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          E7E5E5BA726BB1625BC77F79148BD29BF6FF8DF1FF8DF1FF7CEFFF7CEFFF71EA
          FF71EAFF62E6FF59E4FF4FE0FF8EF7FF148BD2C77972B1625BAE6D67FFFFFFFF
          FFFFFFFFFFFFFFFFBA726BFFE7E5FFE7E5F1BEB5148BD2BAFFFFB0FDFFB0FDFF
          A2F9FF9BF6FF93F5FF93F5FF83F1FF7CEFFF72EDFF9DFDFF298BC9FFBFBBFFBF
          BBE29A94C68B86FFFFFFFFFFFFFFFFFFB1625BFFF0E7FFF0E7DC8D6C2490CF74
          B2CC74B2CC74B2CC71AEC971AEC96DA9C56DA9C569A4C069A4C0649DBA649DBA
          8C7473E7A093FFC3BEFFC3BEB1625BFFFFFFFFFFFFFFFFFFB1625BFFEFEEFFEF
          EEE1ADA0E29A7EE29A7EE29A7EE29A7EE0947AE0947AE0947ADE8C72DE8C72DB
          866CDB866CDB866CD5826AF8BDB8FFC7C3FFC7C3B1625BFFFFFFFFFFFFFFFFFF
          B1625BFFEFEEFFEFEEFFEFEEFFEFEEFFEFEEFFE7E5FFE7E5FFE7E5FFE7E5FFE7
          E5FFDFDEFFDFDEFFDBD9FFDBD9FFDBD9FFD4D1FFCCCCFFCCCCFFC7C3B1625BFF
          FFFFFFFFFFFFFFFFB1625BFFF7F6F0D4CED5826AD67E5AD67E5AD37854D37854
          D0714DD0714DCC6844CC6844CC6844CC6844CC6844CC6844CC6844D88E7BFFCC
          CCFFCCCCB1625BFFFFFFFFFFFFFFFFFFB1625BFFFFFFD58A6FF9AA7BF5A476F3
          9F72F0996BED9264EA8C5EE78558E37D51E07548DE7043DE6E41DE6E41DE6E41
          DE6E41D56A40E6AEA4FFCCCCB1625BFFFFFFFFFFFFFFFFFFB1625BFFFFFFDC92
          75F9B083F9B083F7A87AF5A476F19F71F0996BED9264EB8C5FE78558E37D51E0
          7548DE7043DE7043DE7043D56A40E6AEA4FFD4D1B1625BFFFFFFFFFFFFFFFFFF
          B1625BFFFFFFDC9275FDB689FDB689F9B083F9B083F7A87AF5A476F19F71F098
          6BED9264EA8C5EE78558E37D51E07548DE7043D56A40E6AEA4FFD7D6B1625BFF
          FFFFFFFFFFFFFFFFBA726BFFFFFFE0947AFFBB8CFFBB8CFDB689FDB689F9B083
          F9B083F7A87AF5A476F19F71F0986BED9264EA8C5EE78558E37D51DE7043E8B3
          AAF1BEB5B1625BFFFFFFFFFFFFFFFFFFE3D6D5B1625BD5826AFFBB8CFFBB8CFF
          BB8CFFBB8CFFBB8CFDB486FDB486F9AA7BF9AA7BF5A476F39F72F0986BED9264
          EB8C5DDF7E53F1BEB5B1625BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB162
          5BE0947ADE906DDE906DDE906DDC8A67DC8A67DC8A67DC8A67DC8A67D88561D8
          8561D7805CD7805CD7805CB1625BB1625BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFD6A671FFF7F6FFF7EFFFF7EFFFF7EFFFF3EAFFF3
          EAFFF3EAFFF3EAFFF3EAFFF3EAFDE8D6B58A59FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4BFFF7F6FFF7EFFFF7EF
          FFF7EFFFF3EAFFF3EAFFF3EAFFF3EAFFF3EAFFF3EAFDE8D6C88C4BFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC88C4BFF
          FDFAFFF7F6FFF7F6FFF7EFFFF7EFFFF7EFFFF7EFFFF7EFFFF7EFFFF7EFFEEDDF
          C88C4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFC88C4BFFFFFFFFFDFAFFFDFAFFFDFAFFF7F6FFF7F6FFF7F6F9EDE2D5
          9958E3AB6FCF914DBF8A51FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFC88C4BFFFFFFFFFFFFFFFFFFFFFDFAFFFDFAFFFD
          FAFFFDFAF8EEE4EBB47BE0A76BC59561F9F2ECFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6A671FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF9F2ECCF914DC59561F9F2ECFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E6D8D5
          AA7AC88C4BC88C4BC88C4BC88C4BC88C4BC88C4BC88C4BCE9960F9F2ECFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = spdfolhaClick
      end
    end
    object pnldadoscliente: TPanel
      Left = 8
      Top = 587
      Width = 801
      Height = 186
      TabOrder = 6
      object Label38: TLabel
        Left = 7
        Top = 4
        Width = 79
        Height = 24
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 134
        Top = 4
        Width = 57
        Height = 24
        DataField = 'CODIGO'
        DataSource = frmDados.Dts_Clientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 198
        Top = 4
        Width = 579
        Height = 24
        DataField = 'NOME'
        DataSource = frmDados.Dts_Clientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label39: TLabel
        Left = 7
        Top = 29
        Width = 107
        Height = 24
        Caption = 'ENDERE'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 134
        Top = 29
        Width = 307
        Height = 24
        DataField = 'ENDENT'
        DataSource = frmDados.Dts_Clientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 560
        Top = 29
        Width = 65
        Height = 24
        DataField = 'NROENT'
        DataSource = frmDados.Dts_Clientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label40: TLabel
        Left = 456
        Top = 29
        Width = 84
        Height = 24
        Caption = 'N'#218'MERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label41: TLabel
        Left = 7
        Top = 54
        Width = 71
        Height = 24
        Caption = 'COMPL.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 135
        Top = 54
        Width = 114
        Height = 24
        DataField = 'COMPLENT'
        DataSource = frmDados.Dts_Clientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label42: TLabel
        Left = 223
        Top = 56
        Width = 70
        Height = 24
        Caption = 'BAIRRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 302
        Top = 56
        Width = 131
        Height = 24
        DataField = 'BAIRROENT'
        DataSource = frmDados.Dts_Clientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label43: TLabel
        Left = 456
        Top = 56
        Width = 69
        Height = 24
        Caption = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText7: TDBText
        Left = 560
        Top = 56
        Width = 113
        Height = 24
        DataField = 'CIDADEENT'
        DataSource = frmDados.Dts_Clientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label44: TLabel
        Left = 7
        Top = 108
        Width = 38
        Height = 24
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 135
        Top = 108
        Width = 90
        Height = 24
        DataField = 'CEPENT'
        DataSource = frmDados.Dts_Clientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label45: TLabel
        Left = 7
        Top = 81
        Width = 114
        Height = 24
        Caption = 'TELEFONES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText9: TDBText
        Left = 134
        Top = 81
        Width = 35
        Height = 24
        DataField = 'DDDFS'
        DataSource = frmDados.Dts_Clientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 176
        Top = 83
        Width = 209
        Height = 24
        DataField = 'TELEFONES'
        DataSource = frmDados.Dts_Clientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label46: TLabel
        Left = 456
        Top = 81
        Width = 94
        Height = 24
        Caption = 'CONTATO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBText11: TDBText
        Left = 560
        Top = 81
        Width = 161
        Height = 24
        DataField = 'CONTATO'
        DataSource = frmDados.Dts_Clientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
  object opdAbrirfig: TOpenPictureDialog
    Left = 33
    Top = 6
  end
end
