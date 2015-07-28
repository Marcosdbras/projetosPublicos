object frmxloc_cliente: Tfrmxloc_cliente
  Left = 88
  Top = 159
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsToolWindow
  Caption = ' CLIENTE | Localizar'
  ClientHeight = 461
  ClientWidth = 860
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel3: TBevel
    Left = 0
    Top = 331
    Width = 860
    Height = 3
    Align = alBottom
  end
  object Bevel5: TBevel
    Left = 0
    Top = 57
    Width = 860
    Height = 3
    Align = alTop
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 860
    Height = 57
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 0
    UseDockManager = True
    object Label1: TLabel
      Left = 6
      Top = 3
      Width = 114
      Height = 12
      Caption = 'F3 | LOCALIZAR POR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 136
      Top = 3
      Width = 94
      Height = 12
      Caption = 'F4 | REFER'#202'NCIA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 248
      Top = 4
      Width = 2
      Height = 49
    end
    object Label4: TLabel
      Left = 6
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 136
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 264
      Top = 3
      Width = 253
      Height = 12
      Caption = 'F5 | INFORME OS PAR'#194'METROS DA PESQUISA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 264
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel2: TBevel
      Left = 678
      Top = 4
      Width = 2
      Height = 49
    end
    object Label7: TLabel
      Left = 826
      Top = 15
      Width = 18
      Height = 12
      Caption = 'ESC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lvoltar: TLabel
      Left = 814
      Top = 30
      Width = 44
      Height = 12
      Caption = 'FECHAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Bevel4: TBevel
      Left = 807
      Top = 4
      Width = 2
      Height = 49
    end
    object Label8: TLabel
      Left = 264
      Top = 38
      Width = 32
      Height = 12
      Caption = 'ENTER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 302
      Top = 39
      Width = 234
      Height = 12
      Caption = '| PARA LOCALIZAR E INSERIR CONTE'#218'DO '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 7
      Top = 41
      Width = 161
      Height = 12
      Caption = 'INFORME TIPO DE PESQUISA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object combo_localizar: TComboBox
      Left = 5
      Top = 17
      Width = 118
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 12
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'NOME'
      Items.Strings = (
        'NOME'
        'CODIGO'
        'CPF/CNPJ'
        'RG/IE')
    end
    object combo_referencia: TComboBox
      Left = 136
      Top = 17
      Width = 97
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 12
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'IN'#205'CIO'
      Items.Strings = (
        'IN'#205'CIO'
        'PARTE')
    end
    object loc: TEdit
      Left = 264
      Top = 17
      Width = 409
      Height = 20
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
    object bitbtn1: TAdvGlowButton
      Left = 687
      Top = 6
      Width = 114
      Height = 46
      Caption = 'F2 | Cadastrar '
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
      TabOrder = 3
      OnClick = BitBtn1Click
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
  object GRID: TwwDBGrid
    Left = 0
    Top = 60
    Width = 860
    Height = 271
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'CODIGO'#9'6'#9'CODIGO'
      'NOME'#9'60'#9'NOME'
      'CPF'#9'18'#9'CPF/CNPJ'
      'ENDERECO'#9'34'#9'ENDERE'#199'O'
      'CIDADE'#9'17'#9'CIDADE')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = GRIDDblClick
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 16316664
    PaintOptions.ActiveRecordColor = clBlack
  end
  object pinformacoes: TRzSizePanel
    Left = 0
    Top = 334
    Width = 860
    Height = 127
    Align = alBottom
    HotSpotColor = cl3DLight
    HotSpotDotColor = 7879740
    HotSpotHighlight = 11855600
    HotSpotVisible = True
    SizeBarWidth = 8
    TabOrder = 2
    VisualStyle = vsGradient
    object Label10: TLabel
      Left = 3
      Top = 20
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
      Transparent = True
    end
    object Label11: TLabel
      Left = 161
      Top = 44
      Width = 72
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
      Transparent = True
    end
    object Label12: TLabel
      Left = 482
      Top = 92
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
    object Label13: TLabel
      Left = 3
      Top = 68
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
      Transparent = True
    end
    object Label14: TLabel
      Left = 3
      Top = 92
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
      Transparent = True
    end
    object Label15: TLabel
      Left = 394
      Top = 92
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
    object Label56: TLabel
      Left = 3
      Top = 44
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
      Transparent = True
    end
    object Label16: TLabel
      Left = 591
      Top = 91
      Width = 31
      Height = 13
      Caption = 'Limite:'
      Transparent = True
    end
    object eendereco: TDBEdit
      Left = 80
      Top = 16
      Width = 641
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = ds
      Enabled = False
      TabOrder = 0
    end
    object ebairro: TDBEdit
      Left = 239
      Top = 40
      Width = 482
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = ds
      Enabled = False
      TabOrder = 1
    end
    object ecidade: TDBEdit
      Left = 80
      Top = 88
      Width = 321
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDADE'
      DataSource = ds
      Enabled = False
      TabOrder = 2
    end
    object ecep: TDBEdit
      Left = 510
      Top = 88
      Width = 73
      Height = 21
      DataField = 'CEP'
      DataSource = ds
      Enabled = False
      TabOrder = 3
    end
    object ecomplemento: TDBEdit
      Left = 80
      Top = 64
      Width = 641
      Height = 21
      CharCase = ecUpperCase
      DataField = 'COMPLEMENTO'
      DataSource = ds
      Enabled = False
      TabOrder = 4
    end
    object euf: TwwDBComboBox
      Left = 428
      Top = 88
      Width = 49
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = False
      AllowClearKey = False
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = ds
      DropDownCount = 8
      Enabled = False
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
      ItemIndex = 6
      Sorted = False
      TabOrder = 5
      UnboundDataType = wwDefault
    end
    object enumero: TDBEdit
      Left = 80
      Top = 40
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NUMERO'
      DataSource = ds
      Enabled = False
      TabOrder = 6
    end
    object RzGroupBox1: TRzGroupBox
      Left = 735
      Top = 12
      Width = 111
      Height = 95
      Caption = 'Telefones'
      TabOrder = 7
      Transparent = True
      VisualStyle = vsGradient
      object RzDBEdit4: TRzDBEdit
        Left = 8
        Top = 16
        Width = 97
        Height = 21
        DataSource = ds
        DataField = 'TELEFONE1'
        DisabledColor = clWindow
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object RzDBEdit5: TRzDBEdit
        Left = 8
        Top = 39
        Width = 97
        Height = 21
        DataSource = ds
        DataField = 'TELEFONE2'
        DisabledColor = clWindow
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object RzDBEdit6: TRzDBEdit
        Left = 8
        Top = 62
        Width = 97
        Height = 21
        DataSource = ds
        DataField = 'CELULAR'
        DisabledColor = clWindow
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object RzDBNumericEdit2: TRzDBNumericEdit
      Left = 626
      Top = 88
      Width = 95
      Height = 21
      DataSource = ds
      DataField = 'LIMITE'
      Alignment = taLeftJustify
      DisabledColor = clWindow
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      IntegersOnly = False
      DisplayFormat = '###,###,##0.00'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 256
    object Localizarpor1: TMenuItem
      Caption = 'Localizar por...'
      ShortCut = 114
      OnClick = Localizarpor1Click
    end
    object Referncia1: TMenuItem
      Caption = 'Refer'#234'ncia da Pesquisa'
      ShortCut = 115
      OnClick = Referncia1Click
    end
    object ParmetrosdaPesquisa1: TMenuItem
      Caption = 'Par'#226'metros da Pesquisa'
      ShortCut = 116
      OnClick = ParmetrosdaPesquisa1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar/Voltar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object CadastrarCliente1: TMenuItem
      Caption = 'Cadastrar Cliente'
      ShortCut = 113
      OnClick = CadastrarCliente1Click
    end
  end
  object ds: TDataSource
    DataSet = query
    Left = 432
    Top = 224
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 464
    Top = 232
  end
end
