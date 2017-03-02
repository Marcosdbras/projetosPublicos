object frmcliente: Tfrmcliente
  Left = 164
  Top = 154
  Width = 798
  Height = 512
  BorderIcons = [biSystemMenu]
  Caption = 'CLIENTES | Ficha de Cadastro'
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 35
    Width = 790
    Height = 2
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 452
    Width = 790
    Height = 2
    Align = alBottom
  end
  object PageView1: TPageView
    Left = 0
    Top = 37
    Width = 790
    Height = 415
    ActivePage = PageSheet1
    ActivePageIndex = 0
    AdaptiveColors = True
    Align = alClient
    BackgroundColor = clBtnFace
    BackgroundKind = bkSolid
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Indent = 2
    Margin = 1
    Options = [pgBoldActiveTab]
    ParentFont = False
    ShowTabs = True
    Spacing = 1
    TabHeight = 14
    TabOrder = 0
    TabStyle = tsFlat
    TopIndent = 3
    OnChange = PageView1Change
    object PageSheet1: TPageSheet
      Left = 1
      Top = 19
      Width = 788
      Height = 395
      Caption = '    F10 | Informa'#231#245'es Cadastrais   '
      Color = clBtnFace
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      ParentColor = False
      TabColor = 15653559
      TabWidth = 0
      TransparentColor = clNone
      object pficha: TFlatPanel
        Left = 0
        Top = 0
        Width = 788
        Height = 258
        ParentColor = True
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        Align = alTop
        TabOrder = 0
        UseDockManager = True
        object Label5: TLabel
          Left = 456
          Top = 12
          Width = 27
          Height = 13
          Caption = 'Data:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object LAPELIDO: TLabel
          Left = 3
          Top = 12
          Width = 72
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Apelido:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 3
          Top = 44
          Width = 72
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
          Left = 152
          Top = 68
          Width = 51
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Bairro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 472
          Top = 116
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
          Left = 3
          Top = 92
          Width = 72
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Complemento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 824
          Top = 384
          Width = 3
          Height = 12
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 195
          Top = 236
          Width = 32
          Height = 13
          Caption = 'E-mail:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 584
          Top = 12
          Width = 40
          Height = 13
          Caption = 'Usu'#225'rio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 3
          Top = 116
          Width = 72
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
        object Label3: TLabel
          Left = 374
          Top = 116
          Width = 30
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'UF:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 3
          Top = 140
          Width = 72
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Regi'#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 344
          Top = 140
          Width = 57
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vendedor:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lnascimento: TLabel
          Left = 579
          Top = 141
          Width = 72
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Nascimento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 560
          Top = 236
          Width = 117
          Height = 13
          Caption = 'Previs'#227'o de Pagamento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label57: TLabel
          Left = 3
          Top = 68
          Width = 72
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N'#250'mero:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edata_cadastro: TDBDateEdit
          Left = 488
          Top = 8
          Width = 93
          Height = 21
          DataField = 'DATA_CADASTRO'
          DataSource = dscliente2
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
          OnExit = Edit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit3: TDBEdit
          Left = 80
          Top = 8
          Width = 366
          Height = 21
          DataField = 'APELIDO'
          DataSource = dscliente2
          TabOrder = 0
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit4: TDBEdit
          Left = 80
          Top = 40
          Width = 497
          Height = 21
          DataField = 'ENDERECO'
          DataSource = dscliente2
          TabOrder = 3
          OnEnter = DBEdit1Enter
          OnExit = DBEdit4Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit5: TDBEdit
          Left = 208
          Top = 64
          Width = 369
          Height = 21
          DataField = 'BAIRRO'
          DataSource = dscliente2
          TabOrder = 5
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit6: TDBEdit
          Left = 118
          Top = 112
          Width = 259
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = dscliente2
          TabOrder = 7
          OnEnter = DBEdit1Enter
          OnExit = DBEdit6Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit8: TDBEdit
          Left = 504
          Top = 112
          Width = 73
          Height = 21
          DataField = 'CEP'
          DataSource = dscliente2
          MaxLength = 8
          TabOrder = 9
          OnEnter = DBEdit1Enter
          OnExit = DBEdit8Exit
          OnKeyPress = DBEdit8KeyPress
        end
        object DBEdit9: TDBEdit
          Left = 80
          Top = 88
          Width = 497
          Height = 21
          DataField = 'COMPLEMENTO'
          DataSource = dscliente2
          TabOrder = 6
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit13: TDBEdit
          Left = 228
          Top = 232
          Width = 325
          Height = 21
          CharCase = ecLowerCase
          DataField = 'EMAIL'
          DataSource = dscliente2
          TabOrder = 17
          OnEnter = DBEdit1Enter
          OnExit = DBEdit13Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit30: TDBEdit
          Left = 147
          Top = 136
          Width = 198
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'regiao'
          DataSource = dscliente2
          TabOrder = 19
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit31: TDBEdit
          Left = 474
          Top = 136
          Width = 103
          Height = 21
          TabStop = False
          Color = clBtnFace
          DataField = 'vendedor'
          DataSource = dscliente2
          TabOrder = 20
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object Edit1: TEdit
          Left = 952
          Top = 336
          Width = 121
          Height = 21
          TabOrder = 21
          Text = 'Edit1'
          Visible = False
          OnExit = Edit1Exit
        end
        object DBEdit16: TDBEdit
          Left = 632
          Top = 8
          Width = 49
          Height = 21
          DataField = 'CODUSUARIO'
          DataSource = dscliente2
          Enabled = False
          TabOrder = 2
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object DBEdit17: TDBEdit
          Left = 683
          Top = 8
          Width = 86
          Height = 21
          CharCase = ecUpperCase
          DataField = 'USUARIO'
          DataSource = dscliente2
          Enabled = False
          TabOrder = 22
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object euf: TwwDBComboBox
          Left = 407
          Top = 112
          Width = 49
          Height = 21
          ShowButton = True
          Style = csDropDown
          MapList = False
          AllowClearKey = False
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = dscliente2
          DropDownCount = 8
          ItemHeight = 0
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
          ItemIndex = 1
          Sorted = False
          TabOrder = 8
          UnboundDataType = wwDefault
          OnEnter = eufEnter
          OnExit = eufExit
          OnKeyPress = DBEdit1KeyPress
        end
        object dbedit28: TRzDBButtonEdit
          Left = 79
          Top = 136
          Width = 66
          Height = 21
          DataSource = dscliente2
          DataField = 'CODREGIAO'
          FocusColor = 10550008
          TabOrder = 10
          OnExit = DBEdit28Exit
          OnKeyPress = dbedit28KeyPress
          OnButtonClick = dbedit28ButtonClick
        end
        object dbedit29: TRzDBButtonEdit
          Left = 407
          Top = 136
          Width = 66
          Height = 21
          DataSource = dscliente2
          DataField = 'CODVENDEDOR'
          FocusColor = 10550008
          TabOrder = 11
          OnExit = DBEdit29Exit
          OnKeyPress = dbedit29KeyPress
          OnButtonClick = dbedit29ButtonClick
        end
        object pcad: TGroupBox
          Left = 583
          Top = 35
          Width = 187
          Height = 98
          Caption = '         Informa'#231#245'es Cadastrais'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          object Label28: TLabel
            Left = 48
            Top = 52
            Width = 31
            Height = 13
            Caption = 'Limite:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 7
            Top = 75
            Width = 73
            Height = 13
            Caption = #218'ltima Compra:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RLIMITE: TRxDBCalcEdit
            Left = 88
            Top = 46
            Width = 89
            Height = 21
            DataField = 'LIMITE'
            DataSource = dscliente2
            DecimalPlaces = 15
            DisplayFormat = '###,###,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ButtonWidth = 0
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 1
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = RLIMITEKeyPress
          end
          object DBDateEdit3: TDBDateEdit
            Left = 88
            Top = 71
            Width = 89
            Height = 21
            DataField = 'DATA_ULTIMACOMPRA'
            DataSource = dscliente2
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ButtonWidth = 0
            NumGlyphs = 2
            ParentFont = False
            TabOrder = 2
          end
          object wwDBComboBox1: TwwDBComboBox
            Left = 8
            Top = 20
            Width = 170
            Height = 21
            ShowButton = True
            Style = csDropDownList
            MapList = False
            AllowClearKey = False
            DropDownCount = 8
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 0
            Items.Strings = (
              'CADASTRO APROVADO'
              'CADASTRO EM OBSERVA'#199#195'O'
              'CADASTRO BLOQUEADO'
              'INATIVO'
              'SPC')
            ItemIndex = 0
            ParentFont = False
            Sorted = False
            TabOrder = 0
            UnboundDataType = wwDefault
            OnChange = wwDBComboBox1Change
            OnEnter = wwDBComboBox1Enter
            OnExit = wwDBComboBox1Exit
            OnKeyPress = wwDBComboBox1KeyPress
          end
        end
        object GroupBox7: TGroupBox
          Left = 4
          Top = 163
          Width = 168
          Height = 89
          Caption = 'Telefones'
          TabOrder = 14
          object ltelefone1: TLabel
            Left = 6
            Top = 16
            Width = 60
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Residencial:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object ltelefone2: TLabel
            Left = 6
            Top = 40
            Width = 60
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Comercial:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 6
            Top = 64
            Width = 60
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Celular:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit10: TDBEdit
            Left = 74
            Top = 12
            Width = 86
            Height = 21
            DataField = 'TELEFONE1'
            DataSource = dscliente2
            MaxLength = 10
            TabOrder = 0
            OnEnter = DBEdit1Enter
            OnExit = DBEdit10Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit11: TDBEdit
            Left = 74
            Top = 36
            Width = 86
            Height = 21
            DataField = 'TELEFONE2'
            DataSource = dscliente2
            MaxLength = 10
            TabOrder = 1
            OnEnter = DBEdit1Enter
            OnExit = DBEdit11Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit12: TDBEdit
            Left = 74
            Top = 60
            Width = 86
            Height = 21
            DataField = 'CELULAR'
            DataSource = dscliente2
            TabOrder = 2
            OnEnter = DBEdit1Enter
            OnExit = DBEdit12Exit
            OnKeyPress = DBEdit1KeyPress
          end
        end
        object GroupBox8: TGroupBox
          Left = 175
          Top = 163
          Width = 301
          Height = 65
          Caption = 'Documenta'#231#227'o'
          TabOrder = 15
          object LRG: TLabel
            Left = 8
            Top = 17
            Width = 21
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'RG:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object LCPF: TLabel
            Left = 12
            Top = 41
            Width = 27
            Height = 13
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
          object DBEdit14: TDBEdit
            Left = 41
            Top = 14
            Width = 99
            Height = 21
            CharCase = ecUpperCase
            DataField = 'RG'
            DataSource = dscliente2
            TabOrder = 0
            OnEnter = DBEdit1Enter
            OnExit = DBEdit14Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit15: TDBEdit
            Left = 40
            Top = 38
            Width = 101
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CPF'
            DataSource = dscliente2
            TabOrder = 1
            OnEnter = DBEdit1Enter
            OnExit = DBEdit15Exit
            OnKeyPress = DBEdit15KeyPress
          end
          object bitbtn8: TAdvGlowButton
            Left = 143
            Top = 35
            Width = 21
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
            TabOrder = 2
            OnClick = BitBtn8Click
            Appearance.BorderColor = 12179676
            Appearance.BorderColorHot = clHighlight
            Appearance.BorderColorDown = clHighlight
            Appearance.BorderColorChecked = clBlack
            Appearance.ColorTo = 12179676
            Appearance.ColorChecked = 12179676
            Appearance.ColorCheckedTo = 12179676
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 11899524
            Appearance.ColorDownTo = 11899524
            Appearance.ColorHot = 15717318
            Appearance.ColorHotTo = 15717318
            Appearance.ColorMirror = 12179676
            Appearance.ColorMirrorTo = 12179676
            Appearance.ColorMirrorHot = 15717318
            Appearance.ColorMirrorHotTo = 15717318
            Appearance.ColorMirrorDown = 11899524
            Appearance.ColorMirrorDownTo = 11899524
            Appearance.ColorMirrorChecked = 12179676
            Appearance.ColorMirrorCheckedTo = 12179676
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
          object rrg: TRzPanel
            Left = 167
            Top = 7
            Width = 130
            Height = 54
            BorderOuter = fsNone
            TabOrder = 3
            object Label27: TLabel
              Left = -4
              Top = 10
              Width = 30
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'ORG:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label26: TLabel
              Left = 68
              Top = 10
              Width = 23
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'UF:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label30: TLabel
              Left = 0
              Top = 35
              Width = 43
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Emiss'#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object wwDBComboBox5: TwwDBComboBox
              Left = 28
              Top = 7
              Width = 43
              Height = 21
              ShowButton = True
              Style = csDropDown
              MapList = False
              AllowClearKey = False
              CharCase = ecUpperCase
              DataField = 'RG_ORGAO'
              DataSource = dscliente2
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'SSP')
              ItemIndex = 0
              Sorted = False
              TabOrder = 0
              UnboundDataType = wwDefault
              OnEnter = eufEnter
              OnExit = eufExit
              OnKeyPress = DBEdit1KeyPress
            end
            object wwDBComboBox4: TwwDBComboBox
              Left = 94
              Top = 7
              Width = 37
              Height = 21
              ShowButton = True
              Style = csDropDown
              MapList = False
              AllowClearKey = False
              CharCase = ecUpperCase
              DataField = 'RG_ESTADO'
              DataSource = dscliente2
              DropDownCount = 8
              ItemHeight = 0
              Items.Strings = (
                'SP'
                'MG'
                'RJ'
                'RS'
                'SC'
                'PR'
                'ES'
                'DF'
                'MT'
                'MS'
                'GO'
                'TO'
                'BA'
                'SE'
                'AL'
                'PB'
                'PE'
                'MA'
                'RN'
                'CE'
                'PI'
                'PA'
                'AM'
                'AP'
                'FN'
                'AC'
                'RR'
                'RO')
              ItemIndex = 14
              Sorted = False
              TabOrder = 1
              UnboundDataType = wwDefault
              OnEnter = eufEnter
              OnExit = eufExit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBDateEdit2: TDBDateEdit
              Left = 48
              Top = 32
              Width = 83
              Height = 21
              DataField = 'RG_EMISSAO'
              DataSource = dscliente2
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
              TabOrder = 2
              OnEnter = edata_cadastroEnter
              OnExit = Edit1Exit
              OnKeyPress = DBDateEdit2KeyPress
            end
          end
        end
        object GroupBox9: TGroupBox
          Left = 479
          Top = 163
          Width = 292
          Height = 65
          Caption = 'Informa'#231#245'es Profissionais'
          TabOrder = 16
          object lprofissao: TLabel
            Left = 3
            Top = 19
            Width = 53
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Profiss'#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lempresa: TLabel
            Left = 3
            Top = 42
            Width = 53
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Empresa:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lrenda: TLabel
            Left = 164
            Top = 19
            Width = 42
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Renda:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit18: TDBEdit
            Left = 59
            Top = 16
            Width = 106
            Height = 21
            DataField = 'PROFISSAO'
            DataSource = dscliente2
            TabOrder = 0
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object DBEdit19: TDBEdit
            Left = 59
            Top = 39
            Width = 225
            Height = 21
            DataField = 'EMPRESA'
            DataSource = dscliente2
            TabOrder = 2
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
          object ERENDA: TRxDBCalcEdit
            Left = 211
            Top = 16
            Width = 72
            Height = 21
            DataField = 'RENDA'
            DataSource = dscliente2
            DecimalPlaces = 15
            DisplayFormat = '###,###,##0.00'
            ButtonWidth = 0
            NumGlyphs = 2
            TabOrder = 1
            OnEnter = DBEdit1Enter
            OnExit = DBEdit1Exit
            OnKeyPress = DBEdit1KeyPress
          end
        end
        object DateEdit1: TDateEdit
          Left = 656
          Top = 136
          Width = 113
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
          ButtonWidth = 18
          NumGlyphs = 1
          TabOrder = 13
          OnEnter = DBEdit1Enter
          OnExit = Edit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object bcad: TAdvGlowButton
          Left = 595
          Top = 27
          Width = 18
          Height = 23
          Hint = 'Liberar para edi'#231#227'o'
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
            650041646F626520496D616765526561647971C9653C000003034944415478DA
            62FCFFFF3F033258B66C19CFBF7FFF4AFFFEFD6B09C44240CC00C4EF80F8F89F
            3F7FBAF3F3F3BF20AB070820466403962E5D6A00D4BC4E4A4A4A918F8F8F8189
            898901C867F8F1E307C3EBD7AF19EE0301D0A0A0B2B2B20B303D0001043700A8
            990728795E595959E5D7AF5F0C8F1F3F66F8FAF52BC8760616161606717171B0
            BA6BD7AEDD018AE9D5D5D57D07F1010288096612503053525252E5F7EFDF0CB7
            6EDDBAF7F9F36705209B0D8441EC9B376F3E03190C749D0AD02B39307D0001C4
            026300052DB9B8B818EEDEBDCB00D4E4939393F310C9AB0F9B9B9B5D1E3E7C78
            4D414101AC1626011040C8068882FC0CB40DC4BECF8006406220D781D4005D2B
            0A1307082070183C3A92F4FFF85D7586971F39C17EF6D33EC3C0FCFF37C3FFBF
            7F18FEFF81E0DFBFFF322CBC60040E54718EF70CDED26718D4D3CE31020410C4
            05404342821D191819981818993981B42703C33F460606160E902430807E33FC
            FDF399A1C9F52B50FC3758CB9D15C7C0344000810D00D90452F8E7CD2A061676
            110646461EA0425606064E01A0F03F06866F1F19FE7EBACDF0EBFB53867F7FBE
            31702AE630FCFFF5136C004000410C003A91E11FC8A65F0C1FAE9E05FA939B41
            40CB8AE1F18E6EA07E3106393B57860F37AE020D78CFC0AB200874F05F86FFBF
            7F810D000820A801BFC1DEF80F74AA80BA1A03139B080303E33F86BF3FFF325C
            7EC3C920C7F08B41405991E1C75776A0DA6F6057C10C000820703AF80F0C5D90
            A920BFBEBF7201E88A530C0C4C7F18FEFDF8C7F0F33BD0A9FF812EBB799DE1C3
            AD4710EFFEFB07D603020001C40233006C2AD00B02AA0A0CCC5CC240037E3128
            45A73328FD066AF8F492815F598A81ED132BC40540EFC20C000820A801BFC0A6
            FEFB030A83AB4003781918388001C9C206140719F081E1FBFBD70CBFBF7E66E0
            95E30306F73F88B781002080E00680BCC02E93CCC029CFCCC0C8C60E89422660
            4CFC037AEDD77706DEEF9F813EFC0974E85F487881021E080002086200304AEE
            AD2B85840538E1FC86E23F701A98C22009EBEF5F081B6410100004180072B2B2
            CDE61250B30000000049454E44AE426082}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 23
          OnClick = bcadClick
          Appearance.BorderColor = 12179676
          Appearance.BorderColorHot = clHighlight
          Appearance.BorderColorDown = clHighlight
          Appearance.BorderColorChecked = clBlack
          Appearance.ColorTo = 12179676
          Appearance.ColorChecked = 12179676
          Appearance.ColorCheckedTo = 12179676
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 11899524
          Appearance.ColorDownTo = 11899524
          Appearance.ColorHot = 15717318
          Appearance.ColorHotTo = 15717318
          Appearance.ColorMirror = 12179676
          Appearance.ColorMirrorTo = 12179676
          Appearance.ColorMirrorHot = 15717318
          Appearance.ColorMirrorHotTo = 15717318
          Appearance.ColorMirrorDown = 11899524
          Appearance.ColorMirrorDownTo = 11899524
          Appearance.ColorMirrorChecked = 12179676
          Appearance.ColorMirrorCheckedTo = 12179676
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
          Appearance.GradientHot = ggVertical
          Appearance.GradientMirrorHot = ggVertical
          Appearance.GradientDown = ggVertical
          Appearance.GradientMirrorDown = ggVertical
          Appearance.GradientChecked = ggVertical
        end
        object DBDateEdit1: TDBDateEdit
          Left = 680
          Top = 232
          Width = 91
          Height = 21
          DataField = 'PREVISAO'
          DataSource = dscliente2
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
          TabOrder = 18
          OnEnter = edata_cadastroEnter
          OnExit = Edit1Exit
          OnKeyPress = DBDateEdit1KeyPress
        end
        object DBEdit7: TDBEdit
          Left = 320
          Top = 112
          Width = 57
          Height = 21
          DataField = 'COD_MUNICIPIO_IBGE'
          DataSource = dscliente2
          TabOrder = 24
          Visible = False
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyPress = DBEdit1KeyPress
        end
        object AdvGlowButton1: TAdvGlowButton
          Left = 80
          Top = 110
          Width = 35
          Height = 24
          Hint = 'Pesquisa o Municipio,IBGE'
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 25
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
        object DBEdit38: TDBEdit
          Left = 80
          Top = 64
          Width = 65
          Height = 21
          DataField = 'NUMERO'
          DataSource = dscliente2
          MaxLength = 5
          TabOrder = 4
          OnEnter = DBEdit1Enter
          OnExit = DBEdit38Exit
          OnKeyPress = DBEdit38KeyPress
        end
      end
      object pg_rodape: TPageView
        Left = 0
        Top = 258
        Width = 788
        Height = 137
        ActivePage = PageSheet11
        ActivePageIndex = 0
        AdaptiveColors = True
        Align = alClient
        BackgroundColor = clBtnFace
        BackgroundKind = bkSolid
        Indent = 2
        Margin = 0
        Options = [pgBoldActiveTab]
        ShowTabs = True
        Spacing = 0
        TabHeight = 16
        TabOrder = 1
        TabStyle = tsFlat
        TopIndent = 3
        OnChange = pg_rodapeChange
        object PageSheet11: TPageSheet
          Left = 0
          Top = 20
          Width = 788
          Height = 117
          Caption = 'Foto'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 0
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object pficha1: TPanel
            Left = 0
            Top = 0
            Width = 788
            Height = 117
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object SpeedButton2: TSpeedButton
              Left = 131
              Top = 11
              Width = 30
              Height = 24
              Hint = 'Inserir imagem de um arquivo'
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                0800000000000001000000000000000000000001000000010000000801000210
                0300031905000521070006280900072F0B00083B0D0009490F000A5411000B60
                13000B6914000B7015000C7616000C7A16000C7D17000C7F17000C8117000C82
                17000C8317000C8317000C8417000C8417000C8417000C8417000C8418000C84
                18000C8418000C8418000C8418000C8318000C8318000C8218000C8118000D80
                18000D7E18000E7C19000F79190010741A00116F1B0014691C0016601E001959
                20001D502200204924002245260025412800283D2A002A392C002D352E003131
                3100323232003333330034343400353535003636360037373700383838003939
                39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
                4100424242004343430044444400454545004646460047474700484848004949
                49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
                5100525252005353530054545400555555005656560057575700585858005959
                59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
                6100626262006363630064646400656565006666660067676700686868006969
                69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F006F7B8000787E
                9600817FAA009176BF00A566D100C247E400E61EF500F60AFC00FC03FE00FE01
                FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
                FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
                FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
                FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
                FE00FE00FE00FE01FE00FD02FE00FC03FE00FA05FE00F809FE00F310FD00EC1B
                FB00E12CF800D242F300BE62EC00AD7EE300A48FDB00A296D300A19ECA00A1A6
                BF00A2AEB300ABABAB00AFB0B100B2B6B600B6BBBB00B9BFC000BCC3C400C2CA
                CB00C7D0D100CDDBDD00D0E6E900D3EFF200D4F3F700D5F5FA00D6F6FB00D8F7
                FB00D6F7FC00D4F7FC00D1F7FC00CEF7FC00CAF6FD00C3F6FC00BAF6FC00B6F7
                FD00B1F7FC00ACF7FC00A9F7FC00A5F7FC00A2F7FD009FF6FD009EF4FD009DF3
                FC009BF1FC0099F0FC0095EEFC0092EBFB008FE9FB008CE7FB0089E5FB0086E3
                FB0084E1FA0080DEF9007BDCFA0079DAF90077DAF90074D8F90072D6F8006DD2
                F60066CDF2005EC7EB0058C3E70050BEE1004BBBDD0048B9D90046B8D40046BA
                CB0046BDC10047C0B70047C4AB004BCC980049CD890046CC80003FC679003DC3
                74003BC2740038BF730035BC730030B872002CB27D0028AD8B0022A698001A9D
                AA001396B6000D92B9000A8FBC00088EBD00078DBE00078DBE00078DBE00078D
                BE00078DBE00078DBE00078DBD00078DBD00078DBC00078DBB008AFBFBFBFBFB
                FBFBFBFBFBFBFBFB8A8AFBF1DBD2DADADADADADADADAE0FB8A8AFBDEE0CAD8D8
                D9D8D8D8D8D9DFD3FB8AFBD8FBC3D4D4D4D4D4D4D4D4DFC3FB8AFBD4F2CBCDD1
                D1D1D1D1D1D1DFC2FB8AFBD1DFDCC3CECECECECECE1ADEC1DAFBFBCFD6F1B9BE
                BEBEBEBE1AEC1AB9B8FBFBCCCCF2FBFBFBFBFB1AE7E5E91AFBFBFBC8C7C7C8C7
                C7C81AE7E6E6E5E91A8AFBB9C6C6C6C6C61A1A1A1AE6E71A1A1A8AFBB9C5C5C5
                FFDFDFDF1AE7EC1A8A8A8A8AFBFBFBFB8A8A8A8A1AE81A8A8A8A8A8A8A8A8A8A
                8A8A8A1AEDED1A8A8A8A8A8A8A8A8A8A8A8A8A1AED1A8A8A8A8A8A8A8A8A8A8A
                8A1A1A1A1A8A8A8A8A8A8A8A8A8A8A1A1A1A1A8A8A8A8A8A8A8A}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton2Click
            end
            object Label53: TLabel
              Left = 168
              Top = 16
              Width = 142
              Height = 13
              Caption = 'Inserir atrav'#233's de um arquivo'
            end
            object Label54: TLabel
              Left = 168
              Top = 40
              Width = 134
              Height = 13
              Caption = 'Capturar por uma Web Cam'
            end
            object SpeedButton3: TSpeedButton
              Left = 131
              Top = 35
              Width = 30
              Height = 24
              Hint = 'Inserir imagem de uma webcan'
              Glyph.Data = {
                5E040000424D5E04000000000000360000002800000012000000130000000100
                1800000000002804000000000000000000000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FF5A7B9C5A7B
                9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9C5A7B9CFF
                00FFFF00FFFF00FF0000FF00FFFF00FFFF00FF75B2DE85B9DF8ADEF5BFECF9FF
                FFFFC4EEFA96E3F36CBFEE5AA9EF4E79C25A7B9C5A7B9CFF00FFFF00FFFF00FF
                0000FF00FFFF00FFFF00FFFF00FFF7F0E9B3DBE74BC0ECE3F6FF96E3F36FCBEE
                58A8EF4E79C25374ACDBE7E9FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
                FF00FFFF00FFFF00FFDCD6D1A7A7A7A0A0A09C9C9CA0A0A0A6A6A6ADADADF3EC
                E7FF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFF1E9E4C7C3
                C0A8A8A8B3B3B3B8B8B8BBBBBBB5B5B5ADADADA5A5A5A8A8A8F1E9E4FF00FFFF
                00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFC8C4C1B9B9B9D1D1D1D4D4D4D6
                D6D6D1D1D1CCCCCCC5C5C5BDBDBDACACACC7C3C0FF00FFFF00FFFF00FFFF00FF
                0000FF00FFFF00FFE7E1DCB7B7B7DADADAE8E8E8EAEAEAECECECEBEBEBE4E4E4
                DADADAC8C8C8BCBCBCA4A4A4DCD6D1FF00FFFF00FFFF00FF0000FF00FFFF00FF
                B9B7B68B8B8B7F7F7FB4B2B1E2E0DFF5F5F5F3F3F3F0F0F0E9E9E9D9D9D9C4C4
                C4ACACACC0BDBAFF00FFFF00FFFF00FF0000FF00FFFF00FF8181819A69549D6E
                5BAC9761B5B2B0FCFCFCFBFBFBF6F6F6F1F1F1E7E7E7D3D3D3B8B8B8A0A0A0FF
                00FFFF00FFFF00FF0000FF00FFFF00FF787878B17813EBB2009D6E5BA4A2A1FF
                FFFFFFFFFFFCFCFCF5F5F5EDEDEDDADADAC2C2C29C9C9CFF00FFFF00FFFF00FF
                0000FF00FFFF00FF767676FFFFFFC39C2A997740B4B1AFFFFFFFFFFFFFFFFFFF
                F7F7F7F0F0F0E2E2E2C3C3C3A1A1A1FF00FFFF00FFFF00FF0000FF00FFFF00FF
                BFBDBB8D8D8D949494B6B4B3E3E1E0FFFFFFFFFFFFFFFFFFF9F9F9F1F1F1E6E6
                E6C1C1C1C0BDBAFF00FFFF00FFFF00FF0000FF00FFFF00FFE9E3DEDADADAFAFA
                FAFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6EFEFEFE6E6E6B1B1B1DCD6D1FF
                00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFE2DEDBE8E8E8FBFBFBFEFEFEFF
                FFFFFEFEFEF9F9F9F1F1F1EAEAEAC5C5C5C7C3C0FF00FFFF00FFFF00FFFF00FF
                0000FF00FFFF00FFFF00FFF5EDE8E6E2DFE3E3E3ECECECF3F3F3F5F5F5EAEAEA
                D4D4D4B6B6B6C7C3C0F1E9E4FF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF
                FF00FFFF00FFFF00FFEBE5E0DAD7D4CCCBCAC5C5C5C9C8C7CDCAC7DDD7D2FF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                0000}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton3Click
            end
            object SpeedButton4: TSpeedButton
              Left = 131
              Top = 59
              Width = 30
              Height = 24
              Hint = 'Excluir Imagem'
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                08000000000000010000000000000000000000010000000100000005F0000005
                F1000005F2000005F2000005F1000005EF000005EC000005E7000005E3000005
                DF000005DC000005D8000005D4000005D0000005CD000005C8000005C1000005
                BA000005B7000005B7000005B7000005B6000005B6000005B6000005B6000005
                B6000005B5000005B5000005B4000005B3000106B0000206AD000307A6000509
                9D00070B94000A0D8B000D10800010137400151766001A1B56001C1E50001F20
                49002223420025263B00292934002D2D2D002E2E2E002F2F2F00303030003131
                3100323232003333330034343400353535003636360037373700383838003939
                39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
                4100424242004343430044444400454545004646460047474700484848004949
                49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
                5100525252005353530054545400555555005656560057575700585858005959
                59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
                6100626262006363630064646400656565006666660067676700686868006969
                69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
                7100727272007373730074747400757575007676760077777700787878007979
                79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
                8100828282008383830084848400858585008686860087878700888888008989
                89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
                9100929292009393930094949400959595009696960097979700989898009999
                99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A1A1
                A100A2A2A200A3A3A300A4A4A400A5A5A500A6A6A600A7A7A700A8A8A800A9A9
                A900AAAAAA00ABABAB00ACACAC00ADADAD00AEAEAE00AFAFAF00B0B0B000B1B1
                B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
                B900BABABA00BBBBBB00BCBCBC00BDBDBD00BEBEBE00BFBFBF00C0C0C000C1C1
                C100C2C2C200C3C3C300C4C4C400C5C5C500C6C6C600C7C7C700C8C8C800C9C9
                C900CACACA00D1B2D100D994D900E46CE400F139F100F917F900FD07FD00FE01
                FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
                FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
                FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
                FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
                FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
                FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00E9E9E9E9E9E9
                E9E9E9E9E9E9E9E91212E91212E9E9E9E9E9E9E9E9E9E91212E9E9121212E9E9
                E9E9E9E9E9E91212E9E9E912151212E9E9E9E9E9E91212E9E9E9E9E90B111212
                E9E9E9E91212E9E9E9E9E9E9E9E9121215E9151212E9E9E9E9E9E9E9E9E9E915
                0F0F0E1CE9E9E9E9E9E9E9E9E9E9E9E910100BE9E9E9E9E9E9E9E9E9E9E9E915
                0B0E0B07E9E9E9E9E9E9E9E9E9E9080B0CE9E90805E9E9E9E9E9E9E9E9030B05
                E9E9E9E90303E9E9E9E9E9E9030303E9E9E9E9E9E90303E9E9E9E9030303E9E9
                E9E9E9E9E9E9E903E9E9030303E9E9E9E9E9E9E9E9E9E9E9E9E90303E9E9E9E9
                E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9}
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton4Click
            end
            object Label55: TLabel
              Left = 168
              Top = 64
              Width = 31
              Height = 13
              Caption = 'Excluir'
            end
            object Label56: TLabel
              Left = 9
              Top = 39
              Width = 101
              Height = 18
              Caption = 'Sem Imagem'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -15
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
            end
            object Image2: TImage
              Left = 5
              Top = 1
              Width = 108
              Height = 104
              Stretch = True
            end
          end
        end
        object PageSheet7: TPageSheet
          Left = 0
          Top = 20
          Width = 788
          Height = 117
          Caption = '  Informa'#231#245'es Pessoais'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 1
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object pficha2: TPanel
            Left = 0
            Top = 0
            Width = 788
            Height = 117
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object LFILIACAO: TLabel
              Left = 3
              Top = 13
              Width = 72
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Filia'#231#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lestadocivil: TLabel
              Left = 3
              Top = 37
              Width = 72
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Estado Civil:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lconjuge: TLabel
              Left = 195
              Top = 37
              Width = 66
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'C'#244'njuge:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label16: TLabel
              Left = 115
              Top = 61
              Width = 72
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Refer'#234'ncias:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lsexo: TLabel
              Left = 3
              Top = 61
              Width = 72
              Height = 13
              Alignment = taRightJustify
              AutoSize = False
              Caption = 'Sexo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object EFILIACAO: TDBEdit
              Left = 80
              Top = 9
              Width = 459
              Height = 21
              DataField = 'FILIACAO'
              DataSource = dscliente2
              TabOrder = 0
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = EFILIACAOKeyPress
            end
            object ECIVIL: TDBComboBox
              Left = 80
              Top = 33
              Width = 113
              Height = 21
              DataField = 'ESTADOCIVIL'
              DataSource = dscliente2
              ItemHeight = 13
              Items.Strings = (
                'CASADO(A)'
                'SOLTEIRO(A)'
                'VIUVO(A)'
                'AMASIADO(A)'
                'DESQUITADO(A)')
              TabOrder = 1
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = ECIVILKeyPress
            end
            object ECONJUGE: TDBEdit
              Left = 272
              Top = 33
              Width = 268
              Height = 21
              DataField = 'CONJUGE'
              DataSource = dscliente2
              TabOrder = 2
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = ECONJUGEKeyPress
            end
            object DBEdit20: TDBEdit
              Left = 192
              Top = 58
              Width = 575
              Height = 21
              DataField = 'REF1'
              DataSource = dscliente2
              TabOrder = 5
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit21: TDBEdit
              Left = 192
              Top = 82
              Width = 575
              Height = 21
              DataField = 'REF2'
              DataSource = dscliente2
              TabOrder = 6
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit21KeyPress
            end
            object lconvenio: TGroupBox
              Left = 552
              Top = 4
              Width = 216
              Height = 51
              Caption = 'Conv'#234'nio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              object ecodconvenio: TRzDBButtonEdit
                Left = 9
                Top = 18
                Width = 61
                Height = 21
                DataSource = dscliente2
                DataField = 'CODCONVENIO'
                FocusColor = 10550008
                TabOrder = 0
                OnExit = ECODCONVENIOExit
                OnKeyPress = ecodconvenioKeyPress
                OnButtonClick = ecodconvenioButtonClick
              end
              object ECONVENIO: TDBEdit
                Left = 77
                Top = 18
                Width = 132
                Height = 21
                Color = clBtnFace
                DataField = 'convenio'
                DataSource = dscliente2
                TabOrder = 1
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
            end
            object combo_sexo: TDBComboBox
              Left = 80
              Top = 57
              Width = 41
              Height = 21
              Style = csDropDownList
              CharCase = ecUpperCase
              DataField = 'SEXO'
              DataSource = dscliente2
              ItemHeight = 13
              Items.Strings = (
                'M'
                'F')
              TabOrder = 3
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = combo_sexoKeyPress
            end
            object DBCheckBox1: TDBCheckBox
              Left = 81
              Top = 83
              Width = 97
              Height = 17
              Caption = 'Casa Pr'#243'pria'
              DataField = 'MORADIA'
              DataSource = dscliente2
              TabOrder = 4
              ValueChecked = '1'
              ValueUnchecked = '0'
              OnKeyPress = DBCheckBox1KeyPress
            end
          end
        end
        object PageSheet10: TPageSheet
          Left = 0
          Top = 20
          Width = 788
          Height = 117
          Caption = 'Informa'#231#245'es Municipais'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 2
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object pficha4: TPanel
            Left = 0
            Top = 0
            Width = 788
            Height = 117
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Label31: TLabel
              Left = 9
              Top = 12
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
              Left = 7
              Top = 36
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
            object Label25: TLabel
              Left = 22
              Top = 60
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
            object eibge: TDBEdit
              Left = 98
              Top = 32
              Width = 105
              Height = 21
              DataField = 'IBGE'
              DataSource = dscliente2
              TabOrder = 1
              OnEnter = DBEdit1Enter
              OnExit = DBEdit15Exit
              OnKeyPress = DBEdit15KeyPress
            end
            object ecodmunicipio: TDBEdit
              Left = 98
              Top = 8
              Width = 105
              Height = 21
              DataField = 'COD_MUNICIPIO_IBGE'
              DataSource = dscliente2
              TabOrder = 0
              OnEnter = DBEdit1Enter
              OnExit = DBEdit15Exit
              OnKeyPress = ecodmunicipioKeyPress
            end
            object bibge: TAdvGlowButton
              Left = 207
              Top = 10
              Width = 35
              Height = 39
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
              TabOrder = 3
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
            object ecnae: TDBEdit
              Left = 98
              Top = 56
              Width = 105
              Height = 21
              DataField = 'CNAE'
              DataSource = dscliente2
              TabOrder = 2
              OnEnter = DBEdit1Enter
              OnExit = ecnaeExit
              OnKeyPress = ecnaeKeyPress
            end
            object bcnae: TAdvGlowButton
              Left = 207
              Top = 54
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
              TabOrder = 4
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
          end
        end
        object PageSheet8: TPageSheet
          Left = 0
          Top = 20
          Width = 788
          Height = 117
          Caption = 'Observa'#231#245'es'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 3
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object pficha3: TPanel
            Left = 0
            Top = 0
            Width = 788
            Height = 117
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object DBEdit22: TDBEdit
              Left = 7
              Top = 8
              Width = 761
              Height = 21
              DataField = 'OBS1'
              DataSource = dscliente2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit23: TDBEdit
              Left = 7
              Top = 32
              Width = 761
              Height = 21
              DataField = 'OBS2'
              DataSource = dscliente2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit24: TDBEdit
              Left = 7
              Top = 56
              Width = 761
              Height = 21
              DataField = 'OBS3'
              DataSource = dscliente2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit1KeyPress
            end
            object DBEdit25: TDBEdit
              Left = 7
              Top = 80
              Width = 761
              Height = 21
              DataField = 'OBS4'
              DataSource = dscliente2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnEnter = DBEdit1Enter
              OnExit = DBEdit1Exit
              OnKeyPress = DBEdit25KeyPress
            end
          end
        end
        object tab_responsavel: TPageSheet
          Left = 0
          Top = 20
          Width = 788
          Height = 117
          Caption = 'Respons'#225'veis'
          DisplayMode = tdGlyph
          ImageIndex = 0
          Margin = 0
          PageIndex = 4
          TabColor = clWindow
          TabWidth = 0
          TransparentColor = clNone
          object PG_RESP: TPageControl
            Left = 0
            Top = 0
            Width = 788
            Height = 117
            ActivePage = TabSheet1
            Align = alClient
            TabHeight = 15
            TabOrder = 0
            object TabSheet1: TTabSheet
              Caption = '1'
              object Label33: TLabel
                Left = 263
                Top = 33
                Width = 42
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Bairro:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label34: TLabel
                Left = 410
                Top = 33
                Width = 46
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
              object Label35: TLabel
                Left = 579
                Top = 33
                Width = 30
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'UF:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label36: TLabel
                Left = 654
                Top = 33
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
              object Label37: TLabel
                Left = -20
                Top = 33
                Width = 72
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
              object Label38: TLabel
                Left = -20
                Top = 9
                Width = 72
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Nome:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label39: TLabel
                Left = 380
                Top = 10
                Width = 72
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Estado Civil:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label40: TLabel
                Left = 587
                Top = 7
                Width = 56
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Profiss'#227'o:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label41: TLabel
                Left = 29
                Top = 55
                Width = 23
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'RG:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label42: TLabel
                Left = 276
                Top = 55
                Width = 29
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'CPF:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit26: TDBEdit
                Left = 57
                Top = 5
                Width = 313
                Height = 21
                DataField = 'RESP1_NOME'
                DataSource = dscliente2
                TabOrder = 0
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit27: TDBEdit
                Left = 57
                Top = 29
                Width = 209
                Height = 21
                DataField = 'RESP1_ENDERECO'
                DataSource = dscliente2
                TabOrder = 3
                OnEnter = DBEdit1Enter
                OnExit = DBEdit4Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit32: TDBEdit
                Left = 310
                Top = 29
                Width = 105
                Height = 21
                DataField = 'RESP1_BAIRRO'
                DataSource = dscliente2
                TabOrder = 4
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit33: TDBEdit
                Left = 457
                Top = 29
                Width = 129
                Height = 21
                DataField = 'RESP1_CIDADE'
                DataSource = dscliente2
                TabOrder = 5
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object wwDBComboBox6: TwwDBComboBox
                Left = 612
                Top = 29
                Width = 37
                Height = 21
                ShowButton = True
                Style = csDropDown
                MapList = False
                AllowClearKey = False
                CharCase = ecUpperCase
                DataField = 'RESP1_UF'
                DataSource = dscliente2
                DropDownCount = 8
                ItemHeight = 0
                Items.Strings = (
                  'SP'
                  'MG'
                  'RJ'
                  'RS'
                  'SC'
                  'PR'
                  'ES'
                  'DF'
                  'MT'
                  'MS'
                  'GO'
                  'TO'
                  'BA'
                  'SE'
                  'AL'
                  'PB'
                  'PE'
                  'MA'
                  'RN'
                  'CE'
                  'PI'
                  'PA'
                  'AM'
                  'AP'
                  'FN'
                  'AC'
                  'RR'
                  'RO'
                  'EX')
                Sorted = False
                TabOrder = 6
                UnboundDataType = wwDefault
                OnEnter = eufEnter
                OnExit = wwDBComboBox6Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit34: TDBEdit
                Left = 681
                Top = 29
                Width = 73
                Height = 21
                DataField = 'RESP1_CEP'
                DataSource = dscliente2
                MaxLength = 8
                TabOrder = 7
                OnEnter = DBEdit1Enter
                OnExit = DBEdit34Exit
                OnKeyPress = DBEdit34KeyPress
              end
              object DBComboBox1: TDBComboBox
                Left = 457
                Top = 6
                Width = 113
                Height = 21
                DataField = 'RESP1_ESTADO_CIVIL'
                DataSource = dscliente2
                ItemHeight = 13
                Items.Strings = (
                  'CASADO(A)'
                  'SOLTEIRO(A)'
                  'VIUVO(A)'
                  'AMASIADO(A)'
                  'DESQUITADO(A)')
                TabOrder = 1
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBComboBox1KeyPress
              end
              object DBEdit35: TDBEdit
                Left = 648
                Top = 5
                Width = 106
                Height = 21
                DataField = 'RESP1_PROFISSAO'
                DataSource = dscliente2
                TabOrder = 2
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit36: TDBEdit
                Left = 57
                Top = 52
                Width = 144
                Height = 21
                DataField = 'RESP1_RG'
                DataSource = dscliente2
                TabOrder = 8
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit37: TDBEdit
                Left = 310
                Top = 52
                Width = 105
                Height = 21
                CharCase = ecUpperCase
                DataField = 'RESP1_CPF'
                DataSource = dscliente2
                TabOrder = 9
                OnEnter = DBEdit1Enter
                OnExit = DBEdit37Exit
                OnKeyPress = DBEdit37KeyPress
              end
            end
            object TabSheet2: TTabSheet
              Caption = '2'
              ImageIndex = 1
              object Label43: TLabel
                Left = 263
                Top = 33
                Width = 42
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Bairro:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label44: TLabel
                Left = 410
                Top = 33
                Width = 46
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
              object Label45: TLabel
                Left = 579
                Top = 33
                Width = 30
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'UF:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label46: TLabel
                Left = 654
                Top = 33
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
              object Label47: TLabel
                Left = -20
                Top = 33
                Width = 72
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
              object Label48: TLabel
                Left = -20
                Top = 9
                Width = 72
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Nome:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label49: TLabel
                Left = 380
                Top = 10
                Width = 72
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Estado Civil:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label50: TLabel
                Left = 587
                Top = 7
                Width = 56
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'Profiss'#227'o:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label51: TLabel
                Left = 29
                Top = 55
                Width = 23
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'RG:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label52: TLabel
                Left = 276
                Top = 55
                Width = 29
                Height = 13
                Alignment = taRightJustify
                AutoSize = False
                Caption = 'CPF:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object ED_RESP2_NOME: TDBEdit
                Left = 57
                Top = 5
                Width = 313
                Height = 21
                DataField = 'RESP2_NOME'
                DataSource = dscliente2
                TabOrder = 0
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit39: TDBEdit
                Left = 57
                Top = 29
                Width = 209
                Height = 21
                DataField = 'RESP2_ENDERECO'
                DataSource = dscliente2
                TabOrder = 3
                OnEnter = DBEdit1Enter
                OnExit = DBEdit4Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit40: TDBEdit
                Left = 310
                Top = 29
                Width = 105
                Height = 21
                DataField = 'RESP2_BAIRRO'
                DataSource = dscliente2
                TabOrder = 4
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit41: TDBEdit
                Left = 457
                Top = 29
                Width = 129
                Height = 21
                DataField = 'RESP2_CIDADE'
                DataSource = dscliente2
                TabOrder = 5
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object wwDBComboBox7: TwwDBComboBox
                Left = 612
                Top = 29
                Width = 37
                Height = 21
                ShowButton = True
                Style = csDropDown
                MapList = False
                AllowClearKey = False
                CharCase = ecUpperCase
                DataField = 'RESP2_UF'
                DataSource = dscliente2
                DropDownCount = 8
                ItemHeight = 0
                Items.Strings = (
                  'SP'
                  'MG'
                  'RJ'
                  'RS'
                  'SC'
                  'PR'
                  'ES'
                  'DF'
                  'MT'
                  'MS'
                  'GO'
                  'TO'
                  'BA'
                  'SE'
                  'AL'
                  'PB'
                  'PE'
                  'MA'
                  'RN'
                  'CE'
                  'PI'
                  'PA'
                  'AM'
                  'AP'
                  'FN'
                  'AC'
                  'RR'
                  'RO'
                  'EX')
                Sorted = False
                TabOrder = 6
                UnboundDataType = wwDefault
                OnEnter = eufEnter
                OnExit = wwDBComboBox6Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit42: TDBEdit
                Left = 681
                Top = 29
                Width = 73
                Height = 21
                DataField = 'RESP2_CEP'
                DataSource = dscliente2
                MaxLength = 8
                TabOrder = 7
                OnEnter = DBEdit1Enter
                OnExit = DBEdit42Exit
                OnKeyPress = DBEdit34KeyPress
              end
              object DBComboBox2: TDBComboBox
                Left = 457
                Top = 6
                Width = 113
                Height = 21
                DataField = 'RESP2_ESTADO_CIVIL'
                DataSource = dscliente2
                ItemHeight = 13
                Items.Strings = (
                  'CASADO(A)'
                  'SOLTEIRO(A)'
                  'VIUVO(A)'
                  'AMASIADO(A)'
                  'DESQUITADO(A)')
                TabOrder = 1
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBComboBox1KeyPress
              end
              object DBEdit43: TDBEdit
                Left = 648
                Top = 5
                Width = 106
                Height = 21
                DataField = 'RESP2_PROFISSAO'
                DataSource = dscliente2
                TabOrder = 2
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit44: TDBEdit
                Left = 57
                Top = 52
                Width = 144
                Height = 21
                DataField = 'RESP2_RG'
                DataSource = dscliente2
                TabOrder = 8
                OnEnter = DBEdit1Enter
                OnExit = DBEdit1Exit
                OnKeyPress = DBEdit1KeyPress
              end
              object DBEdit45: TDBEdit
                Left = 310
                Top = 52
                Width = 105
                Height = 21
                CharCase = ecUpperCase
                DataField = 'RESP2_CPF'
                DataSource = dscliente2
                TabOrder = 9
                OnEnter = DBEdit1Enter
                OnExit = DBEdit45Exit
                OnKeyPress = DBEdit45KeyPress
              end
            end
          end
        end
      end
    end
    object PageSheet2: TPageSheet
      Left = 1
      Top = 19
      Width = 788
      Height = 395
      Caption = '   F11 | Mov. Financeiro'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      TabColor = 11184895
      TabWidth = 0
      TransparentColor = clNone
      object ViewSplit1: TViewSplit
        Left = 235
        Top = 0
        Height = 342
      end
      object FlipView1: TFlipView
        Left = 0
        Top = 0
        Width = 235
        Height = 342
        AdaptiveColors = True
        Align = alLeft
        Caption = 'HIST'#211'RICO DE COMPRAS'
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
        HeaderColor = clBtnFace
        HeaderHeight = 18
        HeaderStyle = hsSolid
        HideGlyphs = False
        Margins.Bottom = 4
        Margins.Left = 4
        Margins.Right = 4
        Margins.Top = 4
        ParentColor = False
        TransparentButtons = False
        object ViewSplit2: TViewSplit
          Left = 4
          Top = 299
          Width = 227
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object Label4: TLabel
          Left = 8
          Top = 312
          Width = 89
          Height = 13
          Caption = 'TOTAL/COMPRAS:'
        end
        object LTOTAL: TLabel
          Left = 111
          Top = 306
          Width = 113
          Height = 22
          Alignment = taRightJustify
          AutoSize = False
          Caption = '1.000,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object wwDBGrid1: TwwDBGrid
          Left = 4
          Top = 22
          Width = 227
          Height = 277
          DittoAttributes.ShortCutDittoField = 0
          DittoAttributes.ShortCutDittoRecord = 0
          DittoAttributes.Options = []
          DisableThemesInTitle = False
          Selected.Strings = (
            'CODIGO'#9'8'#9'N'#218'MERO'#9#9
            'DATA'#9'10'#9'DATA'#9#9
            'TOTAL'#9'10'#9'TOTAL'#9#9)
          IniAttributes.Delimiter = ';;'
          TitleColor = clWindow
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alTop
          BorderStyle = bsNone
          DataSource = dsvenda
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
          PaintOptions.ActiveRecordColor = clRed
        end
      end
      object GroupBox3: TGroupBox
        Left = 248
        Top = 5
        Width = 513
        Height = 168
        Caption = 'PRODUTOS COMPRADOS [TODAS AS NOTAS]'
        TabOrder = 1
        object wwDBGrid2: TwwDBGrid
          Left = 8
          Top = 14
          Width = 497
          Height = 148
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
      end
      object GroupBox4: TGroupBox
        Left = 248
        Top = 175
        Width = 513
        Height = 159
        Caption = 'PRESTA'#199#213'ES'
        TabOrder = 2
        object PageView2: TPageView
          Left = 2
          Top = 15
          Width = 509
          Height = 142
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
            Height = 127
            Caption = 'A RECEBER'
            DisplayMode = tdGlyph
            ImageIndex = 0
            Margin = 0
            PageIndex = 0
            TabColor = 16240558
            TabWidth = 0
            TransparentColor = clNone
            object Label6: TLabel
              Left = 4
              Top = 109
              Width = 88
              Height = 13
              Caption = 'TOTAL ORIGINAL:'
            end
            object Label13: TLabel
              Left = 208
              Top = 109
              Width = 37
              Height = 13
              Caption = 'JUROS:'
            end
            object Label15: TLabel
              Left = 345
              Top = 109
              Width = 36
              Height = 13
              Caption = 'TOTAL:'
            end
            object wwDBGrid4: TwwDBGrid
              Left = 0
              Top = 0
              Width = 509
              Height = 105
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
                'DOCUMENTO'#9'8'#9'DOCTO.'#9#9
                'VALOR_ORIGINAL'#9'8'#9'VALOR'#9#9
                'VALOR_PAGO'#9'7'#9'V.PAGO'#9#9
                'VALOR_ATUAL'#9'8'#9'L'#205'QUIDO'#9#9
                'juros'#9'6'#9'JUROS'#9#9
                'DIAS'#9'4'#9'DIAS'#9#9
                'RESTANTE'#9'8'#9'RESTANTE'#9#9)
              IniAttributes.Delimiter = ';;'
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alTop
              DataSource = dsreceber
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
              OnDblClick = wwDBGrid4DblClick
              ImageList = ImageList1
              PaintOptions.AlternatingRowColor = 16053492
              PaintOptions.ActiveRecordColor = clRed
            end
            object rvalor: TRxCalcEdit
              Left = 112
              Top = 106
              Width = 89
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
            object rjuro: TRxCalcEdit
              Left = 252
              Top = 106
              Width = 85
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
              TabOrder = 2
            end
            object rtotal: TRxCalcEdit
              Left = 392
              Top = 106
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
              TabOrder = 3
            end
          end
          object PageSheet4: TPageSheet
            Left = 0
            Top = 15
            Width = 509
            Height = 127
            Caption = 'RECEBIDAS'
            DisplayMode = tdGlyph
            ImageIndex = 0
            Margin = 0
            PageIndex = 1
            TabColor = 11184895
            TabWidth = 0
            TransparentColor = clNone
            object Label18: TLabel
              Left = 129
              Top = 126
              Width = 36
              Height = 13
              Caption = 'TOTAL:'
            end
            object Label9: TLabel
              Left = 132
              Top = 107
              Width = 36
              Height = 13
              Caption = 'TOTAL:'
            end
            object wwDBGrid5: TwwDBGrid
              Left = 0
              Top = 0
              Width = 509
              Height = 101
              DittoAttributes.ShortCutDittoField = 0
              DittoAttributes.ShortCutDittoRecord = 0
              DittoAttributes.Options = []
              DisableThemesInTitle = False
              ControlType.Strings = (
                'FILTRO;CheckBox;1;0'
                'SITUACAO;ImageIndex;Original Size'
                'situacao2;ImageIndex;Original Size')
              Selected.Strings = (
                'DATA_VENCIMENTO'#9'13'#9'VENCTO.'
                'DOCUMENTO'#9'13'#9'DOCTO.'
                'VALOR_ORIGINAL'#9'9'#9'VALOR'
                'VALOR_PAGO'#9'8'#9'V.PAGO')
              IniAttributes.Delimiter = ';;'
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              Align = alTop
              DataSource = dsreceberpg
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
              OnDblClick = wwDBGrid4DblClick
              ImageList = ImageList1
              PaintOptions.AlternatingRowColor = 16053492
              PaintOptions.ActiveRecordColor = clRed
            end
            object rtotal_pago: TRxCalcEdit
              Left = 176
              Top = 105
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
        object FlatPanel2: TFlatPanel
          Left = 216
          Top = 9
          Width = 291
          Height = 17
          Caption = 'DUPLO CLIQUE - Verificar pagamentos'
          ParentColor = True
          TabOrder = 1
          UseDockManager = True
        end
      end
      object HeaderView2: THeaderView
        Left = 0
        Top = 342
        Width = 788
        Height = 53
        AdaptiveColors = True
        Align = alBottom
        BorderStyle = bsNone
        Caption = 'Movimento de Mensal de compras ('#218'ltimos 12 Meses)'
        HeaderColor = clHighlight
        HeaderFont.Charset = ANSI_CHARSET
        HeaderFont.Color = clWindow
        HeaderFont.Height = -11
        HeaderFont.Name = 'Verdana'
        HeaderFont.Style = [fsBold]
        HeaderSize = 16
        ParentColor = False
        object wwDBGrid3: TwwDBGrid
          Left = 0
          Top = 16
          Width = 788
          Height = 37
          DittoAttributes.ShortCutDittoField = 0
          DittoAttributes.ShortCutDittoRecord = 0
          DittoAttributes.Options = []
          DisableThemesInTitle = False
          Selected.Strings = (
            'sum_0'#9'9'#9'janeiro'
            'sum'#9'8'#9'sum'
            'sum_1'#9'8'#9'sum_1'
            'sum_2'#9'8'#9'sum_2'
            'sum_3'#9'8'#9'sum_3'
            'sum_4'#9'8'#9'sum_4'
            'sum_5'#9'8'#9'sum_5'
            'sum_6'#9'8'#9'sum_6'
            'sum_7'#9'8'#9'sum_7'
            'sum_8'#9'9'#9'sum_8'
            'sum_9'#9'9'#9'sum_9'
            'sum_10'#9'9'#9'sum_10')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = False
          ShowVertScrollBar = False
          Align = alClient
          DataSource = dsvenda_mes
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
      object PPGTO: TFlatPanel
        Left = 559
        Top = 204
        Width = 201
        Height = 121
        Caption = 'PPGTO'
        ParentColor = True
        Visible = False
        TabOrder = 4
        UseDockManager = True
        object HeaderView4: THeaderView
          Left = 1
          Top = 1
          Width = 199
          Height = 24
          AdaptiveColors = True
          Align = alTop
          BorderStyle = bsNone
          Caption = 'PAGAMENTOS '
          HeaderColor = clHighlight
          HeaderFont.Charset = ANSI_CHARSET
          HeaderFont.Color = clWindow
          HeaderFont.Height = -9
          HeaderFont.Name = 'Verdana'
          HeaderFont.Style = [fsBold]
          HeaderSize = 24
          ParentColor = False
          object SpeedButton1: TSpeedButton
            Left = 176
            Top = 1
            Width = 20
            Height = 20
            Caption = 'X'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButton1Click
          end
        end
        object FlatPanel1: TFlatPanel
          Left = 1
          Top = 25
          Width = 199
          Height = 95
          ParentColor = True
          Enabled = False
          ColorHighLight = clBtnFace
          ColorShadow = clBtnFace
          Align = alClient
          TabOrder = 1
          UseDockManager = True
          object Memo1: TMemo
            Left = 9
            Top = 7
            Width = 183
            Height = 89
            BorderStyle = bsNone
            Color = clBtnFace
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Lucida Console'
            Font.Style = []
            Lines.Strings = (
              'DATA           VALOR - R$'
              '--------------------------'
              '01/01/2007 -->    1.000,00')
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
    object PageSheet5: TPageSheet
      Left = 1
      Top = 19
      Width = 788
      Height = 395
      Caption = 'F9 | Informa'#231#245'es Adicionais'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 2
      TabColor = 4381428
      TabWidth = 0
      TransparentColor = clNone
      object pInfAdic: TPanel
        Left = 0
        Top = 0
        Width = 788
        Height = 395
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object GroupBox5: TGroupBox
          Left = 8
          Top = 8
          Width = 745
          Height = 233
          Caption = '|Pessoas autorizadas '#224' comprar na ficha deste cliente |'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object wwDBGrid6: TwwDBGrid
            Left = 8
            Top = 16
            Width = 721
            Height = 177
            DittoAttributes.ShortCutDittoField = 0
            DittoAttributes.ShortCutDittoRecord = 0
            DittoAttributes.Options = []
            DisableThemesInTitle = False
            ControlType.Strings = (
              'PARENTESCO;CustomEdit;wwDBComboBox2;F')
            Selected.Strings = (
              'NOME'#9'66'#9'NOME'
              'PARENTESCO'#9'10'#9'PARENTESCO'
              'TELEFONE'#9'19'#9'TELEFONE')
            IniAttributes.Delimiter = ';;'
            TitleColor = clBtnFace
            FixedCols = 0
            ShowHorzScrollBar = True
            DataSource = dspessoas
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
            ParentFont = False
            TabOrder = 0
            TitleAlignment = taLeftJustify
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -9
            TitleFont.Name = 'Verdana'
            TitleFont.Style = []
            TitleLines = 1
            TitleButtons = False
          end
          object wwDBComboBox2: TwwDBComboBox
            Left = 288
            Top = 112
            Width = 169
            Height = 21
            ShowButton = True
            Style = csDropDown
            MapList = False
            AllowClearKey = False
            AutoSelect = False
            CharCase = ecUpperCase
            DataField = 'PARENTESCO'
            DataSource = dspessoas
            DropDownCount = 8
            ItemHeight = 0
            Items.Strings = (
              'AMIGO(A)'
              'AV'#212'('#211')'
              'COLEGA TRABALHO'
              'C'#212'NJUGE'
              'CUNHADO(A)'
              'FILHO(A)'
              'IRM'#195'O('#195')'
              'M'#195'E'
              'NETO(A)'
              'PAI'
              'SOBRINHO(A)'
              'SOGRO(A)'
              'TIO(A)'
              'VIZINHO(A)')
            Sorted = False
            TabOrder = 1
            UnboundDataType = wwDefault
          end
          object bitbtn7: TAdvGlowButton
            Left = 9
            Top = 199
            Width = 87
            Height = 24
            Caption = 'Excluir'
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
            OnClick = BitBtn7Click
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
    end
    object PageSheet6: TPageSheet
      Left = 1
      Top = 19
      Width = 788
      Height = 395
      Caption = 'F4 | Servi'#231'os Per'#237'odicos'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 3
      TabColor = 14022653
      TabWidth = 0
      TransparentColor = clNone
      object GroupBox6: TGroupBox
        Left = 5
        Top = 2
        Width = 764
        Height = 379
        Caption = 'Servi'#231'os Realizados Periodicamente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object wwDBComboBox3: TwwDBComboBox
          Left = 288
          Top = 112
          Width = 169
          Height = 21
          ShowButton = True
          Style = csDropDown
          MapList = False
          AllowClearKey = False
          AutoSelect = False
          DataField = 'PARENTESCO'
          DataSource = dspessoas
          DropDownCount = 8
          ItemHeight = 0
          Items.Strings = (
            'AMIGO(A)'
            'AV'#212'('#211')'
            'COLEGA TRABALHO'
            'CUNHADO(A)'
            'FILHO(A)'
            'IRM'#195'O('#195')'
            'M'#195'E'
            'NETO(A)'
            'PAI'
            'SOBRINHO(A)'
            'SOGRO(A)'
            'TIO(A)'
            'VIZINHO(A)')
          Sorted = False
          TabOrder = 0
          UnboundDataType = wwDefault
        end
        object wwDBGrid7: TwwDBGrid
          Left = 12
          Top = 14
          Width = 735
          Height = 323
          DittoAttributes.ShortCutDittoField = 0
          DittoAttributes.ShortCutDittoRecord = 0
          DittoAttributes.Options = []
          DisableThemesInTitle = False
          Selected.Strings = (
            'STATUS'#9'2'#9'ST'
            'CODSERVICO'#9'6'#9'C'#211'D'
            'servico'#9'23'#9'SERVI'#199'O'
            'MARCA'#9'15'#9'MARCA'
            'MODELO'#9'17'#9'MODELO'
            'SERIE'#9'16'#9'S'#201'RIE'
            'ULTIMA_MANUTENCAO'#9'10'#9#218'LTIMA'
            'proxima_manutencao'#9'10'#9'PROXIMA'
            'tecnico'#9'40'#9'T'#201'CNICO')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = False
          ShowVertScrollBar = False
          Align = alCustom
          DataSource = dsservicos_periodicos
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          TabOrder = 1
          TitleAlignment = taCenter
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Verdana'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
        end
        object bitbtn9: TAdvGlowButton
          Left = 272
          Top = 347
          Width = 220
          Height = 24
          Caption = 'Imprimir'
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
          TabOrder = 2
          OnClick = BitBtn9Click
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
    object PageSheet9: TPageSheet
      Left = 1
      Top = 19
      Width = 788
      Height = 395
      Caption = ' F5 | Hist'#243'rico'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 4
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 788
        Height = 395
        Align = alClient
        DataField = 'HISTORICO'
        DataSource = dscliente2
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 1
    object Label20: TLabel
      Left = 4
      Top = 10
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label21: TLabel
      Left = 112
      Top = 10
      Width = 38
      Height = 13
      Caption = 'Pessoa:'
    end
    object Label2: TLabel
      Left = 246
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
      DataSource = dscliente2
      TabOrder = 0
      OnChange = DBEdit1Change
      OnEnter = DBEdit1Enter
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object combo_pessoa: TComboBox
      Left = 156
      Top = 8
      Width = 81
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'F'#205'SICA'
      OnChange = combo_pessoaChange
      OnKeyPress = combo_pessoaKeyPress
      Items.Strings = (
        'F'#205'SICA'
        'JUR'#205'DICA')
    end
    object DBEdit2: TDBEdit
      Left = 288
      Top = 8
      Width = 481
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dscliente2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnEnter = DBEdit1Enter
      OnExit = DBEdit2Exit
      OnKeyPress = DBEdit2KeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 454
    Width = 790
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
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
      Width = 84
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
      Left = 272
      Top = 3
      Width = 95
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
      Left = 371
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
      DataSource = dscliente2
      DBButtonType = dbFirst
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton2: TDBAdvGlowButton
      Left = 394
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
      DataSource = dscliente2
      DBButtonType = dbPrior
      DisableControl = [drBOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton3: TDBAdvGlowButton
      Left = 417
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
      DataSource = dscliente2
      DBButtonType = dbNext
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object DBAdvGlowButton4: TDBAdvGlowButton
      Left = 440
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
      DataSource = dscliente2
      DBButtonType = dbLast
      DisableControl = [drEOF, drEditing, drEmpty]
    end
    object bitbtn5: TAdvGlowButton
      Left = 467
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
    object LMDButton1: TAdvGlowMenuButton
      Left = 572
      Top = 3
      Width = 123
      Height = 24
      Caption = ' Tabelas/Fun'#231#245'es'
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000002154944415478DA
        62FCFFFF3F03250020805840C492C31FEA80E6A4FEFDFF4FE6DFBF7F0C7FFF31
        30FC01D17F41ECFF0C7F803402FF65F8FBE73F50FCDFE9D61855338000021BF0
        EFFFFFDC60335E11526C6E5879470F44030410D800A06960CD1BEF2D04DAFC07
        68CB1F86DF40FAF7DFDF081A280693ABB06C65F8FDFB2F3B480F4000410D8084
        4394563251B67FFD0134F4CF5F301B20802006803C0D04CB8FBC22CA003F1321
        865F50030002086CC01FA80120106923C6B0EAE84B86306B71B8D8DA132F1982
        2D10FC379F7EC05D00104060037E030D000624030B3350F1F1570CCCCC4C0CEB
        4EBC626064626060826ADA780AE83AA01A56A00E4D692E865FBF2106000410DC
        0BA05060616664083413052A7ECDE06F2686E20264FE9D679F18FEFC81B81A20
        80E02EF80FE4B300ADDB72F635D005101AAC800961080B2330CA816C2D290EA0
        8510030002086200D034508A64056AF4301465D873F10D838B3E2259ECBEF09A
        C1425D90819713AC9CE1E6E38F0CDCEC103640004102F11FC434662646B06610
        80D14021605A6060387CFD3DDC4065513678CC010410C4803F7F20610074AEA3
        AE08C3812B6F181C74102E5877E235439085289C0F720133D46B0001840803A0
        1774E478189EBFFBCEA02CCEC970FFC517785ED09666036B4206FFFEFD073B01
        2080A0B1F0FF68E3F2DB06BFFEFEE306C52F08FF0586CB6F70E6F98335317DF8
        FC633388060820464AB33340800100BF940F28257F2EDB0000000049454E44AE
        426082}
      TabOrder = 9
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
      DropDownButton = True
      DropDownSplit = False
      DropDownMenu = PopupMenu1
    end
    object bfechar: TAdvGlowButton
      Left = 697
      Top = 3
      Width = 75
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
      TabOrder = 10
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
      TabOrder = 11
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
    Left = 456
    Top = 152
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
    object Movimento1: TMenuItem
      Caption = 'Movimento'
      ShortCut = 122
      OnClick = Movimento1Click
    end
    object InformaesAdicionais1: TMenuItem
      Caption = 'Informa'#231#245'es Adicionais'
      ShortCut = 120
      OnClick = InformaesAdicionais1Click
    end
    object ServicosPeriodicos1: TMenuItem
      Caption = 'Servicos Periodicos'
      ShortCut = 115
      OnClick = ServicosPeriodicos1Click
    end
    object Histrico1: TMenuItem
      Caption = 'Hist'#243'rico'
      ShortCut = 116
      OnClick = Histrico1Click
    end
  end
  object Pop2: TPopupMenu
    Left = 928
    Top = 552
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
  object dscliente2: TDataSource
    DataSet = frmmodulo.qrcliente
    OnDataChange = dscliente2DataChange
    Left = 800
    Top = 552
  end
  object qrcliente: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'insert into c000007 '
      '(codigo, '
      'nome,'
      'apelido,'
      'endereco,'
      'bairro,'
      'cidade,'
      'uf,'
      'cep,'
      'complemento,'
      'telefone1,'
      'telefone2,'
      'celular,'
      'email,'
      'rg,'
      'cpf,'
      'filiacao,'
      'estadocivil,'
      'conjuge,'
      'profissao,'
      'empresa,'
      'renda,'
      'limite,'
      'ref1,'
      'ref2,'
      'data_cadastro,'
      'obs1,'
      'obs2,'
      'obs3,'
      'obs4,'
      'nascimento,'
      'tipo,'
      'situacao)'
      'values '
      '('#39'000019'#39','
      #39'ANGELO DA SILVA'#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      '0,'
      '0,'
      #39#39','
      #39#39','
      #39'24/07/2006'#39','
      #39#39','
      #39#39','
      #39#39','
      #39#39','
      #39'  /  /    '#39','
      '1,'
      '1)')
    Params = <>
    Left = 896
    Top = 552
  end
  object dscliente: TDataSource
    DataSet = qrcliente
    Left = 832
    Top = 552
  end
  object query1: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 864
    Top = 552
  end
  object qrvenda: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000048')
    Params = <>
    Left = 768
    Top = 552
    object qrvendaCODIGO: TStringField
      DisplayLabel = 'N'#218'MERO'
      DisplayWidth = 8
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrvendaDATA: TDateTimeField
      DisplayWidth = 10
      FieldName = 'DATA'
    end
    object qrvendaTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaCODCAIXA: TStringField
      DisplayWidth = 6
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
    object qrvendaCODVENDEDOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrvendaCODCLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrvendaOBS: TStringField
      DisplayWidth = 50
      FieldName = 'OBS'
      Visible = False
      Size = 50
    end
    object qrvendaMEIO_DINHEIRO: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_DINHEIRO'
      Visible = False
    end
    object qrvendaMEIO_CHEQUEAV: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CHEQUEAV'
      Visible = False
    end
    object qrvendaMEIO_CHEQUEAP: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CHEQUEAP'
      Visible = False
    end
    object qrvendaMEIO_CARTAOCRED: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CARTAOCRED'
      Visible = False
    end
    object qrvendaMEIO_CARTAODEB: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CARTAODEB'
      Visible = False
    end
    object qrvendaMEIO_CREDIARIO: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CREDIARIO'
      Visible = False
    end
    object qrvendaSUBTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'SUBTOTAL'
      Visible = False
    end
    object qrvendaDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrvendaACRESCIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ACRESCIMO'
      Visible = False
    end
    object qrvendaCUPOM_FISCAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'CUPOM_FISCAL'
      Visible = False
    end
    object qrvendaNUMERO_CUPOM_FISCAL: TStringField
      DisplayWidth = 10
      FieldName = 'NUMERO_CUPOM_FISCAL'
      Visible = False
      Size = 10
    end
  end
  object dsvenda: TDataSource
    DataSet = qrvenda
    Left = 992
    Top = 552
  end
  object qrvenda_mes: TZQuery
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
    Left = 928
    Top = 512
    object qrvenda_mesCOLUMN_0: TFloatField
      DisplayLabel = 'janeiro'
      DisplayWidth = 9
      FieldName = 'sum_0'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn: TFloatField
      DisplayWidth = 8
      FieldName = 'sum'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_1: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_1'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_2: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_2'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_3: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_3'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_4: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_4'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_5: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_5'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_6: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_6'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_7: TFloatField
      DisplayWidth = 8
      FieldName = 'sum_7'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_8: TFloatField
      DisplayWidth = 9
      FieldName = 'sum_8'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_9: TFloatField
      DisplayWidth = 9
      FieldName = 'sum_9'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_mesColumn_10: TFloatField
      DisplayWidth = 9
      FieldName = 'sum_10'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsvenda_mes: TDataSource
    DataSet = qrvenda_mes
    Left = 896
    Top = 512
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 864
    Top = 512
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
  object dsproduto: TDataSource
    DataSet = qrproduto
    Left = 768
    Top = 512
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
    Top = 512
  end
  object dsreceber: TDataSource
    DataSet = qrcontasreceber
    Left = 1120
    Top = 552
  end
  object qrcontasreceber: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrcontasreceberCalcFields
    SQL.Strings = (
      'select * from c000049')
    Params = <>
    Left = 960
    Top = 512
    object qrcontasrecebersituacao2: TIntegerField
      DisplayLabel = '?'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'situacao2'
      Calculated = True
    end
    object qrcontasreceberDATA_VENCIMENTO: TDateTimeField
      DisplayLabel = 'VENCTO.'
      DisplayWidth = 9
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcontasreceberDOCUMENTO: TStringField
      DisplayLabel = 'DOCTO.'
      DisplayWidth = 8
      FieldName = 'DOCUMENTO'
    end
    object qrcontasreceberVALOR_ORIGINAL: TFloatField
      DisplayLabel = 'VALOR'
      DisplayWidth = 8
      FieldName = 'VALOR_ORIGINAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberVALOR_PAGO: TFloatField
      DisplayLabel = 'V.PAGO'
      DisplayWidth = 7
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberVALOR_ATUAL: TFloatField
      DisplayLabel = 'L'#205'QUIDO'
      DisplayWidth = 8
      FieldName = 'VALOR_ATUAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberjuros: TFloatField
      DisplayLabel = 'JUROS'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'juros'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrcontasreceberDIAS: TIntegerField
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'DIAS'
      Calculated = True
    end
    object qrcontasreceberRESTANTE: TFloatField
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'RESTANTE'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrcontasreceberDATA_EMISSAO: TDateTimeField
      DisplayLabel = 'DT.COMPRA'
      DisplayWidth = 10
      FieldName = 'DATA_EMISSAO'
      Visible = False
    end
    object qrcontasreceberCODIGO: TStringField
      DisplayLabel = 'VENDA/NR.'
      DisplayWidth = 9
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 9
    end
    object qrcontasreceberFILTRO: TIntegerField
      DisplayLabel = 'S'
      DisplayWidth = 2
      FieldName = 'FILTRO'
      Visible = False
    end
    object qrcontasreceberCODCEDENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCEDENTE'
      Visible = False
      Size = 6
    end
    object qrcontasreceberTIPO: TStringField
      DisplayWidth = 11
      FieldName = 'TIPO'
      Visible = False
    end
    object qrcontasreceberVALOR_JUROS: TFloatField
      DisplayLabel = 'JURO/MULTA'
      DisplayWidth = 11
      FieldName = 'VALOR_JUROS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberDATA_PAGAMENTO: TDateTimeField
      DisplayLabel = #218'LT.PAGTO.'
      DisplayWidth = 11
      FieldName = 'DATA_PAGAMENTO'
      Visible = False
    end
    object qrcontasreceberCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrcontasreceberCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
    object qrcontasreceberCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrcontasreceberVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrcontasreceberCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Visible = False
      Size = 7
    end
    object qrcontasreceberNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Visible = False
      Size = 30
    end
    object qrcontasreceberCODREGIAO: TStringField
      FieldName = 'CODREGIAO'
      Visible = False
      Size = 6
    end
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Height = 15
    Width = 15
    Left = 1152
    Top = 552
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
  object qrcontasreceberpg: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000049')
    Params = <>
    Left = 1088
    Top = 552
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'VENCTO.'
      DisplayWidth = 13
      FieldName = 'DATA_VENCIMENTO'
    end
    object StringField1: TStringField
      DisplayLabel = 'DOCTO.'
      DisplayWidth = 13
      FieldName = 'DOCUMENTO'
    end
    object FloatField1: TFloatField
      DisplayLabel = 'VALOR'
      DisplayWidth = 9
      FieldName = 'VALOR_ORIGINAL'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField2: TFloatField
      DisplayLabel = 'V.PAGO'
      DisplayWidth = 8
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField3: TFloatField
      DisplayLabel = 'L'#205'QUIDO'
      DisplayWidth = 8
      FieldName = 'VALOR_ATUAL'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField4: TFloatField
      DisplayLabel = 'JUROS'
      DisplayWidth = 6
      FieldKind = fkCalculated
      FieldName = 'juros'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object IntegerField2: TIntegerField
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'DIAS'
      Visible = False
      Calculated = True
    end
    object FloatField5: TFloatField
      DisplayWidth = 8
      FieldKind = fkCalculated
      FieldName = 'RESTANTE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object IntegerField1: TIntegerField
      DisplayLabel = '?'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'situacao2'
      Visible = False
      Calculated = True
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = 'DT.COMPRA'
      DisplayWidth = 10
      FieldName = 'DATA_EMISSAO'
      Visible = False
    end
    object StringField2: TStringField
      DisplayLabel = 'VENDA/NR.'
      DisplayWidth = 9
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 9
    end
    object IntegerField3: TIntegerField
      DisplayLabel = 'S'
      DisplayWidth = 2
      FieldName = 'FILTRO'
      Visible = False
    end
    object StringField3: TStringField
      DisplayWidth = 6
      FieldName = 'CODCEDENTE'
      Visible = False
      Size = 6
    end
    object StringField4: TStringField
      DisplayWidth = 11
      FieldName = 'TIPO'
      Visible = False
    end
    object FloatField6: TFloatField
      DisplayLabel = 'JURO/MULTA'
      DisplayWidth = 11
      FieldName = 'VALOR_JUROS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object DateTimeField3: TDateTimeField
      DisplayLabel = #218'LT.PAGTO.'
      DisplayWidth = 11
      FieldName = 'DATA_PAGAMENTO'
      Visible = False
    end
    object StringField5: TStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object StringField6: TStringField
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
    object StringField7: TStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object FloatField7: TFloatField
      FieldName = 'VALOR_DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object IntegerField4: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object StringField8: TStringField
      FieldName = 'CODVENDA'
      Visible = False
      Size = 7
    end
    object StringField9: TStringField
      FieldName = 'NOSSONUMERO'
      Visible = False
      Size = 30
    end
    object StringField10: TStringField
      FieldName = 'CODREGIAO'
      Visible = False
      Size = 6
    end
  end
  object dsreceberpg: TDataSource
    DataSet = qrcontasreceberpg
    Left = 832
    Top = 512
  end
  object qrpgto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000050')
    Params = <>
    Left = 992
    Top = 512
  end
  object qrpessoas: TZQuery
    Connection = frmmodulo.Conexao
    BeforePost = qrpessoasBeforePost
    AfterPost = qrpessoasAfterPost
    SQL.Strings = (
      'select * from c000070')
    Params = <>
    Left = 1024
    Top = 552
  end
  object dspessoas: TDataSource
    DataSet = qrpessoas
    Left = 1056
    Top = 552
  end
  object dsservicos_periodicos: TDataSource
    DataSet = frmmodulo.qrservicos_periodicos
    Left = 848
    Top = 288
  end
  object PopupMenu1: TPopupMenu
    Left = 233
    Top = 287
    object Regies2: TMenuItem
      Caption = 'Regi'#245'es'
      OnClick = Regies2Click
    end
    object Vendedor1: TMenuItem
      Caption = 'Vendedor'
      OnClick = Vendedor1Click
    end
    object Convnio1: TMenuItem
      Caption = 'Conv'#234'nio'
      OnClick = Convnio1Click
    end
  end
  object qrduplo: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 424
    Top = 152
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 529
    Top = 322
  end
end
