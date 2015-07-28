object frmxloc_produto: Tfrmxloc_produto
  Left = 71
  Top = 116
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsToolWindow
  Caption = ' PRODUTO | Localizar'
  ClientHeight = 473
  ClientWidth = 774
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
  object Bevel8: TBevel
    Left = 0
    Top = 44
    Width = 774
    Height = 3
    Align = alTop
  end
  object Bevel6: TBevel
    Left = 0
    Top = 413
    Width = 774
    Height = 3
    Align = alBottom
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 774
    Height = 44
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 0
    UseDockManager = True
    object Label12: TLabel
      Left = 638
      Top = 21
      Width = 58
      Height = 12
      Caption = '* | TODOS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
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
      Height = 37
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
      Left = 704
      Top = 4
      Width = 2
      Height = 37
    end
    object Label7: TLabel
      Left = 726
      Top = 11
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
      Left = 714
      Top = 24
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
        'C'#211'D.BARRAS'
        'FORNECEDOR'
        'MARCA')
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
      Width = 369
      Height = 20
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
  end
  object GRID: TwwDBGrid
    Left = 0
    Top = 47
    Width = 774
    Height = 366
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'CODIGO'#9'7'#9'C'#243'digo'
      'CODBARRA'#9'14'#9'C'#243'digo de Barras'
      'PRODUTO'#9'48'#9'Produto'#9'F'
      'UNIDADE'#9'2'#9'Un.'
      'ESTOQUE_ATUAL'#9'12'#9'Estoque'
      'PRECOVENDA'#9'8'#9'Pre'#231'o-R$'
      'fornecedor'#9'28'#9'Fornecedor')
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
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    OnDblClick = GRIDDblClick
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 15066597
    PaintOptions.ActiveRecordColor = clBlack
  end
  object FlatPanel2: TFlatPanel
    Left = 0
    Top = 416
    Width = 774
    Height = 57
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alBottom
    TabOrder = 2
    UseDockManager = True
    object Bevel3: TBevel
      Left = 64
      Top = 7
      Width = 341
      Height = 18
    end
    object Label8: TLabel
      Left = 8
      Top = 10
      Width = 55
      Height = 13
      Caption = 'Fabricante:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 29
      Top = 34
      Width = 33
      Height = 13
      Caption = 'Grupo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel4: TBevel
      Left = 66
      Top = 31
      Width = 142
      Height = 18
    end
    object Label10: TLabel
      Left = 213
      Top = 34
      Width = 50
      Height = 13
      Caption = 'Subgrupo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel5: TBevel
      Left = 279
      Top = 31
      Width = 126
      Height = 18
    end
    object DBText1: TDBText
      Left = 67
      Top = 10
      Width = 326
      Height = 14
      DataField = 'MARCA'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 70
      Top = 34
      Width = 134
      Height = 14
      DataField = 'GRUPO'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText3: TDBText
      Left = 284
      Top = 34
      Width = 119
      Height = 14
      DataField = 'SUBGRUPO'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel7: TBevel
      Left = 413
      Top = 4
      Width = 2
      Height = 49
    end
    object Bevel9: TBevel
      Left = 541
      Top = 4
      Width = 2
      Height = 49
    end
    object Label11: TLabel
      Left = 422
      Top = 4
      Width = 44
      Height = 13
      Caption = 'Visualizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object bitbtn1: TAdvGlowButton
      Left = 554
      Top = 12
      Width = 104
      Height = 28
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
      TabOrder = 0
      OnClick = BITBTN1Click
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
      Left = 666
      Top = 12
      Width = 104
      Height = 28
      Caption = 'F6 | Alterar'
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
    object combo_situacao: TComboBox
      Left = 422
      Top = 20
      Width = 111
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Somente Ativos'
      OnChange = combo_situacaoChange
      Items.Strings = (
        'Somente Ativos'
        'Somente Inativos'
        'Todos')
    end
  end
  object PPROCURA: TFlatPanel
    Left = 264
    Top = 37
    Width = 369
    Height = 257
    Color = clWindow
    Visible = False
    ColorHighLight = clWindow
    ColorShadow = clWindow
    TabOrder = 3
    UseDockManager = True
    object wwDBGrid1: TwwDBGrid
      Left = 0
      Top = 0
      Width = 369
      Height = 255
      DittoAttributes.ShortCutDittoField = 0
      DittoAttributes.ShortCutDittoRecord = 0
      DittoAttributes.Options = []
      DisableThemesInTitle = False
      Selected.Strings = (
        'CODIGO'#9'7'#9'CODIGO'
        'NOME'#9'42'#9'NOME'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clWindow
      FixedCols = 0
      ShowHorzScrollBar = True
      BorderStyle = bsNone
      DataSource = DS2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgHideBottomDataLine]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnEnter = wwDBGrid1Enter
      OnExit = wwDBGrid1Exit
      OnKeyPress = wwDBGrid1KeyPress
      FooterColor = clWindow
      FooterCellColor = clWindow
      PaintOptions.ActiveRecordColor = clRed
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 256
    object Cadastrarnovoprodutos1: TMenuItem
      Caption = 'Cadastrar novo produtos'
      ShortCut = 113
      OnClick = BITBTN1Click
    end
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
    object AlterarProduto1: TMenuItem
      Caption = 'Editar Produto'
      ShortCut = 117
      OnClick = AlterarProduto1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar/Voltar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
  object ds: TDataSource
    DataSet = query
    Left = 464
    Top = 200
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    SQL.Strings = (
      'select prod.codigo,prod.produto, prod.unidade, prod.precovenda,'
      'prod.codbarra, prod.codgrupo, prod.codsubgrupo,prod.codmarca,'#13
      'prod.codfornecedor,'#10#10'estq.*'
      
        'from c000025 prod, c000100 estq where prod.codigo = estq.codprod' +
        'uto')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 464
    Top = 232
    object queryCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object queryCODBARRA: TStringField
      DisplayLabel = 'C'#243'digo de Barras'
      DisplayWidth = 14
      FieldName = 'CODBARRA'
      Size = 13
    end
    object queryPRODUTO: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 48
      FieldName = 'PRODUTO'
      Size = 60
    end
    object queryUNIDADE: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 2
      FieldName = 'UNIDADE'
      Size = 2
    end
    object queryESTOQUE_ATUAL: TFloatField
      DisplayLabel = 'Estoque'
      DisplayWidth = 12
      FieldName = 'ESTOQUE_ATUAL'
      DisplayFormat = '###,###,##0.00'
    end
    object queryPRECOVENDA: TFloatField
      DisplayLabel = 'Pre'#231'o-R$'
      DisplayWidth = 8
      FieldName = 'PRECOVENDA'
      DisplayFormat = '###,###,##0.000'
    end
    object queryfornecedor: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 28
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Size = 50
      Lookup = True
    end
    object queryCODGRUPO: TStringField
      FieldName = 'CODGRUPO'
      Visible = False
      Size = 6
    end
    object queryCODSUBGRUPO: TStringField
      FieldName = 'CODSUBGRUPO'
      Visible = False
      Size = 6
    end
    object queryCODMARCA: TStringField
      FieldName = 'CODMARCA'
      Visible = False
      Size = 6
    end
    object querysubgrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'subgrupo'
      LookupDataSet = frmmodulo.qrsubgrupo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SUBGRUPO'
      KeyFields = 'CODSUBGRUPO'
      Visible = False
      Size = 40
      Lookup = True
    end
    object querygrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'grupo'
      LookupDataSet = frmmodulo.qrgrupo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'GRUPO'
      KeyFields = 'CODGRUPO'
      Visible = False
      Size = 40
      Lookup = True
    end
    object querymarca: TStringField
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = frmmodulo.qrmarca
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODMARCA'
      Visible = False
      Size = 40
      Lookup = True
    end
    object queryCODPRODUTO: TStringField
      DisplayWidth = 10
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 10
    end
    object queryCODFILIAL: TStringField
      DisplayWidth = 10
      FieldName = 'CODFILIAL'
      Visible = False
      Size = 10
    end
    object queryESTOQUE_INICIAL: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTOQUE_INICIAL'
      Visible = False
    end
    object queryENTRADAS: TFloatField
      DisplayWidth = 10
      FieldName = 'ENTRADAS'
      Visible = False
    end
    object querySAIDAS: TFloatField
      DisplayWidth = 10
      FieldName = 'SAIDAS'
      Visible = False
    end
    object queryULTIMA_ENTRADA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ULTIMA_ENTRADA'
      Visible = False
    end
    object queryULTIMA_SAIDA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ULTIMA_SAIDA'
      Visible = False
    end
    object queryNOTA_FISCAL: TStringField
      DisplayWidth = 10
      FieldName = 'NOTA_FISCAL'
      Visible = False
      Size = 10
    end
    object queryCODFORNECEDOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
  end
  object QUERY2: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    SQL.Strings = (
      'select * from c000009')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 560
    Top = 152
  end
  object DS2: TDataSource
    DataSet = QUERY2
    Left = 560
    Top = 184
  end
end
