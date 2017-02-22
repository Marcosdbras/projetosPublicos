object frmproduto_consultapreco: Tfrmproduto_consultapreco
  Left = 147
  Top = 181
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsDialog
  Caption = 'PRODUTO | Consulta de Pre'#231'o e Estoque'
  ClientHeight = 476
  ClientWidth = 776
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
  object Bevel7: TBevel
    Left = 0
    Top = 399
    Width = 776
    Height = 3
    Align = alBottom
  end
  object Bevel8: TBevel
    Left = 0
    Top = 44
    Width = 776
    Height = 3
    Align = alTop
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 776
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
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
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
    Width = 776
    Height = 352
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'CODIGO'#9'7'#9'C'#243'digo'#9#9
      'CODBARRA'#9'13'#9'C'#243'd.Barras'#9#9
      'PRODUTO'#9'41'#9'Produto'#9'F'#9
      'UNIDADE'#9'2'#9'Un.'#9#9
      'MARCA'#9'19'#9'Marca'#9#9
      'ESTOQUE_ATUAL'#9'10'#9'Estoque'#9#9
      'PRECOVENDA'#9'10'#9'Pre'#231'o-R$'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = GRIDRowChanged
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
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    PaintOptions.AlternatingRowColor = 15066597
    PaintOptions.ActiveRecordColor = clBlack
  end
  object FlatPanel2: TFlatPanel
    Left = 0
    Top = 402
    Width = 776
    Height = 74
    ParentColor = True
    Enabled = False
    ColorHighLight = clBtnFace
    ColorShadow = clBlack
    Align = alBottom
    TabOrder = 2
    UseDockManager = True
    object Bevel3: TBevel
      Left = 72
      Top = 4
      Width = 369
      Height = 18
    end
    object Label8: TLabel
      Left = 8
      Top = 7
      Width = 60
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Fornecedor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 75
      Top = 7
      Width = 358
      Height = 14
      DataField = 'FORNECEDOR'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel6: TBevel
      Left = 72
      Top = 26
      Width = 369
      Height = 18
    end
    object Label13: TLabel
      Left = 8
      Top = 29
      Width = 60
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Localiza'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 75
      Top = 29
      Width = 358
      Height = 14
      DataField = 'LOCALICAZAO'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel4: TBevel
      Left = 552
      Top = 4
      Width = 2
      Height = 65
    end
    object Label9: TLabel
      Left = 568
      Top = 14
      Width = 54
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Pre'#231'o - R$:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 568
      Top = 46
      Width = 54
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Estoque:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Bevel5: TBevel
      Left = 72
      Top = 48
      Width = 137
      Height = 18
    end
    object Label10: TLabel
      Left = 8
      Top = 51
      Width = 60
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'd.Barras:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 75
      Top = 51
      Width = 126
      Height = 14
      DataField = 'CODBARRA'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel9: TBevel
      Left = 264
      Top = 48
      Width = 280
      Height = 18
    end
    object Label15: TLabel
      Left = 208
      Top = 51
      Width = 49
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Se'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 267
      Top = 51
      Width = 273
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
    object RxCalcEdit1: TRxDBCalcEdit
      Left = 632
      Top = 4
      Width = 135
      Height = 31
      DataField = 'PRECOVENDA'
      DataSource = ds
      Color = clBlack
      DecimalPlaces = 15
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object RxCalcEdit2: TRxDBCalcEdit
      Left = 632
      Top = 36
      Width = 135
      Height = 31
      DataField = 'ESTOQUE_ATUAL'
      DataSource = ds
      Color = clBlack
      DecimalPlaces = 15
      DisplayFormat = '###,###,##0.000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clAqua
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnChange = RxCalcEdit2Change
    end
  end
  object PPROCURA: TFlatPanel
    Left = 264
    Top = 45
    Width = 369
    Height = 257
    Color = clWindow
    Visible = False
    ColorHighLight = clWindow
    ColorShadow = clWindow
    TabOrder = 3
    UseDockManager = True
    object wwDBGrid1: TwwDBGrid
      Left = -1
      Top = 1
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
  object BFOTO: TAdvGlowButton
    Left = 446
    Top = 404
    Width = 42
    Height = 40
    Hint = 'Foto do Produto'
    Caption = 'F8'
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
      650041646F626520496D616765526561647971C9653C0000023A4944415478DA
      62FCFFFF3F032500208058F6B49AE334E1DFBFFF60FC1788FFFCFDC7F0178841
      F49F3F201A22061080C331B6010006619885FA452FE8D6FF4FE8C6418402ABE5
      58592DEE7B5004D49B7994465773503109D5A89D0EA2E218FE9C2F80C006FCFB
      FB87E1C393970CDFDF7F22CA665E7E3E06712909B0184000810DF80F140469DE
      ED729201EC000606080DC3407E9D5421030FA71CC87886F90DB31844C5C4C006
      03041013D8466828ECFD360D88A732FC64BC09B49D81E10F14FF067AE5F83B7D
      867FDF2F01BDF30B6CF37F681800041013C4CD10671B0ADC076A5ECDB0EF6B3A
      C3EF7F1F800A809AFF000D01E24B3F5D19B6BFB264F8F4E52ED86660B080BD08
      10401017400DF8030C0B135E7DA082BF0C877EF833FC66B8053104886F7E9166
      D8F0218DA1E8DE1CB80B407A000288051C604055E000FBF79BE1EAA74B0C3ED2
      220CCFBEFE60F8CAECC3F0EEB30183E0BF1086C7AFAC19BEFC9000AA6566D003
      EBF90736002080E006804CD51779C3A02B2CC920C5A1C2A0C70F54F05F8FE111
      EF2DA00F9731A84A2F01D29068FEB70F184320A701014000B1FC051BF01FEC2F
      717645A0266054FDFF05A681320C921C7290B40064832088FDF1DF25B0174000
      2080584036FF037238B879187EF46E064BFC85C739220DFC85A60D1016111060
      80E500800062012960F8CFC8C02F28C2C0C727040E5010D08C2A61F8FA643B38
      8A3844CC18AE2C9E0B341CE46F7032646064844420400031AE2CD5FD8F9CB6F1
      D98C0D00041023A5B911208098182804000106005F1BA1BF11C8938C00000000
      49454E44AE426082}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = BFOTOClick
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
    Layout = blGlyphTop
  end
  object AdvGlowButton1: TAdvGlowButton
    Left = 494
    Top = 404
    Width = 51
    Height = 40
    Hint = 'Servi'#231'os - Consulta de Pre'#231'o'
    Caption = 'F9'
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
      650041646F626520496D616765526561647971C9653C000002FC4944415478DA
      62FCFFFF3F033670E6CC99E43F7FFEC4FCFDFB97E1F7EFDF4B1C1C1CE6625307
      10408CC8065CBA744913A8E129107F016A7E212727270A923F71E2C46B2E2E2E
      09A0180FD030E9A0A0A0EB303D0001C484A4793650E315A0A29B4045E240FCF7
      E7CF9F0C20CCC6C6F61724F6EBD7AF9B407C65C99225B361FA0002086CC0C58B
      17ABB9B9B953E4E5E5990405054136DD0662F11F3F7E307CFFFE9DE1DFBF7F20
      036F03E525805E6112111149E9E9E9A906E90508201610013495E9C58B1720BF
      30826C141717E766626202F91D6C8BA6A626489C1B24F7F0E1438643870EFD07
      1A0EB61C2080E06170ECD8B1567E7EFE2A90ADA080FBF8F123C3A3478F185859
      591914151519585858C0067EFBF60DE4DDB6B2B232B00B0002881118406781CE
      1503626E090909C1AF5FBF32BC7FFF1E64E07120BB8E9D9D9D01E8AD26131313
      4B906540AF32ECDFBFFF3DD0B0AF403DAF000288054818A8AAAA32BD7DFB166C
      2BC8C6972F5F3200BD50D7D1D1B10764CBECD9B34162BB81163080D459595909
      02BD29D8D7D7270510404C206781FC063408EC74902D3C3C3C0C40EFC0A317A4
      06240F0C4CB01A609831805C0AF20E4000B13C79F2E4021088019DC9ADAFAF2F
      080A75696969904D4DB366CD026B06E226494949B04650E002A3F1FD972F5FBE
      02C55F0104103C10D7AE5DDB0A545405B209146020858F1F3F06DB28252505A6
      4186836C068641DBB469D3C081081040E0A858B3664D2DD0F44A010101B06660
      C26100A63C0660BC3328282880030E14981C1C1CE018018653654646462D482F
      400081D301300CFE0103889193931394A818EEDEBDFB15E8022E7B7B7B4690BF
      972D5BF69F9191F19B858505B7A8A8288390901023302AFF81F4020410DC0B4D
      4D4DB3DFBD7B970474E22BA002235E5EDE731E1E1EA054098A8517C0F4610434
      EC1C30E0C4807E9FB76DDBB654903E800082E785BABA3A90800ED0F9EA406FBC
      042A66FEF4E913C3EBD7AF412E6406CABD048AAB83D4C0348300400031E2CACE
      797979C940CD31A028063A7F093090B1666780000300F328B3C4551F6CFD0000
      000049454E44AE426082}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = AdvGlowButton1Click
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
    Layout = blGlyphTop
  end
  object PopupMenu1: TPopupMenu
    Left = 552
    Top = 256
    object Cadastrarnovoprodutos1: TMenuItem
      Caption = 'Cadastrar novo produtos'
      ShortCut = 113
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
    end
    object FotodoProduto1: TMenuItem
      Caption = 'Foto do Produto'
      ShortCut = 119
      OnClick = FotodoProduto1Click
    end
    object ConsultaServio1: TMenuItem
      Caption = 'Consulta Servi'#231'o'
      ShortCut = 120
      OnClick = ConsultaServio1Click
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
    SQL.Strings = (
      
        'select prod.*, estq.* from c000025 prod, c000100 estq where prod' +
        '.codigo = estq.codproduto')
    Params = <>
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
      DisplayLabel = 'C'#243'd.Barras'
      DisplayWidth = 13
      FieldName = 'CODBARRA'
      Size = 13
    end
    object queryPRODUTO: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 41
      FieldName = 'PRODUTO'
      Size = 60
    end
    object queryUNIDADE: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 2
      FieldName = 'UNIDADE'
      Size = 2
    end
    object queryMARCA: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 19
      FieldKind = fkLookup
      FieldName = 'MARCA'
      LookupDataSet = frmmodulo.qrmarca
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODMARCA'
      Size = 40
      Lookup = True
    end
    object queryESTOQUE_ATUAL: TFloatField
      DisplayLabel = 'Estoque'
      DisplayWidth = 10
      FieldName = 'ESTOQUE_ATUAL'
    end
    object queryPRECOVENDA: TFloatField
      DisplayLabel = 'Pre'#231'o-R$'
      DisplayWidth = 10
      FieldName = 'PRECOVENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object queryESTOQUE: TFloatField
      DisplayWidth = 9
      FieldName = 'ESTOQUE'
      Visible = False
      DisplayFormat = '###,###,##0.000'
    end
    object queryFORNECEDOR: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'FORNECEDOR'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Visible = False
      Size = 40
      Lookup = True
    end
    object queryDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
      Visible = False
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
    object queryCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object queryCODMARCA: TStringField
      FieldName = 'CODMARCA'
      Visible = False
      Size = 6
    end
    object queryDATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
      Visible = False
    end
    object queryNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Visible = False
      Size = 6
    end
    object queryPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      Visible = False
    end
    object queryDATA_ULTIMAVENDA: TDateTimeField
      FieldName = 'DATA_ULTIMAVENDA'
      Visible = False
    end
    object queryESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      Visible = False
    end
    object queryCODALIQUOTA: TStringField
      FieldName = 'CODALIQUOTA'
      Visible = False
      Size = 3
    end
    object queryAPLICACAO: TMemoField
      FieldName = 'APLICACAO'
      Visible = False
      BlobType = ftMemo
    end
    object queryLOCALICAZAO: TStringField
      FieldName = 'LOCALICAZAO'
      Visible = False
      Size = 50
    end
    object queryPESO: TFloatField
      FieldName = 'PESO'
      Visible = False
    end
    object queryVALIDADE: TStringField
      FieldName = 'VALIDADE'
      Visible = False
    end
    object queryCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      Visible = False
    end
    object queryUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
      Visible = False
    end
    object queryUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
      Visible = False
    end
    object queryUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
      Visible = False
    end
    object queryCODRECEITA: TStringField
      FieldName = 'CODRECEITA'
      Visible = False
      Size = 6
    end
    object queryFOTO: TStringField
      FieldName = 'FOTO'
      Visible = False
      Size = 80
    end
    object queryDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
      Visible = False
    end
    object queryNOTAFISCAL_ANTERIOR: TStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Visible = False
      Size = 6
    end
    object queryCODFORNECEDOR_ANTERIOR: TStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Visible = False
      Size = 6
    end
    object queryPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
      Visible = False
    end
    object queryPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
      Visible = False
    end
    object queryCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Visible = False
    end
    object queryAUTO_APLICACAO: TStringField
      FieldName = 'AUTO_APLICACAO'
      Visible = False
      Size = 60
    end
    object queryAUTO_COMPLEMENTO: TStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Visible = False
      Size = 60
    end
    object queryDATA_REMARCACAO_CUSTO: TDateTimeField
      FieldName = 'DATA_REMARCACAO_CUSTO'
      Visible = False
    end
    object queryDATA_REMARCACAO_VENDA: TDateTimeField
      FieldName = 'DATA_REMARCACAO_VENDA'
      Visible = False
    end
    object queryPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
      Visible = False
    end
    object queryDATA_PROMOCAO: TDateTimeField
      FieldName = 'DATA_PROMOCAO'
      Visible = False
    end
    object queryFIM_PROMOCAO: TDateTimeField
      FieldName = 'FIM_PROMOCAO'
      Visible = False
    end
    object queryGRUPO: TStringField
      FieldKind = fkLookup
      FieldName = 'GRUPO'
      LookupDataSet = frmmodulo.qrgrupo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'GRUPO'
      KeyFields = 'CODGRUPO'
      Visible = False
      Size = 30
      Lookup = True
    end
    object querySUBGRUPO: TStringField
      FieldKind = fkLookup
      FieldName = 'SUBGRUPO'
      LookupDataSet = frmmodulo.qrsubgrupo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SUBGRUPO'
      KeyFields = 'CODSUBGRUPO'
      Visible = False
      Size = 30
      Lookup = True
    end
  end
  object QUERY2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 568
    Top = 152
  end
  object DS2: TDataSource
    DataSet = QUERY2
    Left = 560
    Top = 184
  end
end
