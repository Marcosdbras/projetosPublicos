object frmloc_produto: Tfrmloc_produto
  Left = 255
  Top = 343
  BorderStyle = bsToolWindow
  Caption = 'Localizar Produto'
  ClientHeight = 375
  ClientWidth = 601
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
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 37
    Width = 601
    Height = 3
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 354
    Width = 601
    Height = 3
    Align = alBottom
  end
  object Bevel3: TBevel
    Left = 0
    Top = 322
    Width = 601
    Height = 3
    Align = alBottom
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 40
    Width = 601
    Height = 282
    Selected.Strings = (
      'CODIGO'#9'7'#9'CODIGO'
      'PRODUTO'#9'39'#9'PRODUTO'
      'UNIDADE'#9'2'#9'UN'
      'marca'#9'10'#9'MARCA'
      'fornecedor'#9'18'#9'FORNECEDOR'
      'PRECOVENDA'#9'12'#9'PRE'#199'O')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = wwDBGrid1RowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsproduto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    PaintOptions.AlternatingRowColor = 16316664
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 601
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 45
      Height = 13
      Caption = 'Localizar:'
    end
    object loc: TwwIncrementalSearch
      Left = 64
      Top = 7
      Width = 401
      Height = 21
      DataSource = dsproduto
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
    object bitbtn1: TAdvGlowButton
      Left = 479
      Top = 6
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
      TabOrder = 1
      OnClick = BitBtn1Click
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
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 357
    Width = 601
    Height = 18
    Panels = <
      item
        Text = 'Siscom +7'
        Width = 50
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 325
    Width = 601
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 3
    object Label2: TLabel
      Left = 426
      Top = 7
      Width = 43
      Height = 13
      Caption = 'Estoque:'
    end
    object Label3: TLabel
      Left = 10
      Top = 7
      Width = 23
      Height = 13
      Caption = 'CST:'
    end
    object Label4: TLabel
      Left = 82
      Top = 7
      Width = 86
      Height = 13
      Caption = 'Al'#237'quota de ICMS:'
    end
    object eestoque: TRzNumericEdit
      Left = 480
      Top = 4
      Width = 116
      Height = 21
      TabOrder = 0
      IntegersOnly = False
      DisplayFormat = '###,###,##0.000'
    end
    object RzDBNumericEdit1: TRzDBNumericEdit
      Left = 184
      Top = 4
      Width = 65
      Height = 21
      DataSource = dsproduto
      DataField = 'ALIQUOTA'
      TabOrder = 1
      Value = 17.000000000000000000
      DisplayFormat = '###,###,##0.00%'
    end
    object RzDBEdit1: TRzDBEdit
      Left = 40
      Top = 4
      Width = 33
      Height = 21
      DataSource = dsproduto
      DataField = 'CST'
      TabOrder = 2
    end
  end
  object dsproduto: TDataSource
    DataSet = frmmodulo.qrproduto
    Left = 216
    Top = 144
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 168
    object CadastrarNovoFornecedor1: TMenuItem
      Caption = 'Cadastrar Novo Produto'
      ShortCut = 113
      OnClick = BitBtn1Click
    end
  end
  object qrestoque: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 336
    Top = 120
  end
end
