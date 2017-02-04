object frmxloc_fornecedor: Tfrmxloc_fornecedor
  Left = 192
  Top = 207
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsToolWindow
  Caption = 'FORNECEDOR | Localizar'
  ClientHeight = 356
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
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
    Top = 44
    Width = 724
    Height = 3
    Align = alTop
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 724
    Height = 44
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
      Left = 544
      Top = 4
      Width = 2
      Height = 37
    end
    object Label7: TLabel
      Left = 686
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
      Left = 674
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
    object BITBTN1: TSpeedButton
      Left = 553
      Top = 10
      Width = 97
      Height = 26
      Caption = 'Cadastrar'
      Glyph.Data = {
        DA050000424DDA05000000000000360000002800000019000000130000000100
        180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
        398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
        45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
        DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
        E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
        FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
        441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
        ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
        5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
        6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
        723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
        794020733D246C3A266537266035275E35275E3527613626EBDFDD8F4539FFFF
        FF00FFFFFF8F4539ECE3E0B9763CB7753CCA8D50FFFFFFFFFFFFB7753DA66030
        A25B2D9C552BCFA887FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB59E886136255E35
        26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3ECE9254
        FFFFFFFFFFFFBD7C41B06C39AC6737A86232B16E3BF8F6F5FFFFFFE0D7CCC8B1
        9AC5AE9A9C7758663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
        ECE3E0C17F3DC1803FD39857FFFFFFFFFFFFCD904EC28144BF7E42B36F3BAE69
        35BC7C48F1EEEBFBFAF9BF957582431D783F226F3C236A3A25693925EBDFDD8F
        4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853ED89D55FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFBD7B3FB6733CAF6B39B8763FE8E0D6FFFFFFCDB29785461C7B
        4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
        3EDCA153FFFFFFFFFFFFE4B57BE1AC69E0AA69C1803FBF7E41C38344BA7941B0
        6C38E8E0D7FFFFFFAE794F87461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
        FF8F4539ECE3E0CB8B3BCC8C3ADFA551FFFFFFFFFFFFE8BF88E5B67CE4B67CD7
        9C54E0AB71FFFFFFEADED0C3854CE5D9CBFFFFFFBE8E66904B228A471E86451C
        ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38E0A652FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE8BF8DC58442E8D3B9FFFFFFFFFFFFFFFFFFE1CFBA
        A45F2E98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
        8F36D09037D29237D8993FD8993ED59741D39442D19344C98942C17F3EBC7A3E
        C28142C7894EB8753DA96434A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
        FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
        C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
        2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
        CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
        3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
        EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
        DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
        4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
        398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
        45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      Visible = False
      OnClick = BITBTN1Click
    end
    object Bevel4: TBevel
      Left = 665
      Top = 4
      Width = 2
      Height = 37
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
        'FANTASIA')
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
      Width = 273
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
    object AdvGlowButton1: TAdvGlowButton
      Left = 549
      Top = 10
      Width = 111
      Height = 24
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
  end
  object GRID: TwwDBGrid
    Left = 0
    Top = 47
    Width = 724
    Height = 309
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'CODIGO'#9'7'#9'C'#211'DIGO'
      'NOME'#9'40'#9'NOME/RAZ'#195'O SOCIAL'
      'FANTASIA'#9'31'#9'FANTASIA'
      'CNPJ'#9'17'#9'CNPJ/CPF')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -9
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = GRIDDblClick
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 16250871
    PaintOptions.ActiveRecordColor = clBlack
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 256
    object CadastrarNovoFornecedor1: TMenuItem
      Caption = 'Cadastrar Novo Fornecedor'
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
    Left = 424
    Top = 224
  end
  object query: TZQuery
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
    Left = 464
    Top = 232
  end
end
