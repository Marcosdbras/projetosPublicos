object frmentrega: Tfrmentrega
  Left = 275
  Top = 180
  Width = 668
  Height = 496
  Caption = 'Controle de Entrega de Mercadorias'
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
  object Bevel1: TBevel
    Left = 0
    Top = 435
    Width = 660
    Height = 2
    Align = alBottom
  end
  object Bevel3: TBevel
    Left = 0
    Top = 35
    Width = 660
    Height = 2
    Align = alTop
  end
  object Bevel5: TBevel
    Left = 0
    Top = 320
    Width = 660
    Height = 2
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 660
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 12
      Width = 37
      Height = 13
      Caption = 'Cliente:'
    end
    object Bevel2: TBevel
      Left = 426
      Top = 4
      Width = 2
      Height = 27
    end
    object RadioButton1: TRadioButton
      Left = 440
      Top = 8
      Width = 81
      Height = 17
      Caption = 'A Entregar'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 520
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Todas as Notas'
      TabOrder = 2
      OnClick = RadioButton2Click
    end
    object ecliente: TRzButtonEdit
      Left = 48
      Top = 7
      Width = 297
      Height = 21
      CharCase = ecUpperCase
      FocusColor = 11465460
      TabOrder = 0
      OnKeyPress = eclienteKeyPress
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
      ButtonWidth = 22
      OnButtonClick = eclienteButtonClick
    end
    object ed_codigo: TRzEdit
      Left = 352
      Top = 8
      Width = 65
      Height = 21
      Enabled = False
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 437
    Width = 660
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object bfechar: TAdvGlowButton
      Left = 560
      Top = 3
      Width = 83
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
      TabOrder = 0
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
    object bincluir: TAdvGlowButton
      Left = 10
      Top = 3
      Width = 135
      Height = 24
      Caption = 'F2 | Nova Entrega'
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
      PopupMenu = PopupMenu1
      TabOrder = 1
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
    object bgravar: TAdvGlowButton
      Left = 151
      Top = 3
      Width = 154
      Height = 24
      Caption = 'F7 | Imprimir Produtos'
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
    object AdvGlowButton1: TAdvGlowButton
      Left = 336
      Top = 3
      Width = 201
      Height = 24
      Caption = 'Relat'#243'rio de Produtos a Entregar'
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
      TabOrder = 3
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
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 37
    Width = 660
    Height = 283
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 660
      Height = 283
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Bevel7: TBevel
        Left = 0
        Top = 14
        Width = 660
        Height = 2
        Align = alTop
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 660
        Height = 14
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Produtos Vendidos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 16
        Width = 660
        Height = 267
        DittoAttributes.ShortCutDittoField = 0
        DittoAttributes.ShortCutDittoRecord = 0
        DittoAttributes.Options = []
        DisableThemesInTitle = False
        Selected.Strings = (
          'CODVENDA'#9'7'#9'Venda'#9#9
          'DATA_VENDA'#9'10'#9'Data'#9#9
          'CODPRODUTO'#9'6'#9'C'#243'digo'#9#9
          'PRODUTO'#9'44'#9'Produto'#9#9
          'UNIDADE'#9'2'#9'Un.'#9#9
          'VENDIDO'#9'9'#9'Vendido'#9#9
          'QTDE_ENTREGUE'#9'8'#9'Entregue'#9#9
          'QTDE_SALDO'#9'8'#9'A Entregar'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsprodutos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object bfiltrar: TButton
        Left = 424
        Top = 112
        Width = 129
        Height = 25
        Caption = 'Filtrar Produtos'
        TabOrder = 2
        Visible = False
        OnClick = bfiltrarClick
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 322
    Width = 660
    Height = 113
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Bevel6: TBevel
      Left = 0
      Top = 16
      Width = 2
      Height = 97
      Align = alLeft
    end
    object Bevel4: TBevel
      Left = 0
      Top = 14
      Width = 660
      Height = 2
      Align = alTop
    end
    object wwDBGrid3: TwwDBGrid
      Left = 2
      Top = 16
      Width = 658
      Height = 97
      DittoAttributes.ShortCutDittoField = 0
      DittoAttributes.ShortCutDittoRecord = 0
      DittoAttributes.Options = []
      DisableThemesInTitle = False
      Selected.Strings = (
        'DATA_ENTREGA'#9'14'#9'Data'
        'QTDE_ENTREGUE'#9'17'#9'Quantidade Entregue')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = dsentrega
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 660
      Height = 14
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Entregas Realizadas do Produto Selecionado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object qrprodutos: TZQuery
    Connection = frmmodulo.Conexao
    AfterScroll = qrprodutosAfterScroll
    SQL.Strings = (
      'select '
      'ven.codnota codvenda,'
      'ven.codproduto,'
      'pro.produto,'
      'pro.unidade,'
      'ven.data data_venda,'
      'sum(ven.qtde) vendido,'
      'sum(ent.qtde_entregue) qtde_entregue,'
      '(sum(ven.qtde)- sum(ent.qtde_entregue)) qtde_saldo'
      'from '
      'c000032 ven,'
      'c000025 pro,'
      'c000115 ent'
      'where'
      'ven.codproduto = ent.codproduto and'
      'ven.codproduto = pro.codigo'
      'group by'
      'ven.codnota, '
      'ven.codproduto,'
      'pro.produto,'
      'pro.unidade,'
      'ven.qtde,'
      'ven.data'
      'having'
      '(sum(ven.qtde)- sum(ent.qtde_entregue)) > 0')
    Params = <>
    Left = 144
    Top = 173
  end
  object dsprodutos: TDataSource
    DataSet = qrprodutos
    Left = 176
    Top = 173
  end
  object qrcliente2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 208
    Top = 176
    object qrcliente2CODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrcliente2NOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrcliente2APELIDO: TStringField
      FieldName = 'APELIDO'
      Size = 50
    end
    object qrcliente2ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrcliente2BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrcliente2CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrcliente2UF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrcliente2CEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrcliente2COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object qrcliente2MORADIA: TIntegerField
      FieldName = 'MORADIA'
    end
    object qrcliente2TIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrcliente2SITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrcliente2TELEFONE1: TStringField
      FieldName = 'TELEFONE1'
    end
    object qrcliente2TELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
    object qrcliente2TELEFONE3: TStringField
      FieldName = 'TELEFONE3'
    end
    object qrcliente2CELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object qrcliente2EMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qrcliente2RG: TStringField
      FieldName = 'RG'
      Size = 25
    end
    object qrcliente2CPF: TStringField
      FieldName = 'CPF'
      Size = 18
    end
    object qrcliente2FILIACAO: TStringField
      FieldName = 'FILIACAO'
      Size = 80
    end
    object qrcliente2ESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 15
    end
    object qrcliente2CONJUGE: TStringField
      FieldName = 'CONJUGE'
      Size = 60
    end
    object qrcliente2PROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      Size = 30
    end
    object qrcliente2EMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 40
    end
    object qrcliente2RENDA: TFloatField
      FieldName = 'RENDA'
    end
    object qrcliente2LIMITE: TFloatField
      FieldName = 'LIMITE'
    end
    object qrcliente2REF1: TStringField
      FieldName = 'REF1'
      Size = 50
    end
    object qrcliente2REF2: TStringField
      FieldName = 'REF2'
      Size = 50
    end
    object qrcliente2CODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrcliente2DATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
    end
    object qrcliente2DATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrcliente2OBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrcliente2OBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrcliente2OBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrcliente2OBS4: TStringField
      FieldName = 'OBS4'
      Size = 80
    end
    object qrcliente2OBS5: TStringField
      FieldName = 'OBS5'
      Size = 80
    end
    object qrcliente2OBS6: TStringField
      FieldName = 'OBS6'
      Size = 80
    end
    object qrcliente2NASCIMENTO: TStringField
      FieldName = 'NASCIMENTO'
      Size = 10
    end
    object qrcliente2CODREGIAO: TStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrcliente2CODCONVENIO: TStringField
      FieldName = 'CODCONVENIO'
      Size = 6
    end
    object qrcliente2CODUSUARIO: TStringField
      FieldName = 'CODUSUARIO'
      Size = 6
    end
  end
  object qrentrega: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000115')
    Params = <>
    Left = 248
    Top = 176
  end
  object dsentrega: TDataSource
    DataSet = qrentrega
    Left = 280
    Top = 181
  end
  object qrvenda: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000115')
    Params = <>
    Left = 344
    Top = 200
  end
  object dsvenda: TDataSource
    DataSet = qrvenda
    Left = 376
    Top = 205
  end
  object PopupMenu1: TPopupMenu
    Left = 520
    Top = 213
    object NovaEntrega1: TMenuItem
      Caption = 'Nova Entrega'
      ShortCut = 113
      OnClick = bincluirClick
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = bfecharClick
    end
  end
  object fxdesenhar: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 88
    Top = 264
  end
  object rel_entrega: TfrxReport
    Version = '4.7.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39188.758111979200000000
    ReportOptions.LastChange = 40127.747116203710000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      ''
      'BEGIN'
      'END.            ')
    Left = 120
    Top = 264
    Datasets = <
      item
        DataSet = fscliente
        DataSetName = 'fscliente'
      end
      item
        DataSet = fsentr
        DataSetName = 'fsentr'
      end
      item
        DataSet = frmmodulo.fxemitente
        DataSetName = 'fxemitente'
      end
      item
        DataSet = frmmodulo.fxrelatorio
        DataSetName = 'fxrelatorio'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page2: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.500000000000000000
      PaperSize = 256
      LeftMargin = 7.800000000000000000
      RightMargin = 8.200000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      Frame.Width = 0.500000000000000000
      OnAfterPrint = 'Page2OnAfterPrint'
      object PageHeader1: TfrxPageHeader
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 733.228820000000000000
        object Shape11: TfrxShapeView
          Top = 41.252010000000000000
          Width = 733.228820000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo34: TfrxMemoView
          Left = 5.559060000000000000
          Top = 43.031540000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'C'#195#8220'DIGO')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 64.252010000000000000
          Top = 43.031540000000000000
          Width = 336.378170000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 589.606680000000000000
          Top = 43.031540000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'UNID.')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 646.299630000000000000
          Top = 43.031540000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'QTDE.')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 268.346630000000000000
          Width = 464.882190000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14211288
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'PRODUTOS A ENTREGAR    [Date]')
          ParentFont = False
        end
        object Line17: TfrxLineView
          Left = 589.606680000000000000
          Top = 42.464552280000000000
          Height = 457.322839530000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 642.520100000000000000
          Top = 42.464552280000000000
          Height = 457.322839530000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Left = 1.133858270000000000
          Top = 14.118120000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Cliente')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 36.795300000000000000
          Width = 733.228820000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo87: TfrxMemoView
          Left = 0.755905510000000000
          Top = 21.677180000000000000
          Width = 404.409710000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NOME'
          DataSet = fscliente
          DataSetName = 'fscliente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fscliente."NOME"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 1.000000000000000000
          Width = 268.346630000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14211288
          DataField = 'FANTASIA'
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fxemitente."FANTASIA"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 56.692950000000000000
          Top = 41.574830000000000000
          Height = 457.322839530000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          Left = 408.189240000000000000
          Top = 13.984251968503900000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Endere'#195#167'o')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 408.189240000000000000
          Top = 21.543307090000000000
          Width = 423.307360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fscliente
          DataSetName = 'fscliente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              '[fscliente."ENDERECO"] [fscliente."BAIRRO"] [fscliente."CIDADE"]' +
              ' [fscliente."COMPLEMENTO"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 136.063080000000000000
        Width = 733.228820000000000000
        DataSet = fsentr
        DataSetName = 'fsentr'
        RowCount = 0
        object Memo22: TfrxMemoView
          Left = 5.779530000000000000
          Top = 1.779529999999990000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'CODPRODUTO'
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsentr."CODPRODUTO"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 64.472480000000000000
          Top = 1.779529999999990000
          Width = 514.016080000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsentr."PRODUTO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 589.827150000000000000
          Top = 1.779529999999990000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'Unidade'
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fsentr."Unidade"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 646.520100000000000000
          Top = 1.779529999999990000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'qtde_saldo'
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsentr."qtde_saldo"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 211.653680000000000000
        Width = 733.228820000000000000
        object Shape1: TfrxShapeView
          Width = 733.228820000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = clWhite
          Frame.Width = 0.500000000000000000
        end
        object Memo2: TfrxMemoView
          Left = 593.386210000000000000
          Top = 8.779529999999990000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'TOTAL:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 646.299630000000000000
          Top = 8.559059999999990000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fsentr
          DataSetName = 'fsentr'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.000'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fsentr."qtde_saldo">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object fsentr: TfrxDBDataset
    UserName = 'fsentr'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODVENDA=CODVENDA'
      'DATA_VENDA=DATA_VENDA'
      'CODPRODUTO=CODPRODUTO'
      'PRODUTO=PRODUTO'
      'UNIDADE=Unidade'
      'VENDIDO=VENDIDO'
      'QTDE_ENTREGUE=qtde_entregue'
      'QTDE_SALDO=qtde_saldo')
    DataSet = qrprodutos
    BCDToCurrency = False
    Left = 56
    Top = 264
  end
  object fscliente: TfrxDBDataset
    UserName = 'fscliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'APELIDO=APELIDO'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'COMPLEMENTO=COMPLEMENTO'
      'MORADIA=MORADIA'
      'TIPO=TIPO'
      'SITUACAO=SITUACAO'
      'TELEFONE1=TELEFONE1'
      'TELEFONE2=TELEFONE2'
      'TELEFONE3=TELEFONE3'
      'CELULAR=CELULAR'
      'EMAIL=EMAIL'
      'RG=RG'
      'CPF=CPF'
      'FILIACAO=FILIACAO'
      'ESTADOCIVIL=ESTADOCIVIL'
      'CONJUGE=CONJUGE'
      'PROFISSAO=PROFISSAO'
      'EMPRESA=EMPRESA'
      'RENDA=RENDA'
      'LIMITE=LIMITE'
      'REF1=REF1'
      'REF2=REF2'
      'CODVENDEDOR=CODVENDEDOR'
      'DATA_CADASTRO=DATA_CADASTRO'
      'DATA_ULTIMACOMPRA=DATA_ULTIMACOMPRA'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'OBS3=OBS3'
      'OBS4=OBS4'
      'OBS5=OBS5'
      'OBS6=OBS6'
      'NASCIMENTO=NASCIMENTO'
      'CODREGIAO=CODREGIAO'
      'CODCONVENIO=CODCONVENIO'
      'CODUSUARIO=CODUSUARIO')
    DataSet = qrcliente2
    BCDToCurrency = False
    Left = 152
    Top = 264
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select'
      'ent.codproduto,'
      'pro.produto,'
      'pro.unidade,'
      'ent.codvenda,'
      'ent.data_venda,'
      'ent.codcliente,'
      'cli.nome,'
      'sum(ent.qtde_vendida) vendido,'
      'sum(ent.qtde_entregue) qtde_entregue,'
      '(sum(ent.qtde_vendida)- sum(ent.qtde_entregue)) qtde_saldo'
      'from'
      'c000025 pro,'
      'c000115 ent,'
      'c000007 cli'
      'where'
      'ent.codproduto = pro.codigo'
      'and ent.codcliente = cli.codigo'
      'group by'
      'ent.codproduto,'
      'pro.produto,'
      'pro.unidade,'
      'ent.codvenda,'
      'ent.data_venda,'
      'ent.codcliente,'
      'cli.nome'
      'having'
      
        'sum(ent.qtde_vendida) > 0 and (sum(ent.qtde_vendida)- sum(ent.qt' +
        'de_entregue)) > 0')
    Params = <>
    Left = 344
    Top = 253
  end
  object fsent_todos: TfrxDBDataset
    UserName = 'fsent_todos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODPRODUTO=CODPRODUTO'
      'PRODUTO=PRODUTO'
      'UNIDADE=UNIDADE'
      'CODVENDA=CODVENDA'
      'DATA_VENDA=DATA_VENDA'
      'CODCLIENTE=CODCLIENTE'
      'NOME=NOME'
      'VENDIDO=VENDIDO'
      'QTDE_ENTREGUE=QTDE_ENTREGUE'
      'QTDE_SALDO=QTDE_SALDO')
    DataSet = query
    BCDToCurrency = False
    Left = 376
    Top = 256
  end
end
