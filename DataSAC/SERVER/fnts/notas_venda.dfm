object frmnotas_venda: Tfrmnotas_venda
  Left = 138
  Top = 60
  Width = 805
  Height = 575
  Caption = 'Notas de Venda'
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
    Top = 0
    Width = 797
    Height = 3
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 512
    Width = 797
    Height = 3
    Align = alBottom
  end
  object Bevel12: TBevel
    Left = 0
    Top = 36
    Width = 797
    Height = 3
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 515
    Width = 797
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object DBText1: TDBText
      Left = 520
      Top = 8
      Width = 0
      Height = 17
      Visible = False
    end
    object bcancelar: TAdvGlowButton
      Left = 5
      Top = 3
      Width = 124
      Height = 24
      Caption = 'F4 | Cancela Venda'
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
      TabOrder = 0
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
    object brelatorio: TAdvGlowButton
      Left = 134
      Top = 3
      Width = 124
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
      TabOrder = 1
      OnClick = brelatorioClick
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
    object bcupomfiscal: TAdvGlowMenuButton
      Left = 304
      Top = 19
      Width = 138
      Height = 24
      Caption = 'ECF | Comandos'
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000467414D410000AFC837058AE90000001974455874536F6674776172
        650041646F626520496D616765526561647971C9653C000001D24944415478DA
        62FCFFFF3F0325002080981828040001C4822E3077EE5CB093602E03D120FCEF
        DF3F309D9999C988AC1E208018610A9B9A9A38819499B4B4F4016B6B6B86376F
        DEA0182C2222C2B07FFF7E860B172E38FCFAF5EBD4FCF9F3BF83C40102086C00
        507332903D415C5C9C87999919ABCD30B157AF5E31DCBA75EB0BD09082356BD6
        CC050820C6C6C646574949C95D4646460CC2C2C244F9FBC993270C1B376E64B8
        7CF9B21B400081C2A0D7C2C282414C4C8C61EAD4A94419909D9DCD101010C0F0
        E8D1A3E900010432405D4B4B0B2CE1E7E7C7A0AEAE8E57F3952B57C0E101C240
        2F28010410CBDFBF7FD980182CF9E0C103B0047A002207E4DDBB77198C8D8DC1
        FC8F1F3F32020410CB9F3F7F18EEDDBB07160069FCF9F327C3972F5FB01AC0C3
        C3C3F0FAF56BB87A100D10402CBF7FFF06070A087CFBF68D0164203084B11A00
        92FBFAF52B5C3DC8308000021B00D3C0C1C1C1B076ED5A30FBC78F1F60C59F3F
        7F0639158C41D1A8A3A303570FD20B10402C40CEBF4F9F3E31F1F1F181BD0032
        0466988080008A0BBE7FFF0E0A38067777778667CF9E81D308400031262727CF
        041A6209344D57535313ABCD2036480C24074E7D8C8C20D75C02325702041023
        A5B911208028CE8D000106009DAC04B426F6516F0000000049454E44AE426082}
      TabOrder = 2
      Visible = False
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
      DropDownMenu = menu_tabelas_fiscais
    end
    object bfechar: TAdvGlowButton
      Left = 686
      Top = 3
      Width = 95
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
      TabOrder = 3
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
    object bcontrato: TAdvGlowButton
      Left = 262
      Top = 3
      Width = 124
      Height = 24
      Caption = 'F10 | Contrato'
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
      TabOrder = 4
      OnClick = bcontratoClick
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
    object AdvGlowButton2: TAdvGlowButton
      Left = 390
      Top = 3
      Width = 124
      Height = 24
      Caption = 'F11 | Imprimir'
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
      TabOrder = 5
      OnClick = AdvGlowButton2Click
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
  object tab_principal: TPageView
    Left = 0
    Top = 39
    Width = 797
    Height = 473
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
    TabOrder = 1
    TabStyle = tsFlat
    TopIndent = 3
    OnChange = tab_principalChange
    object PageSheet10: TPageSheet
      Left = 0
      Top = 21
      Width = 797
      Height = 452
      Caption = 'F2 | Rela'#231#227'o de Notas'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 0
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object Bevel6: TBevel
        Left = 0
        Top = 370
        Width = 797
        Height = 3
        Align = alBottom
      end
      object Bevel14: TBevel
        Left = 0
        Top = 419
        Width = 797
        Height = 3
        Align = alBottom
      end
      object Bevel9: TBevel
        Left = 0
        Top = 389
        Width = 797
        Height = 3
        Align = alBottom
      end
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 0
        Width = 797
        Height = 370
        DittoAttributes.ShortCutDittoField = 0
        DittoAttributes.ShortCutDittoRecord = 0
        DittoAttributes.Options = []
        DisableThemesInTitle = False
        ControlType.Strings = (
          'FILTRO;CheckBox;1;0'
          'SITUACAO;ImageIndex;Original Size'
          'situacao2;ImageIndex;Original Size'
          'CUPOM_FISCAL;ImageIndex;Original Size')
        Selected.Strings = (
          'SITUACAO'#9'3'#9'?'#9#9
          'CODIGO'#9'10'#9'VENDA/NR.'#9#9
          'NUMERO_CUPOM_FISCAL'#9'7'#9'CUPOM'#9#9
          'DATA'#9'12'#9'DATA'#9#9
          'cliente'#9'49'#9'CLIENTE'#9#9
          'TOTAL'#9'11'#9'TOTAL'#9#9
          'vendedor'#9'16'#9'VENDEDOR'#9#9
          'CODCAIXA'#9'10'#9'CAIXA'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsvenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentFont = False
        RowHeightPercent = 113
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
        ImageList = ImageList1
        PaintOptions.AlternatingRowColor = 16316664
        PaintOptions.ActiveRecordColor = clBlack
      end
      object Panel2: TPanel
        Left = 0
        Top = 422
        Width = 797
        Height = 30
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Bevel5: TBevel
          Left = 656
          Top = 4
          Width = 121
          Height = 22
        end
        object Bevel4: TBevel
          Left = 462
          Top = 4
          Width = 50
          Height = 22
        end
        object Label4: TLabel
          Left = 8
          Top = 6
          Width = 84
          Height = 13
          Caption = 'Localizar n'#250'mero:'
        end
        object Bevel3: TBevel
          Left = 212
          Top = 4
          Width = 2
          Height = 23
        end
        object Label5: TLabel
          Left = 328
          Top = 8
          Width = 123
          Height = 13
          Caption = 'Quantidade de Registros:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label6: TLabel
          Left = 536
          Top = 10
          Width = 113
          Height = 13
          Caption = 'Valor Total das Vendas:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object wwIncrementalSearch1: TwwIncrementalSearch
          Left = 104
          Top = 3
          Width = 97
          Height = 21
          DataSource = dsvenda
          SearchField = 'CODIGO'
          TabOrder = 0
        end
        object ltotal: TRxCalcEdit
          Left = 658
          Top = 7
          Width = 115
          Height = 18
          AutoSize = False
          BorderStyle = bsNone
          Color = clBtnFace
          DisplayFormat = '###,###,##0.00'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ButtonWidth = 0
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
        end
        object lqtde: TRxCalcEdit
          Left = 464
          Top = 7
          Width = 45
          Height = 18
          AutoSize = False
          BorderStyle = bsNone
          Color = clBtnFace
          DisplayFormat = '###,###,##0'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ButtonWidth = 0
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 2
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 373
        Width = 797
        Height = 16
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object Label34: TLabel
          Left = 8
          Top = 0
          Width = 64
          Height = 13
          Caption = 'Retirado por:'
        end
        object DBText2: TDBText
          Left = 77
          Top = 0
          Width = 676
          Height = 17
          DataField = 'RETIRADO'
          DataSource = dsvenda
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 392
        Width = 797
        Height = 27
        Align = alBottom
        BevelOuter = bvNone
        Enabled = False
        TabOrder = 3
        object Label35: TLabel
          Left = 4
          Top = 7
          Width = 37
          Height = 11
          Caption = 'Dinheiro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 100
          Top = 7
          Width = 35
          Height = 11
          Caption = 'Cheque:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 195
          Top = 7
          Width = 41
          Height = 11
          Caption = 'Ch.Prazo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 296
          Top = 7
          Width = 31
          Height = 11
          Caption = 'Cart'#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label39: TLabel
          Left = 387
          Top = 7
          Width = 40
          Height = 11
          Caption = 'C.D'#233'bito:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 486
          Top = 7
          Width = 40
          Height = 11
          Caption = 'Credi'#225'rio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TLabel
          Left = 585
          Top = 7
          Width = 43
          Height = 11
          Caption = 'Conv'#234'nio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 690
          Top = 7
          Width = 33
          Height = 11
          Caption = 'Financ.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object RzDBNumericEdit19: TRzDBNumericEdit
          Left = 43
          Top = 4
          Width = 55
          Height = 19
          DataSource = dsvenda
          DataField = 'MEIO_DINHEIRO'
          Alignment = taLeftJustify
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object RzDBNumericEdit20: TRzDBNumericEdit
          Left = 137
          Top = 4
          Width = 55
          Height = 19
          DataSource = dsvenda
          DataField = 'MEIO_CHEQUEAV'
          Alignment = taLeftJustify
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object RzDBNumericEdit21: TRzDBNumericEdit
          Left = 239
          Top = 4
          Width = 55
          Height = 19
          DataSource = dsvenda
          DataField = 'MEIO_CHEQUEAP'
          Alignment = taLeftJustify
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object RzDBNumericEdit22: TRzDBNumericEdit
          Left = 329
          Top = 4
          Width = 55
          Height = 19
          DataSource = dsvenda
          DataField = 'MEIO_CARTAOCRED'
          Alignment = taLeftJustify
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object RzDBNumericEdit23: TRzDBNumericEdit
          Left = 429
          Top = 4
          Width = 55
          Height = 19
          DataSource = dsvenda
          DataField = 'MEIO_CARTAODEB'
          Alignment = taLeftJustify
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object RzDBNumericEdit24: TRzDBNumericEdit
          Left = 528
          Top = 4
          Width = 55
          Height = 19
          DataSource = dsvenda
          DataField = 'MEIO_CREDIARIO'
          Alignment = taLeftJustify
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object RzDBNumericEdit25: TRzDBNumericEdit
          Left = 631
          Top = 4
          Width = 55
          Height = 19
          DataSource = dsvenda
          DataField = 'MEIO_CONVENIO'
          Alignment = taLeftJustify
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object RzDBNumericEdit26: TRzDBNumericEdit
          Left = 726
          Top = 4
          Width = 55
          Height = 19
          DataSource = dsvenda
          DataField = 'MEIO_FINANCEIRA'
          Alignment = taLeftJustify
          Color = clBtnFace
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
      end
      object bcancel: TButton
        Left = 592
        Top = 160
        Width = 75
        Height = 25
        Caption = 'bcancel'
        TabOrder = 4
        Visible = False
        OnClick = bcancelClick
      end
    end
    object PageSheet11: TPageSheet
      Left = 0
      Top = 21
      Width = 797
      Height = 452
      Caption = 'F3 | Visualiza'#231#227'o'
      DisplayMode = tdGlyph
      ImageIndex = 0
      Margin = 0
      PageIndex = 1
      TabColor = clWindow
      TabWidth = 0
      TransparentColor = clNone
      object TDBText
        Left = 148
        Top = 22
        Width = 307
        Height = 17
        DataField = 'cliente'
        DataSource = dsvenda
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Bevel8: TBevel
        Left = 0
        Top = 416
        Width = 797
        Height = 3
        Align = alBottom
      end
      object Bevel13: TBevel
        Left = 0
        Top = 105
        Width = 797
        Height = 3
        Align = alTop
      end
      object wwDBGrid2: TwwDBGrid
        Left = 0
        Top = 108
        Width = 797
        Height = 308
        DittoAttributes.ShortCutDittoField = 0
        DittoAttributes.ShortCutDittoRecord = 0
        DittoAttributes.Options = []
        DisableThemesInTitle = False
        Selected.Strings = (
          'CODPRODUTO'#9'6'#9'C'#243'digo'#9#9
          'codbarra'#9'12'#9'Cod.Barra'#9#9
          'produto'#9'31'#9'Produto'#9#9
          'UNIDADE'#9'4'#9'Un.'#9#9
          'ALIQUOTA'#9'5'#9'Al'#237'q.'#9#9
          'CST'#9'5'#9'CST'#9#9
          'QTDE'#9'10'#9'Quantidade'#9#9
          'UNITARIO'#9'9'#9'Unit'#225'rio'#9#9
          'DESCONTO'#9'10'#9'Desconto'#9#9
          'TOTAL'#9'9'#9'Total'#9#9
          'SERIAL'#9'14'#9'Serial'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dsproduto_mov
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        TabOrder = 0
        TitleAlignment = taCenter
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        PaintOptions.AlternatingRowColor = 16316664
        PaintOptions.ActiveRecordColor = clBlack
      end
      object Panel5: TPanel
        Left = 0
        Top = 419
        Width = 797
        Height = 33
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Label12: TLabel
          Left = 125
          Top = 11
          Width = 49
          Height = 13
          Caption = 'Registros:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lqtde_cupom: TLabel
          Left = 179
          Top = 11
          Width = 26
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Caption = '12'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label15: TLabel
          Left = 350
          Top = 11
          Width = 49
          Height = 13
          Caption = 'Desconto:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 628
          Top = 11
          Width = 69
          Height = 13
          Caption = 'Total da Nota:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 214
          Top = 11
          Width = 44
          Height = 13
          Caption = 'Subtotal:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 486
          Top = 11
          Width = 52
          Height = 13
          Caption = 'Acr'#233'scimo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object AdvGlowButton1: TAdvGlowButton
          Left = 11
          Top = 3
          Width = 102
          Height = 24
          Caption = 'Re-imprimir'
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
          TabOrder = 0
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
        object RzDBNumericEdit15: TRzDBNumericEdit
          Left = 265
          Top = 6
          Width = 72
          Height = 21
          DataSource = dsvenda
          DataField = 'SUBTOTAL'
          Alignment = taLeftJustify
          DisabledColor = clWindow
          Enabled = False
          TabOrder = 1
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object RzDBNumericEdit16: TRzDBNumericEdit
          Left = 404
          Top = 6
          Width = 72
          Height = 21
          DataSource = dsvenda
          DataField = 'DESCONTO'
          Alignment = taLeftJustify
          DisabledColor = clWindow
          Enabled = False
          TabOrder = 2
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object RzDBNumericEdit17: TRzDBNumericEdit
          Left = 703
          Top = 6
          Width = 72
          Height = 21
          DataSource = dsvenda
          DataField = 'TOTAL'
          Alignment = taLeftJustify
          DisabledColor = clWindow
          Enabled = False
          TabOrder = 3
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object RzDBNumericEdit18: TRzDBNumericEdit
          Left = 544
          Top = 6
          Width = 72
          Height = 21
          DataSource = dsvenda
          DataField = 'ACRESCIMO'
          Alignment = taLeftJustify
          DisabledColor = clWindow
          Enabled = False
          TabOrder = 4
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
      end
      object FlatPanel1: TFlatPanel
        Left = 0
        Top = 0
        Width = 797
        Height = 105
        ParentColor = True
        Enabled = False
        ColorHighLight = clBtnFace
        ColorShadow = clBtnFace
        Align = alTop
        TabOrder = 2
        UseDockManager = True
        object Label9: TLabel
          Left = 17
          Top = 12
          Width = 41
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N'#250'mero:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 17
          Top = 36
          Width = 41
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Caixa:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 129
          Top = 12
          Width = 41
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Cupom:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 129
          Top = 36
          Width = 41
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Data:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 249
          Top = 12
          Width = 58
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Cliente:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 249
          Top = 36
          Width = 58
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Vendedor:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 9
          Top = 77
          Width = 43
          Height = 13
          Caption = 'Dinheiro:'
        end
        object Label11: TLabel
          Left = 113
          Top = 77
          Width = 41
          Height = 13
          Caption = 'Cheque:'
        end
        object Label13: TLabel
          Left = 216
          Top = 77
          Width = 48
          Height = 13
          Caption = 'Ch.Prazo:'
        end
        object Label14: TLabel
          Left = 333
          Top = 77
          Width = 37
          Height = 13
          Caption = 'Cart'#227'o:'
        end
        object Label16: TLabel
          Left = 445
          Top = 77
          Width = 46
          Height = 13
          Caption = 'C.D'#233'bito:'
        end
        object Label7: TLabel
          Left = 563
          Top = 77
          Width = 47
          Height = 13
          Caption = 'Credi'#225'rio:'
        end
        object Label19: TLabel
          Left = 669
          Top = 77
          Width = 49
          Height = 13
          Caption = 'Conv'#234'nio:'
        end
        object Bevel7: TBevel
          Left = -7
          Top = 65
          Width = 782
          Height = 2
        end
        object RzDBEdit1: TRzDBEdit
          Left = 64
          Top = 9
          Width = 57
          Height = 21
          DataSource = dsvenda
          DataField = 'CODIGO'
          TabOrder = 0
        end
        object RzDBEdit2: TRzDBEdit
          Left = 64
          Top = 33
          Width = 57
          Height = 21
          DataSource = dsvenda
          DataField = 'CODCAIXA'
          TabOrder = 1
        end
        object RzDBEdit3: TRzDBEdit
          Left = 176
          Top = 9
          Width = 65
          Height = 21
          DataSource = dsvenda
          DataField = 'NUMERO_CUPOM_FISCAL'
          TabOrder = 2
        end
        object RzDBEdit4: TRzDBEdit
          Left = 176
          Top = 33
          Width = 65
          Height = 21
          DataSource = dsvenda
          DataField = 'DATA'
          TabOrder = 3
        end
        object RzDBEdit5: TRzDBEdit
          Left = 312
          Top = 9
          Width = 57
          Height = 21
          DataSource = dsvenda
          DataField = 'CODCLIENTE'
          TabOrder = 4
        end
        object RzDBEdit6: TRzDBEdit
          Left = 312
          Top = 33
          Width = 57
          Height = 21
          DataSource = dsvenda
          DataField = 'CODVENDEDOR'
          TabOrder = 5
        end
        object RzDBEdit7: TRzDBEdit
          Left = 376
          Top = 9
          Width = 393
          Height = 21
          DataSource = dsvenda
          DataField = 'cliente'
          TabOrder = 6
        end
        object RzDBEdit8: TRzDBEdit
          Left = 376
          Top = 33
          Width = 393
          Height = 21
          DataSource = dsvenda
          DataField = 'vendedor'
          TabOrder = 7
        end
        object RzDBNumericEdit1: TRzDBNumericEdit
          Left = 56
          Top = 74
          Width = 55
          Height = 21
          DataSource = dsvenda
          DataField = 'MEIO_DINHEIRO'
          Alignment = taLeftJustify
          TabOrder = 8
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object RzDBNumericEdit2: TRzDBNumericEdit
          Left = 156
          Top = 74
          Width = 55
          Height = 21
          DataSource = dsvenda
          DataField = 'MEIO_CHEQUEAV'
          Alignment = taLeftJustify
          TabOrder = 9
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object RzDBNumericEdit3: TRzDBNumericEdit
          Left = 268
          Top = 74
          Width = 55
          Height = 21
          DataSource = dsvenda
          DataField = 'MEIO_CHEQUEAP'
          Alignment = taLeftJustify
          TabOrder = 10
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object RzDBNumericEdit4: TRzDBNumericEdit
          Left = 380
          Top = 74
          Width = 55
          Height = 21
          DataSource = dsvenda
          DataField = 'MEIO_CARTAOCRED'
          Alignment = taLeftJustify
          TabOrder = 11
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object RzDBNumericEdit5: TRzDBNumericEdit
          Left = 500
          Top = 74
          Width = 55
          Height = 21
          DataSource = dsvenda
          DataField = 'MEIO_CARTAODEB'
          Alignment = taLeftJustify
          TabOrder = 12
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object RzDBNumericEdit6: TRzDBNumericEdit
          Left = 610
          Top = 74
          Width = 55
          Height = 21
          DataSource = dsvenda
          DataField = 'MEIO_CREDIARIO'
          Alignment = taLeftJustify
          TabOrder = 13
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object RzDBNumericEdit7: TRzDBNumericEdit
          Left = 724
          Top = 74
          Width = 55
          Height = 21
          DataSource = dsvenda
          DataField = 'MEIO_CONVENIO'
          Alignment = taLeftJustify
          TabOrder = 14
          IntegersOnly = False
          DisplayFormat = '###,###,##0.00'
        end
        object FlatPanel2: TFlatPanel
          Left = 328
          Top = 59
          Width = 129
          Height = 14
          Caption = 'Formas de Pagamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ColorHighLight = clBtnFace
          ColorShadow = clBtnFace
          TabOrder = 15
          UseDockManager = True
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 3
    Width = 797
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 31
      Top = 10
      Width = 37
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clInfoText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 336
      Top = 10
      Width = 27
      Height = 13
      Caption = 'Data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clInfoText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 457
      Top = 9
      Width = 6
      Height = 13
      Caption = 'a'
      Font.Charset = ANSI_CHARSET
      Font.Color = clInfoText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label20: TLabel
      Left = 229
      Top = 10
      Width = 41
      Height = 13
      Caption = 'N'#250'mero:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clInfoText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label21: TLabel
      Left = 7
      Top = 10
      Width = 19
      Height = 13
      Caption = 'F6 |'
      Font.Charset = ANSI_CHARSET
      Font.Color = clInfoText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label25: TLabel
      Left = 560
      Top = 10
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clInfoText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object BFILTRO: TAdvGlowButton
      Left = 712
      Top = 3
      Width = 64
      Height = 26
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
      TabOrder = 5
      OnClick = BFILTROClick
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
    object ecliente: TRzButtonEdit
      Left = 72
      Top = 6
      Width = 153
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnEnter = eclienteEnter
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
    object DateEdit1: TDateEdit
      Left = 369
      Top = 6
      Width = 86
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
      TabOrder = 2
      Text = '00/00/0000'
      OnKeyPress = DateEdit1KeyPress
    end
    object DateEdit2: TDateEdit
      Left = 466
      Top = 6
      Width = 87
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
      TabOrder = 3
      OnKeyPress = DateEdit2KeyPress
    end
    object ENUMERO: TEdit
      Left = 275
      Top = 6
      Width = 49
      Height = 21
      TabOrder = 1
      Text = '000000'
      OnExit = ENUMEROExit
      OnKeyPress = ENUMEROKeyPress
    end
    object combo_situacao: TComboBox
      Left = 608
      Top = 6
      Width = 97
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 4
      Text = 'CANCELADAS'
      OnKeyPress = combo_situacaoKeyPress
      Items.Strings = (
        'TODAS'
        'ATIVAS'
        'CANCELADAS')
    end
  end
  object dsvenda: TDataSource
    DataSet = frmmodulo.qrvenda
    Left = 392
    Top = 320
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 320
    object N2aVia1: TMenuItem
      Caption = 'Rela'#231#227'o de notas'
      ShortCut = 113
      OnClick = N2aVia1Click
    end
    object Visualizar1: TMenuItem
      Caption = 'Visualizar'
      ShortCut = 114
      OnClick = Visualizar1Click
    end
    object CancelarVenda1: TMenuItem
      Caption = 'Cancelar Venda'
      ShortCut = 115
      OnClick = bcancelarClick
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      ShortCut = 118
      OnClick = brelatorioClick
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bfecharClick
    end
    object Filtro1: TMenuItem
      Caption = 'Filtro'
      ShortCut = 119
      OnClick = BitBtn2Click
    end
    object Cliente1: TMenuItem
      Caption = 'Cliente'
      ShortCut = 117
      OnClick = Cliente1Click
    end
    object Contrato1: TMenuItem
      Caption = 'Contrato'
      ShortCut = 121
      OnClick = bcontratoClick
    end
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      ShortCut = 122
    end
  end
  object QUERY: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 296
    Top = 320
  end
  object dsproduto_mov: TwwDataSource
    DataSet = qrproduto_mov
    Left = 520
    Top = 307
  end
  object qrproduto_mov: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 482
    Top = 312
    object qrproduto_movCODPRODUTO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrproduto_movcodbarra: TStringField
      DisplayLabel = 'Cod.Barra'
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'codbarra'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODBARRA'
      KeyFields = 'CODPRODUTO'
      Size = 14
      Lookup = True
    end
    object qrproduto_movproduto: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 31
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Size = 40
      Lookup = True
    end
    object qrproduto_movUNIDADE: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 4
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrproduto_movALIQUOTA: TFloatField
      DisplayLabel = 'Al'#237'q.'
      DisplayWidth = 5
      FieldName = 'ALIQUOTA'
    end
    object qrproduto_movCST: TStringField
      DisplayWidth = 5
      FieldName = 'CST'
      Size = 3
    end
    object qrproduto_movQTDE: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'QTDE'
      DisplayFormat = '#,##0.000'
    end
    object qrproduto_movUNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      DisplayWidth = 9
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto_movDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto_movTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 9
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrproduto_movSERIAL: TStringField
      DisplayLabel = 'Serial'
      DisplayWidth = 14
      FieldName = 'SERIAL'
      Size = 25
    end
    object qrproduto_movDATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'DATA'
      Visible = False
    end
    object qrproduto_movNUMERONOTA: TStringField
      DisplayLabel = 'N.FISCAL'
      DisplayWidth = 6
      FieldName = 'NUMERONOTA'
      Visible = False
      Size = 6
    end
    object qrproduto_movCUPOM_NUMERO: TStringField
      DisplayLabel = 'CUPOM'
      DisplayWidth = 8
      FieldName = 'CUPOM_NUMERO'
      Visible = False
      Size = 10
    end
    object qrproduto_movCODNOTA: TStringField
      DisplayLabel = 'N.FISCAL'
      DisplayWidth = 8
      FieldName = 'CODNOTA'
      Visible = False
      Size = 15
    end
    object qrproduto_movCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 10
    end
    object qrproduto_movICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS'
      Visible = False
    end
    object qrproduto_movIPI: TFloatField
      DisplayWidth = 10
      FieldName = 'IPI'
      Visible = False
    end
    object qrproduto_movCFOP: TStringField
      DisplayWidth = 6
      FieldName = 'CFOP'
      Visible = False
      Size = 6
    end
    object qrproduto_movCODCLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrproduto_movACRESCIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ACRESCIMO'
      Visible = False
    end
    object qrproduto_movMOVIMENTO: TIntegerField
      DisplayWidth = 10
      FieldName = 'MOVIMENTO'
      Visible = False
    end
    object qrproduto_movCODVENDEDOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrproduto_movCODGRADE: TStringField
      DisplayWidth = 6
      FieldName = 'CODGRADE'
      Visible = False
      Size = 6
    end
    object qrproduto_movVALOR_ICMS: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_ICMS'
      Visible = False
    end
    object qrproduto_movICMS_REDUZIDO: TFloatField
      DisplayWidth = 10
      FieldName = 'ICMS_REDUZIDO'
      Visible = False
    end
    object qrproduto_movBASE_CALCULO: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_CALCULO'
      Visible = False
    end
    object qrproduto_movVALOR_IPI: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_IPI'
      Visible = False
    end
    object qrproduto_movSITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrproduto_movECF_SERIE: TStringField
      DisplayWidth = 20
      FieldName = 'ECF_SERIE'
      Visible = False
    end
    object qrproduto_movECF_CAIXA: TStringField
      DisplayWidth = 10
      FieldName = 'ECF_CAIXA'
      Visible = False
      Size = 10
    end
    object qrproduto_movCODALIQUOTA: TStringField
      DisplayWidth = 5
      FieldName = 'CODALIQUOTA'
      Visible = False
      Size = 5
    end
    object qrproduto_movCUPOM_MODELO: TStringField
      DisplayWidth = 5
      FieldName = 'CUPOM_MODELO'
      Visible = False
      Size = 5
    end
    object qrproduto_movCUPOM_ITEM: TStringField
      DisplayWidth = 5
      FieldName = 'CUPOM_ITEM'
      Visible = False
      Size = 5
    end
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select codigo,codbarra,produto from c000025')
    Params = <>
    Left = 456
    Top = 320
  end
  object Query1: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 328
    Top = 320
  end
  object qrcliente2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 184
    Top = 328
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
  object menu_tabelas_fiscais: TAdvPopupMenu
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.5.4.0'
    Left = 264
    Top = 320
    object ModelosdeNotasFiscais1: TMenuItem
      Caption = 'Leitura X'
      ImageIndex = 89
      OnClick = ModelosdeNotasFiscais1Click
    end
    object CFOP1: TMenuItem
      Caption = 'Leitura da Mem'#243'ria Fiscal'
      ImageIndex = 105
      OnClick = CFOP1Click
    end
    object ClassesdeRecolhimento1: TMenuItem
      Caption = 'Redu'#231#227'o Z'
      ImageIndex = 33
      OnClick = ClassesdeRecolhimento1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MemorandodeExportao1: TMenuItem
      Caption = 'Cancelar '#218'ltimo Cupom'
      ImageIndex = 27
      OnClick = MemorandodeExportao1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Suprimento1: TMenuItem
      Caption = 'Suprimento'
      OnClick = Suprimento1Click
    end
    object Sangria1: TMenuItem
      Caption = 'Sangria'
      OnClick = Sangria1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object BaixarInformaesdaECFDownloadMFD1: TMenuItem
      Caption = 'Baixar Informa'#231#245'es da ECF (Download MFD)'
      OnClick = BaixarInformaesdaECFDownloadMFD1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object ProgramaTotalizardeRecebimento1: TMenuItem
      Caption = 'Programa Totalizar de Recebimento'
      OnClick = ProgramaTotalizardeRecebimento1Click
    end
    object FecharCNFV1: TMenuItem
      Caption = 'Fechar CNFV'
      OnClick = FecharCNFV1Click
    end
  end
  object AdvMenuOfficeStyler1: TAdvMenuOfficeStyler
    AntiAlias = aaNone
    AutoThemeAdapt = False
    Style = osOffice2007Silver
    Background.Position = bpCenter
    Background.Color = 16448250
    Background.ColorTo = 16448250
    ButtonAppearance.DownColor = 13421257
    ButtonAppearance.DownColorTo = 15395047
    ButtonAppearance.HoverColor = 14737117
    ButtonAppearance.HoverColorTo = 16052977
    ButtonAppearance.DownBorderColor = 11906984
    ButtonAppearance.HoverBorderColor = 11906984
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Tahoma'
    ButtonAppearance.CaptionFont.Style = []
    IconBar.Color = 15724527
    IconBar.ColorTo = 15724527
    IconBar.CheckBorder = clNavy
    IconBar.RadioBorder = clNavy
    IconBar.SeparatorColor = 12961221
    SelectedItem.Color = 15465983
    SelectedItem.ColorTo = 11267071
    SelectedItem.ColorMirror = 6936319
    SelectedItem.ColorMirrorTo = 9889023
    SelectedItem.BorderColor = 10079963
    SelectedItem.Font.Charset = DEFAULT_CHARSET
    SelectedItem.Font.Color = clWindowText
    SelectedItem.Font.Height = -11
    SelectedItem.Font.Name = 'Tahoma'
    SelectedItem.Font.Style = []
    SelectedItem.NotesFont.Charset = DEFAULT_CHARSET
    SelectedItem.NotesFont.Color = clWindowText
    SelectedItem.NotesFont.Height = -8
    SelectedItem.NotesFont.Name = 'Tahoma'
    SelectedItem.NotesFont.Style = []
    SelectedItem.CheckBorder = clNavy
    SelectedItem.RadioBorder = clNavy
    RootItem.ColorTo = 16249843
    RootItem.Font.Charset = DEFAULT_CHARSET
    RootItem.Font.Color = clMenuText
    RootItem.Font.Height = -11
    RootItem.Font.Name = 'Tahoma'
    RootItem.Font.Style = []
    RootItem.SelectedColor = 7778289
    RootItem.SelectedColorTo = 4296947
    RootItem.SelectedColorMirror = 946929
    RootItem.SelectedColorMirrorTo = 5021693
    RootItem.SelectedBorderColor = 4548219
    RootItem.HoverColor = 15465983
    RootItem.HoverColorTo = 11267071
    RootItem.HoverColorMirror = 6936319
    RootItem.HoverColorMirrorTo = 9889023
    RootItem.HoverBorderColor = 10079963
    Glyphs.SubMenu.Data = {
      5A000000424D5A000000000000003E0000002800000004000000070000000100
      0100000000001C0000000000000000000000020000000200000000000000FFFF
      FF0070000000300000001000000000000000100000003000000070000000}
    Glyphs.Check.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FDFF0000F8FF0000F07F0000F23F
      0000F71F0000FF8F0000FFCF0000FFEF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    Glyphs.Radio.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FC3F0000F81F0000F81F
      0000F81F0000F81F0000FC3F0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    SideBar.Font.Charset = DEFAULT_CHARSET
    SideBar.Font.Color = clWhite
    SideBar.Font.Height = -19
    SideBar.Font.Name = 'Tahoma'
    SideBar.Font.Style = [fsBold, fsItalic]
    SideBar.Image.Position = bpCenter
    SideBar.Background.Position = bpCenter
    SideBar.SplitterColorTo = clBlack
    Separator.Color = 12961221
    Separator.GradientType = gtBoth
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clGray
    NotesFont.Height = -8
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    MenuBorderColor = 8816262
    Left = 232
    Top = 320
  end
  object ImageList1: TImageList
    Left = 352
    Top = 172
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F4ECE500D6B9A100B5835900AB734400AA714200B17D5200D2B49B00F2EA
      E300000000000000000000000000000000000000000000000000000000000000
      0000E0EEE0008FBF91003A8C3E0024792800247628003A843E008FB99100E0EB
      E000000000000000000000000000000000000000000000000000000000000000
      0000B9BCF000676DDF004048D600434BD7004048D700353ED5005960DC00AFB2
      EE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7D5
      C600BA885E00D6BAA200E8D9C900EBDFD000EBDFD000E7D7C700D2B49B00AF7A
      4C00E2CEBE00000000000000000000000000000000000000000000000000B5D9
      B600308E3400419F510086C999009AD2AA009AD1AA0082C695003C964B00307B
      3300B4D0B600000000000000000000000000000000000000000000000000BABD
      F0005760DF008A96F50099A6FB0093A0F800909EF600929FF6007F8BED00404A
      D900AEB1EE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E9D8CB00BD8B
      6100E6D4C300E4D1BE00C8A58400B78D6600B5896400C4A07F00DFCBB900E2CF
      BD00AE754700E3CFC00000000000000000000000000000000000B5DBBA00248E
      29006CBD8200A7DAB40086CB970065BB7C0063B97B0085CA9700A4D8B30065B6
      7C0023712600B4D0B60000000000000000000000000000000000BCBEF1005F67
      E000919DF600657CFE003D58FE003B57FE003752FD002F4BF8005269F600808C
      F0003F48D900ABAFED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F1EB00C89C7800E9D7
      C800E2CCB900BF936A00B98B6100CEAF9300CEAF9300B6885E00B1866000D9BF
      A900E3D0BF00B5825800F4ECE6000000000000000000E1F2E40032A0430071C1
      8600A7DAB1005FBB76005BB9720058B76F0058B46E0057B46E005AB67300A4D8
      B20068B77E00307F3400E0ECE1000000000000000000C0C3F1006970E20098A5
      F7006F87FE004260FE003E5CFE003956FE003552FE00304DFE002B49FE00556C
      FA00828FF300404AD900ADB0EE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5CFBC00E3CBB800E9D5
      C400C6987000BE8F6500BE8F6500F6F0EB00F5EFE900B6885E00B6885E00B488
      6200E1CDBA00D8BCA500D8BDA70000000000000000008FD29F004BAF6300A9DC
      B30063C078005EBD700074C48400D3EBD80089CC980055B56B0057B46D005BB6
      7300A5D9B300409A4D008EBB900000000000000000008186E5009EACF8007891
      FE004E6DFE006D86FE008EA0FE00405EFE003B5AFE008195FE00647AFE002C4B
      FE00566DFE00828FF500585FDC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8B39500EEE0D200D8B4
      9400C6976B00C2946800C0926600BE8F6500BE8F6500BA8A6200B8896200B789
      6100CAA68500E9DBCB00C1946E0000000000000000003EB45C0090D19E008CD3
      990063C2730078C88600F1F9F300FEFEFE00FCFDFC0085CA950056B66C005AB8
      710084CB960086C699003A8A3E0000000000000000006B70DF00AFBFFD005D7E
      FE005675FE0095A8FE00FEFEFE00AAB8FE009AABFE00FEFEFE009AAAFE003352
      FE003351FE0096A5FD003840D500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D9B29200F1E3D800D0A4
      7900C4986A00C3966900C3956800F9F5F100F2E9E000C1946C00BD8E6400BD8E
      6300BF946C00EEE2D400C08F6600000000000000000026AF4800A5DBAE006FC9
      7E0072C97F00EFF8F000FEFEFE00EAF6EC00FEFEFE00FAFCFB0087CC95005AB8
      700066BD7C009FD6AE00227E25000000000000000000767BE100B0BFFC006788
      FE005D7EFE005D7EFE00AEBEFE00FEFEFE00FEFEFE00B8C4FE004867FE003A5A
      FE003C5BFE0096A4FB00444DD800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0BB9C00F1E4D900D0A5
      7D00CB9C7000C6996B00C4976A00E1CBB500F7F2ED00F5EDE700D8BCA000C193
      6700C49A7000EFE1D500C698700000000000000000002DB65000A6DCB00071CB
      7F0065C67200AFE0B600D1EDD50062C06F00B7E2BE00FEFEFE00FAFCFB008BCF
      980068C07D00A0D6AD002283250000000000000000007A7FE300B3C4FC006E91
      FE006387FE005F83FE00A7B9FE00FEFEFE00FEFEFE00AFBFFE004A6BFE004162
      FE004363FE0099A8FB004950D900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E9C9AF00F2E4D800DEBA
      9D00CE9F7400CC9D7100F4EAE200E3CAB300E6D2BE00FAF7F500E4D2BE00C397
      6A00D5B39000EDDFD100D2AB8A0000000000000000004AC46B0094D6A00090D6
      9A0068C8750063C56E0060C36D0060C26E0060C16E00B8E3BF00FEFEFE00E2F3
      E5008AD098008ACD9C003B983F000000000000000000797EE300BACBFD007196
      FE006A8FFE009EB5FE00FEFEFE00C1CEFE00B4C4FE00FEFEFE0092A8FE00486A
      FE004668FE009FB0FD00464ED800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F5E4D600F3E2D300EEDB
      CC00D4A77D00CF9F7600FAF7F400FBF7F400FBF7F400FAF7F400D0A78000CEA3
      7A00E9D4C200E9D3C100E8D3C10000000000000000009ADEAC0056BE6F00AEE0
      B6006CCB790067C7710064C66F0062C46D0061C36D0062C37000B5E2BD006EC6
      7D00ABDEB40047A85D008EC7930000000000000000009499E800AFC0F80093B2
      FE007098FE008FADFE00B0C4FE00678DFE005E84FE009BB1FE007694FE004F73
      FE00718DFE0092A2F6006D73E000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDF9F500F0D2BA00F5E8
      DC00EBD7C500D6AB8000DBBA9900F5EBE200F4EBE100E3C7AD00D1A67A00E5CD
      B900F0E1D400DEBA9B00FAF4F0000000000000000000E4F7E90048C465007ECD
      8F00ADE0B4006CCB790069C9750067C7710067C7730067C774006AC87800ABDE
      B30075C3880032A04200E1F1E3000000000000000000CDCFF400868FE700B0C1
      F80095B6FE00739CFE006F98FE006A92FE00658DFE006188FE005B82FE007B99
      FE0099A9F7006069E000BCBEF100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBF1E900F2D3
      BA00F6E9DE00EDDDCF00E2C0A600D7AD8800D6AB8500DCBA9B00EAD5C600F2E5
      D800E3C0A200F5E9DE0000000000000000000000000000000000BFECCA003CC2
      5B007ECD8F00AEE0B60091D79C0076CD820076CD820091D79C00ADE0B40077C7
      8A0026A03A00B5DFBD0000000000000000000000000000000000CECFF400878F
      E700B1C2F80096B8FE0078A2FE0076A0FE00729BFE006B94FE0084A3FE00A0B0
      F7006871E200BEC0F10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FCF2
      EA00F5D9C300F8E8DB00F5E7DC00F2E4D900F2E4D900F4E6DB00F4E3D500ECCC
      B300F8ECE300000000000000000000000000000000000000000000000000C0EC
      CB0049C7680058C1730095D6A200A4DBAD00A4DBAD0094D5A0004FB8690034B2
      5400B6E3C100000000000000000000000000000000000000000000000000CFD1
      F5008891E800B1C3F800BDD2FD00B9CDFC00B7CAFC00B7CAFD00A6B7F700727B
      E400C2C4F2000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEFAF700FBECE100F7DDC800F5D8C000F4D6BE00F4D8C200F8E8DB00FDF8
      F500000000000000000000000000000000000000000000000000000000000000
      0000E5F7E9009EE2B00054CA71003ABF5B0036BD590048C26A0097DBAA00E1F5
      E700000000000000000000000000000000000000000000000000000000000000
      0000CFD1F500989DE9007E83E3008084E4007C82E300747AE1008C91E600C7CA
      F300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000F00FF00FF00F0000
      E007E007E0070000C003C003C003000080018001800100008001800180010000
      8001800180010000800180018001000080018001800100008001800180010000
      80018001800100008001800180010000C003C003C0030000E007E007E0070000
      F00FF00FF00F0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
end
