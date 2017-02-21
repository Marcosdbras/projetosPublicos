object frmnotafiscal_item: Tfrmnotafiscal_item
  Left = 198
  Top = 224
  BorderStyle = bsToolWindow
  Caption = 'EMISS'#195'O DE NOTA FISCAL | Edi'#231#227'o do Item'
  ClientHeight = 288
  ClientWidth = 740
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = Pop2
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 252
    Width = 740
    Height = 3
    Align = alBottom
  end
  object Bevel2: TBevel
    Left = 0
    Top = 38
    Width = 740
    Height = 3
    Align = alTop
  end
  object Shape1: TShape
    Left = 8
    Top = 50
    Width = 721
    Height = 15
    Brush.Color = 11982812
    Pen.Color = 11982812
  end
  object Shape3: TShape
    Left = 8
    Top = 64
    Width = 121
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Shape4: TShape
    Left = 128
    Top = 64
    Width = 129
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Shape5: TShape
    Left = 408
    Top = 64
    Width = 177
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Shape6: TShape
    Left = 584
    Top = 64
    Width = 145
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Shape7: TShape
    Left = 256
    Top = 64
    Width = 153
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label11: TLabel
    Left = 325
    Top = 51
    Width = 90
    Height = 13
    Caption = 'Valores do Item'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label31: TLabel
    Left = 37
    Top = 65
    Width = 56
    Height = 13
    Caption = 'Quantidade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 149
    Top = 65
    Width = 64
    Height = 13
    Caption = 'Valor Unit'#225'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label20: TLabel
    Left = 309
    Top = 65
    Width = 40
    Height = 13
    Caption = 'Subtotal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label22: TLabel
    Left = 469
    Top = 65
    Width = 45
    Height = 13
    Caption = 'Desconto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label23: TLabel
    Left = 631
    Top = 65
    Width = 51
    Height = 13
    Caption = 'Valor Total'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 15
    Top = 126
    Width = 23
    Height = 13
    Caption = 'CST:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 13
    Top = 150
    Width = 31
    Height = 13
    Caption = 'CFOP:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 527
    Top = 126
    Width = 94
    Height = 13
    Caption = 'Classifica'#231#227'o Fiscal:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object LUF: TLabel
    Left = 228
    Top = 9
    Width = 17
    Height = 13
    Caption = 'UF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Shape2: TShape
    Left = 10
    Top = 178
    Width = 338
    Height = 15
    Brush.Color = 11982812
    Pen.Color = 11982812
  end
  object Label8: TLabel
    Left = 149
    Top = 179
    Width = 29
    Height = 13
    Caption = 'ICMS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape8: TShape
    Left = 11
    Top = 192
    Width = 70
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label9: TLabel
    Left = 26
    Top = 194
    Width = 39
    Height = 13
    Caption = 'Al'#237'quota'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape9: TShape
    Left = 80
    Top = 192
    Width = 86
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label10: TLabel
    Left = 101
    Top = 194
    Width = 42
    Height = 13
    Caption = 'Redu'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape10: TShape
    Left = 165
    Top = 192
    Width = 92
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label6: TLabel
    Left = 173
    Top = 194
    Width = 75
    Height = 13
    Caption = 'Base de C'#225'lculo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape11: TShape
    Left = 256
    Top = 192
    Width = 92
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label13: TLabel
    Left = 269
    Top = 194
    Width = 67
    Height = 13
    Caption = 'Valor do ICMS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape12: TShape
    Left = 350
    Top = 178
    Width = 172
    Height = 15
    Brush.Color = 11982812
    Pen.Color = 11982812
  end
  object Label14: TLabel
    Left = 369
    Top = 179
    Width = 129
    Height = 13
    Caption = 'Substitui'#231#227'o Tribut'#225'ria'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape13: TShape
    Left = 351
    Top = 192
    Width = 86
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label21: TLabel
    Left = 358
    Top = 194
    Width = 75
    Height = 13
    Caption = 'Base de C'#225'lculo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape14: TShape
    Left = 436
    Top = 192
    Width = 86
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label24: TLabel
    Left = 448
    Top = 194
    Width = 58
    Height = 13
    Caption = 'Valor Subst.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape15: TShape
    Left = 524
    Top = 179
    Width = 87
    Height = 15
    Brush.Color = 11982812
    Pen.Color = 11982812
  end
  object Label18: TLabel
    Left = 551
    Top = 179
    Width = 38
    Height = 13
    Caption = 'Outras'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape16: TShape
    Left = 525
    Top = 193
    Width = 86
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label19: TLabel
    Left = 553
    Top = 194
    Width = 31
    Height = 13
    Caption = 'Isento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape17: TShape
    Left = 613
    Top = 178
    Width = 117
    Height = 15
    Brush.Color = 11982812
    Pen.Color = 11982812
  end
  object Label15: TLabel
    Left = 664
    Top = 179
    Width = 17
    Height = 13
    Caption = 'IPI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Shape18: TShape
    Left = 614
    Top = 192
    Width = 51
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label17: TLabel
    Left = 620
    Top = 194
    Width = 39
    Height = 13
    Caption = 'Al'#237'quota'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Shape19: TShape
    Left = 664
    Top = 192
    Width = 66
    Height = 47
    Brush.Color = clBtnFace
    Pen.Color = clGray
  end
  object Label25: TLabel
    Left = 684
    Top = 194
    Width = 24
    Height = 13
    Caption = 'Valor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 740
    Height = 38
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 6
      Top = 11
      Width = 42
      Height = 13
      Caption = 'Produto:'
    end
    object Label2: TLabel
      Left = 512
      Top = 11
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object Label7: TLabel
      Left = 592
      Top = 10
      Width = 53
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Estoque:'
    end
    object DBEdit30: TDBEdit
      Left = 145
      Top = 7
      Width = 362
      Height = 21
      Color = clBtnFace
      DataField = 'produto'
      DataSource = dsnotafiscal_item
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 559
      Top = 7
      Width = 30
      Height = 21
      Color = clBtnFace
      DataField = 'unidade'
      DataSource = dsnotafiscal_item
      TabOrder = 2
    end
    object eproduto: TRzDBButtonEdit
      Left = 56
      Top = 7
      Width = 87
      Height = 21
      DataSource = dsnotafiscal_item
      DataField = 'CODPRODUTO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FocusColor = 11075583
      ParentFont = False
      TabOrder = 0
      OnEnter = eprodutoEnter
      OnExit = eprodutoExit
      OnKeyPress = eprodutoKeyPress
      ButtonGlyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
        9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
        C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
        A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
        E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
        F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
        DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
        F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
        D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
        F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
        DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
        F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
        E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ButtonNumGlyphs = 1
      ButtonKind = bkCustom
      ButtonShortCut = 117
      ButtonWidth = 24
      OnButtonClick = eprodutoButtonClick
    end
    object restoque: TRxCalcEdit
      Left = 649
      Top = 6
      Width = 79
      Height = 21
      AutoSize = False
      Color = clBtnFace
      DisplayFormat = '###,###,##0.000'
      Enabled = False
      ButtonWidth = 0
      NumGlyphs = 2
      TabOrder = 3
    end
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 255
    Width = 740
    Height = 33
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alBottom
    TabOrder = 23
    UseDockManager = True
    object bgravar: TAdvGlowButton
      Left = 254
      Top = 4
      Width = 107
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
    object bretorna: TAdvGlowButton
      Left = 379
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
      OnClick = bretornaClick
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
  object FlatPanel2: TFlatPanel
    Left = 120
    Top = 77
    Width = 17
    Height = 21
    Caption = 'x'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 1
    UseDockManager = True
  end
  object FlatPanel3: TFlatPanel
    Left = 248
    Top = 77
    Width = 17
    Height = 21
    Caption = '='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 2
    UseDockManager = True
  end
  object FlatPanel4: TFlatPanel
    Left = 400
    Top = 77
    Width = 17
    Height = 21
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 3
    UseDockManager = True
  end
  object FlatPanel5: TFlatPanel
    Left = 576
    Top = 77
    Width = 17
    Height = 21
    Caption = '='
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 4
    UseDockManager = True
  end
  object eqtde: TRzDBNumericEdit
    Left = 15
    Top = 82
    Width = 98
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'QTDE'
    Alignment = taLeftJustify
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 5
    OnExit = eqtdeExit
    OnKeyPress = eprodutoKeyPress
    IntegersOnly = False
    DisplayFormat = '###,###,##0.000'
  end
  object eunitario: TRzDBNumericEdit
    Left = 143
    Top = 82
    Width = 98
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'UNITARIO'
    Alignment = taLeftJustify
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 6
    OnExit = eunitarioExit
    OnKeyPress = eunitarioKeyPress
    IntegersOnly = False
    DisplayFormat = '###,###,##0.00'
  end
  object esubtotal: TRzDBNumericEdit
    Left = 271
    Top = 82
    Width = 122
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'SUBTOTAL'
    ReadOnly = True
    Alignment = taLeftJustify
    Color = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 7
    OnKeyPress = eprodutoKeyPress
    IntegersOnly = False
    DisplayFormat = '###,###,##0.0000'
  end
  object edperc: TRzNumericEdit
    Left = 429
    Top = 82
    Width = 54
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnExit = edpercExit
    OnKeyPress = eprodutoKeyPress
    IntegersOnly = False
    DisplayFormat = '##0.00%'
  end
  object edesconto: TRzDBNumericEdit
    Left = 487
    Top = 82
    Width = 82
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'DESCONTO'
    Alignment = taLeftJustify
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 9
    OnExit = edescontoExit
    OnKeyPress = edescontoKeyPress
    IntegersOnly = False
    DisplayFormat = 'R$ ###,###,##0.00'
  end
  object etotal: TRzDBNumericEdit
    Left = 601
    Top = 82
    Width = 115
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'TOTAL'
    ReadOnly = True
    Alignment = taLeftJustify
    Color = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 10
    OnKeyPress = eprodutoKeyPress
    IntegersOnly = False
    DisplayFormat = '###,###,##0.00'
  end
  object ecfop: TRzDBButtonEdit
    Left = 56
    Top = 145
    Width = 81
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'CFOP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 13
    OnEnter = ecfopEnter
    OnExit = ecfopExit
    OnKeyPress = ecfopKeyPress
    ButtonGlyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
      9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
      C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
      A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
      E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
      F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
      DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
      F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
      D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
      F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
      DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
      F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
      E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ButtonNumGlyphs = 1
    ButtonKind = bkCustom
    ButtonShortCut = 117
    ButtonWidth = 24
    OnButtonClick = ecfopButtonClick
  end
  object DBEdit2: TDBEdit
    Left = 139
    Top = 145
    Width = 382
    Height = 21
    Color = clBtnFace
    DataField = 'natureza'
    DataSource = dsnotafiscal_item
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 25
  end
  object DBEdit3: TDBEdit
    Left = 139
    Top = 121
    Width = 382
    Height = 21
    Color = clBtnFace
    DataField = 'cst_descricao'
    DataSource = dsnotafiscal_item
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 24
  end
  object ecst: TRzDBButtonEdit
    Left = 56
    Top = 121
    Width = 81
    Height = 21
    DataSource = dsnotafiscal_item
    DataField = 'CST'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    FocusColor = 11075583
    ParentFont = False
    TabOrder = 11
    OnExit = ecstExit
    OnKeyPress = ecstKeyPress
    ButtonGlyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFCFDFEE7EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFBFD6494BA2166
      9C80A8C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFAFCFD6E9BC1548CBB88B4DC175E96FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFD7AA3C96396C49CC0E36598
      C63070A4FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE8CEB9DAB292D2A57FCFA07BD1
      A684ADA09874A1CBAACAE775A3CD3F7AAEDEE8F1FFFFFFFFFFFFFFFFFFFFFEFE
      E8C9AFE7C8ADF4E0CCF6E4D2F6E4D0F2DCC7DEB99BC6A79085ADD44F86BAE1EA
      F3FFFFFFFFFFFFFFFFFFFFFFFFF1DBC7ECCFB6F7E7D8F4DDC7F2D7BCF2D5BAF3
      DAC1F6E3D1DEBA9C9F9694E3ECF5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDCDB1
      F6E6D6F5E0CBF3DAC1F3D9BFF2D7BCF2D6BAF3DAC1F2DDC8D1A787FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFEFCDAEF8EBDEF4DEC7F4DCC5F3DBC2F3D9C0F2
      D8BDF2D6BCF7E5D2D2A57FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D2B4
      F8ECE0F5E0CBF4DEC8F4DDC6F3DBC3F3DAC1F3D9BFF7E6D5D6AA86FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF7DBC0F8EADDF6E6D5F5E0CBF4DFC9F4DDC7F4
      DCC4F5E0CAF4E1CFDEB898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE9D7
      F7E1CBF9EDE2F6E6D5F5E1CDF5E0CAF5E2CFF8E9DCEBCEB4EBD3BEFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAE3CDF8E1CCF9EBDDF8EDE1F8ECE1F7
      E8D9EFD4BCECCFB6FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFBEAD9F9DCC2F5D5B8F3D2B4F2D3B7F4E0CDFFFFFEFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    ButtonNumGlyphs = 1
    ButtonKind = bkCustom
    ButtonShortCut = 117
    ButtonWidth = 24
    OnButtonClick = ecstButtonClick
  end
  object ECLASSIF: TDBEdit
    Left = 624
    Top = 121
    Width = 105
    Height = 21
    DataField = 'CLASSIFICACAO_FISCAL'
    DataSource = dsnotafiscal_item
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnEnter = ECLASSIFEnter
    OnExit = ECLASSIFExit
    OnKeyPress = ECLASSIFKeyPress
  end
  object DBEdit5: TDBEdit
    Left = 20
    Top = 210
    Width = 53
    Height = 21
    DataField = 'ICMS'
    DataSource = dsnotafiscal_item
    TabOrder = 14
    OnEnter = DBEdit5Enter
    OnExit = DBEdit5Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit9: TDBEdit
    Left = 90
    Top = 210
    Width = 69
    Height = 21
    DataField = 'ICMS_REDUZIDO'
    DataSource = dsnotafiscal_item
    TabOrder = 15
    OnEnter = DBEdit5Enter
    OnExit = DBEdit5Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit10: TDBEdit
    Left = 171
    Top = 210
    Width = 77
    Height = 21
    DataField = 'BASE_CALCULO'
    DataSource = dsnotafiscal_item
    TabOrder = 16
    OnEnter = DBEdit5Enter
    OnExit = DBEdit10Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit11: TDBEdit
    Left = 262
    Top = 210
    Width = 80
    Height = 21
    DataField = 'VALOR_ICMS'
    DataSource = dsnotafiscal_item
    TabOrder = 17
    OnEnter = DBEdit5Enter
    OnExit = DBEdit11Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit14: TDBEdit
    Left = 356
    Top = 210
    Width = 76
    Height = 21
    DataField = 'BASE_SUB'
    DataSource = dsnotafiscal_item
    TabOrder = 18
    OnEnter = DBEdit5Enter
    OnExit = DBEdit14Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit15: TDBEdit
    Left = 442
    Top = 210
    Width = 75
    Height = 21
    DataField = 'ICMS_SUB'
    DataSource = dsnotafiscal_item
    TabOrder = 19
    OnEnter = DBEdit12Enter
    OnExit = DBEdit12Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit13: TDBEdit
    Left = 530
    Top = 210
    Width = 73
    Height = 21
    DataField = 'ISENTO'
    DataSource = dsnotafiscal_item
    Enabled = False
    TabOrder = 20
    OnEnter = DBEdit12Enter
    OnExit = DBEdit13Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit6: TDBEdit
    Left = 618
    Top = 210
    Width = 41
    Height = 21
    DataField = 'IPI'
    DataSource = dsnotafiscal_item
    TabOrder = 21
    OnEnter = DBEdit6Enter
    OnExit = DBEdit6Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit12: TDBEdit
    Left = 668
    Top = 209
    Width = 57
    Height = 21
    DataField = 'VALOR_IPI'
    DataSource = dsnotafiscal_item
    Enabled = False
    TabOrder = 22
    OnEnter = DBEdit12Enter
    OnExit = DBEdit12Exit
    OnKeyPress = eprodutoKeyPress
  end
  object DBEdit4: TDBEdit
    Left = 610
    Top = 146
    Width = 73
    Height = 21
    DataField = 'ISENTO'
    DataSource = dsnotafiscal_item
    Enabled = False
    TabOrder = 26
    OnEnter = DBEdit12Enter
    OnExit = DBEdit13Exit
    OnKeyPress = eprodutoKeyPress
  end
  object Pop2: TPopupMenu
    Left = 444
    Top = 85
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bretornaClick
    end
  end
  object dsnotafiscal_item: TDataSource
    DataSet = frmnotafiscal.qrnotafiscal_item
    Left = 408
    Top = 85
  end
  object qrestoque: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 176
    Top = 88
  end
end
