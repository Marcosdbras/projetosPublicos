object frmfornecedor: Tfrmfornecedor
  Left = 143
  Top = 70
  Width = 796
  Height = 525
  BorderIcons = [biSystemMenu]
  Caption = 'FORNECEDORES | Ficha de Cadastro'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 35
    Width = 788
    Height = 2
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 465
    Width = 788
    Height = 2
    Align = alBottom
  end
  object panel99: TPanel
    Left = 0
    Top = 37
    Width = 788
    Height = 412
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object PageView1: TPageView
      Left = 0
      Top = 0
      Width = 788
      Height = 405
      ActivePage = PageSheet1
      ActivePageIndex = 0
      AdaptiveColors = True
      Align = alTop
      BackgroundColor = 13230564
      BackgroundKind = bkSolid
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Indent = 2
      Margin = 0
      Options = [pgBoldActiveTab]
      ParentFont = False
      ShowTabs = True
      Spacing = 0
      TabHeight = 14
      TabOrder = 0
      TabStyle = tsFlat
      TopIndent = 3
      OnChange = PageView1Change
      object PageSheet1: TPageSheet
        Left = 0
        Top = 18
        Width = 788
        Height = 387
        Caption = ' F10 | Ficha de Cadastro'
        Color = clBtnFace
        DisplayMode = tdTextOnly
        ImageIndex = 0
        Margin = 0
        PageIndex = 0
        ParentColor = False
        TabColor = 15653559
        TabWidth = 0
        TransparentColor = clNone
        object pficha: TFlatPanel
          Left = 3
          Top = 5
          Width = 764
          Height = 372
          ParentColor = True
          ColorHighLight = clBtnFace
          ColorShadow = clBtnFace
          TabOrder = 0
          UseDockManager = True
          object Label5: TLabel
            Left = 560
            Top = 12
            Width = 89
            Height = 13
            Caption = 'Data do Cadastro:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object LAPELIDO: TLabel
            Left = 6
            Top = 12
            Width = 68
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Fantasia:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 6
            Top = 36
            Width = 68
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Endere'#231'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 550
            Top = 36
            Width = 32
            Height = 13
            Caption = 'Bairro:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 6
            Top = 60
            Width = 68
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Cidade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 272
            Top = 60
            Width = 17
            Height = 13
            Caption = 'UF:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 347
            Top = 60
            Width = 23
            Height = 13
            Caption = 'CEP:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 483
            Top = 60
            Width = 69
            Height = 13
            Caption = 'Complemento:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 216
            Top = 84
            Width = 3
            Height = 12
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 345
            Top = 84
            Width = 22
            Height = 13
            Caption = 'Fax:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 6
            Top = 109
            Width = 68
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Email:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object LRG: TLabel
            Left = 6
            Top = 164
            Width = 68
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Insc.Est.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object LCPF: TLabel
            Left = 6
            Top = 188
            Width = 68
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CNPJ:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 6
            Top = 220
            Width = 68
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Contato #1:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 6
            Top = 276
            Width = 68
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Banco:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 230
            Top = 276
            Width = 42
            Height = 13
            Caption = 'Ag'#234'ncia:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 6
            Top = 84
            Width = 68
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Telefones:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label36: TLabel
            Left = 6
            Top = 134
            Width = 68
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Home-Page:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 379
            Top = 220
            Width = 37
            Height = 13
            Caption = 'Celular:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 6
            Top = 244
            Width = 68
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Contato #2:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 379
            Top = 244
            Width = 37
            Height = 13
            Caption = 'Celular:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 383
            Top = 276
            Width = 33
            Height = 13
            Caption = 'Conta:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 6
            Top = 324
            Width = 68
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'OBS.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 286
            Top = 164
            Width = 68
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Insc.Mun.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 286
            Top = 188
            Width = 68
            Height = 12
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'CNAE:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 530
            Top = 164
            Width = 84
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'C'#243'd.Munic'#237'pio.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 530
            Top = 188
            Width = 84
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'C'#243'd.IBGE.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label34: TLabel
            Left = 433
            Top = 36
            Width = 41
            Height = 13
            Caption = 'N'#250'mero:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edata_cadastro: TDBDateEdit
            Left = 656
            Top = 8
            Width = 106
            Height = 21
            DataField = 'DATA'
            DataSource = dsfornecedor2
            Enabled = False
            GlyphKind = gkCustom
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
              8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
              F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
              D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
              BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
              F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
              8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
              CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
              F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
              95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
              E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
              F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
              A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
              FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
              FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
              FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
              B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
              FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
              FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
              F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
              F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
              7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ButtonWidth = 18
            NumGlyphs = 1
            TabOrder = 1
            OnEnter = edata_cadastroEnter
            OnExit = edata_cadastroExit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit3: TDBEdit
            Left = 80
            Top = 8
            Width = 417
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FANTASIA'
            DataSource = dsfornecedor2
            TabOrder = 0
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit4: TDBEdit
            Left = 80
            Top = 32
            Width = 345
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ENDERECO'
            DataSource = dsfornecedor2
            TabOrder = 2
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit5: TDBEdit
            Left = 587
            Top = 32
            Width = 174
            Height = 21
            CharCase = ecUpperCase
            DataField = 'BAIRRO'
            DataSource = dsfornecedor2
            TabOrder = 4
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit6: TDBEdit
            Left = 117
            Top = 56
            Width = 148
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CIDADE'
            DataSource = dsfornecedor2
            TabOrder = 5
            OnEnter = DBEdit1Enter
            OnExit = DBEdit6Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit8: TDBEdit
            Left = 376
            Top = 56
            Width = 86
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CEP'
            DataSource = dsfornecedor2
            MaxLength = 8
            TabOrder = 7
            OnEnter = DBEdit1Enter
            OnExit = DBEdit8Exit
            OnKeyPress = DBEdit8KeyPress
          end
          object DBEdit9: TDBEdit
            Left = 560
            Top = 56
            Width = 201
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COMPLEMENTO'
            DataSource = dsfornecedor2
            TabOrder = 8
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit10: TDBEdit
            Left = 80
            Top = 80
            Width = 86
            Height = 21
            CharCase = ecUpperCase
            DataField = 'TELEFONE1'
            DataSource = dsfornecedor2
            MaxLength = 10
            TabOrder = 9
            OnEnter = DBEdit1Enter
            OnExit = DBEdit10Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit11: TDBEdit
            Left = 168
            Top = 80
            Width = 86
            Height = 21
            CharCase = ecUpperCase
            DataField = 'TELEFONE2'
            DataSource = dsfornecedor2
            MaxLength = 10
            TabOrder = 10
            OnEnter = DBEdit1Enter
            OnExit = DBEdit11Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit12: TDBEdit
            Left = 376
            Top = 80
            Width = 86
            Height = 21
            CharCase = ecUpperCase
            DataField = 'FAX'
            DataSource = dsfornecedor2
            MaxLength = 10
            TabOrder = 11
            OnEnter = DBEdit1Enter
            OnExit = DBEdit12Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit13: TDBEdit
            Left = 80
            Top = 105
            Width = 681
            Height = 21
            CharCase = ecLowerCase
            DataField = 'EMAIL'
            DataSource = dsfornecedor2
            TabOrder = 12
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit14: TDBEdit
            Left = 80
            Top = 160
            Width = 169
            Height = 21
            CharCase = ecUpperCase
            DataField = 'IE'
            DataSource = dsfornecedor2
            TabOrder = 14
            OnEnter = DBEdit1Enter
            OnExit = DBEdit14Exit
            OnKeyPress = DBEdit14KeyPress
          end
          object DBEdit15: TDBEdit
            Left = 80
            Top = 184
            Width = 168
            Height = 21
            DataField = 'CNPJ'
            DataSource = dsfornecedor2
            TabOrder = 15
            OnEnter = DBEdit1Enter
            OnExit = DBEdit15Exit
            OnKeyPress = DBEdit15KeyPress
          end
          object econtato1: TDBEdit
            Left = 80
            Top = 216
            Width = 289
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CONTATO1'
            DataSource = dsfornecedor2
            TabOrder = 20
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit18: TDBEdit
            Left = 80
            Top = 272
            Width = 145
            Height = 21
            DataField = 'BANCO'
            DataSource = dsfornecedor2
            TabOrder = 25
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit19: TDBEdit
            Left = 280
            Top = 272
            Width = 89
            Height = 21
            DataField = 'AGENCIA'
            DataSource = dsfornecedor2
            TabOrder = 26
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit28: TDBEdit
            Left = 80
            Top = 130
            Width = 681
            Height = 21
            CharCase = ecLowerCase
            DataField = 'HOMEPAGE'
            DataSource = dsfornecedor2
            TabOrder = 13
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit29: TDBEdit
            Left = 425
            Top = 216
            Width = 86
            Height = 21
            DataField = 'CELULAR1'
            DataSource = dsfornecedor2
            MaxLength = 10
            TabOrder = 21
            OnEnter = DBEdit1Enter
            OnExit = DBEdit29Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit17: TDBEdit
            Left = 80
            Top = 240
            Width = 289
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CONTATO2'
            DataSource = dsfornecedor2
            TabOrder = 22
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit30: TDBEdit
            Left = 425
            Top = 240
            Width = 86
            Height = 21
            DataField = 'CELULAR2'
            DataSource = dsfornecedor2
            MaxLength = 10
            TabOrder = 23
            OnEnter = DBEdit1Enter
            OnExit = DBEdit30Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit31: TDBEdit
            Left = 424
            Top = 272
            Width = 145
            Height = 21
            DataField = 'CONTA'
            DataSource = dsfornecedor2
            TabOrder = 27
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit31KeyPress
          end
          object DBCheckBox1: TDBCheckBox
            Left = 602
            Top = 210
            Width = 116
            Height = 17
            Caption = 'Assist'#234'ncia T'#233'cnica'
            DataField = 'ASSISTENCIA_TECNICA'
            DataSource = dsfornecedor2
            TabOrder = 24
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnKeyPress = DBCheckBox1KeyPress
          end
          object DBEdit22: TDBEdit
            Left = 81
            Top = 301
            Width = 680
            Height = 21
            DataField = 'OBS1'
            DataSource = dsfornecedor2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 28
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit23: TDBEdit
            Left = 81
            Top = 325
            Width = 680
            Height = 21
            DataField = 'OBS2'
            DataSource = dsfornecedor2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 29
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit24: TDBEdit
            Left = 81
            Top = 349
            Width = 680
            Height = 21
            DataField = 'OBS3'
            DataSource = dsfornecedor2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 30
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit24KeyPress
          end
          object euf: TDBComboBox
            Left = 296
            Top = 56
            Width = 41
            Height = 21
            CharCase = ecUpperCase
            DataField = 'UF'
            DataSource = dsfornecedor2
            ItemHeight = 13
            Items.Strings = (
              'AC'
              'AL'
              'AP'
              'AM'
              'BA'
              'CE'
              'DF'
              'ES'
              'EX'
              'GO'
              'MA'
              'MT'
              'MS'
              'MG'
              'PA'
              'PB'
              'PR'
              'PE'
              'PI'
              'RR'
              'RO'
              'RJ'
              'RN'
              'RS'
              'SC'
              'SP'
              'SE'
              'TO')
            TabOrder = 6
            OnEnter = eufEnter
            OnExit = eufExit
            OnKeyPress = DBEdit1KeyPress
          end
          object bitbtn6: TAdvGlowButton
            Left = 253
            Top = 158
            Width = 26
            Height = 48
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 49
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D4948445200000014000000160806000000C041BC
              06000000097048597300000B1300000B1301009A9C180000000467414D410000
              B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
              75300000EA6000003A980000176F925FC546000006414944415478DA62FCFFFF
              3703C37F460606066606100031FF317C67F80F64FF054276062E867F9FFF32BC
              7A7BC0FAC39343B9FF5E3EB06062FA26C8CAA77842413FCDEF9FB0DA4FD67FFF
              18FE3131313001F5020410E39F3FFF189899FF00B5B30231C8F0FF0C7F7EB231
              B0B031E831FCF8CBFCE1EE9A05EFEEEFFBFBF1CB65C33FFF3E3330FFE361F8F9
              F73BC36F5636061E4EB1BFC2BA355AF26A66B740CE60606061000820C6FF4003
              FEFFFFCBC0C0F89381F11F17C85940F12F0CBF3EBD4B7F7876C28C4BE7766EF9
              F4FE872E0B3B133B27E7674129217E764E0E0E869F40BB39997F31DCF9AAB3D9
              2E7CB69F289F00D8930001C4F217E838261690778186310139BFFE327C7FF786
              61C1B2F4E0ABC7DE6438B826BBD8F9B82BF0F00B33307CFBCEF0FAEE8EAA8F2F
              3656B330BEE06266E365F8FBE486F3E3BB0F19444DF880663031000410D0853F
              18FEFD676700051A280CFEFFBDCBD0DA98C520C46EC81094DFC8C0C7FB15188E
              7C40352C0CFF80F2EC40757F5FDF663F732CEF23C79727ECB79F307F12B5EAE1
              B7B3B3636064606300082086BF7F815EFEF79FE1EFEFFF0CBF7E7D60D8BB7B19
              C3A3EBB719FEFFFECBF00B149EFF21F2FFFFFF62F8FB1F187620FEDFDF0C0F2E
              CC2DB8BE40FBFFA47293BD17AE5C075A0852F39F012080988091038E512696DF
              0C7FFE7030989B8530C8A8290005981858811A9981927F4071F697958109E84A
              46A00318FEB130F0F18B5FFB03F4D29B2F62DB54C4451F7DFFF2F52828950004
              10D37F60E48012CD5FA0AECF5F9F3230B27F0526011686DF4CFF197E33B332FC
              61FCC6C0C2FA1D9A00FE31FC6166040515C3EF1F1F651E7EF8CDC0CECDFFE9EA
              B989DD372F5FB00219081040C0C4F38501988C187EFEBCCFB072710BC3AFD7FF
              20E911680DD007C088E362F8FF8793E11FF3378647F78E30FC7A74CB9AE1C757
              EEEF9F3F97B1FEF9CEA0237863F2AAF5A727CBE9E89D05E9030820264660BAFA
              CDCC20F1EEECFA1DC29F2F7DE296109062FE094A515F18D8404E073A8D91E53B
              03132B5091A40EC3E3B7C7B30FEC8AF9F2F8F65475293949865B2F7F9D080FAF
              6510E2E53601A9060820A6BF40E7FF787EC6F1FD8325EE0AE29F78FFBCBB6DC0
              C0FA8381E92F0FD099C070FD0BCA359C40263B033B971883965E449CA156E821
              9EBFFF181E3CFFCAC028E0DE66EA60C1C0F89F09EC33800062FAFBFBABEAC7AB
              CBCB7FFC6466F8CAC8CBB06F6BC1827FBF81B98609E8F57FAC0C2CCCCCE05863
              04A967FCCAF09789FD0FBFB49F3D13BB0CC3C98B3C13C2534A768122F5DFDFBF
              6003010288E9FDFD5D31278EECD667E4FAC170E692CA1C19E5B4E97B77CE60B8
              FDE42C03480D2837FF67046B0187E91F50307033305C7D2E31DDC1B36AB684B4
              282441B340C21E20809859FFBE4BF8F7E10B9F90289BE01736DBF5DED1994DCA
              CA060CDF7F0263FB0FC89B9CA0D40E0C026648C2650219CDC8C0C5ADB255CFDC
              E635286C41F681C498181919000288C9DA29F348809F11D79F7FDF1958B8F93E
              019327C37F66360619514D0621413E20EF0FD0854C90B203186E2CFF7E0323EC
              0F83A4B204030BE77F4819C5082BAB1818000288C9D5DBF9D8F79F7724981839
              1924E544D99818BE01E57F33C0000BD049FF80FCDFE0BC0934F80F93FDCBFBF7
              981FDF7D09540BCA457FC0E5093010C1EA01028889F1FD43F537DFBE32F0007D
              23F5EF781AC30F6E89FF8CD04861FA0E341CA4901D9C2E19983E319C3D3A5162
              CFDE1DD14ABADABFC0C5153013B040020F6C204000317DFFFE5E8C1B28C4FC97
              85E1D3E723AAD7CFD7ACFEFDE585F92FC67FB20C9F81C90598EA997F7D64FEF3
              F8B0F3C20901BBB66E7DAC10149DB588ED3F3303360010408CFFDFBF303DB635
              F414F3AFD70CAC8CA20CDF7F7D61E0E09666E012127EC1C82DFE98E5FB47E1EF
              9FEF2A1D3E76FFC15706F779A59D7DCDFF5941DEE486B80C0D000410E3FFEF5F
              54EF5F9AD6FDFCD20C7F3160C1F90B98D27FB1013530F230F0FCFAC970E725F7
              F1DDE7FE31BA4696E5DBB9FB9CE26107BAEC0FD0ABCC90C840070001C4F81398
              B858FF7C553DB5ADFCC2BBDBFBB9B8D9B919BE038BFA37EF59AE5D7B27758F8F
              DFF05868424ABBB4921238BD81621814498CC0DC83CD850001C4F81F541E0223
              F0F79FFF12278FEE497AFAE0A106332FFB572E71B12A7555ADF72A12B2906A01
              1847FF81E1FE1B5855B081D2D02F608CB3611A081060003CE37C70D8C4C4D000
              00000049454E44AE426082}
            TabOrder = 31
            OnClick = bitbtn6Click
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.BorderColorChecked = clBlack
            Appearance.Color = 15653832
            Appearance.ColorTo = 16178633
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 15586496
            Appearance.ColorMirrorTo = 16245200
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
          object DBEdit7: TDBEdit
            Left = 360
            Top = 160
            Width = 169
            Height = 21
            DataField = 'IM'
            DataSource = dsfornecedor2
            TabOrder = 16
            OnEnter = DBEdit1Enter
            OnExit = DBEdit14Exit
            OnKeyPress = DBEdit14KeyPress
          end
          object ecnae: TDBEdit
            Left = 360
            Top = 184
            Width = 84
            Height = 21
            DataField = 'CNAE'
            DataSource = dsfornecedor2
            TabOrder = 17
            OnEnter = DBEdit1Enter
            OnExit = ecnaeExit
            OnKeyPress = DBEdit15KeyPress
          end
          object ecodmunicipio: TDBEdit
            Left = 619
            Top = 160
            Width = 105
            Height = 21
            DataField = 'COD_MUNICIPIO_IBGE'
            DataSource = dsfornecedor2
            TabOrder = 18
            OnEnter = DBEdit1Enter
            OnExit = DBEdit15Exit
            OnKeyPress = DBEdit15KeyPress
          end
          object bibge: TAdvGlowButton
            Left = 726
            Top = 158
            Width = 33
            Height = 47
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 49
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D494844520000001E0000001B08060000006BFD3F
              11000000097048597300000B1300000B1301009A9C180000000467414D410000
              B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
              75300000EA6000003A980000176F925FC546000006C74944415478DA62FCFFFF
              3FC3400080006262182000104003663140000D98C500013460160304D080590C
              10402CD8041F3C79059164616678F0F815FBDD872F5CD8D8584C801900230B30
              323230FCFDFBEF3D273BDB3E2E4EB67B9FBFFE08FDF3F79F2250F81F3717C727
              A019FF7FFCF875EECDFB4FB724C4045EC9488880D433000410568BBF7EFB0924
              FF33B0B2B2307CFBFED318E89059CCCC4C528C0C8C186AFFFEFBC7C0C6CAB259
              5B5576E1874FDF5C6FDF7F3E17A8166CEE3F5056056146C64FEC6CAC7B850579
              2B9999986E8284000208ABC5EF3F7E01AA65046BBCFBE845342B0BB314131366
              ACFCFBF71F64E9115303D57C1E4EF64F8F2EBF8902590AC46079668452BE5FBF
              7E07BE7BFFE5D95BFECFB9C010F90F10402CF8E20158B8887DFEF25D1FE4084C
              4BFF313031319E06FA340318CCF7AFDE7A2C040C1D2B6C0E042726A0F8F71FBF
              4C9FBD7CC70274F06F8000C2AAEAD79F3FE0207CF4F4B5DE9F3FFFACD12D06C5
              11C8206D35B91C692991ABEF3F7C61F8F9EB0F231323D3070686FFB83CC1C0CE
              CEFA5C4488EF8FA8301F03400061B5F8F7EF3F20CCF8EDC72F3758910AA2FFFC
              FDCBF0EBD71F067E5E2E06171B7D900F026EDD7B5A0B8C1A5D61419E77ACACCC
              CB7E031D0D8A02907A640C12E3E4605B25252EF49F878B83012080B00635D097
              0C1F3F7D137AF5FA833BC8DABF40CB80863208F2F330A8294A319819A8325CBF
              F384E1F683E795FF80BE077AD51D985AD38D7494D75FBC7EBF1D9438415101D2
              CB040C2D5080313333BF11E0E3BEF2FAED4786E72FDF33000410568BF979B941
              AED3FAF9EBB70C1F3727030F0F278394B82083B48430031F0F1758CD959B8FC0
              BE00A57C60D05B7FFAF26D8E9EA6FC7D3D4D3986CF5F7E00F13706602A07E68A
              1F0C3F7EFDF90FCC6A7DF2D2A2976EDE7BC6000C15268000C26A315013F3EF3F
              7F9579B93985988029F4D7EFBF0C8F9FBD6578FAE23D030F370783A6B234032F
              907E0AF2D57F26A0C57F198049D902E8580B506A78F1FA03C3C3676F189EBD78
              07CC9A3F80FAFF7C55969738FC9EE72BB86C00266A1E8000C26A31308B889EBF
              7AAF08A8001C4CE06806C715246F02F3EA6B6539F1A4771FBE047CFEFADD8F83
              9DEB9B9589BAE49D072FD88E9DBD0EB618940099A1291C68D90BA0E577418950
              495E9C71EBDE33CC000184C3C7DF9D80966A00F32FD6D4F9F4C55B163E5ECE93
              065A8A3B9EBE7CD7A9A624F50C1877974F5EB8ADF8E7CF5F06903E66561678B6
              039660AB80C1FC02E48BCB371EB2EC3F7E85052080B0A6EAD7EF3E59333331B2
              62936304271646AE078F5EAB007DF2474B45E6F6ED7BCF5C8F9DBD29CE08092D
              06E4EC0774E7375161DE8B9FBE7CFFFFF9F33786376F3FF1DFBAFB8C07208098
              B01BCEF015E4585CF91168F06721419E8FC00284E1D6FDE741D76E3F5E008C63
              2EF4FC0E8A1AA09A87922282DB39D859199EBC78CBB461E7295066FB09104058
              2D0626A04DC0A0FE012A44FE61C98F405F6D959312B971E1DA03F5ABB71EF502
              B30A3FA8E040CFBB7F80795A5880F7280707DB67A0C31864A544788145F04FA0
              196F0002086B1CAB2B499FFAF8F97BE18F9FBFC2818A5480F1048F6CA0BDEF79
              B8D85703A343ECEBD7EF71C05AEB3FD0574F215E84945B607F83F32E1383B4A4
              F02271510150AA673878E2EA576061F35F889F9B0D2080B05A0CCC77BF4485F9
              67898BF02F7BF5E6031F30E5B2018BC8FF205F000B042660283CFEF8F92BAF90
              20EF6260E8CE018A43A385115C60804A38A083198196FD979716790ACD520C9F
              3E7FFDAB2023FE9F8B83ED2F400061B518986A8196FF06168FBFBF7CFEF6E30B
              A85C06590AB4089C373555644035D87B60B6790F8A577636166891C8CAA0AFA9
              C870F3DE5370360417BDC0542E2D21C000CA4A06DA8AFF9FBD7A0FCA8EBF0002
              880957CA056503A04F195EBDF9083498155C09B0B2B03002F32E83A49820C872
              C60F1FBF00F157783E07FA8A1918E78C4202DC204BC0E6DCBAFB14AC1F182560
              6C6DA2C16066A8CA00104038AAC5FFCCC0A2105483FF03662B7E6041F00B5856
              FF7CF6FCED7F60826102D6A7FF1E3F7BCDC4C6C60A0C59C63FE04407D4C4CBC9
              FEF7EBB7EF8C4F5FFE0515B9C0907B072EE980A99EE1FFBFFF4C40DF339EBA78
              E72F073B0B03400031E128B9D881F1F01FE4E20F9FBEFE04169BBFE5A5C5FE7D
              F8FCF5BFA498F0BFDBF79F31DE7DF8F23FA87A03D6C5209FFD070529C8A2FB8F
              5F830A20C68327AF3102132013304533DF7BF81228FE8AE1FBCF9FFF81C530A7
              86B22C2B4000BAEA2505401806C2B0A3AE7DA094EC2C8AF7BF5EA452FCD3BD37
              089319BEBFA895B6A575D49FE2D0F772482391E976EE453456F1FB11B5AE6CBA
              B3855C3D02C5BC15429D87695FA70A1EA233A437544BB378953E010600C1D442
              6D06AD16470000000049454E44AE426082}
            TabOrder = 32
            Visible = False
            OnClick = bibgeClick
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.BorderColorChecked = clBlack
            Appearance.Color = 15653832
            Appearance.ColorTo = 16178633
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 15586496
            Appearance.ColorMirrorTo = 16245200
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
          object bcnae: TAdvGlowButton
            Left = 446
            Top = 182
            Width = 35
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 49
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D494844520000001E0000001E08060000003B30AE
              A2000000097048597300000B1300000B1301009A9C180000000467414D410000
              B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
              75300000EA6000003A980000176F925FC546000009824944415478DA62FCFFFF
              3FC340008000626218200010402C20E2E187930C4C8C2C0C1F7E3C61F8FBEF17
              0333231B8300A734030B3307C3D517DB1918987E30FC67F82FACC4EFF6EDE265
              468E4F9F7FCB08F0715DBE78E3A1C6E98B0F92CF5F7B142C21CA7B2731D8AED2
              C942FBEC8F9FBF199EBC7CC7F0FFFF3F0629312186976F3F30303232A2580C10
              402C986E6104C35F7FBE327CFCF15CE3F3DF7BBAAF9EB30ABCFAFC30F911BBC0
              BC0DEB988C94150496FEFDF3DF7BE5E6330B7FFCF92C6CA4237D918F53FCEB92
              4D47A7B0B03277D818AA6F0446A1042313E327A07DDFD02D050180006241B7F2
              DFFFBF228C4C4C6CAFBEDE7DF68FE9C3AB9B0F5FD6EDDAC5A0A3ACF99961D3DE
              4746CA32AAF1176F3C513872E2CEBCF8201B96D0705686E77F375F11FA691CF3
              EC9196CCFB8FDF025EBDFB28F6F5FB0FEDE7AF3F484B890A2EFAF3F71F1F2707
              EB6760728227288000825AFC1F18D4405FFEFD667CF4C98CC5BCECE22F247934
              4B3FFD7869BC7FABA4A0A0F45D86833B781914A4BEFE62E37B6C757AE79738D7
              A0272C76111B18EEFE7ACBF0EACB035F1171794F47B9F0ED3FBFAA2C7CFBE13B
              BB30BFC0ED955B4F16F07273EC7AFDEE9399001FCF25A0150F6016030410D8E2
              B75FEF333033B131BCFDF640FEC3CFA7CAEF7E3ED47CFFFBD6F17D5B6558BEFF
              E762FC7A4F84E1D32B66061EC367DCEBD6FECC710979C1E0E0F390E1C1FBEF0C
              40DF30C8F01AFEE4619560FEC3F488F71BEBE5CF6252729F5FBFE26578F1FA33
              CBB76FBFAD1465C4DF9FBD7ACF5C5B55E6C1AFDF7F40FE64000820B0C59F7FBD
              06FA98099418AE71B38A7CF8C9F45CECF64D36D69BE7C518E4D5BE311CDCC3CB
              6068FD89E1C23121061DC33F0C365EB719BE7E07A63906760616A6BFA028E2BB
              F3EED0E2175FAE5F03FAEABC10EFF57D1FBF186E60FCC7F1EAD0A93BD6BA9A52
              CB9EBE7AEFCDCECEBAF2CF9FBFA03865000820B0C5ECCCDC0CC2DC8A0C2FBFDC
              14FDF5EF13EFFF3FBC0C7BD628310808FF65B879899D41489895E1EB5B09866F
              9F3E32B8E7DD64F8F79791E1FF3F48826162646678FAE5223B0FAB18FBFB9F8F
              ACBEFC7E6DC5FA91235B8EE769838EB920EB875742B6728AEC7B8E9EFB26EB6E
              25CFCEC1F9FBA7BCDC4F0680006281C4F07FFE471FCFF8DE797F289391E507E7
              A5431A0C6F5F0831F0F3B032BC7CF295414D8391E1D9D31F0C56AEAF1978455E
              32FCF8C68C9A4299D819BEFF790F66B3327382B3D1E32F276A55AC98FFFFFEC9
              CEF4819D7DB599A7CC4B19055D295E810FF72504A518000208928F3F9EACBBF6
              6E7B1133330B031B30EFDEB820C42022C8CFF0FCC9170636CEDF0CBFFF7D65E0
              E4FEC76068F384E1CF2F6670FAC7C8848C4C48B98309983BFE33FF07C63F13DB
              57866F7FBF70734BBE54BAFBB76F82C26FAB0EB13F32270002086CF1ED8F077D
              5999B9185859812EBD2B0CF4252F8398E47B86C7CF7E33484871307C7AC3C9A0
              6C708F815FF81BC3F71FC4954C8C50C7FDFFC70C66FDFFCBC2F0E2CB2DBF375F
              1FB9F3B14985000410D8999C2C7C1FFFFDFFC3C0C8F49FE1CE1521A0AE9F40F6
              4F86EFDF18188424BE32FC63FCC6A0A9FF09E88BDF401318C92F268151F2EBDF
              67F657DF6E59010410D862455E9B42053EB3498CBF84DE3CBAC3CF202325C4F0
              E93D2B8388F85F0656463E86DF7F7E33088B7F03262A668ACAE7BF4087B331F3
              7E91E333D9041040608B9999FF1E9117D4C8D7E32E4FFCF246F883AEB226C3FF
              1F820C3C02FF187EFCFACE2024C8CDC0CBF70B588E935F93014B44061646B66F
              56D2A9B9E23C1A270002081CC7CF1EF1339C7E28C8F0FFFBBF87C202FC7FE5A4
              05193E7CF9C460ADADC5F0EEDD0F0666898B0CACECBF197EFEF98F35611102A0
              540E8A654BE9946C2D118F053FFF7E65000820B08FEF5ED263F8F5599AE1E9AB
              0F021C1CCC3C6C2C2C0C9FBF7D63D05556061712DA92360C7A627EE09A0BA9B8
              25CE527071CCF25B4BC8B3489A477FE13F86BFE0BC0F1040601F1727BA337073
              B2316C3E709EF5F6FD974C6CACCC0C6C6C2CFF4584787A7FFCFEE6A52461A0A5
              2AC4C670E6E91A863FC044C8CCC84A826FFF3270B189BC126097DDFCFCCBB5FF
              AFBFDE013B062080C016F72ED80A8C672686C7CFDF314888F033F27173317071
              B27D7BF1EEC3FE6FDF7F997DFDF98941893F8021487D22C3AEFB6D0CC0F29C68
              CB4196303230FF01E6736031FD8DE117C317B0384000812D7EF9EE2398F3E7DF
              DFBFD212020779B8D88F02CBDC7CA0CFBFB3B1B07E7BF4EC0D50968D4153D493
              E1D9E7CB0C879F4C0546350B51F10DF2B10087D4454541CB177F81A1C5008D2A
              8000025BEC6EAD0F6E21FCF8F9EBC5D5DB4F6E9FBE7A6F2F2B0B4BAA928CF877
              3121DE77B71E3C67F8FEF30F03273B0BC3176085028967462283FA3F838AA0FD
              222E56C1BFBFFF214A1F8000025B6CA6A3C4006A24FCFBC7F000582F9F7AF8FC
              CD571E2E8E4F9C6CAC2C3AEA3267272FDE1D75EAF23D067B13356099FC0998BA
              BF30B0B071C04B27ECC1CB080CC19F0C523CBAFB8015C8FE77DF1F80B3140C00
              04103855333131827DCCC4C4F0535D5172ADB79DC179417EAE870F9EBC51D454
              953AFCE7C7EFFF0B361C026B7052CE66B097CB05790568FC5F0C0B41A9F63F30
              487FFDFDC2C0CD227C5991DF3A1F28F0EEDBAFF70C3F7E7F8263800082D44ED0
              1C02F431033B2BEB279043EC4D35D73E78F65AD3D546679991BED2C905CBF65A
              488B0B303466853078AA6833707331331C7A301F983B99C08E0615B9C06CF38F
              8745F4BCA688C76660E2FBFCF2F39DBD40B75C013907B91201018000C268ECFD
              F9FB978119083DECF4D71C3C732D16E828C68460DB8EF3971F6CE898B699E1C8
              B9DB0CFAEA4A0C1F7FFE6710D117601012FFC2006CF83170B0F03D97E7B1A862
              67E15C29CDABFF9D9F5D8AE1DDD7C7600761030001C484A55A61F80BACCE80D1
              FBCEC95C7BFE87CFDF586C4CD437A6C538B53002B3DCC17D171926F56F6058B2
              E029C3B3FBD20CAC2CCCC032F817832497F636112EA50540877E07C52DB0FD86
              37110204100BD62A0D94D04071F89FE1D33F6071C7C3C9C1A0A32E5BEBEB6274
              F7D1934F49AC3CAF4D64756E726A9A3C64F8F5EB1F38663958059E029B4DC04A
              8013D8A2E1851693B8014000B110C8FD60F7821A747FFFFE62D0D3125B901AA3
              B2FD15FBFC334FBF5E93F9FF1758CDFDFDC920C6A9B95B8ED7B89F93951F58AC
              72010B171682452B4000B11093177F02E3D3DA9C87E11FEB1B060EB6779F3EBD
              E6AB61FAC75FF4EDEF7B3D4176D91B363269A5425C8A1F40D51EAC1DF6FDF707
              BC660204100B718500B012670636F058FE33FCFCFDEF3B378BF8423389B83DF7
              3E1E5DACC067D1C6C7217991019C7799E04D1F420020C000BFDECD22E08CF6B1
              0000000049454E44AE426082}
            TabOrder = 33
            OnClick = bcnaeClick
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.BorderColorChecked = clBlack
            Appearance.Color = 15653832
            Appearance.ColorTo = 16178633
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 15586496
            Appearance.ColorMirrorTo = 16245200
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
          object eibge: TDBEdit
            Left = 619
            Top = 184
            Width = 105
            Height = 21
            DataField = 'IBGE'
            DataSource = dsfornecedor2
            TabOrder = 19
            OnEnter = DBEdit1Enter
            OnExit = DBEdit15Exit
            OnKeyPress = DBEdit15KeyPress
          end
          object AdvGlowButton1: TAdvGlowButton
            Left = 79
            Top = 53
            Width = 35
            Height = 25
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 49
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D494844520000001E0000001B08060000006BFD3F
              11000000097048597300000B1300000B1301009A9C180000000467414D410000
              B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
              75300000EA6000003A980000176F925FC546000006C74944415478DA62FCFFFF
              3FC3400080006262182000104003663140000D98C500013460160304D080590C
              10402CD8041F3C79059164616678F0F815FBDD872F5CD8D8584C801900230B30
              323230FCFDFBEF3D273BDB3E2E4EB67B9FBFFE08FDF3F79F2250F81F3717C727
              A019FF7FFCF875EECDFB4FB724C4045EC9488880D433000410568BBF7EFB0924
              FF33B0B2B2307CFBFED318E89059CCCC4C528C0C8C186AFFFEFBC7C0C6CAB259
              5B5576E1874FDF5C6FDF7F3E17A8166CEE3F5056056146C64FEC6CAC7B850579
              2B9999986E8284000208ABC5EF3F7E01AA65046BBCFBE845342B0BB314131366
              ACFCFBF71F64E9115303D57C1E4EF64F8F2EBF8902590AC46079668452BE5FBF
              7E07BE7BFFE5D95BFECFB9C010F90F10402CF8E20158B8887DFEF25D1FE4084C
              4BFF313031319E06FA340318CCF7AFDE7A2C040C1D2B6C0E042726A0F8F71FBF
              4C9FBD7CC70274F06F8000C2AAEAD79F3FE0207CF4F4B5DE9F3FFFACD12D06C5
              11C8206D35B91C692991ABEF3F7C61F8F9EB0F231323D3070686FFB83CC1C0CE
              CEFA5C4488EF8FA8301F03400061B5F8F7EF3F20CCF8EDC72F3758910AA2FFFC
              FDCBF0EBD71F067E5E2E06171B7D900F026EDD7B5A0B8C1A5D61419E77ACACCC
              CB7E031D0D8A02907A640C12E3E4605B25252EF49F878B83012080B00635D097
              0C1F3F7D137AF5FA833BC8DABF40CB80863208F2F330A8294A319819A8325CBF
              F384E1F683E795FF80BE077AD51D985AD38D7494D75FBC7EBF1D9438415101D2
              CB040C2D5080313333BF11E0E3BEF2FAED4786E72FDF33000410568BF979B941
              AED3FAF9EBB70C1F3727030F0F278394B82083B48430031F0F1758CD959B8FC0
              BE00A57C60D05B7FFAF26D8E9EA6FC7D3D4D3986CF5F7E00F13706602A07E68A
              1F0C3F7EFDF90FCC6A7DF2D2A2976EDE7BC6000C15268000C26A315013F3EF3F
              7F9579B93985988029F4D7EFBF0C8F9FBD6578FAE23D030F370783A6B234032F
              907E0AF2D57F26A0C57F198049D902E8580B506A78F1FA03C3C3676F189EBD78
              07CC9A3F80FAFF7C55969738FC9EE72BB86C00266A1E8000C26A31308B889EBF
              7AAF08A8001C4CE06806C715246F02F3EA6B6539F1A4771FBE047CFEFADD8F83
              9DEB9B9589BAE49D072FD88E9DBD0EB618940099A1291C68D90BA0E577418950
              495E9C71EBDE33CC000184C3C7DF9D80966A00F32FD6D4F9F4C55B163E5ECE93
              065A8A3B9EBE7CD7A9A624F50C1877974F5EB8ADF8E7CF5F06903E66561678B6
              039660AB80C1FC02E48BCB371EB2EC3F7E85052080B0A6EAD7EF3E59333331B2
              62936304271646AE078F5EAB007DF2474B45E6F6ED7BCF5C8F9DBD29CE08092D
              06E4EC0774E7375161DE8B9FBE7CFFFFF9F33786376F3FF1DFBAFB8C07208098
              B01BCEF015E4585CF91168F06721419E8FC00284E1D6FDE741D76E3F5E008C63
              2EF4FC0E8A1AA09A87922282DB39D859199EBC78CBB461E7295066FB09104058
              2D0626A04DC0A0FE012A44FE61C98F405F6D959312B971E1DA03F5ABB71EF502
              B30A3FA8E040CFBB7F80795A5880F7280707DB67A0C31864A544788145F04FA0
              196F0002086B1CAB2B499FFAF8F97BE18F9FBFC2818A5480F1048F6CA0BDEF79
              B8D85703A343ECEBD7EF71C05AEB3FD0574F215E84945B607F83F32E1383B4A4
              F02271510150AA673878E2EA576061F35F889F9B0D2080B05A0CCC77BF4485F9
              67898BF02F7BF5E6031F30E5B2018BC8FF205F000B042660283CFEF8F92BAF90
              20EF6260E8CE018A43A385115C60804A38A083198196FD979716790ACD520C9F
              3E7FFDAB2023FE9F8B83ED2F400061B518986A8196FF06168FBFBF7CFEF6E30B
              A85C06590AB4089C373555644035D87B60B6790F8A577636166891C8CAA0AFA9
              C870F3DE5370360417BDC0542E2D21C000CA4A06DA8AFF9FBD7A0FCA8EBF0002
              880957CA056503A04F195EBDF9083498155C09B0B2B03002F32E83A49820C872
              C60F1FBF00F157783E07FA8A1918E78C4202DC204BC0E6DCBAFB14AC1F182560
              6C6DA2C16066A8CA00104038AAC5FFCCC0A2105483FF03662B7E6041F00B5856
              FF7CF6FCED7F60826102D6A7FF1E3F7BCDC4C6C60A0C59C63FE04407D4C4CBC9
              FEF7EBB7EF8C4F5FFE0515B9C0907B072EE980A99EE1FFBFFF4C40DF339EBA78
              E72F073B0B03400031E128B9D881F1F01FE4E20F9FBEFE04169BBFE5A5C5FE7D
              F8FCF5BFA498F0BFDBF79F31DE7DF8F23FA87A03D6C5209FFD070529C8A2FB8F
              5F830A20C68327AF3102132013304533DF7BF81228FE8AE1FBCF9FFF81C530A7
              86B22C2B4000BAEA2505401806C2B0A3AE7DA094EC2C8AF7BF5EA452FCD3BD37
              089319BEBFA895B6A575D49FE2D0F772482391E976EE453456F1FB11B5AE6CBA
              B3855C3D02C5BC15429D87695FA70A1EA233A437544BB378953E010600C1D442
              6D06AD16470000000049454E44AE426082}
            TabOrder = 34
            OnClick = bibgeClick
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.BorderColorChecked = clBlack
            Appearance.Color = 15653832
            Appearance.ColorTo = 16178633
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 15586496
            Appearance.ColorMirrorTo = 16245200
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
          object DBEdit16: TDBEdit
            Left = 479
            Top = 32
            Width = 65
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NUMERO'
            DataSource = dsfornecedor2
            MaxLength = 5
            TabOrder = 3
            OnEnter = DBEdit1Enter
            OnExit = DBEdit16Exit
            OnKeyPress = DBEdit16KeyPress
          end
        end
      end
      object PageSheet2: TPageSheet
        Left = 0
        Top = 18
        Width = 788
        Height = 387
        Caption = ' F11 | Movimento'
        DisplayMode = tdTextOnly
        ImageIndex = 0
        Margin = 0
        PageIndex = 1
        TabColor = 11184895
        TabWidth = 0
        TransparentColor = clNone
        object ViewSplit1: TViewSplit
          Left = 235
          Top = 0
          Height = 334
        end
        object FlipView1: TFlipView
          Left = 0
          Top = 0
          Width = 235
          Height = 334
          AdaptiveColors = False
          Align = alLeft
          Caption = 'Hist'#243'rico de Entradas'
          CollapseGlyph.Data = {
            7A010000424D7A01000000000000360000002800000009000000090000000100
            2000000000004401000000000000000000000000000000000000604830406048
            30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
            90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
            30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D8C0FFF0D0C0FFD0B8
            A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D0
            C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
            30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFFFFF0
            F0FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF8FFFFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
            A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
          Color = clBtnFace
          ExpandGlyph.Data = {
            7A010000424D7A01000000000000360000002800000009000000090000000100
            2000000000004401000000000000000000000000000000000000604830406048
            30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
            90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
            30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FF604830FFF0D8C0FFF0D0C0FFD0B8
            A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FF604830FFF0D8D0FFF0D0
            C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
            30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFF6048
            30FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
            FFFF604830FFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
            A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
          FlipKind = fkHeaderAndButton
          HeaderColor = 12508128
          HeaderHeight = 18
          HeaderStyle = hsSolid
          HideGlyphs = False
          Margins.Bottom = 4
          Margins.Left = 4
          Margins.Right = 4
          Margins.Top = 4
          ParentColor = False
          TransparentButtons = False
          object Bevel3: TBevel
            Left = 4
            Top = 324
            Width = 227
            Height = 2
            Align = alTop
          end
          object Bevel4: TBevel
            Left = 4
            Top = 297
            Width = 227
            Height = 2
            Align = alTop
          end
          object wwDBGrid1: TwwDBGrid
            Left = 4
            Top = 40
            Width = 227
            Height = 257
            DittoAttributes.ShortCutDittoField = 0
            DittoAttributes.ShortCutDittoRecord = 0
            DittoAttributes.Options = []
            DisableThemesInTitle = False
            Selected.Strings = (
              'NUMERO'#9'8'#9'N'#218'MERO'#9#9
              'DATA_LANCAMENTO'#9'10'#9'DATA'#9#9
              'TOTAL_NOTA'#9'11'#9'VALOR-R$'#9#9)
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            Align = alTop
            DataSource = dsnf
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            TabOrder = 0
            TitleAlignment = taLeftJustify
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            OnDblClick = wwDBGrid1DblClick
            FooterColor = clWindow
            FooterCellColor = clWindow
            PaintOptions.AlternatingRowColor = 15921906
            PaintOptions.ActiveRecordColor = clBlack
          end
          object FlatPanel1: TFlatPanel
            Left = 4
            Top = 22
            Width = 227
            Height = 18
            Caption = 'Notas Fiscais'
            ParentColor = True
            ColorHighLight = clBtnFace
            ColorShadow = clBtnFace
            Align = alTop
            TabOrder = 1
            UseDockManager = True
          end
          object FlatPanel2: TFlatPanel
            Left = 4
            Top = 299
            Width = 227
            Height = 25
            ParentColor = True
            ColorHighLight = clBtnFace
            ColorShadow = clBtnFace
            Align = alTop
            TabOrder = 2
            UseDockManager = True
            object Label4: TLabel
              Left = 8
              Top = 6
              Width = 28
              Height = 13
              Caption = 'Total:'
            end
            object LTOTAL: TLabel
              Left = 90
              Top = 5
              Width = 113
              Height = 22
              Alignment = taRightJustify
              AutoSize = False
              Caption = '1.000,00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object GroupBox3: TGroupBox
          Left = 248
          Top = 5
          Width = 513
          Height = 143
          Caption = 'PRODUTOS COMPRADOS [TODAS AS NOTAS]'
          TabOrder = 1
          object gridcompra: TwwDBGrid
            Left = 8
            Top = 14
            Width = 497
            Height = 116
            DittoAttributes.ShortCutDittoField = 0
            DittoAttributes.ShortCutDittoRecord = 0
            DittoAttributes.Options = []
            DisableThemesInTitle = False
            Selected.Strings = (
              'CODPRODUTO'#9'6'#9'C'#211'DIGO'
              'PRODUTO'#9'22'#9'PRODUTO'
              'UNIDADE'#9'3'#9'UN.'
              'QTDE'#9'4'#9'QTDE'
              'UNITARIO'#9'6'#9'PRE'#199'O'
              'TOTAL'#9'7'#9'TOTAL'
              'SERIAL'#9'12'#9'SERIAL')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = dsproduto
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            TabOrder = 0
            TitleAlignment = taLeftJustify
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            PaintOptions.AlternatingRowColor = 15921906
            PaintOptions.ActiveRecordColor = clRed
          end
          object gridnf: TwwDBGrid
            Left = 8
            Top = 14
            Width = 497
            Height = 116
            DittoAttributes.ShortCutDittoField = 0
            DittoAttributes.ShortCutDittoRecord = 0
            DittoAttributes.Options = []
            DisableThemesInTitle = False
            Selected.Strings = (
              'CODPRODUTO'#9'6'#9'C'#211'DIGO'
              'PRODUTO'#9'35'#9'PRODUTO'
              'UN_COMPRA'#9'5'#9'UN'
              'QTDE'#9'7'#9'QTDE'
              'UNITARIO'#9'8'#9'PRE'#199'O'
              'TOTAL'#9'10'#9'TOTAL')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = DSNF_PRODUTO
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            TabOrder = 1
            TitleAlignment = taLeftJustify
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
            Visible = False
            PaintOptions.AlternatingRowColor = 15921906
            PaintOptions.ActiveRecordColor = clRed
          end
        end
        object GroupBox4: TGroupBox
          Left = 248
          Top = 149
          Width = 513
          Height = 182
          Caption = 'PRESTA'#199#213'ES'
          TabOrder = 2
          object PageView2: TPageView
            Left = 2
            Top = 15
            Width = 509
            Height = 165
            ActivePage = PageSheet3
            ActivePageIndex = 0
            AdaptiveColors = True
            Align = alClient
            BackgroundColor = clBtnFace
            BackgroundKind = bkInveseVertGradient
            Indent = 2
            Margin = 0
            Options = [pgBoldActiveTab]
            ShowTabs = True
            Spacing = 0
            TabHeight = 14
            TabOrder = 0
            TabStyle = tsOneNote
            TopIndent = 0
            object PageSheet3: TPageSheet
              Left = 0
              Top = 15
              Width = 509
              Height = 150
              Caption = 'A PAGAR'
              DisplayMode = tdGlyph
              ImageIndex = 0
              Margin = 0
              PageIndex = 0
              TabColor = 16240558
              TabWidth = 0
              TransparentColor = clNone
              object Label27: TLabel
                Left = 345
                Top = 131
                Width = 36
                Height = 13
                Caption = 'TOTAL:'
              end
              object wwDBGrid4: TwwDBGrid
                Left = 0
                Top = 0
                Width = 509
                Height = 123
                DittoAttributes.ShortCutDittoField = 0
                DittoAttributes.ShortCutDittoRecord = 0
                DittoAttributes.Options = []
                DisableThemesInTitle = False
                ControlType.Strings = (
                  'FILTRO;CheckBox;1;0'
                  'SITUACAO;ImageIndex;Original Size'
                  'situacao2;ImageIndex;Original Size')
                Selected.Strings = (
                  'situacao2'#9'3'#9'?'#9#9
                  'DATA_VENCIMENTO'#9'9'#9'VENCTO.'#9#9
                  'DATA_EMISSAO'#9'9'#9'EMISS'#195'O'#9#9
                  'ESPECIE'#9'9'#9'ESP'#201'CIE'#9#9
                  'DOCUMENTO'#9'8'#9'DOCTO.'#9#9
                  'HISTORICO'#9'17'#9'HISTORICO'#9#9
                  'VALOR'#9'8'#9'VALOR-R$'#9#9)
                IniAttributes.Delimiter = ';;'
                TitleColor = clBtnFace
                FixedCols = 0
                ShowHorzScrollBar = True
                Align = alTop
                DataSource = dspagar
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Verdana'
                Font.Style = []
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
                ParentFont = False
                RowHeightPercent = 107
                TabOrder = 0
                TitleAlignment = taCenter
                TitleFont.Charset = ANSI_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -9
                TitleFont.Name = 'Verdana'
                TitleFont.Style = []
                TitleLines = 1
                TitleButtons = True
                PaintOptions.AlternatingRowColor = 16053492
                PaintOptions.ActiveRecordColor = clRed
              end
              object rtotal: TRxCalcEdit
                Left = 392
                Top = 128
                Width = 96
                Height = 19
                AutoSize = False
                DisplayFormat = '###,###,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ButtonWidth = 0
                NumGlyphs = 2
                ParentFont = False
                TabOrder = 1
              end
            end
            object PageSheet4: TPageSheet
              Left = 0
              Top = 15
              Width = 509
              Height = 150
              Caption = 'PAGAS'
              DisplayMode = tdGlyph
              ImageIndex = 0
              Margin = 0
              PageIndex = 1
              TabColor = 11184895
              TabWidth = 0
              TransparentColor = clNone
              object Label28: TLabel
                Left = 345
                Top = 130
                Width = 36
                Height = 13
                Caption = 'TOTAL:'
              end
              object wwDBGrid5: TwwDBGrid
                Left = 0
                Top = 0
                Width = 509
                Height = 122
                DittoAttributes.ShortCutDittoField = 0
                DittoAttributes.ShortCutDittoRecord = 0
                DittoAttributes.Options = []
                DisableThemesInTitle = False
                ControlType.Strings = (
                  'FILTRO;CheckBox;1;0'
                  'SITUACAO;ImageIndex;Original Size'
                  'situacao2;ImageIndex;Original Size')
                Selected.Strings = (
                  'DATA_VENCIMENTO'#9'9'#9'VENCTO.'#9#9
                  'DATA_PAGAMENTO'#9'11'#9'DT.PGTO'#9#9
                  'DOCUMENTO'#9'8'#9'DOCTO.'#9#9
                  'HISTORICO'#9'16'#9'HISTORICO'#9#9
                  'NOTAFISCAL'#9'10'#9'NOTAFISCAL'#9#9
                  'VALORPAGO'#9'9'#9'VLR.PAGO'#9#9)
                IniAttributes.Delimiter = ';;'
                TitleColor = clBtnFace
                FixedCols = 0
                ShowHorzScrollBar = True
                Align = alTop
                DataSource = dsPAGARpg
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Verdana'
                Font.Style = []
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
                ParentFont = False
                RowHeightPercent = 107
                TabOrder = 0
                TitleAlignment = taCenter
                TitleFont.Charset = ANSI_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -9
                TitleFont.Name = 'Verdana'
                TitleFont.Style = []
                TitleLines = 1
                TitleButtons = True
                PaintOptions.AlternatingRowColor = 16053492
                PaintOptions.ActiveRecordColor = clRed
              end
              object rtotal_pago: TRxCalcEdit
                Left = 392
                Top = 127
                Width = 96
                Height = 19
                AutoSize = False
                DisplayFormat = '###,###,##0.00'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -9
                Font.Name = 'Verdana'
                Font.Style = [fsBold]
                ButtonWidth = 0
                NumGlyphs = 2
                ParentFont = False
                TabOrder = 1
              end
            end
          end
        end
        object HeaderView2: THeaderView
          Left = 0
          Top = 334
          Width = 788
          Height = 53
          AdaptiveColors = False
          Align = alBottom
          BorderStyle = bsNone
          Caption = 'Movimento de Mensal de compras ('#218'ltimos 12 Meses)'
          HeaderColor = clBtnFace
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clBlack
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          HeaderSize = 16
          ParentColor = False
          object wwDBGrid3: TwwDBGrid
            Left = 0
            Top = 16
            Width = 786
            Height = 35
            DittoAttributes.ShortCutDittoField = 0
            DittoAttributes.ShortCutDittoRecord = 0
            DittoAttributes.Options = []
            DisableThemesInTitle = False
            Selected.Strings = (
              'sum_0'#9'9'#9'janeiro'#9#9
              'sum'#9'8'#9'sum'#9#9
              'sum_1'#9'8'#9'sum_1'#9#9
              'sum_2'#9'8'#9'sum_2'#9#9
              'sum_3'#9'8'#9'sum_3'#9#9
              'sum_4'#9'8'#9'sum_4'#9#9
              'sum_5'#9'8'#9'sum_5'#9#9
              'sum_6'#9'8'#9'sum_6'#9#9
              'sum_7'#9'8'#9'sum_7'#9#9
              'sum_8'#9'9'#9'sum_8'#9#9
              'sum_9'#9'9'#9'sum_9'#9#9
              'sum_10'#9'9'#9'sum_10'#9#9)
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = False
            ShowVertScrollBar = False
            Align = alClient
            DataSource = dsCOMPRA_mes
            Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
            TabOrder = 0
            TitleAlignment = taCenter
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
          end
        end
      end
      object PageSheet5: TPageSheet
        Left = 0
        Top = 18
        Width = 788
        Height = 387
        Caption = 'F12 | Sugest'#245'es de Compra'
        DisplayMode = tdGlyph
        ImageIndex = 0
        Margin = 0
        PageIndex = 2
        TabColor = clWindow
        TabWidth = 0
        TransparentColor = clNone
        object Bevel6: TBevel
          Left = 0
          Top = 42
          Width = 788
          Height = 3
          Align = alTop
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 788
          Height = 42
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Bevel7: TBevel
            Left = 687
            Top = 14
            Width = 43
            Height = 20
          end
          object Label2: TLabel
            Left = 10
            Top = 16
            Width = 96
            Height = 13
            Caption = 'Per'#237'odo de Vendas :'
          end
          object ldias: TLabel
            Left = 692
            Top = 16
            Width = 32
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = '000'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -13
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 740
            Top = 16
            Width = 20
            Height = 13
            Caption = 'Dias'
          end
          object Label1: TLabel
            Left = 220
            Top = 16
            Width = 6
            Height = 13
            Caption = 'a'
          end
          object Label15: TLabel
            Left = 652
            Top = 16
            Width = 28
            Height = 13
            Caption = 'Total:'
          end
          object ldataini_remarcado: TDateEdit
            Left = 114
            Top = 12
            Width = 100
            Height = 21
            GlyphKind = gkCustom
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
              8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
              F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
              D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
              BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
              F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
              8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
              CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
              F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
              95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
              E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
              F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
              A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
              FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
              FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
              FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
              B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
              FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
              FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
              F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
              F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
              7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            NumGlyphs = 1
            TabOrder = 0
            Text = '01/01/0001'
            OnKeyPress = ldataini_remarcadoKeyPress
          end
          object ldatafim_remarcado: TDateEdit
            Left = 232
            Top = 12
            Width = 104
            Height = 21
            GlyphKind = gkCustom
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
              8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
              F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
              D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
              BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
              F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
              8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
              CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
              F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
              95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
              E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
              F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
              A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
              FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
              FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
              FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
              B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
              FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
              FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
              F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
              F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
              7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            NumGlyphs = 1
            ReadOnly = True
            TabOrder = 1
            Text = '31/12/2099'
            OnKeyPress = ldatafim_remarcadoKeyPress
          end
          object bfiltrar: TAdvGlowButton
            Left = 347
            Top = 9
            Width = 75
            Height = 24
            Caption = 'Filtrar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 49
            FocusType = ftHot
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              61000000097048597300000B1300000B1301009A9C1800000A4D694343505068
              6F746F73686F70204943432070726F66696C65000078DA9D53775893F7163EDF
              F7650F5642D8F0B1976C81002223AC08C81059A21092006184101240C585880A
              561415119C4855C482D50A489D88E2A028B867418A885A8B555C38EE1FDCA7B5
              7D7AEFEDEDFBD7FBBCE79CE7FCCE79CF0F8011122691E6A26A003952853C3AD8
              1F8F4F48C4C9BD80021548E0042010E6CBC26705C50000F00379787E74B03FFC
              01AF6F00020070D52E2412C7E1FF83BA50265700209100E02212E70B01905200
              C82E54C81400C81800B053B3640A009400006C797C422200AA0D00ECF4493E05
              00D8A993DC1700D8A21CA908008D0100992847240240BB00605581522C02C0C2
              00A0AC40222E04C0AE018059B632470280BD0500768E58900F4060008099422C
              CC0020380200431E13CD03204C03A030D2BFE0A95F7085B8480100C0CB95CD97
              4BD23314B895D01A77F2F0E0E221E2C26CB142611729106609E4229C979B2313
              48E7034CCE0C00001AF9D1C1FE383F90E7E6E4E1E666E76CEFF4C5A2FE6BF06F
              223E21F1DFFEBC8C020400104ECFEFDA5FE5E5D60370C701B075BF6BA95B00DA
              560068DFF95D33DB09A05A0AD07AF98B7938FC401E9EA150C83C1D1C0A0B0BED
              2562A1BD30E38B3EFF33E16FE08B7EF6FC401EFEDB7AF000719A4099ADC0A383
              FD71616E76AE528EE7CB0442316EF7E723FEC7857FFD8E29D1E234B15C2C158A
              F15889B850224DC779B952914421C995E212E97F32F11F96FD0993770D00AC86
              4FC04EB607B5CB6CC07EEE01028B0E58D27600407EF32D8C1A0B910010673432
              79F7000093BFF98F402B0100CD97A4E30000BCE8185CA894174CC608000044A0
              812AB041070CC114ACC00E9CC11DBCC01702610644400C24C03C104206E4801C
              0AA11896411954C03AD804B5B0031AA0119AE110B4C131380DE7E0125C81EB70
              170660189EC218BC86090441C8081361213A8811628ED822CE0817998E042261
              48349280A420E988145122C5C872A402A9426A915D4823F22D7214398D5C40FA
              90DBC820328AFC8ABC47319481B25103D4027540B9A81F1A8AC6A073D174340F
              5D8096A26BD11AB41E3D80B6A2A7D14BE87574007D8A8E6380D1310E668CD961
              5C8C87456089581A26C71663E55835568F35631D583776151BC09E61EF082402
              8B8013EC085E8410C26C82909047584C5843A825EC23B412BA085709838431C2
              272293A84FB4257A12F9C478623AB1905846AC26EE211E219E255E270E135F93
              48240EC992E44E0A21259032490B496B48DB482DA453A43ED210699C4C26EB90
              6DC9DEE408B280AC209791B7900F904F92FBC9C3E4B7143AC588E24C09A22452
              A494124A35653FE504A59F324299A0AA51CDA99ED408AA883A9F5A496DA07650
              2F5387A91334759A25CD9B1643CBA42DA3D5D09A696769F7682FE974BA09DD83
              1E4597D097D26BE807E9E7E983F4770C0D860D83C7486228196B197B19A718B7
              192F994CA605D39799C85430D7321B9967980F986F55582AF62A7C1591CA1295
              3A9556957E95E7AA545573553FD579AA0B54AB550FAB5E567DA64655B350E3A9
              09D416ABD5A91D55BBA936AECE5277528F50CF515FA3BE5FFD82FA630DB28685
              46A08648A35463B7C6198D2116C63265F15842D6725603EB2C6B984D625BB2F9
              EC4C7605FB1B762F7B4C534373AA66AC6691669DE671CD010EC6B1E0F039D99C
              4ACE21CE0DCE7B2D032D3F2DB1D66AAD66AD7EAD37DA7ADABEDA62ED72ED16ED
              EBDAEF75709D409D2C9DF53A6D3AF77509BA36BA51BA85BADB75CFEA3ED363EB
              79E909F5CAF50EE9DDD147F56DF4A3F517EAEFD6EFD11F373034083690196C31
              3863F0CC9063E86B9869B8D1F084E1A811CB68BA91C468A3D149A327B826EE87
              67E33578173E66AC6F1C62AC34DE65DC6B3C61626932DBA4C4A4C5E4BE29CD94
              6B9A66BAD1B4D374CCCCC82CDCACD8ACC9EC8E39D59C6B9E61BED9BCDBFC8D85
              A5459CC54A8B368BC796DA967CCB05964D96F7AC98563E567956F556D7AC49D6
              5CEB2CEB6DD6576C501B579B0C9B3A9BCBB6A8AD9BADC4769B6DDF14E2148F29
              D229F5536EDA31ECFCEC0AEC9AEC06ED39F661F625F66DF6CF1DCC1C121DD63B
              743B7C727475CC766C70BCEBA4E134C3A9C4A9C3E957671B67A1739DF33517A6
              4B90CB1297769717536DA78AA76E9F7ACB95E51AEEBAD2B5D3F5A39BBB9BDCAD
              D96DD4DDCC3DC57DABFB4D2E9B1BC95DC33DEF41F4F0F758E271CCE39DA79BA7
              C2F390E72F5E765E595EFBBD1E4FB39C269ED6306DC8DBC45BE0BDCB7B603A3E
              3D65FACEE9033EC63E029F7A9F87BEA6BE22DF3DBE237ED67E997E07FC9EFB3B
              FACBFD8FF8BFE179F216F14E056001C101E501BD811A81B3036B031F049904A5
              0735058D05BB062F0C3E15420C090D591F72936FC017F21BF96333DC672C9AD1
              15CA089D155A1BFA30CC264C1ED6118E86CF08DF107E6FA6F94CE9CCB60888E0
              476C88B81F69199917F97D14292A32AA2EEA51B453747174F72CD6ACE459FB67
              BD8EF18FA98CB93BDB6AB6727667AC6A6C526C63EC9BB880B8AAB8817887F845
              F1971274132409ED89E4C4D8C43D89E37302E76C9A339CE49A54967463AEE5DC
              A2B917E6E9CECB9E773C593559907C3885981297B23FE5832042502F184FE5A7
              6E4D1D13F2849B854F45BEA28DA251B1B7B84A3C92E69D5695F638DD3B7D43FA
              68864F4675C633094F522B79911992B923F34D5644D6DEACCFD971D92D39949C
              949CA3520D6996B42BD730B728B74F662B2B930DE479E66DCA1B9387CAF7E423
              F973F3DB156C854CD1A3B452AE500E164C2FA82B785B185B78B848BD485AD433
              DF66FEEAF9230B82167CBD90B050B8B0B3D8B87859F1E022BF45BB16238B5317
              772E315D52BA647869F0D27DCB68CBB296FD50E2585255F26A79DCF28E5283D2
              A5A5432B82573495A994C9CB6EAEF45AB9631561956455EF6A97D55B567F2A17
              955FAC70ACA8AEF8B046B8E6E2574E5FD57CF5796DDADADE4AB7CAEDEB48EBA4
              EB6EACF759BFAF4ABD6A41D5D086F00DAD1BF18DE51B5F6D4ADE74A17A6AF58E
              CDB4CDCACD03356135ED5BCCB6ACDBF2A136A3F67A9D7F5DCB56FDADABB7BED9
              26DAD6BFDD777BF30E831D153BDEEF94ECBCB52B78576BBD457DF56ED2EE82DD
              8F1A621BBABFE67EDDB847774FC59E8F7BA57B07F645EFEB6A746F6CDCAFBFBF
              B2096D52368D1E483A70E59B806FDA9BED9A77B5705A2A0EC241E5C127DFA67C
              7BE350E8A1CEC3DCC3CDDF997FB7F508EB48792BD23ABF75AC2DA36DA03DA1BD
              EFE88CA39D1D5E1D47BEB7FF7EEF31E36375C7358F579EA09D283DF1F9E48293
              E3A764A79E9D4E3F3DD499DC79F74CFC996B5D515DBD6743CF9E3F1774EE4CB7
              5FF7C9F3DEE78F5DF0BC70F422F762DB25B74BAD3DAE3D477E70FDE148AF5B6F
              EB65F7CBED573CAE74F44DEB3BD1EFD37FFA6AC0D573D7F8D72E5D9F79BDEFC6
              EC1BB76E26DD1CB825BAF5F876F6ED17770AEE4CDC5D7A8F78AFFCBEDAFDEA07
              FA0FEA7FB4FEB165C06DE0F860C060CFC3590FEF0E09879EFE94FFD387E1D247
              CC47D52346238D8F9D1F1F1B0D1ABDF264CE93E1A7B2A713CFCA7E56FF79EB73
              ABE7DFFDE2FB4BCF58FCD8F00BF98BCFBFAE79A9F372EFABA9AF3AC723C71FBC
              CE793DF1A6FCADCEDB7DEFB8EFBADFC7BD1F9928FC40FE50F3D1FA63C7A7D04F
              F73EE77CFEFC2FF784F3FB25D29F330000000467414D410000B18E7CFB519300
              0000206348524D00007A25000080830000F9FF000080E9000075300000EA6000
              003A980000176F925FC546000002644944415478DA74D25D68150418C6F1DFCE
              D976DAF1B4CDB90F6D6DEA18A38D10A653C98430698205E2CDC0860651C47275
              DB5810DD45D408BAF0C20C0A6F6A23EAAEE6CD88820962594118139299501E3B
              C76DBAADF3B1B79B61C3B6E7FEF93FCFFBC1866A4FB07DEFD69EA10B87863F5F
              38F8E2A7B9C496435FE3206A51B1B1D7F6244FBEF2F2B96BA55CFCA75F23E2C8
              EB5F963182ADA8DC00D0D1FBF4C8E4DCDC7D6B3622F2F7218DDD83CB3889A6F5
              ABD73C333A7669654DEE17B112E3113113CB1171EA6C363089BDEB5448A464EA
              7B96934593D7AFDA94C8E86D2F2A2ACBE61F91D84C34D7412776AC03B8BE22BB
              927BF3AD94EA1D146E71EE8DACD4438D067AB854E4E72B3720D090F8FFFE941C
              997DADF100BD8369893AB2B7672CCEE5153199E7A78FDE0EE4507EC03D94903A
              7EC071F1C4E54CEC9F4E47FDAB7BC2B3C25131307537EA062603799CC7B13523
              9CA866F17DE5AE41553CDC9256FAA7EC4EF6B2CA4769ED63FC4C8609F3F801BF
              E0F73580CA776DDA7D5ADBCE84027337EF69DFD762F7D082A57C41677FAB9AFA
              9BAE526BC2F798C66C72357D4CBAEFB46D9D950E7793FDD072B9A8754F4653D7
              660D9DB5AA6BAA343E56A750B8235FF09419A3C82579FE9454DF3B5ABAAA1C6E
              53B1B39BCF92B154315591BF352F555B56539B92AC4E2A2D95CC5E9CB7F01BD2
              46FDA58CE16F744F859357C27B111AC756F007C635FBD880E8F8441CBDBD2DDA
              CE08CF09FD6AD66CFEA5AF7C10B1E57C84A6B3813F318E61ECB2CBE35E109911
              E198D02FB3F66E15D847E5049A29FD8D8BF816DF61068BFA75A003D32EB8FB20
              208D1EEC47C36AFD1F710DF7563F6E43FD3B0008F30AA90F7811AC0000000049
              454E44AE426082}
            TabOrder = 2
            OnClick = bfiltrarClick
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.BorderColorChecked = clBlack
            Appearance.Color = 15653832
            Appearance.ColorTo = 16178633
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 15586496
            Appearance.ColorMirrorTo = 16245200
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
        end
        object GRID5: TwwDBGrid
          Left = 0
          Top = 45
          Width = 788
          Height = 342
          DittoAttributes.ShortCutDittoField = 0
          DittoAttributes.ShortCutDittoRecord = 0
          DittoAttributes.Options = []
          DisableThemesInTitle = False
          ControlType.Strings = (
            'produto;CustomEdit;COMBOPRODUTO;F'
            'SITUACAO;ImageIndex;Original Size')
          Selected.Strings = (
            'CODIGO'#9'7'#9'C'#243'digo'#9'F'
            'CODBARRA'#9'17'#9'C'#243'd.Barra'#9'F'
            'produto'#9'55'#9'Produto'#9'F'
            'UNIDADE'#9'4'#9'UN'#9'F'
            'ESTOQUE_ATUAL'#9'10'#9'Estoque'#9'F'
            'vendas'#9'12'#9'Vendas'#9'F'
            'sugestao'#9'12'#9'Sugest'#227'o'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = dssugestao
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 1
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          UseTFields = False
          OnDrawDataCell = GRID5DrawDataCell
        end
      end
      object PageSheet6: TPageSheet
        Left = 0
        Top = 18
        Width = 788
        Height = 387
        Caption = ' | Grade de Produtos'
        DisplayMode = tdGlyph
        ImageIndex = 0
        Margin = 0
        PageIndex = 3
        TabColor = clWindow
        TabWidth = 0
        TransparentColor = clNone
        object Bevel8: TBevel
          Left = 0
          Top = 21
          Width = 788
          Height = 3
          Align = alTop
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 788
          Height = 21
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
        end
        object wwDBGrid2: TwwDBGrid
          Left = 0
          Top = 24
          Width = 788
          Height = 363
          DittoAttributes.ShortCutDittoField = 0
          DittoAttributes.ShortCutDittoRecord = 0
          DittoAttributes.Options = []
          DisableThemesInTitle = False
          ControlType.Strings = (
            'produto;CustomEdit;COMBOPRODUTO;F'
            'SITUACAO;ImageIndex;Original Size')
          Selected.Strings = (
            'CODIGO'#9'7'#9'Refer'#234'ncia'#9'F'
            'CODPRODUTO'#9'10'#9'C'#243'digo'#9'F'
            'produto'#9'90'#9'Produto'#9'F'
            'PRECO'#9'12'#9'PMC'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          DataSource = dsfornecedor_codigo
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          TabOrder = 1
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          UseTFields = False
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label29: TLabel
      Left = 4
      Top = 10
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label30: TLabel
      Left = 112
      Top = 10
      Width = 38
      Height = 13
      Caption = 'Pessoa:'
    end
    object Label33: TLabel
      Left = 318
      Top = 10
      Width = 31
      Height = 13
      Caption = 'Nome:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 48
      Top = 8
      Width = 57
      Height = 21
      DataField = 'CODIGO'
      DataSource = dsfornecedor2
      TabOrder = 0
      OnChange = DBEdit1Change
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object combo_pessoa: TComboBox
      Left = 156
      Top = 8
      Width = 149
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'F'#205'SICA'
      OnExit = combo_pessoaExit
      OnKeyPress = combo_pessoaKeyPress
      Items.Strings = (
        'F'#205'SICA'
        'JUR'#205'DICA'
        'PRODUTOR RURAL'
        'OUTROS')
    end
    object DBEdit2: TDBEdit
      Left = 368
      Top = 6
      Width = 393
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsfornecedor2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnEnter = DBEdit1Enter
      OnExit = DBEdit2Exit
      OnKeyPress = DBEdit1KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 467
    Width = 788
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object bcompras: TAdvGlowButton
      Left = 589
      Top = 3
      Width = 103
      Height = 24
      Caption = 'F8 | Compras'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C0000025C4944415478DA
        62FCFFFF3F03250020805848D5B064C992FFBF7FFF66F8F3E70F03908E050820
        9663C78E819DF0EFDF3F86BF7FFFA2609022640CD2A8ACACCC606666C6F0F2E5
        4B86356BD6540004100BC80B161616600DF8C0AF5FBF1856AD5AF54C474747EA
        EEDDBB0CDBB76F7F0034701A4000B1806CBE73E70E03373737C393274F18A4A4
        A4181E3E7CC8202B2B0B1657505060B879F326838A8A0A033F3FBFD4E3C78F19
        AE5FBF0E3230A5ACAC6C2F4000B1D8DADA32EEDDBBF73F171717C3FBF7EFCD81
        1227DFBC7963FEF3E7CF9340679AFFF8F1E3E48B172FC0F4B367CFC0E25FBF7E
        0579E729C8650001C4042240FEE3E1E101B9E224C8665E5EDE93209B81369E04
        D92C28287852434383414848E8A4B6B636C822900B9E80F4020410232C1A376E
        DCF8DFC5C585E1E8D1A30CAF5EBD32076906D90CD2FCF4E953731111919340E7
        9B8B8A8A9E7CF4E8114363632323481F400031C10209E8A4DA6BD7AE31282A2A
        826D5655556510101000DB2C2C2C7C1218780C20430C0C0C40B6C3130F400031
        2227A4458B16FD874517525CC3D9A00037323262387CF8F0FFEEEE6EB0E50001
        C4484A4AACA8A860031AF41388DF4C9830411424061040E094B870E14275A02D
        45408934988DC82E40A67B7B7B19B3B3B3BFC00C050820166822094D4D4D4D9F
        3469D275A0C202A0C209E5E5E513906D2F2A2A02891700358368669838400081
        BD306DDAB41AA0C666191919700202A5B41B376EC06D056150608202F2C2850B
        0C67CF9EBD3377EE5C5590010001841206EDEDEDB08C52D8D4D484E282CCCCCC
        026072EF072579A066469838400031529A9D01020C0050F67D2E75EBC1EC0000
        000049454E44AE426082}
      TabOrder = 11
      OnClick = bcomprasClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bincluir: TAdvGlowButton
      Left = 10
      Top = 3
      Width = 87
      Height = 24
      Caption = 'F2 | Incluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002E14944415478DA
        62FCFFFF3F032500208058D0057AF6942AFFFDF737EACFDFBF717FFEFE91F8F3
        EF2FC3EFBF7F5E00F98B80F4B289E18BEF22AB070820466417F4EC2909FEF3F7
        DF645931654975097D064E561E865FFF7E31BCFAF28CE1F89D7D0CAFDEBC7EFE
        E7CF9FDC5971ABD7C2F4000410DC0088E6BF0B4D54ECB955C57419EE7EBAC5F0
        E2FB5386DFFF7E33F0B3F13388714A331CBDB593E1EA9DEB5F812E8B5F92B219
        6C084000810DE8DE5DA20474F66103252B2955713D8683CF77317CFBFA8DE1F7
        FF3F0C1C1CEC0CFF81F0E7BF9F0C9A7C3A0CC76EEE61B879FFEEB3DF7FFED8AE
        CBDE7D0F20809840A60035C708F08B4A298868301C79B197E1FBEF1F0CDF7E7F
        672834AE66C8D42E61F8F0F33DC3BB8F2F188E3F3FC060A1E6C8C0C8F6570A18
        1E3120BD0001043600E8F458793175861B1FAF30BCF9F486E1D3B74F0C1FBEBE
        8787CDD3FB8F187EFFFCCAF0F5F35B86279FEE3358AB5B8302361624071040E0
        580072A43958B9181E7EBE0F0CB49F0C9566AD283133357809982EDC19C5F0F4
        C33D061D6113B01E90184000415DF087E1EBEFCF0C9F7F7D62F8CDFC1B6FBCFF
        FFFB8F811118264003C07C800082B9E0E9D3F70F5578D879183E7C7FC7507828
        85E1EBAB4F0CB34256C16D06DBC6C8C420C527C7F0E8D57D90A54F41620001C4
        043560F185FB2719E4B81419FEFFFEC9C008345D48901BC5E67F7FFF3330FD63
        6490E55364D876712F580F481C2080602E58F2EF1773FAC93B07A42C955C188E
        3EDCC1F0E7DF1FB0CDFFFF821DCEC0C6C4CC60AFE4C9B0E3C216868F9FBF3C03
        063C38600002089E909216040113D29F85D212E2DCB6EA2E0C8F3FDE0706D87D
        86FFFFFE31C8082A31C8F0C9336CBFB899E1E4F52B5F81C93BFE7CC335704202
        082094A41C39CB2B18E89AC97F99FF48DA6BDA3088F349822C6778FCFE11C3CE
        F3FB183E7DF9F61CA83917A61904000288113D37FA4F7652061A12F51B9E99FE
        00BDF8179C99FEFEFBB3EC7CC37594CC0410408C94666780000300708A7F01A2
        891CF10000000049454E44AE426082}
      TabOrder = 0
      OnClick = bincluirClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object balterar: TAdvGlowButton
      Left = 98
      Top = 3
      Width = 87
      Height = 24
      Caption = 'F3 | Alterar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        00000004000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BD735200C65A
        0000AD4A0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B55A3100C65A
        0000CE630000B5521000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B55A
        3100C6630000CE630000B55A2100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00B55A2100CE630000C6630000C6846300FFFFFF00FFFFFF00AD4A0000BD5A
        0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A0000BD5A0000C6846300FFFF
        FF00FFFFFF00AD4A0000CE630000B54A0000FFFFFF00FFFFFF00B5520000D673
        0000CE6B0000CE630000CE630000CE630000CE630000C6630000BD6B4200FFFF
        FF00FFFFFF00CE9C8400C6630000C6630000C6846300FFFFFF00BD5A0000DE7B
        0000D6730000CE630000A5421000CE9C8400CE9C8400CE9C8400FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00AD4A0000CE630000B5521000FFFFFF00C6630000E784
        0000CE630000DE730000CE630000C6846300FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00C6734200CE630000B54A0000FFFFFF00CE630000F794
        0000B5521000B5520000DE7B0000CE6B0000BD7B5200FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00C6734200CE630000B54A0000FFFFFF00CE6B0800FF9C
        0800CE844200FFFFFF00B5520000E7840000CE6B0000BD633100FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00B54A0000CE630000B5521000FFFFFF00CE732100FFAD
        3100CE844A00FFFFFF00FFFFFF00C6631000E7840000E77B0000BD520000C67B
        5200C68C7300B5521000C6630000C6630000C6846300FFFFFF00CE7B3900FFBD
        6300C67B5200FFFFFF00FFFFFF00FFFFFF00B55A2100E77B0000E7840000DE7B
        0000D6730000CE6B0000C6630000AD4A1000FFFFFF00FFFFFF00CE947B00C684
        5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE9C8400C6631000CE6B
        0000CE6B0000BD5A0000BD6B4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      TabOrder = 1
      OnClick = balterarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bexcluir: TAdvGlowButton
      Left = 186
      Top = 3
      Width = 87
      Height = 24
      Caption = 'Del | Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002E04944415478DA
        62FCFFFF3F032500208058D0051EE7E529FFFFFB2FEA0FC3DFB8FFBF7E4BFC63
        F8C7F0FFFF9F177F19FE2DFAF7FFEF32EDB9CBEF22AB0708204664173CC9CD0B
        FEF3EFEF643E4D15496E03030646013E06861F3F187EBF7CC6F06ECF1E86F7EF
        DE3EFFFBFF6FAEE1A2F56B617A0002086E0048F3DFBF7F170AB9387073EBEB31
        FCBD778D81E1E56306865FBF181879041918E5E418DE6ED9C6F0F8C19DAFFFFE
        FE89375DBE1D6C084000810D78949BAB0474F661613B4B292E134386BFFB3733
        7CFBFE8381F1EF6F0676365606C67FFF19FEFFFAC1C0A065C4F07AC76E86272F
        1F3DFBF7FF8FADD5CA7DF700028809640A50730C9794B014A7AE16C3DF43DB19
        FEFEFCCEF0EFE73706D66F9F18FE7D78CBF0F7D33B867F3FBE31FC3EBC9B41D4
        D19181F3C74FA9BFFFFEC680F40204103810FF31FE8DE5D6D160F877FD02C3B7
        F76F18FE5C8684D337B4006693E067F873FF2E83A48115C3872B876281424D00
        010436001830D22C5C5C0C0CB76E3130FCFCC920BC6035D6287B15E5C7C0FAF9
        370387B105C3BF0B7FA44162000104F1C2AFDF0CFF3E019DFBF92303DBDF1F78
        E3FDCF9F7F400D2057FF01F3010208E682A7DF1F3E50E1E4E663F8FBE82DD826
        AC808989814D569EE1E3FDFB0CFF7EFF790A12020820B00BFEFEFBB3F8EDA953
        0CFFA55418FE7EFCC9C0CACB8AA1F72F30B6FEFE6766605550617874753F0330
        161683C40102086C0090B3E40B37C7B3B707F633B07A780363808981919919A2
        918191E1EF5F909B5918F83C7C181EEEDDCAF0E5D7B7677F19FF2F01C9030410
        3C219D8BF60B061AB4509447985BD4D195E1D783BB0CBFEEDE65F8F7EB1F03BB
        BA0A039B8C22C3E3BD9B191EBCBDF5F51FE3BF78AF2DD7C0090920805092F2C9
        48F760602A9BCCF6F797A48C862530DAA420D1F9EC11C3DDAB8718BEFDFDF11C
        A83917A61904000288113D371E097550FEFFE777D41FE67F71FFFFFD9500C510
        90FD02C85EF4EFCF9F655EDB6FA06426800062A4343B03041800C3755C60AB63
        B7520000000049454E44AE426082}
      TabOrder = 2
      OnClick = bexcluirClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object blocalizar: TAdvGlowButton
      Left = 274
      Top = 3
      Width = 103
      Height = 24
      Caption = 'F6 | Localizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002514944415478DA
        62FCFFFF3F032500208058608C43F7FF32FDFBF76FEA9FBFFF7DFEFEFD2BF5E7
        EF3F86DF7FFE3EFBF3E7EF96DFBFFF66475A8AFCC36600400031825C7010A4F9
        EFBF7DFCECFFED05B91819589880AE02A21F7FFE333C7EF383E1D1EBEF077FFF
        F9E394EA2C8361084000318188BF7FFF4DE563FF672FC6C3C8F0E3F75F86375F
        FE32BC04E26FBFFE312888723288F1B3DAFFFCF5672A3617000410D800A0337D
        843819193EFF0469FACFF0E7DF7FA0A1FF19BE02D9EFBEFF659016E664001AE0
        83CD008000021B00F4AB14339005D2FC17A419E850B02140FCF5E73F06365666
        865FBFFE486133002080C081F8EBF71F867FFF59C19AFE0135FFFD8FA0FF8369
        06869F4035D8004000815D0034FDD98FDFFF8081C708B599014EB3B230327CFB
        F19BE1CFAF5FAFB0190010404C50176C79F0F21B032F3B13031B3323D8E92017
        B003350B7032335CB9FB8641FCEB0581BDAD3EEAE806000410D800600065DF7F
        F1E5E0D5871F1880DE6510E36501863C0B031B303A4F5D7BC1F0E5ED0B0667A9
        971C3F7F7E3BB2A1C20AC51080006284A5C4099BEF3101E37A2A30D1F8FC0206
        EA1F60740203F7B9C8F7ABBF9CF82F2BCA689A313CBB799AE1D6995D6F7EFFFE
        611333E5FA4D903E8000622494947734B8B2FDFAF563B9889C4690BC9625C3E3
        1B2719AE9DD9F92669D60351903C400031114AEB1E0DBB7F019D1EF9E0DAF175
        37CEEC601093510606FA4F11983C400031129B99E6A72BB3FDF9F37339332B7B
        D0B72FEF3B7296BCAB04890304102329B9715A9C28F3DFBF7FC47397BE7F0613
        030820464AB333408001004AB837A11ECA28F10000000049454E44AE426082}
      TabOrder = 3
      OnClick = blocalizarClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object DBAdvGlowButton1: TDBAdvGlowButton
      Left = 380
      Top = 3
      Width = 23
      Height = 24
      Hint = 'First record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsfornecedor2
      DBButtonType = dbFirst
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton2: TDBAdvGlowButton
      Left = 403
      Top = 3
      Width = 23
      Height = 24
      Hint = 'Prior record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsfornecedor2
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton3: TDBAdvGlowButton
      Left = 426
      Top = 3
      Width = 23
      Height = 24
      Hint = 'Next record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 6
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsfornecedor2
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton4: TDBAdvGlowButton
      Left = 449
      Top = 3
      Width = 23
      Height = 24
      Hint = 'Last record'
      ImageIndex = 0
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 7
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
      AutoDisable = True
      ConfirmAction = False
      DataSource = dsfornecedor2
      DBButtonType = dbLast
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object bitbtn5: TAdvGlowButton
      Left = 477
      Top = 3
      Width = 103
      Height = 24
      Caption = 'F7 | Relat'#243'rios'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002B64944415478DA
        62FCFFFF3F030CB8D61D4AE0E4638F6662647006721981F007C37F4686BF7FFF
        B0BF7FFB7FDA914EEB1C06340010408CC80678B51FFDB538C798950968024C18
        44BFFEF28B61D9990F0CCFEEFFF87EFBD62DC18353BC7FC2F400041013B269CC
        CC4C7F58999918EEBF676178F08199E1F65B46866BAF18181445B919024CA418
        1455393859F8B8E723EB0108201403FE839C0D1564626484E3E7EFBE33C8F3FC
        6648B514666066650E45D603104070039A9A9A38814630819CCCC20CC28C0CCC
        40AF80E83B40979C7CF487819D9599819185F15F626222274C1F400031413527
        03A95740EBD9405E67616402BB8215A89905E802763666060E20FE0F1405BA88
        EDE7CF9FAF424242407A1800028809A8D9555252728EB7B7370F131313C33F50
        C83242BCC0088C019021AC2C4C0C6CCCCC603926266686ACAC2C1E4545C5391E
        1E1EAE0001C40214EBB5B0B06010131363D0FF34956142E736065C6017101B03
        B1AA6A3643404000C3A3478FA6030410C800752D2D2DB0023F3F3F0675757506
        7CE0CA952B0C22222260BC66CD1A25800062F9FBF72F1B1083251F3C78009678
        F3E60D56CD20B9BB77EF32181B1B83F91F3F7E64040820963F7FFE30DCBB770F
        2C00D2080C20862F5FBE603580878787E1F5EBD770F5201A2080587EFFFECDF0
        E4C913B0C0B76FDF184006FEFAF50BAB0120B9AF5FBFC2D5830C030820B00130
        0D1C1C1C0C6BD7AE05B37FFCF80156FCF9F3679053C11894EC757474E0EA417A
        01028805C8F9F7E9D327263E3E3EB01734B5F5188445C4B0BAE0F5AB170C2D4D
        F50CEEEEEE0CCF9E3D63F8F7EF1F034000B100FD3C67DBB66D9640D374396DF3
        194ABD8D18BEFD02276B867F401BFFFEFDCFF01B18C87F818A2D2D4C1976BE92
        62C8CF8F05B9E61250C94A800042C98D49D34EFE656106A6A6FF28F9034E3202
        13D79F3FFFFECDCB366786C90304180072C1114B15D29D760000000049454E44
        AE426082}
      TabOrder = 8
      OnClick = BitBtn5Click
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object bfechar: TAdvGlowButton
      Left = 698
      Top = 3
      Width = 73
      Height = 24
      Caption = 'ESC | Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002A04944415478DA
        62FCFFFF3F032500208058D005FEB6652BFFFBFF3FEAFFBF7F71FFFEFD930062
        06207E01C48BFEFDFDB74CA063D15D64F50001C488EC82DFAD59C1FFFFFD9FFC
        95914D924D598581858F0F22FEE923C3B7EBD71998BE7D7CFEEFDFDF5CB1BE95
        6B617A0002086EC0AF964CA0E67F0B7F8AC97173A9A932FC7DF690E11F108300
        93A41C0393943CC3A76BD7197EDCBAFCF5DFDFBFF1B2D336800D010820B0013F
        9B3294804E3CFC4B424E8A5B4D8DE1D7D15D608D5CB573C0F497FA2406867FFF
        19D86CDD183E5EB9CAF0E5FAF9677FFFFDB35599BBFD1E40003181FDFDF74FCC
        3726768466A0A140AFC0BDF6EFCF3F86BF7FFE337CDBBB9D814F438BE13F8FB0
        D49FDFBF63407200010436E0CF9F3FB1ECAA40673FB90FD6F8EF2FD000A02664
        03FEFDFECBF0F7D73F869FF7EE32F06BE830FCFEFD3B16240710403003A45905
        0418FE3CBE0FD608B3111E33408D7F7F43C47FDCB9CBC02A20C4F0E7F71F6990
        1C4000410CF8FD87E13FD0569846988DBF6F5D4178E137D490BF409701F19F3F
        BFC17200010475C1EFA73FDFBC0386B63CDCA920C5DF8FEC65F8B26139DCF67F
        409A455681E1DB9B37204B9F82F4020410CC058B3F5CB9C4C02CA500570CA2F9
        92F219780222C11AFF82C48036B32B2831BCBA701AE4EDC520BD000104360018
        204B7EBD7DF6ECFDD52B0C5C4E9E7043DE4DEE62783BB913AC11C417F0F26178
        7DE502C3FBC7B79F010D5802D20B1040F084742DD639189840160A689B710B02
        43F9C7FD7BE00003C9B32B2A81F11BA0E647C7777D05A69978A77D37C0090920
        805092F28550EB60600299CC21242529AC63C4C02E20084A120C3FDEBF637879
        FE24C3FB27778049F95FAECB819BF0A40C10408CE8B9F1A49F893250511430B4
        8199E92F6A66FAF76F99EBC1DB28990920801829CDCE0001060095D1AF4C86CE
        FBDD0000000049454E44AE426082}
      TabOrder = 9
      OnClick = bfecharClick
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object pgravar: TFlatPanel
      Left = 0
      Top = 14
      Width = 778
      Height = 33
      ParentColor = True
      Visible = False
      ColorHighLight = clBtnFace
      ColorShadow = clBtnFace
      TabOrder = 10
      UseDockManager = True
      object bgravar: TAdvGlowButton
        Left = 272
        Top = 4
        Width = 108
        Height = 24
        Caption = 'F2 | Gravar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 49
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000467414D410000AFC837058AE90000001974455874536F6674776172
          650041646F626520496D616765526561647971C9653C000003274944415478DA
          62FCFFFF3F032500208058D005924F392AFFF9F33BEAEFDF7F713F7FFF90F8F7
          EF0F03C3BF7F2F18FE312CFAF3F7EFB28DDED7EF22AB070820466417249EB00B
          FEF9FBE764690665497D515B066E567EB0F8E75F1F184E3EDECD70E3D3F9E740
          8372F7863D580BD30310407003E28FD9047FFFFD73A1359F37B7BAB001C3B3EF
          8F199E7D7B0A9693E2926690E09461B8F6FC14C3F2AB4BBF029D1D7F32E911D8
          108000021B107BD84AE9E79FDF87AD05BCA55485F5198EBEDECFF0E7DF5F20FE
          C7C0045204F22B233383B59823C3D5A7A718965C5AF60CE812DB4BD98FEF0104
          10489EE1EF9FDF31D28CCA52209B419A7FFCF9CDF0EBEF6F863F40FCEBCF2F06
          609830B84A79339C7A71984147DA8CC1505847EAE76F8618905E8000021BF0FB
          EFCF5843093B8627DF1E0135FD61F80B0CB87F409A11E802C67FFF19FC15C218
          1C653C1932744B189E7CBACF60AFEACCF0EB27432C482F4000810DF8FEF3A7B4
          009B10C3D3AF0F819AFF327848FB306468150235333104288633D84BBB810DDD
          7C6725C3D30FF7180439C518FE7DFF2F0DD20B10402C500318FE01C3E23FD046
          5E665E062B0907063E367E865AB30E06210E11B0E659177A196EBFB9CCC0C3CA
          030C1360C0FF86C4024000815DC0F00768F0B7D70CD25CB20C5F7E7E649876A1
          93E1EBEFCF60CDFFFEFF639875AE9BE1FAABF3E0C094E2936378FDE139D0750C
          E0280208204818FCFEBFF8E8BDDD0C529CB20CACFF18185E7D7DC630F17433C3
          ADB75719E69CEF65B8F6FA02500323031310CBF229326CB9B28B01E888C520BD
          00010436E0E7F7FF4B4E3FBBF0ECF2D3130C96522E0C6C4085EFBE3E67987EA6
          95E1DA8BF30CCCFF9918D8989819EC953C194EDF3BCC70E1DACD670CBF189680
          F40204103C21E94C920DFEFAF3FFC26493206E23596B86C71FEF03FD751F1C2E
          32824A0C327CF20C27EF1D6458B075CB572656C6F8077D4FC0090920805092B2
          52B76CF0BF9FFF271BCBAA4B7A68B902435B04E45486D75F5F306CBBB08BE1D2
          F5BBCF199918731FF43F81276580006244CF8D0A4DB2CA0C7FFF47010336EEFF
          CFFF120C7F81299191F105506A1130E4973D98FC04253301041023A5D91920C0
          00B9755E16835EC02B0000000049454E44AE426082}
        TabOrder = 0
        OnClick = bgravarClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object bcancelar: TAdvGlowButton
        Left = 397
        Top = 4
        Width = 108
        Height = 24
        Caption = 'ESC | Cancelar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 49
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000467414D410000AFC837058AE90000001974455874536F6674776172
          650041646F626520496D616765526561647971C9653C000002E74944415478DA
          62FCFFFF3F032500208058D0059EB636C431FCFB9BF9FFEF3F7D86BF7FBFFFFF
          FB87E1FFDFBF9C407C91E1CF9FE9F213A62D42560F10408CC82E006A8E67E5E3
          5A2060A4C9C0CACFC3F0FFF71F0686BFFF18188172BFDEBE67787BE40CC3CF57
          6F9214672E980FD303104070039EB6D427B2F072CD1334D66260FBF69481E1D5
          2306867FFF18184086FCFCC9C0C02FC9F0935786E1F5C1130C3F5FBF4D565EB4
          721E481F4000810D78DA5C97C8C207D46C04D4FC15A8F9D93D06A07381D6FE06
          1AF01B62C8AF5F0C0CE20A0C3F05E4185E1E380E7249A2EAEA4D0B0002880964
          0AD09F9982869A0C6C1F1F33303CBACDC02028C3C0A0E308D4F89781E13BD076
          4D2B0606216906865B5718D89FDC6010B334027AEF5726482F40004102F1CF5F
          3D566E6E06866B409B7F026DE2E06760B0F26360E0126460F8F619C8F6626058
          3505287F8981E1F6550676653DA001BFF5415A0102086CC0FF3FBFBFFDFFF993
          9D1164E30FA08DE70E3230B0703230B8864342EAE0460686C33B20728C4C0CFF
          7EFC0219F00D240510406003FE81FC0B73EEF75F104DACEC88B862051AF6E71F
          DC00A08B419682A5000208E282DFBFB9191980B1F1ED1BC410637B0606870006
          865D6B18183E7F6060084E01062C305656CC640029636204E9F9C30DD20B1040
          9030F8FDFBF2EFB7EF8DD984810175E71A03C3BD1B0C0C8B263030ECDB04B40D
          68D3ABE7C0787E0C894E252D861FAFDE805C7019A4152080A05EF83DFDD591D3
          73444DF519D8BF7D6760B80994BB7611128D20EFED580F36E88FB216C34F251D
          8667BBF7010DF83B1DA4172080E009E96E4C680A2B2FCF6C313323068EFB5780
          2E01BAE2FF3F706AFCFDF307C33F3965865FC0D07FB9673F300DBC4ED5397365
          0E481F4000A124E55BC13E89ECFCBCF3C4CC8C19D804F819FE0213CFBF7F7FC1
          01F7FDCD5B8637FB0F32FC7CFE3249E7EC55785206082046F4DC78D3CB29EEFF
          9F3FC0CCF4571F487F674064A64B403C5DF7ECB585C8EA01028891D2EC0C1060
          008C5756165E6F8C750000000049454E44AE426082}
        TabOrder = 1
        OnClick = bcancelarClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
    end
  end
  object Pop1: TPopupMenu
    Left = 664
    Top = 312
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      ShortCut = 114
      OnClick = balterarClick
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 46
      OnClick = bexcluirClick
    end
    object Localizar1: TMenuItem
      Caption = 'Localizar'
      ShortCut = 117
      OnClick = blocalizarClick
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 118
      OnClick = BitBtn5Click
    end
    object compras1: TMenuItem
      Caption = 'compras'
      ShortCut = 119
      OnClick = compras1Click
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object FichadeCadastro1: TMenuItem
      Caption = 'Ficha de Cadastro'
      ShortCut = 121
      OnClick = FichadeCadastro1Click
    end
    object Movimentaes1: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      ShortCut = 122
      OnClick = Movimentaes1Click
    end
    object Sugestesdecompra1: TMenuItem
      Caption = 'Sugest'#245'es de compra'
      ShortCut = 123
      OnClick = Sugestesdecompra1Click
    end
  end
  object Pop2: TPopupMenu
    Left = 624
    Top = 304
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
  object dsfornecedor2: TDataSource
    DataSet = frmmodulo.qrfornecedor
    Left = 720
    Top = 368
  end
  object QUERY: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select sum(total) sum_0, '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048)  '
      ' from c000048')
    Params = <>
    Left = 800
    Top = 312
  end
  object qrcontasPAGAR: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrcontasPAGARCalcFields
    SQL.Strings = (
      'select * from c000046')
    Params = <>
    Left = 960
    Top = 312
    object qrcontasPAGARsituacao2: TIntegerField
      DisplayLabel = '?'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'situacao2'
      Calculated = True
    end
    object qrcontasPAGARDATA_VENCIMENTO: TDateTimeField
      DisplayLabel = 'VENCTO.'
      DisplayWidth = 9
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcontasPAGARDATA_EMISSAO: TDateTimeField
      DisplayLabel = 'EMISS'#195'O'
      DisplayWidth = 9
      FieldName = 'DATA_EMISSAO'
    end
    object qrcontasPAGARESPECIE: TStringField
      DisplayLabel = 'ESP'#201'CIE'
      DisplayWidth = 9
      FieldName = 'ESPECIE'
    end
    object qrcontasPAGARDOCUMENTO: TStringField
      DisplayLabel = 'DOCTO.'
      DisplayWidth = 8
      FieldName = 'DOCUMENTO'
    end
    object qrcontasPAGARHISTORICO: TStringField
      DisplayWidth = 17
      FieldName = 'HISTORICO'
      Size = 60
    end
    object qrcontasPAGARVALOR: TFloatField
      DisplayLabel = 'VALOR-R$'
      DisplayWidth = 8
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasPAGARconta: TStringField
      DisplayWidth = 17
      FieldKind = fkLookup
      FieldName = 'conta'
      LookupDataSet = frmmodulo.qrplano
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CONTA'
      KeyFields = 'codconta'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qrcontasPAGARFILTRO: TIntegerField
      DisplayLabel = 'S'
      DisplayWidth = 4
      FieldName = 'FILTRO'
      Visible = False
    end
    object qrcontasPAGARfornecedor: TStringField
      DisplayLabel = 'FORNECEDOR'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Visible = False
      Size = 50
      Lookup = True
    end
    object qrcontasPAGARNOTAFISCAL: TStringField
      DisplayLabel = 'NOTA FISCAL'
      DisplayWidth = 11
      FieldName = 'NOTAFISCAL'
      Visible = False
      Size = 10
    end
    object qrcontasPAGARSITUACAO: TIntegerField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrcontasPAGARVALORPAGO: TFloatField
      DisplayWidth = 10
      FieldName = 'VALORPAGO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasPAGARCODCONTA: TStringField
      DisplayWidth = 9
      FieldName = 'CODCONTA'
      Visible = False
      Size = 6
    end
    object qrcontasPAGARCODFORNECEDOR: TStringField
      DisplayWidth = 15
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object qrcontasPAGARCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrcontasPAGARDATA_PAGAMENTO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_PAGAMENTO'
      Visible = False
    end
    object qrcontasPAGARLIQUIDO: TFloatField
      DisplayWidth = 10
      FieldName = 'LIQUIDO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasPAGARDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasPAGARACRESCIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ACRESCIMO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasPAGARC: TStringField
      DisplayWidth = 1
      FieldName = 'C'
      Visible = False
      Size = 1
    end
    object qrcontasPAGARE: TStringField
      DisplayWidth = 1
      FieldName = 'E'
      Visible = False
      Size = 1
    end
    object qrcontasPAGARCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Visible = False
      Size = 6
    end
    object qrcontasPAGARMOVIMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'MOVIMENTO'
      Visible = False
    end
    object qrcontasPAGARCODCAIXA: TStringField
      DisplayWidth = 6
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
  end
  object QRCOMPRA_MES: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select sum(total) sum_0, '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048)  '
      ' from c000048')
    Params = <>
    Left = 456
    Top = 304
    object QRCOMPRA_MESsum_0: TFloatField
      DisplayLabel = 'janeiro'
      DisplayWidth = 9
      FieldName = 'sum_0'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object QRCOMPRA_MESsum: TFloatField
      DisplayWidth = 8
      FieldName = 'sum'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object QRCOMPRA_MESsum_1: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_1'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object QRCOMPRA_MESsum_2: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_2'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object QRCOMPRA_MESsum_3: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_3'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object QRCOMPRA_MESsum_4: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_4'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object QRCOMPRA_MESsum_5: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_5'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object QRCOMPRA_MESsum_6: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_6'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object QRCOMPRA_MESsum_7: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_7'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object QRCOMPRA_MESsum_8: TFloatField
      DisplayWidth = 9
      FieldName = 'sum_8'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object QRCOMPRA_MESsum_9: TFloatField
      DisplayWidth = 9
      FieldName = 'sum_9'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object QRCOMPRA_MESsum_10: TFloatField
      DisplayWidth = 9
      FieldName = 'sum_10'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 832
    Top = 312
    object qrprodutoCODPRODUTO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrprodutoPRODUTO: TStringField
      DisplayWidth = 22
      FieldKind = fkLookup
      FieldName = 'PRODUTO'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Size = 30
      Lookup = True
    end
    object qrprodutoUNIDADE: TStringField
      DisplayLabel = 'UN.'
      DisplayWidth = 3
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrprodutoQTDE: TFloatField
      DisplayWidth = 4
      FieldName = 'QTDE'
    end
    object qrprodutoUNITARIO: TFloatField
      DisplayLabel = 'PRE'#199'O'
      DisplayWidth = 6
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoTOTAL: TFloatField
      DisplayWidth = 7
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoSERIAL: TStringField
      DisplayWidth = 12
      FieldName = 'SERIAL'
      Size = 25
    end
    object qrprodutoCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrprodutoCODNOTA: TStringField
      DisplayWidth = 6
      FieldName = 'CODNOTA'
      Visible = False
      Size = 6
    end
    object qrprodutoICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS'
      Visible = False
    end
    object qrprodutoIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'IPI'
      Visible = False
    end
    object qrprodutoCFOP: TStringField
      DisplayWidth = 6
      FieldName = 'CFOP'
      Visible = False
      Size = 6
    end
    object qrprodutoDATA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA'
      Visible = False
    end
    object qrprodutoNUMERONOTA: TStringField
      DisplayWidth = 6
      FieldName = 'NUMERONOTA'
      Visible = False
      Size = 6
    end
    object qrprodutoCODCLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrprodutoDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrprodutoACRESCIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ACRESCIMO'
      Visible = False
    end
    object qrprodutoMOVIMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'MOVIMENTO'
      Visible = False
    end
    object qrprodutoCODVENDEDOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrprodutoCODGRADE: TStringField
      DisplayWidth = 6
      FieldName = 'CODGRADE'
      Visible = False
      Size = 6
    end
    object qrprodutoVALOR_ICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_ICMS'
      Visible = False
    end
    object qrprodutoICMS_REDUZIDO: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_REDUZIDO'
      Visible = False
    end
    object qrprodutoBASE_CALCULO: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_CALCULO'
      Visible = False
    end
    object qrprodutoVALOR_IPI: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_IPI'
      Visible = False
    end
  end
  object qrcompra: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000031')
    Params = <>
    Left = 488
    Top = 304
    object qrcompraNUMERO: TStringField
      DisplayLabel = 'N'#218'MERO'
      DisplayWidth = 8
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrcompraDATA: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DATA'
    end
    object qrcompraTOTAL_NOTA: TFloatField
      DisplayLabel = 'VALOR-R$'
      DisplayWidth = 11
      FieldName = 'TOTAL_NOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcompraCODIGO: TStringField
      DisplayLabel = 'N'#218'MERO'
      DisplayWidth = 8
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrcompraCFOP: TStringField
      FieldName = 'CFOP'
      Visible = False
      Size = 5
    end
    object qrcompraCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object qrcompraVALOR_PRODUTOS: TFloatField
      FieldName = 'VALOR_PRODUTOS'
      Visible = False
    end
    object qrcompraBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
      Visible = False
    end
    object qrcompraVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      Visible = False
    end
    object qrcompraBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
      Visible = False
    end
    object qrcompraICMS_SUB: TFloatField
      FieldName = 'ICMS_SUB'
      Visible = False
    end
    object qrcompraFRETE: TFloatField
      FieldName = 'FRETE'
      Visible = False
    end
    object qrcompraSEGURO: TFloatField
      FieldName = 'SEGURO'
      Visible = False
    end
    object qrcompraOUTRAS_DESPESAS: TFloatField
      FieldName = 'OUTRAS_DESPESAS'
      Visible = False
    end
    object qrcompraVALOR_TOTAL_IPI: TFloatField
      FieldName = 'VALOR_TOTAL_IPI'
      Visible = False
    end
    object qrcompraITENS: TIntegerField
      FieldName = 'ITENS'
      Visible = False
    end
    object qrcompraDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrcompraMODELO: TStringField
      FieldName = 'MODELO'
      Visible = False
      Size = 2
    end
    object qrcompraSERIE: TStringField
      FieldName = 'SERIE'
      Visible = False
      Size = 3
    end
    object qrcompraALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      Visible = False
    end
    object qrcompraSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrcompraMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Visible = False
      Size = 2
    end
    object qrcompraSERIE_NF: TStringField
      FieldName = 'SERIE_NF'
      Visible = False
      Size = 3
    end
    object qrcompraVALOR_ISENTO_ICMS: TFloatField
      FieldName = 'VALOR_ISENTO_ICMS'
      Visible = False
    end
    object qrcompraALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
      Visible = False
    end
    object qrcompraSITUACAO_A: TStringField
      FieldName = 'SITUACAO_A'
      Visible = False
      Size = 1
    end
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Height = 15
    Width = 15
    Left = 896
    Top = 312
    Bitmap = {
      494C01010600090004000F000F00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000003C0000002D0000000100200000000000302A
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007AC8EC002CA6DF002AA3DE0028A0DC00269DDB00249AD9002297D8001F92
      D5001A8BD2001584CE00107DCB000C76C8000870C500056BC2000267C0000000
      00006AAE6E0565AA69AF60A665FD6BAE6FFF4C9750FB529C56344E9952220000
      00001A57C3802564C9FB2177E6FF0579EAFF0164DDFF044DBDFC000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000047B5E500BDE2F400F3FBFD00EEFA
      FD00EDFAFD00EDFAFD00EEFBFD00EEFBFD00EEFAFD00EDFAFD00ECFAFD00ECFA
      FD00EBFAFD00F1FBFD00AACDEA00000000006FB274277CBB81FCB7DEBBFF67AC
      6CFF75B67AFF4E9851FE539C57B84F99537A0345B9E3639DF4FF187FFFFF0076
      F8FF0076EEFF0368E1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C3E7F70061BEE700F3FBFD00B4EEF90057D9F40057D9F40056D7F20057D6
      F10057D5F10056D8F30050D7F4004DD6F30061D9F500E9FAFD004392D1000000
      000075B67A9B9CCDA0FF6FB273FF8DC792FFAADCAFFF76B67BFF519B55FF77B7
      7BFF0442BCFFAECDFEFFFFFFFFFFFFFFFFFFFFFFFFFF187FEFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005DC0EA009CD6F000E6F8
      FC008AE4F70059DAF5005AD9F3003CA0D4003CA0D40053D5F10051D7F4004FD5
      F300D7F5FB0087BEE40054A0D8007FBE84197BBB80FF77B77CFF91CB97FFABDE
      B1FF9CD7A2FFAADDB0FF77B77CFF60AC65FF1A58B8FF8DB5F6FF4D92FFFF1177
      FFFF2186FFFF408AEBFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E2F4FB0036B1E400F2FAFD00C2F1FA005BDBF5005BD9F30063DE
      F50056CAEA0054D5F10053D8F40093E6F700E2F3FA001B89D000DEEDF8007FBD
      84A07FBD84FF97CE9CFFADDFB3FF6FB374FF96D59DFF9DD8A3FFAADDB0FF78B8
      7CFF4B8C9AFF3B76D1FF8DB5F7FFB8D6FEFF72A8F5FF2D6BCAFD000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000078CCEE008BD1
      EF00E9FAFD0093E5F7005BD9F30046B0DC003CA0D40055D6F1005BDAF400DDF7
      FC007CBFE60087C3E800000000007BBB80FF8EC893FFAFDFB5FFA1DAA7FF98D7
      9FFF97D69EFF7EC083FF82C187FFABDDB0FF79B97DFF438693FF235FC1FF0543
      BCFF1857BAFF2B7283FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F6FCFE0044B9E700C7E9F600E5F9FC005CD9F3003CA0
      D4003CA0D40056D6F100C6F2FB00BFE2F3003AA3DC00F5FAFD00000000008DC9
      937D7DBB82FF8FC894FFB0E0B6FFA2DAA8FF7FC185FFA4D0A7FFDDEEDFFF80B8
      83FFABDEB1FF7AB97FFF569F5AFFC4E7C8FF78B87CFF4E995284000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B8E5
      F70070C7EC00F8FDFE005DDBF3003DA1D4003DA1D4005BD8F300ECFAFD0067BA
      E400B2DCF2000000000000000000000000008EC993257DBC82FA90C995FFB0E0
      B6FF85C28AFFF7FCF8FF95C297FFDDEEDFFF82C287FFABDEB1FF7BBA7FFF58A0
      5CFF59A15DFF539C570400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000059C2EB00A8DEF300ECF8FC003DA2
      D5003DA2D500D3F4FB00A1D6F0005CB8E5000000000000000000000000000000
      000000000000000000007EBD83F691CA96FFB1E0B6FFD9F3DDFFF7FCF8FFA4D0
      A7FF7EC084FF9FD9A5FFACDEB2FF7BBB80FF569F5AFB00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DAF2FB0039B7E700F8FCFE0093E8F8009DEAF900EBF9FD0030A9E000D7EE
      F900000000000000000000000000000000000000000000000000000000007FBE
      85F592CB97FFB1E1B6FF85C38AFF80C185FF99D7A0FF98D79FFF9FD9A5FFACDF
      B2FF7DBB81FF58A05CF600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000073CDEF0093D7F100F2FB
      FD00E6F9FD008ED2EF0085CEEE00000000000000000000000000000000000000
      00000000000000000000000000000000000081BF86F593CC98FFB1E1B7FFA3DB
      A9FF9BD8A2FF73B477FFAFDFB4FF87C38CFF65AA69FF5DA4610E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F1FAFE0043BDE900F0F9FC00D4EEF90042B7E700F1F9FD000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000082C087F594CC99FFB2E2B7FFA3DCAAFFB0E0B6FF8CC692FF6EB1
      73FF66AB6B0E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008CD7F30084D3
      F00081D0EF00ACE0F50000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000083C188F594CD
      9AFFB3E2B7FF93CB98FF77B77CFF70B2740E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FDFEFF005CC6EE0068C9EE00FDFEFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084C28AF596CD9BFF80BE85FF79B97E0E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000086C38BF582C0870E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F1E7
      E300CAAA9B00A16A50008F573D008D563D0099685100C5A99B00EEE7E3000000
      0000000000000000000000000000000000000000000000000000E0EEE0008FBF
      91003A8C3E0024792800247628003A843E008FB99100E0EBE000000000000000
      00000000000000000000000000000000000000000000E3E6F7009AA6E3004C61
      CB00354EC400334CC200455CC60094A1DE00E1E4F50000000000000000000000
      0000A97151A9C38E68FFC08B66FFBE8864FFBB8561FFB9835FFFB47E5CFFB27C
      5AFFB17B58FFAE7957FFAD7656FFAB7554FFA97353FFA97151FFA97151A90000
      00000000000000000000DFC8BD00A2654700B17F5600D4B69200DAC2A500D9C2
      A500D1B38F00AA795100915F4700D8C6BD000000000000000000000000000000
      000000000000B5D9B600308E3400419F510086C999009AD2AA009AD1AA0082C6
      95003C964B00307B3300B4D0B600000000000000000000000000000000000000
      0000BFC7EF004B62D0005163D300838FE600949FED00949EEC00828DE4004B5C
      CD003C53C300B8C0E9000000000000000000C8926CFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFA97251FF0000000000000000E2CCBD00A25B3B00CAA6
      7C00D7BA9E00C29B7600B5896100B3855F00BD957100D0B29600C4A276008856
      3D00D8C6BD00000000000000000000000000B5DBBA00248E29006CBD8200A7DA
      B40086CB970065BB7C0063B97B0085CA9700A4D8B30065B67C0023712600B4D0
      B600000000000000000000000000C1CAF100465FD4007483E200A0ABF3007E8A
      EB005B66E3005A65E2007C86E9009EA7F0006E7BDC00314AC100B8C1E9000000
      0000CA946EFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFDFFFEFEFDFFFEFEFCFFFEFE
      FCFFFEFEFCFFFEFEFCFFFEFEFAFFFEFEFAFFFCFCF9FFFFFFFFFFAA7353FF0000
      0000F4ECE400B3774900CEA98000D9BBA100BD906500B98B6100B6885E00B283
      5D00B0825C00AF825B00CCA98C00C5A4780094614800EFE8E40000000000E1F2
      E40032A0430071C18600A7DAB1005FBB76005BB9720058B76F0058B46E0057B4
      6E005AB67300A4D8B20068B77E00307F3400E0ECE10000000000E7EAFA00586F
      DD007787E500A2AFF4005666E6005564E5008891EC008791EB00525EE100515C
      E0009EA8F1006E7CDC004056C600E2E6F600CC976FFFFFFFFFFFFFFFFCFFFFFF
      FDFFFEFEFCFFFEFEFCFFFEFEFBFFFDFDFAFFFDFDFAFFFDFDFAFFFDFDFAFFFCFC
      F7FFFBFBF6FFFFFFFFFFAC7554FF00000000DBBC9B00BE905D00DFC1A700C495
      6B00C1906800E0CAB700FDFCFB00FEFEFD00E9DBCF00B3845D00B2845D00D3B4
      9800AD7A5500C7A99B00000000008FD29F004BAF6300A9DCB30063C078005EBD
      700074C48400D3EBD80089CC980055B56B0057B46D005BB67300A5D9B300409A
      4D008EBB900000000000A7B4F0005F72DF00A3B2F600596DEA00586BE9005768
      E700FEFEFE00FEFEFE005461E4005360E200525EE1009EA8F1004F60D00097A3
      E000D19C73FFFFFFFFFFFEFEFCFFFEFEFCFFFEFEFCFFFDFDFBFFFDFDFBFFFDFD
      FAFFFDFDF8FFFBFBF9FFFBFAF7FFFBFAF6FFFBF8F4FFFFFFFFFFB07A58FF0000
      0000C58F5100DABB9B00D4AC8800C6976B00C2946800C0926600ECDED200F9F6
      F300BA8A6200B8896200B7896100C49C7700D1B792009F695100000000003EB4
      5C0090D19E008CD3990063C2730078C88600F1F9F300FEFEFE00FCFDFC0085CA
      950056B66C005AB8710084CB960086C699003A8A3E00000000006A81E8008D9E
      EF008398F3005B72ED005A6FEB00596DEA008F9CF000A5AEF2005666E6005564
      E5005461E4007C88EA008490E6004D63CD00D49E75FFFFFFFFFFFEFEFCFFFDFD
      FBFFFDFDFCFFFDFDFBFFFDFDF9FFFCFCF8FFFBF9F7FFFBF9F5FFFBF8F4FFFBF7
      F2FFFBF5F2FFFFFFFFFFB27C5AFF00000000C0823B00E2C6AE00CFA17500C498
      6A00C3966900C3956800EDDFD300FAF6F300BE8F6500BD8E6400BD8E6300BD91
      6800DEC5A90095553A000000000026AF4800A5DBAE006FC97E0072C97F00EFF8
      F000FEFEFE00EAF6EC00FEFEFE00FAFCFB0087CC95005AB8700066BD7C009FD6
      AE00227E2500000000005C75E9009FB2F600647FF1005E77EF005C75EE005B72
      ED00D2D8F900FEFEFE00586BE9005768E7005666E6005C6BE60098A4F0003B54
      CB00D5A076FFFFFFFFFFFDFDFCFFFDFDFBFFFDFDFAFFFCFCF9FFFCFBF7FFFBF9
      F5FFFBF8F4FFFBF7F3FFFBF5F2FFFAF3EFFFF8F2ECFFFFFFFFFFB57E5CFF0000
      0000C6884100E3C8AF00CFA27900CB9C7000C6996B00C4976A00FEFEFE00FEFE
      FD00C2956800C0936700C1936700C2976C00DEC4AA0098583A00000000002DB6
      5000A6DCB00071CB7F0065C67200AFE0B600D1EDD50062C06F00B7E2BE00FEFE
      FE00FAFCFB008BCF980068C07D00A0D6AD002283250000000000607AED00A0B5
      F7006683F3005F7BF2005E79F0005E77EF00FEFEFE00FEFEFE005A6FEB00596D
      EA00586BE9005E6EE8009AA7F0004058CF00D8A279FFFFFFFFFFFDFDFAFFFCFC
      FAFFFCFBF9FFFBFAF6FFFBF8F5FFFBF7F4FFFBF6F1FFF8F4EEFFF7F2EBFFF7F0
      EAFFF6ECE8FFFFFFFFFFB7815EFF00000000D19D5B00DFBB9E00DAB29200CE9F
      7400CC9D7100CA9B7000DCBEA200DCBEA100C4986A00C4986A00C3976A00D0AA
      8400D7B99600AB6D5100000000004AC46B0094D6A00090D69A0068C8750063C5
      6E0060C36D0060C26E0060C16E00B8E3BF00FEFEFE00E2F3E5008AD098008ACD
      9C003B983F0000000000758CF20090A5F20087A0F700617FF300607DF2005F7B
      F200FEFEFE00FEFEFE005C75EE005B72ED005A6FEB008192F0008897EB00586F
      D700D9A379FFFFFFFFFFFCFBF9FFFCFBF8FFFBF9F7FFFBF7F4FFFAF7F2FFF9F5
      F0FFF7F3EDFFF6EFEAFFF5EBE7FFF3EAE4FFF2E7DEFFFFFFFFFFBA8560FF0000
      0000E6C8A400CC9B6700E6CAB300D3A47900CF9F7600CE9D7300FAF7F400FAF7
      F400CA9D7000CA9C7000CCA07600DEBFA400B8895A00D2AE9A00000000009ADE
      AC0056BE6F00AEE0B6006CCB790067C7710064C66F0062C46D0061C36D0062C3
      7000B5E2BD006EC67D00ABDEB40047A85D008EC7930000000000B1BFFA006B80
      EB00A8BCFA006281F4006180F400617FF300FEFEFE00FEFEFE005E79F0005E77
      EF005C75EE00A4B4F7005C6FDC00A2AEEB00DBA47AFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBD8763FF00000000F9F0E700D2995900D8B18B00E5C9
      B200D5A87C00D0A47800E1C3A700E0C2A700CFA17500D0A37600DCBCA100CFAB
      8400B3754900F3EAE40000000000E4F7E90048C465007ECD8F00ADE0B4006CCB
      790069C9750067C7710067C7730067C774006AC87800ABDEB30075C3880032A0
      4200E1F1E30000000000EBEEFE00748BF6008296EF00A8BCFA006281F4006281
      F400FEFEFE00FEFEFE00607DF2005F7BF200A5B8F8007A8CE9005C73E000E6EA
      FA00DCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA7
      7BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFDCA77BFFC08B66FF0000
      000000000000F1DCC500D0914E00D8B18B00E5CCB700DFB99C00D6AA8400D5A8
      8100D8B29000E0C1AA00D3AD8500B3703D00E5D0BD0000000000000000000000
      0000BFECCA003CC25B007ECD8F00AEE0B60091D79C0076CD820076CD820091D7
      9C00ADE0B40077C78A0026A03A00B5DFBD00000000000000000000000000CED6
      FD006C85F7008396F000A8BCFA0089A2F7006A88F5006A88F50088A1F700A7BB
      F9007E91EB005971E400C5CEF50000000000DDAC85FDE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B992FFE8B9
      92FFE8B992FFE8B992FFC1906FFD000000000000000000000000F1DDC500D59B
      5A00CF9F6900DFBE9F00E2C4AD00E2C4AD00DEBB9E00C7966100C3894800E9D5
      BD000000000000000000000000000000000000000000C0ECCB0049C7680058C1
      730095D6A200A4DBAD00A4DBAD0094D5A0004FB8690034B25400B6E3C1000000
      000000000000000000000000000000000000CED7FD00768DF9006D82ED0091A5
      F3009FB3F7009FB3F70090A5F200677CE8006880EC00C8D0F800000000000000
      0000A971516BDDB18DF4DCA77BFFDCA67AFFDAA47AFFD8A279FFD5A076FFD49E
      75FFD29D73FFCF9A72FFCE9970FFCB966FFFC9946CFFC49A7AF4A971516B0000
      0000000000000000000000000000FAF1E700E9CBA700D7A16400CE904D00CC90
      4900D09B5A00E3C6A100F7EEE400000000000000000000000000000000000000
      00000000000000000000E5F7E9009EE2B00054CA71003ABF5B0036BD590048C2
      6A0097DBAA00E1F5E70000000000000000000000000000000000000000000000
      000000000000EAEEFE00B5C2FC007C93F9006B85F6006983F500768EF400B0BD
      F800E9ECFD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000424D3E000000000000003E000000280000003C0000002D00000001000100
      00000000680100000000000000000000000000000000000000000000FFFFFF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001010000000000
      0001000000000000000100000000000080000000000000008000000000000000
      C002000000000000C002000000000000E007000000000000F00FC00400000000
      F00FE00000000000F81FF00000000000F81FF80400000000FC3FFC0C00000000
      FC3FFE1C00000000FFFFFF3C00000000FFFFE01FC03F80700001C00F801F0030
      00018007000E0010000100020004000000010002000400000001000200040000
      0001000200040000000100020004000000010002000400000001000200040000
      000100020004000000018007000E00100001C00F801F00300001E01FC03F8070
      FFFFFFFFFFFFFFF000000000000000000000000000000000000000000000}
  end
  object dspagar: TDataSource
    DataSet = qrcontasPAGAR
    Left = 1024
    Top = 312
  end
  object dsproduto: TDataSource
    DataSet = qrproduto
    Left = 864
    Top = 312
  end
  object dsPAGARpg: TDataSource
    DataSet = qrcontasPAGARpg
    Left = 992
    Top = 312
  end
  object dsCOMPRA_mes: TDataSource
    DataSet = QRCOMPRA_MES
    Left = 456
    Top = 272
  end
  object dscompra: TDataSource
    DataSet = qrcompra
    Left = 488
    Top = 272
  end
  object qrcontasPAGARpg: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000046')
    Params = <>
    Left = 928
    Top = 312
  end
  object dsnf: TDataSource
    DataSet = qrnf
    Left = 520
    Top = 272
  end
  object qrnf: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000087')
    Params = <>
    Left = 520
    Top = 304
    object qrnfNUMERO: TStringField
      DisplayLabel = 'N'#218'MERO'
      DisplayWidth = 8
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrnfDATA_LANCAMENTO: TDateTimeField
      DisplayLabel = 'DATA'
      DisplayWidth = 10
      FieldName = 'DATA_LANCAMENTO'
    end
    object qrnfTOTAL_NOTA: TFloatField
      DisplayLabel = 'VALOR-R$'
      DisplayWidth = 11
      FieldName = 'TOTAL_NOTA'
    end
    object qrnfCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 10
    end
    object qrnfCODEMPRESA: TStringField
      FieldName = 'CODEMPRESA'
      Visible = False
      Size = 10
    end
    object qrnfCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 10
    end
    object qrnfMODELO: TStringField
      FieldName = 'MODELO'
      Visible = False
      Size = 10
    end
    object qrnfESPECIE: TStringField
      FieldName = 'ESPECIE'
      Visible = False
      Size = 10
    end
    object qrnfSERIE: TStringField
      FieldName = 'SERIE'
      Visible = False
      Size = 10
    end
    object qrnfCFOP: TStringField
      FieldName = 'CFOP'
      Visible = False
      Size = 10
    end
    object qrnfDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
      Visible = False
    end
    object qrnfCONF_BASEICMS: TFloatField
      FieldName = 'CONF_BASEICMS'
      Visible = False
    end
    object qrnfCONF_VALORICMS: TFloatField
      FieldName = 'CONF_VALORICMS'
      Visible = False
    end
    object qrnfCONF_BASESUB: TFloatField
      FieldName = 'CONF_BASESUB'
      Visible = False
    end
    object qrnfCONF_VALORSUB: TFloatField
      FieldName = 'CONF_VALORSUB'
      Visible = False
    end
    object qrnfCONF_FRETE: TFloatField
      FieldName = 'CONF_FRETE'
      Visible = False
    end
    object qrnfCONF_SEGURO: TFloatField
      FieldName = 'CONF_SEGURO'
      Visible = False
    end
    object qrnfCONF_OUTRAS: TFloatField
      FieldName = 'CONF_OUTRAS'
      Visible = False
    end
    object qrnfCONF_IPI: TFloatField
      FieldName = 'CONF_IPI'
      Visible = False
    end
    object qrnfCONF_DESCONTO: TFloatField
      FieldName = 'CONF_DESCONTO'
      Visible = False
    end
    object qrnfCONF_TOTALPRODUTOS: TFloatField
      FieldName = 'CONF_TOTALPRODUTOS'
      Visible = False
    end
    object qrnfCONF_TOTALNOTA: TFloatField
      FieldName = 'CONF_TOTALNOTA'
      Visible = False
    end
    object qrnfCONF_ICMSRETIDO: TFloatField
      FieldName = 'CONF_ICMSRETIDO'
      Visible = False
    end
    object qrnfCONF_ICMSREDITO_PERC: TFloatField
      FieldName = 'CONF_ICMSREDITO_PERC'
      Visible = False
    end
    object qrnfBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      Visible = False
    end
    object qrnfVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      Visible = False
    end
    object qrnfBASE_SUB: TFloatField
      FieldName = 'BASE_SUB'
      Visible = False
    end
    object qrnfVALOR_SUB: TFloatField
      FieldName = 'VALOR_SUB'
      Visible = False
    end
    object qrnfFRETE: TFloatField
      FieldName = 'FRETE'
      Visible = False
    end
    object qrnfSEGURO: TFloatField
      FieldName = 'SEGURO'
      Visible = False
    end
    object qrnfOUTRAS: TFloatField
      FieldName = 'OUTRAS'
      Visible = False
    end
    object qrnfIPI: TFloatField
      FieldName = 'IPI'
      Visible = False
    end
    object qrnfDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrnfTOTAL_PRODUTOS: TFloatField
      FieldName = 'TOTAL_PRODUTOS'
      Visible = False
    end
    object qrnfTRANSP_NOME: TStringField
      FieldName = 'TRANSP_NOME'
      Visible = False
      Size = 60
    end
    object qrnfTRANSP_FRETE: TStringField
      FieldName = 'TRANSP_FRETE'
      Visible = False
    end
    object qrnfTRANSP_PLACA: TStringField
      FieldName = 'TRANSP_PLACA'
      Visible = False
      Size = 10
    end
    object qrnfTRANSP_PLACAUF: TStringField
      FieldName = 'TRANSP_PLACAUF'
      Visible = False
      Size = 2
    end
    object qrnfTRANSP_IE: TStringField
      FieldName = 'TRANSP_IE'
      Visible = False
      Size = 25
    end
    object qrnfTRANSP_CNPJ: TStringField
      FieldName = 'TRANSP_CNPJ'
      Visible = False
      Size = 25
    end
    object qrnfTRANSP_ENDERECO: TStringField
      FieldName = 'TRANSP_ENDERECO'
      Visible = False
      Size = 40
    end
    object qrnfTRANSP_CIDADE: TStringField
      FieldName = 'TRANSP_CIDADE'
      Visible = False
      Size = 30
    end
    object qrnfTRANSP_UF: TStringField
      FieldName = 'TRANSP_UF'
      Visible = False
      Size = 2
    end
    object qrnfTRANSP_QTDE: TFloatField
      FieldName = 'TRANSP_QTDE'
      Visible = False
    end
    object qrnfTRANSP_ESPECIE: TStringField
      FieldName = 'TRANSP_ESPECIE'
      Visible = False
    end
    object qrnfTRANSP_MARCA: TStringField
      FieldName = 'TRANSP_MARCA'
      Visible = False
    end
    object qrnfTRANSP_NUMERO: TStringField
      FieldName = 'TRANSP_NUMERO'
      Visible = False
    end
    object qrnfTRANSP_PESOBRUTO: TFloatField
      FieldName = 'TRANSP_PESOBRUTO'
      Visible = False
    end
    object qrnfTRANSP_PESOLIQUIDO: TFloatField
      FieldName = 'TRANSP_PESOLIQUIDO'
      Visible = False
    end
    object qrnfOBS1: TStringField
      FieldName = 'OBS1'
      Visible = False
      Size = 60
    end
    object qrnfOBS2: TStringField
      FieldName = 'OBS2'
      Visible = False
      Size = 60
    end
    object qrnfOBS3: TStringField
      FieldName = 'OBS3'
      Visible = False
      Size = 60
    end
    object qrnfOBS4: TStringField
      FieldName = 'OBS4'
      Visible = False
      Size = 60
    end
    object qrnfOBS5: TStringField
      FieldName = 'OBS5'
      Visible = False
      Size = 60
    end
    object qrnfOBS6: TStringField
      FieldName = 'OBS6'
      Visible = False
      Size = 60
    end
    object qrnfOBS7: TStringField
      FieldName = 'OBS7'
      Visible = False
      Size = 60
    end
    object qrnfSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrnfITENS: TIntegerField
      FieldName = 'ITENS'
      Visible = False
    end
    object qrnfTIPO: TStringField
      FieldName = 'TIPO'
      Visible = False
      Size = 30
    end
    object qrnfNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Visible = False
      Size = 6
    end
    object qrnfVALOR_MERCADORIAS: TFloatField
      FieldName = 'VALOR_MERCADORIAS'
      Visible = False
    end
    object qrnfCODREMETENTE: TStringField
      FieldName = 'CODREMETENTE'
      Visible = False
      Size = 6
    end
    object qrnfICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
      Visible = False
    end
    object qrnfICMS_OUTRAS: TFloatField
      FieldName = 'ICMS_OUTRAS'
      Visible = False
    end
    object qrnfDESCONTO_INCIDENTE: TIntegerField
      FieldName = 'DESCONTO_INCIDENTE'
      Visible = False
    end
    object qrnfITEM_FRETE_VALOR: TFloatField
      FieldName = 'ITEM_FRETE_VALOR'
      Visible = False
    end
    object qrnfITEM_FRETE_BASE: TFloatField
      FieldName = 'ITEM_FRETE_BASE'
      Visible = False
    end
    object qrnfITEM_FRETE_ALIQUOTA: TFloatField
      FieldName = 'ITEM_FRETE_ALIQUOTA'
      Visible = False
    end
    object qrnfITEM_FRETE_ICMS: TFloatField
      FieldName = 'ITEM_FRETE_ICMS'
      Visible = False
    end
    object qrnfITEM_SEGURO_VALOR: TFloatField
      FieldName = 'ITEM_SEGURO_VALOR'
      Visible = False
    end
    object qrnfITEM_SEGURO_BASE: TFloatField
      FieldName = 'ITEM_SEGURO_BASE'
      Visible = False
    end
    object qrnfITEM_SEGURO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SEGURO_ALIQUOTA'
      Visible = False
    end
    object qrnfITEM_SEGURO_ICMS: TFloatField
      FieldName = 'ITEM_SEGURO_ICMS'
      Visible = False
    end
    object qrnfITEM_PIS_VALOR: TFloatField
      FieldName = 'ITEM_PIS_VALOR'
      Visible = False
    end
    object qrnfITEM_PIS_BASE: TFloatField
      FieldName = 'ITEM_PIS_BASE'
      Visible = False
    end
    object qrnfITEM_PIS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_PIS_ALIQUOTA'
      Visible = False
    end
    object qrnfITEM_PIS_ICMS: TFloatField
      FieldName = 'ITEM_PIS_ICMS'
      Visible = False
    end
    object qrnfITEM_COMPLEMENTO_VALOR: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_VALOR'
      Visible = False
    end
    object qrnfITEM_COMPLEMENTO_BASE: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_BASE'
      Visible = False
    end
    object qrnfITEM_COMPLEMENTO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ALIQUOTA'
      Visible = False
    end
    object qrnfITEM_COMPLEMENTO_ICMS: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ICMS'
      Visible = False
    end
    object qrnfITEM_SERVICO_VALOR: TFloatField
      FieldName = 'ITEM_SERVICO_VALOR'
      Visible = False
    end
    object qrnfITEM_SERVICO_BASE: TFloatField
      FieldName = 'ITEM_SERVICO_BASE'
      Visible = False
    end
    object qrnfITEM_SERVICO_ALIQUOTA: TFloatField
      FieldName = 'ITEM_SERVICO_ALIQUOTA'
      Visible = False
    end
    object qrnfITEM_SERVICO_ICMS: TFloatField
      FieldName = 'ITEM_SERVICO_ICMS'
      Visible = False
    end
    object qrnfITEM_OUTRAS_VALOR: TFloatField
      FieldName = 'ITEM_OUTRAS_VALOR'
      Visible = False
    end
    object qrnfITEM_OUTRAS_BASE: TFloatField
      FieldName = 'ITEM_OUTRAS_BASE'
      Visible = False
    end
    object qrnfITEM_OUTRAS_ALIQUOTA: TFloatField
      FieldName = 'ITEM_OUTRAS_ALIQUOTA'
      Visible = False
    end
    object qrnfITEM_OUTRAS_ICMS: TFloatField
      FieldName = 'ITEM_OUTRAS_ICMS'
      Visible = False
    end
    object qrnfITEM_ESPECIAL_TOTAL: TFloatField
      FieldName = 'ITEM_ESPECIAL_TOTAL'
      Visible = False
    end
    object qrnfITEM_ESPECIAL_VALOR: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Visible = False
    end
    object qrnfBASEICMS_PRODUTOS: TIntegerField
      FieldName = 'BASEICMS_PRODUTOS'
      Visible = False
    end
    object qrnfCONF_ITEM_ESPECIAL: TFloatField
      FieldName = 'CONF_ITEM_ESPECIAL'
      Visible = False
    end
  end
  object QRNF_MES: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select sum(total) sum_0, '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048) , '
      '(select sum(total) from c000048)  '
      ' from c000048')
    Params = <>
    Left = 552
    Top = 304
  end
  object QRNF_PRODUTO: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000088')
    Params = <>
    Left = 504
    Top = 488
    object QRNF_PRODUTOCODPRODUTO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object QRNF_PRODUTOPRODUTO: TStringField
      DisplayWidth = 35
      FieldKind = fkLookup
      FieldName = 'PRODUTO'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Size = 30
      Lookup = True
    end
    object QRNF_PRODUTOUN_COMPRA: TStringField
      DisplayLabel = 'UN'
      DisplayWidth = 5
      FieldName = 'UN_COMPRA'
      Size = 5
    end
    object QRNF_PRODUTOQTDE: TFloatField
      DisplayWidth = 7
      FieldName = 'QTDE'
    end
    object QRNF_PRODUTOUNITARIO: TFloatField
      DisplayLabel = 'PRE'#199'O'
      DisplayWidth = 8
      FieldName = 'UNITARIO'
    end
    object QRNF_PRODUTOTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL'
    end
    object QRNF_PRODUTOCODIGO: TStringField
      FieldName = 'CODIGO'
      Visible = False
      Size = 10
    end
    object QRNF_PRODUTOITEM: TStringField
      FieldName = 'ITEM'
      Visible = False
      Size = 3
    end
    object QRNF_PRODUTOCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Visible = False
      Size = 10
    end
    object QRNF_PRODUTOCODLANCAMENTO: TStringField
      FieldName = 'CODLANCAMENTO'
      Visible = False
      Size = 10
    end
    object QRNF_PRODUTOUN_FRACAO: TStringField
      FieldName = 'UN_FRACAO'
      Visible = False
      Size = 5
    end
    object QRNF_PRODUTOFRACAO: TFloatField
      FieldName = 'FRACAO'
      Visible = False
    end
    object QRNF_PRODUTOCST: TStringField
      FieldName = 'CST'
      Visible = False
      Size = 5
    end
    object QRNF_PRODUTOCFOP: TStringField
      FieldName = 'CFOP'
      Visible = False
      Size = 6
    end
    object QRNF_PRODUTOSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      Visible = False
    end
    object QRNF_PRODUTODESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
    end
    object QRNF_PRODUTODESCONTO_P: TFloatField
      FieldName = 'DESCONTO_P'
      Visible = False
    end
    object QRNF_PRODUTOICMS_RETIDO: TStringField
      FieldName = 'ICMS_RETIDO'
      Visible = False
      Size = 1
    end
    object QRNF_PRODUTOICMS_ALIQUOTA: TFloatField
      FieldName = 'ICMS_ALIQUOTA'
      Visible = False
    end
    object QRNF_PRODUTOICMS_REDUCAO: TFloatField
      FieldName = 'ICMS_REDUCAO'
      Visible = False
    end
    object QRNF_PRODUTOICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
      Visible = False
    end
    object QRNF_PRODUTOICMS_VALOR: TFloatField
      FieldName = 'ICMS_VALOR'
      Visible = False
    end
    object QRNF_PRODUTOICMS_VALORRETIDO: TFloatField
      FieldName = 'ICMS_VALORRETIDO'
      Visible = False
    end
    object QRNF_PRODUTOICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
      Visible = False
    end
    object QRNF_PRODUTOICMS_NAOTRIBUTADO: TFloatField
      FieldName = 'ICMS_NAOTRIBUTADO'
      Visible = False
    end
    object QRNF_PRODUTOSUB_MARGEM: TFloatField
      FieldName = 'SUB_MARGEM'
      Visible = False
    end
    object QRNF_PRODUTOSUB_BASE: TFloatField
      FieldName = 'SUB_BASE'
      Visible = False
    end
    object QRNF_PRODUTOSUB_VALOR: TFloatField
      FieldName = 'SUB_VALOR'
      Visible = False
    end
    object QRNF_PRODUTOIPI_TIPO: TStringField
      FieldName = 'IPI_TIPO'
      Visible = False
      Size = 25
    end
    object QRNF_PRODUTOIPI_ALIQUOTA: TFloatField
      FieldName = 'IPI_ALIQUOTA'
      Visible = False
    end
    object QRNF_PRODUTOIPI_BASE: TFloatField
      FieldName = 'IPI_BASE'
      Visible = False
    end
    object QRNF_PRODUTOIPI_VALOR: TFloatField
      FieldName = 'IPI_VALOR'
      Visible = False
    end
    object QRNF_PRODUTODATA: TDateTimeField
      FieldName = 'DATA'
      Visible = False
    end
    object QRNF_PRODUTOTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
    object QRNF_PRODUTONOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Visible = False
      Size = 10
    end
    object QRNF_PRODUTOFRETE: TFloatField
      FieldName = 'FRETE'
      Visible = False
    end
    object QRNF_PRODUTOOUTRAS: TFloatField
      FieldName = 'OUTRAS'
      Visible = False
    end
    object QRNF_PRODUTOSEGURO: TFloatField
      FieldName = 'SEGURO'
      Visible = False
    end
    object QRNF_PRODUTOCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Visible = False
      Size = 25
    end
    object QRNF_PRODUTOSUB_PRODUTOS: TFloatField
      FieldName = 'SUB_PRODUTOS'
      Visible = False
    end
    object QRNF_PRODUTOCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 10
    end
    object QRNF_PRODUTOITEM_ESPECIAL_VALOR: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Visible = False
    end
  end
  object DSNF_PRODUTO: TDataSource
    DataSet = QRNF_PRODUTO
    Left = 536
    Top = 488
  end
  object qrduplo: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 400
    Top = 240
  end
  object qrsugestao: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrsugestaoCalcFields
    SQL.Strings = (
      'select pro.*, est.* from c000025 pro,'
      'c000100 est'
      ' where'
      'pro.codigo = est.codproduto')
    Params = <>
    Left = 400
    Top = 112
    object qrsugestaoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrsugestaoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrsugestaoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrsugestaoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrsugestaoCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrsugestaoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      DisplayFormat = '###,###,###0.000'
    end
    object qrsugestaosugestao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'sugestao'
      DisplayFormat = '###,###,###0.000'
      Calculated = True
    end
    object qrsugestaovendas: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vendas'
      DisplayFormat = '###,###,###0.000'
      Calculated = True
    end
    object qrsugestaoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      DisplayFormat = '###,###,###0.000'
    end
    object qrsugestaoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
      DisplayFormat = '###,###,###0.000'
    end
    object qrsugestaoESTOQUE_ATUAL: TFloatField
      FieldName = 'ESTOQUE_ATUAL'
    end
    object qrsugestaoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
  end
  object dssugestao: TDataSource
    DataSet = qrsugestao
    Left = 392
    Top = 165
  end
  object QUERY1: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 595
    Top = 308
  end
  object dsfornecedor_codigo: TDataSource
    DataSet = frmmodulo.qrfornecedor_codigo
    Left = 328
    Top = 165
  end
end
