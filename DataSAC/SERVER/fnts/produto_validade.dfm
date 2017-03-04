object frmproduto_validade: Tfrmproduto_validade
  Left = 118
  Top = 50
  Width = 715
  Height = 532
  Caption = 'Controle de Validades de Produtos '
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop1
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 707
    Height = 26
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
  end
  object Panel3: TPanel
    Left = 0
    Top = 463
    Width = 707
    Height = 42
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object bfechar: TAdvGlowButton
      Left = 523
      Top = 9
      Width = 121
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
    object bgravar: TAdvGlowButton
      Left = 87
      Top = 9
      Width = 154
      Height = 24
      Caption = 'F10 | Imprimir'
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
      TabOrder = 1
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
    object bitbtn1: TAdvGlowButton
      Left = 258
      Top = 9
      Width = 154
      Height = 24
      Caption = 'Editar'
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
      TabOrder = 2
      OnClick = bitbtn1Click
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
  object pagina_principal: TPageView
    Left = 0
    Top = 26
    Width = 707
    Height = 437
    ActivePage = PageSheet10
    ActivePageIndex = 0
    AdaptiveColors = True
    Align = alClient
    BackgroundColor = 13230308
    BackgroundKind = bkSolid
    Indent = 2
    Margin = 0
    Options = [pgBoldActiveTab]
    ShowTabs = True
    Spacing = 0
    TabHeight = 17
    TabOrder = 2
    TabStyle = tsFlat
    TopIndent = 3
    OnChange = pagina_principalChange
    object PageSheet10: TPageSheet
      Left = 0
      Top = 21
      Width = 707
      Height = 416
      Caption = #218'ltima Validade'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object Bevel7: TBevel
        Left = 0
        Top = 413
        Width = 707
        Height = 3
        Align = alBottom
      end
      object grid: TwwDBGrid
        Left = 0
        Top = 0
        Width = 707
        Height = 413
        DittoAttributes.ShortCutDittoField = 0
        DittoAttributes.ShortCutDittoRecord = 0
        DittoAttributes.Options = []
        DisableThemesInTitle = False
        Selected.Strings = (
          'CODIGO'#9'6'#9'C'#243'digo'#9'F'
          'produto'#9'65'#9'Produto'#9'F'
          'LOTE_FABRICACAO'#9'15'#9'Lote'#9'F'
          'DATA_ULTIMACOMPRA'#9'10'#9'Entrada'#9'F'
          'LOTE_VALIDADE'#9'10'#9'Validade'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
      end
    end
    object PageSheet11: TPageSheet
      Left = 0
      Top = 21
      Width = 707
      Height = 416
      Caption = 'Validades'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object Bevel8: TBevel
        Left = 0
        Top = 0
        Width = 707
        Height = 2
        Align = alTop
      end
      object GroupBox1: TGroupBox
        Left = 4
        Top = 160
        Width = 605
        Height = 41
        Caption = 'Filtro | Per'#237'odo'
        TabOrder = 0
        object Label4: TLabel
          Left = 112
          Top = 16
          Width = 6
          Height = 13
          Caption = 'a'
        end
        object di_entrada: TDateEdit
          Left = 7
          Top = 14
          Width = 98
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
        end
        object df_entrada: TDateEdit
          Left = 127
          Top = 14
          Width = 98
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
        end
        object bfiltro_entrada: TAdvGlowButton
          Left = 512
          Top = 11
          Width = 84
          Height = 23
          Caption = 'Filtrar...'
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
            650041646F626520496D616765526561647971C9653C0000030B4944415478DA
            62FCFFFF3F032500208058B009EEDDBB971D68B01F1047FEFBF74F0348AB0231
            90F9EF0A90BE03A4E702F1DE808080BF0001C488EE02A0662DA0D8725151513D
            090909066E6E6E062E2E2E0690BA8F1F3F327CFEFC99E1D1A3470CAF5FBF3E02
            148B000820B00432DEB56BD7FE870F1F82ACFB8F0BFCFEFDFBFFF9F3E7FFAF5C
            B972214000C1BDF0E6ACBDF3FFBFFF276B70F3AB71BCE66478F39281E1FFDF7F
            0CFFFEFC666064E2661031EA6760E61087BB545A5A9AE1C68D1B9E0001C402D5
            CC0CD41CCC296CA6C9C32606D6F4FFF75F867FBFBE337C7F779D8143268CE10F
            031FC3EB172FC0DE78FFFE3D83BCBC3C03D0950C00010436E0DFDF7FB2400362
            58B91518FE7C3CC3C0C461C8F0E7CF1B861F1F6E313CFF63C5F0F7AD2CC3DF57
            9719DEBC79C3C0C4C4040F1390010001C4F2EA942D1BD0A9299C4206BC0C0CCC
            0CFFBEBF606060F9C9F0E1F16E064689440661212F0616161606A0BFC1F4D7AF
            5FC15E0069FEFBF72F034000B100351B02713A3B9F2AC3FF3FDF816648320055
            33FCFF0734ECCB6386BF9F6633FCFDFF87E12F0317C33F6663A0143BD8153017
            000410CBFF3FFF26738A9A8A7C7F7303E895FF0C6C5C2A40E3591804249D81FE
            BFCDF0EFF72F862F6F2E33FC97CF63F8F58F1DEC12666666B00120170004100B
            D0FFABBE3C3D7EE8FF9FBFBF816CD6DF7F2E168AC8BB31FDFDF181E1F7B7B70C
            5F99941898F5E731FC631565F80D0CC4DFBFBFC1A31C64184000B148399CEC81
            45CDC34DBA7C0C7F7E147D7F7395E1CB87E70CBF452319FE083A30707270025D
            F21B6E2B2C0C7EFDFAC50010402849F9DF9F7FEB39382518BFFE116410739AC2
            F0EAED57863FDFBFC3E5191919192425251964656519EEDDBB0776014000C10D
            B8BF56CB13E805A5C71F845BEEFD772AD47CF0821B14D7ECECEC608D20DB419A
            4149F9CA952B0C172E5C78F1E7CF1F3F800082E785BB2B35F4FEFFFDFB4F25EA
            F695254B9628029D5803C4C1C010E707C53B5031C3BB77EF187EFCF801D2B818
            E8959ECACACA570001C448283BCF9A358B17A841058881C1F0FB467171F14F64
            7980000300E768D347C7AF4C950000000049454E44AE426082}
          TabOrder = 2
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
        object combo_entrada: TComboBox
          Left = 241
          Top = 12
          Width = 264
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 3
          Text = '** TODAS AS ENTRADAS **'
          Items.Strings = (
            '** TODAS AS ENTRADAS **'
            '0 - IMPLANTA'#199#195'O DE SALDO'
            '1 - COMPRA'
            '7 - DEVOL.DE VENDA'
            '8 - RETORNO SERIAL'
            '10-ACERTO ESTOQUE'
            '13-ENTRADA PRODUTO ACABADO'
            '16-ENTRADA DA RENTABILIDADE')
        end
      end
      object GroupBox13: TGroupBox
        Left = 640
        Top = 160
        Width = 121
        Height = 41
        Caption = 'Totalizador'
        TabOrder = 1
        object eentrada: TLabel
          Left = 9
          Top = 17
          Width = 104
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0,00'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RzPanel1: TRzPanel
        Left = 0
        Top = 2
        Width = 707
        Height = 41
        Align = alTop
        BorderOuter = fsNone
        TabOrder = 2
        VisualStyle = vsGradient
        object rtodos: TRzRadioButton
          Left = 23
          Top = 14
          Width = 48
          Height = 15
          Caption = 'Todos'
          TabOrder = 0
          OnClick = rtodosClick
        end
        object rvencidos: TRzRadioButton
          Left = 79
          Top = 14
          Width = 61
          Height = 15
          Caption = 'Vencidos'
          Checked = True
          TabOrder = 1
          TabStop = True
          OnClick = rtodosClick
        end
        object rvencer: TRzRadioButton
          Left = 151
          Top = 14
          Width = 62
          Height = 15
          Caption = 'A Vencer'
          TabOrder = 2
          OnClick = rtodosClick
        end
      end
      object grid1: TwwDBGrid
        Left = 0
        Top = 43
        Width = 707
        Height = 373
        DittoAttributes.ShortCutDittoField = 0
        DittoAttributes.ShortCutDittoRecord = 0
        DittoAttributes.Options = []
        DisableThemesInTitle = False
        Selected.Strings = (
          'CODPRODUTO'#9'6'#9'C'#243'digo'#9'F'
          'produto'#9'60'#9'Produto'#9'F'
          'LOTE_FABRICACAO'#9'15'#9'Lote'#9'F'
          'DATA'#9'10'#9'Entrada'#9'F'
          'LOTE_VALIDADE'#9'10'#9'Validade'#9'F'
          'dias'#9'5'#9'dias'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsvalidade
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        TabOrder = 3
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 2
        TitleButtons = False
        UseTFields = False
      end
    end
  end
  object bfiltro: TAdvGlowButton
    Left = 530
    Top = 254
    Width = 84
    Height = 23
    Caption = 'Filtrar...'
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
      650041646F626520496D616765526561647971C9653C0000030B4944415478DA
      62FCFFFF3F032500208058B009EEDDBB971D68B01F1047FEFBF74F0348AB0231
      90F9EF0A90BE03A4E702F1DE808080BF0001C488EE02A0662DA0D8725151513D
      090909066E6E6E062E2E2E0690BA8F1F3F327CFEFC99E1D1A3470CAF5FBF3E02
      148B000820B00432DEB56BD7FE870F1F82ACFB8F0BFCFEFDFBFFF9F3E7FFAF5C
      B972214000C1BDF0E6ACBDF3FFBFFF276B70F3AB71BCE66478F39281E1FFDF7F
      0CFFFEFC666064E2661031EA6760E61087BB545A5A9AE1C68D1B9E0001C402D5
      CC0CD41CCC296CA6C9C32606D6F4FFF75F867FBFBE337C7F779D8143268CE10F
      031FC3EB172FC0DE78FFFE3D83BCBC3C03D0950C00010436E0DFDF7FB2400362
      58B91518FE7C3CC3C0C461C8F0E7CF1B861F1F6E313CFF63C5F0F7AD2CC3DF57
      9719DEBC79C3C0C4C4040F1390010001C4F2EA942D1BD0A9299C4206BC0C0CCC
      0CFFBEBF606060F9C9F0E1F16E064689440661212F0616161606A0BFC1F4D7AF
      5FC15E0069FEFBF72F034000B100351B02713A3B9F2AC3FF3FDF816648320055
      33FCFF0734ECCB6386BF9F6633FCFDFF87E12F0317C33F6663A0143BD8153017
      000410CBFF3FFF26738A9A8A7C7F7303E895FF0C6C5C2A40E3591804249D81FE
      BFCDF0EFF72F862F6F2E33FC97CF63F8F58F1DEC12666666B00120170004100B
      D0FFABBE3C3D7EE8FF9FBFBF816CD6DF7F2E168AC8BB31FDFDF181E1F7B7B70C
      5F99941898F5E731FC631565F80D0CC4DFBFBFC1A31C64184000B148399CEC81
      45CDC34DBA7C0C7F7E147D7F7395E1CB87E70CBF452319FE083A30707270025D
      F21B6E2B2C0C7EFDFAC50010402849F9DF9F7FEB39382518BFFE116410739AC2
      F0EAED57863FDFBFC3E5191919192425251964656519EEDDBB0776014000C10D
      B8BF56CB13E805A5C71F845BEEFD772AD47CF0821B14D7ECECEC608D20DB419A
      4149F9CA952B0C172E5C78F1E7CF1F3F800082E785BB2B35F4FEFFFDFB4F25EA
      F695254B9628029D5803C4C1C010E707C53B5031C3BB77EF187EFCF801D2B818
      E8959ECACACA570001C448283BCF9A358B17A841058881C1F0FB467171F14F64
      7980000300E768D347C7AF4C950000000049454E44AE426082}
    TabOrder = 3
    Visible = False
    OnClick = bfiltroClick
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
  object pop1: TPopupMenu
    Left = 232
    Top = 216
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      ShortCut = 121
      OnClick = Imprimir1Click
    end
    object sair1: TMenuItem
      Caption = 'sair'
      ShortCut = 27
      OnClick = sair1Click
    end
  end
  object qrvalidade: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      
        'select codproduto,data,lote_fabricacao,lote_validade from c00008' +
        '8'
      'where lote_fabricacao <> '#39#39)
    Params = <>
    Left = 224
    Top = 72
    object qrvalidadeDATA: TDateTimeField
      DisplayLabel = 'Entrada'
      DisplayWidth = 10
      FieldName = 'DATA'
    end
    object qrvalidadeCODPRODUTO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object qrvalidadeproduto: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Size = 60
      Lookup = True
    end
    object qrvalidadeLOTE_FABRICACAO: TStringField
      DisplayLabel = 'Lote'
      DisplayWidth = 15
      FieldName = 'LOTE_FABRICACAO'
      Size = 15
    end
    object qrvalidadeLOTE_VALIDADE: TDateTimeField
      DisplayLabel = 'Validade'
      DisplayWidth = 10
      FieldName = 'LOTE_VALIDADE'
    end
    object qrvalidadedias: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'dias'
      Calculated = True
    end
  end
  object dsvalidade: TDataSource
    DataSet = qrvalidade
    Left = 256
    Top = 77
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      
        'select codigo,produto,data_ultimacompra,lote_fabricacao,lote_val' +
        'idade from c000025')
    Params = <>
    Left = 224
    Top = 112
    object qrprodutoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodutoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrprodutoDATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrprodutoLOTE_FABRICACAO: TStringField
      FieldName = 'LOTE_FABRICACAO'
    end
    object qrprodutoLOTE_VALIDADE: TDateTimeField
      FieldName = 'LOTE_VALIDADE'
    end
  end
  object dsproduto: TDataSource
    DataSet = qrproduto
    Left = 256
    Top = 117
  end
  object fxproduto: TfrxReport
    Version = '4.7.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39179.400035798600000000
    ReportOptions.LastChange = 40246.628906713000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 88
    Top = 62
    Datasets = <
      item
        DataSet = fsproduto
        DataSetName = 'fsproduto'
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
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 38.795300000000000000
        Top = 98.267780000000000000
        Width = 740.409927000000000000
        object Line1: TfrxLineView
          Top = 18.897650000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Top = 34.692950000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Top = 19.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'C'#195#8220'DIGO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 52.913420000000000000
          Top = 19.897650000000000000
          Width = 355.275820000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DISCRIMINA'#195#8225#195#402'O DO PRODUTO')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 472.527830000000000000
          Top = 19.897650000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'LOTE')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 563.236550000000000000
          Top = 19.897650000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ENTRADA')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 623.622450000000000000
          Top = 0.779529999999994000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '000#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'P'#195#161'gina: [Page]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 647.606680000000000000
          Top = 18.897650000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'VALIDADE')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 740.409927000000000000
        DataSet = fsproduto
        DataSetName = 'fsproduto'
        RowCount = 0
        object Memo3: TfrxMemoView
          Top = 1.133858270000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CODIGO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsproduto."CODIGO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 563.236220470000000000
          Top = 1.133858270000000000
          Width = 83.149606300000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DATA_ULTIMACOMPRA'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsproduto."DATA_ULTIMACOMPRA"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 472.527830000000000000
          Top = 1.133858270000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'LOTE_FABRICACAO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsproduto."LOTE_FABRICACAO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 647.519685040000000000
          Top = 1.133858270000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'LOTE_VALIDADE'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsproduto."LOTE_VALIDADE"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 52.913385830000000000
          Top = 1.000000000000000000
          Width = 415.748300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsproduto."PRODUTO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 321.260050000000000000
        Width = 740.409927000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999970000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          Top = 3.779529999999970000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ELPRO SOFTWARES')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 249.448980000000000000
          Top = 3.779529999999970000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'www.elpro.com.br')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 521.575140000000000000
          Top = 3.779529999999970000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'suporte@elpro.com.br')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo24: TfrxMemoView
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOME'
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fxemitente."NOME"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 188.976500000000000000
          Width = 434.645950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA1'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fxrelatorio."LINHA1"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 623.622450000000000000
          Top = 3.000000000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Siscom+ 7')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Top = 18.897650000000000000
          Width = 298.582869999998000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA2'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA2"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Top = 30.236240000000000000
          Width = 298.582869999998000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA3'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA3"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Top = 41.574830000000000000
          Width = 298.582869999998000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'LINHA4'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA4"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 623.622450000000000000
          Top = 18.897650000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Emiss'#195#163'o: [Date]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 306.141930000000000000
          Top = 18.897650000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA5'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA5"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 306.141930000000000000
          Top = 30.236240000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'LINHA6'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA6"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 306.141930000000000000
          Top = 41.574830000000000000
          Width = 298.582870000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'LINHA7'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA7"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 22.677180000000000000
        Top = 275.905690000000000000
        Width = 740.409927000000000000
        object Memo7: TfrxMemoView
          Top = 3.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Registros :')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 59.811070000000000000
          Top = 3.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frxDesigner1: TfrxDesigner
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
    Left = 120
    Top = 62
  end
  object fsvalidade: TfrxDBDataset
    UserName = 'fsvalidade'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DATA=DATA'
      'CODPRODUTO=CODPRODUTO'
      'produto=produto'
      'LOTE_FABRICACAO=LOTE_FABRICACAO'
      'LOTE_VALIDADE=LOTE_VALIDADE'
      'dias=dias')
    DataSet = qrvalidade
    BCDToCurrency = False
    Left = 192
    Top = 70
  end
  object fsproduto: TfrxDBDataset
    UserName = 'fsproduto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'PRODUTO=PRODUTO'
      'DATA_ULTIMACOMPRA=DATA_ULTIMACOMPRA'
      'LOTE_FABRICACAO=LOTE_FABRICACAO'
      'LOTE_VALIDADE=LOTE_VALIDADE')
    DataSet = qrproduto
    BCDToCurrency = False
    Left = 192
    Top = 110
  end
end
