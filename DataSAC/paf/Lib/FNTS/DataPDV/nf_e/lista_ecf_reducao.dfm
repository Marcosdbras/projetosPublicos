object frmlista_ecf_reducao: Tfrmlista_ecf_reducao
  Left = 479
  Top = 379
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'MOVIMENTO DI'#193'RIO ECF | Relat'#243'rios'
  ClientHeight = 153
  ClientWidth = 411
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
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 50
    Height = 13
    Caption = 'Relat'#243'rio: '
  end
  object Bevel1: TBevel
    Left = 16
    Top = 40
    Width = 385
    Height = 2
  end
  object Label2: TLabel
    Left = 16
    Top = 85
    Width = 40
    Height = 13
    Caption = 'Per'#237'odo:'
  end
  object Label3: TLabel
    Left = 197
    Top = 83
    Width = 9
    Height = 13
    Caption = 'a '
  end
  object Label6: TLabel
    Left = 16
    Top = 53
    Width = 23
    Height = 13
    Caption = 'ECF:'
  end
  object Bevel2: TBevel
    Left = 0
    Top = 118
    Width = 411
    Height = 3
    Align = alBottom
  end
  object combo_relatorio: TComboBox
    Left = 93
    Top = 11
    Width = 300
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnKeyPress = combo_relatorioKeyPress
    Items.Strings = (
      'RELA'#199#195'O DE REDU'#199#213'ES'
      'MAPA RESUMO ECF'
      'MAPA RESUMO ECF - FOLHA A4')
  end
  object DateEdit1: TDateEdit
    Left = 93
    Top = 80
    Width = 97
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
    OnExit = DateEdit1Exit
    OnKeyPress = combo_relatorioKeyPress
  end
  object DateEdit2: TDateEdit
    Left = 213
    Top = 80
    Width = 97
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
    OnKeyPress = combo_relatorioKeyPress
  end
  object combo_ecf: TComboBox
    Left = 93
    Top = 48
    Width = 300
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
    OnKeyPress = combo_relatorioKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 121
    Width = 411
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    object bimprimir: TAdvGlowButton
      Left = 39
      Top = 3
      Width = 98
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
      OfficeHint.Picture.Data = {
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
      OnClick = bimprimirClick
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
      Left = 146
      Top = 3
      Width = 102
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
      TabOrder = 1
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
    object bcancelar: TAdvGlowButton
      Left = 258
      Top = 3
      Width = 102
      Height = 24
      Caption = 'ESC | Fechar'
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
      TabOrder = 2
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
    Left = 480
    Top = 10
  end
  object fxnota: TfrxReport
    Version = '4.7.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39179.400035798600000000
    ReportOptions.LastChange = 40073.392656423610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 232
    Top = 34
    Datasets = <
      item
        DataSet = fsreducao
        DataSetName = 'fsreducao'
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
      PaperWidth = 215.000000000000000000
      PaperHeight = 275.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 128.504020000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Shape1: TfrxShapeView
          Left = 1.889765000000000000
          Top = 90.488250000000000000
          Width = 733.228820000000000000
          Height = 37.795300000000000000
          ShowHint = False
        end
        object Memo3: TfrxMemoView
          Left = 511.748031500000000000
          Top = 68.795300000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DATA_EMISSAO'
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsreducao."DATA_EMISSAO"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 7.338590000000000000
          Top = 96.826840000000000000
          Width = 26.456710000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'ECF'
            'N'#194#186)
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 41.574830000000000000
          Top = 97.826840000000000000
          Width = 37.795300000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ordem'
            'Oper.')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 92.047310000000000000
          Top = 98.047310000000000000
          Width = 30.236240000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Cont.'
            'Red.')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 136.063080000000000000
          Top = 97.889763779527600000
          Width = 34.015770000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Cont.'
            'Canc.')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 192.756030000000000000
          Top = 98.047310000000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Movimento'
            'do Dia')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 262.126160000000000000
          Top = 98.047310000000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Canc.'
            'Descontos')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 347.157700000000000000
          Top = 97.889763780000000000
          Width = 45.354360000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Valor'
            'Cont'#195#161'bil')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 405.968770000000000000
          Top = 90.267780000000000000
          Width = 60.472480000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Isenta N'#195#163'o'
            'Tributada'
            'Incid'#195#170'ncia')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 487.220780000000000000
          Top = 97.889763779527600000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Subst.'
            'Tribut'#195#161'ria')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 565.252320000000000000
          Top = 90.330708660000000000
          Width = 41.574830000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Base'
            'de'
            'C'#195#161'lculo')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 626.283860000000000000
          Top = 97.889763779527600000
          Width = 26.456710000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Alq.'
            '(%)')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 668.079160000000000000
          Top = 97.889763779527600000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Imposto'
            'Debitado')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 458.614410000000000000
          Top = 9.338590000000000000
          Width = 275.905690000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'MAPA RESUMO ECF')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 460.440944880000000000
          Top = 43.574830000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'N'#194#186':')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 460.440944880000000000
          Top = 67.653582360000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DATA:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 37.795300000000000000
          Top = 90.708720000000000000
          Height = 37.039370080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          Left = 84.692950000000000000
          Top = 90.708720000000000000
          Height = 37.039370080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          Left = 132.283550000000000000
          Top = 90.708720000000000000
          Height = 37.039370080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          Left = 177.637910000000000000
          Top = 90.708720000000000000
          Height = 37.039370080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 257.008040000000000000
          Top = 90.708720000000000000
          Height = 37.039370080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          Left = 328.819110000000000000
          Top = 90.708720000000000000
          Height = 37.039370080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 404.409710000000000000
          Top = 90.708720000000000000
          Height = 37.039370080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 478.661720000000000000
          Top = 90.708720000000000000
          Height = 37.039370080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          Left = 551.811380000000000000
          Top = 90.708720000000000000
          Height = 37.039370080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          Left = 616.063390000000000000
          Top = 90.708720000000000000
          Height = 37.039370080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 661.417750000000000000
          Top = 90.708720000000000000
          Height = 37.039370080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo55: TfrxMemoView
          Left = 511.748300000000000000
          Top = 35.795300000000000000
          Width = 124.724490000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'LINHA7'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fxrelatorio."LINHA7"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 118.858380000000000000
          Top = 7.118120000000001000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
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
          HAlign = haCenter
          Memo.UTF8 = (
            '[fxemitente."NOME"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 118.858380000000000000
          Top = 22.236240000000000000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fxemitente."ENDERECO"] , [fxemitente."BAIRRO"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 118.858380000000000000
          Top = 34.354360000000000000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fxemitente."CEP"] - [fxemitente."CIDADE"] / [fxemitente."UF"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 118.858380000000000000
          Top = 45.472480000000010000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'FONE : [fxemitente."TELEFONE"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 118.858380000000000000
          Top = 58.590600000000000000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'CNPJ : [fxemitente."CNPJ"] INSC: [fxemitente."IE"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 118.858380000000000000
          Top = 70.370130000000000000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'EMAIL : [fxemitente."EMAIL"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 10.559060000000000000
          Top = 9.677180000000000000
          Width = 86.929190000000000000
          Height = 68.031540000000000000
          ShowHint = False
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D49484452000000C600
            0000AD0806000000EBA800C4000000097048597300000EC400000EC401952B0E
            1B0000000467414D410000B18E7CFB51930000F49C4944415478DAEC7D07B85C
            5775EE7FFAF4B9BDAA4B962CCBB28D8DB1A9A61A6C1C03064242208009E52579
            BC0724792924A440423A2F84D04DC0806D7A5CB0716FD8966CC9EABD4BF74AB7
            DFE933A7BE7FED73E6AA60CB84F2289F8E3C9E3BED947DD6BFD6FFEFBDF6DA5A
            1445F8FFB59D78AC28D0DA7FC5FFD77CF51CE8F2C284AEC79F373CC0E7230801
            AFC5D70D18CD06B24D1FD956AB95D5F420CCE652E56C469FC9D80872792065C5
            7B361072EF2E3CB7CCFD019669F05D9FE7E143D386FFBF5DF799ED976FD37E5E
            C0D0C2967A0EDB9F699A0244A019EA4D9F5F2DCD0013937E4FA51476379BC8D6
            2A28CC944B43E559FFAB53E54EB8AE4BC36F21E300B6137DA8A3608C2F58D0B5
            6DE17C6D737737CA1D05C0B4E52205581E8111F00581E179D0ACCE9F77DB9FD9
            7E81B75F58606CDE36326F62AC366F64746AC5ECB4F79FAD968666DDC0746916
            0406C6A6F368122D2DB702AF59E27319D9748865CB06B072C5F05F5F7AE9AAFF
            5A44900CCDB39A694780E1C3347C050C04048851FC79B7FD99ED1778FB098051
            52FF8F9046001BEDDD187CD6E56FB1789D1C0875A04510A40C44A4477E18C027
            AF391AFA4641EF0D84DC546A1E52BA8314B13131067BF410963DF2C8C1D71D1B
            0B3E726C2240B59945DD4FA3D4B450AE47F0E8F15BB3E3E4552EEAD508011F9A
            672367D8C8674C64B8A3458BB378D6859D5FB9E485C63796AEC4233D0B3099EB
            08795A4719635A46DA5F12083E74AB0153E71F68C26354D1A0C3D273FC5E8A17
            4732965C57A4C5A4CF5717E62333D76CFC4040ADE9C96B3D6997531AFAE77DA7
            CF6CFFADED67078C80FF130F1DD508121A931D1B8C4F7EEFD388AAFC5D8D7F07
            2DD728A6BA038D18DABDA5B4E481FBD6FDFA938F1FFCBB4AC5C2CCAC8952D586
            1B76C2D30AA8111C75D78058B4E9D5F808E1BB16B426E1C5679BF66D72472601
            99CDD5E1A48E62D939365E7EE5B2FFF382CB175FB76059386966A60C1D7A908E
            16AAF371839A8A368E13C1311C6912B8BE06C3C8F32FF3878011909745917706
            18BFE2DB8F0F8CA89EFCE1D087D258B5F60E637068840B4211D4E296692CBA01
            F1C72EBFABF3395DE547C48C38E6D62CF0BDDBF1AE9B6FDBF0DE4D5BA72F1C1D
            3361D8FD705B62A4217FAEC3A0C1FB410BBE5FA6B18AD72E72CF8EA25EA14E03
            D6C5A8E5C0414297CA7C9EA68197B064308D975F76CEADAFBF72C9672E3A0FF7
            E53A51AB67807436544092381251DD1B8C38F02D8A750AF544C0437489EC590B
            15150CC2D809384670422BCAC5EB3F42A39DD97E59B69F1D30B4A41BC98C3DAA
            472FEFD1ED46562A06C638E95039B2CB15ABFBFE87F7BDE1B39FFBFE3F3DB979
            CA36ED4534F861D2AE6E4434C250BEAD09C171699414DB8C40EA9CA322A90F8D
            989F09382233CD03D3384D9E845023BF844CA6418A3586E6EC7E74E75BB8FC85
            E7E2F5575FF1EE673F17DFC92DC2A461D59149CBBE555718350BA11BE46127A0
            50F6FE14C090CDD6CF00E35779FBF181E12786416F1E2AE34C76080146A08011
            520BE8163D2CADB5D4A471D176225B75B942DB81C13BBF37F9DEFBD6AEFF8B8D
            BB2AD87AB086C05A006417209AE41733DDB1C1E904582091A7CABDB8B0A36A7C
            58ED7CD220A142F2999144A5E4DC147078C0DA34341EAF2B6FA0367B0C613085
            175C7829AE796DF6A357BC091F29F4A2E964E49C6BC45403299EAB161418C24E
            B84EC1814127A0C56F46619E0F1ECFD092EB8D1470CF6CBF5ADBCF0E18F4FBBE
            EBC274520A18E596085D60963465EFAEFAEA35FFB9F67FDE71EBBA77ADDFBD97
            416709A22C397F6A31A5C200B57A117A36AF70110A33A278D7BD19184183CFB3
            4A7C0B30BC906629B44A289099A042F48C4FB0A4F97A768C6FB8E8E860E46995
            506F8CA0CB2EE0ACA5FD78F56F6A1F7DC5559D9F3EEF5985233ACFB5D99C442E
            45943062785519F3482EE6298021BD6791DEBEDE33C0F855DC7E026024CF3410
            DA67028C403D0CF536A949AB49515B54EF9609088FDFDDBE2B58FD8D3B1EFFE3
            FFF8D2F49B51A50E3068C8835D409E548802D8EECCA1BBBB1BBA0C4010509415
            685548C3AAD418B4CF66B94283179A4620D578A43A557B8356ECE5607B94CB5E
            7CECACAEA9205227482A98E039B6A015256AF1B78D712CEDCAE19AD79DF3956B
            DEA27F78C52AEC73B2D3EA54F4280DDD77086E3D0686C90B351AC781818CA278
            816EC60D983CDAC1EA3844C2E30D843362FC976DFB9903C3B28AEA7301468DBF
            B9F781BD6FFE97CF7DFBAB9BF7AD82D55984933260161C0C2D9A87DE85BD3073
            312BB253F1732880A2480FEAF1736586FB9AE4E169ABD529A0748C7F53AFA062
            C2A458B7825866843C418B7F197C119A7554B532F548391640760B1DB519F4F5
            4EE3B22BB2DF7CCBDB577DF892E7E6B6593C6BDF33601B99E374CAFA61602072
            E0CB780BCE00E35775FBA901239C0386A78011D0539BA68520B2506AE8AAF7E9
            F18DF54BBF74C38D1FD9B2BFF9B2FDDD2F4467672786FA2D0C504EF4F78618EA
            D1D1D7E94306E452B6A6C4AE1798D4240E4A150D33250281914306FAAA9506EA
            331A8EEE9FC691CDB398D84F7A354BA0853D48F9BD942629B43C571242D439FA
            26354C5855A0D05229D8259DBA3A42BAB809BFF6BA15B77EE0032BDEB1743926
            1B041F4F8BF4A8815A73D4D62D379536D2648239D2AD1ED5E1254D26001699D1
            6806485B860271E4F970A45B5A8DE3F84937AEB48B1577F746713BC9B3750619
            BFD0DBCF0C1872F7358DFA8324BD424F4E478C759BEB977EEB965B1FDD3F6E60
            6AF1ABD1DB9BC2C279C0709F00031820A3EAB6148694C3965D86C95E9BFCA3DE
            54637AAAB36B625C696B8C50A2EC7D6216FB364DA37C80516A864658A7D5AADE
            32D5114B616DC0C8FA088C165AFE4C9C70452D91E2993AF90D587C968757BD6A
            D1C7AFB86AE9A757AFEADA59A0FE6E36A7914AB97264D98BD1083241140E6076
            023874A8B92CDB3D555E76D6F0B84427A3DD242D4F01437AE610056780F14BBC
            FDF8C0489842A89DFC6CD0472BC310B72942D870500F74D4F872D3CED285F7FD
            60DDBA7A60A0307F18838383583E94C55007D0454064B90F3B6C90D693BA98C9
            01083C015583C6D5A075B9A14ED08434720F95B08991A321B66C6F60C396596C
            D956C39EBD14FDA3323842B7DF6028AA72A74D135668A1A0DB70FC90A6DEC4AC
            3D4DA7EE23A5A754C7575F7788ABAF5972D3DBDE813F3D7B35F6D5B5516419BA
            E4B25C42B35EEFC391839877DF9D78CB830F3EF9C6175FB5EFA6D75E75C5C707
            7A33AEB485C3F30C5C493B8981F8741123489EED33C0F885DE7EA6C050C97A76
            86EFE828D381EE3AE82EDBBAFBF06E2BD785AEC59DE820200648D9F388A3844D
            5BB2829A02869E36620BE2CE3C5D52051D3E0C9AA805491D9C0DA7E1536037BC
            0E4CCE38387C14D8B91BD8BCA58503BB7CECDF314B91CEC831C39DD675E86E7C
            8C027F6F6B3626F3E3A8572A3049F56C11D2E1312C5CD2C25BDFB6E2A3BFFE5B
            037F3D6F69C5959EB526213955992D6CDF98597DE7ED7BAEBDF7FB956B0F1F3E
            8CB7FF7E78DDBBAF7DDBFBE70F7794DD4688BCF482C960A4169C01C6AFC0F663
            032312EEAE9ECD385F22D9F428CE285201839445CF66F8B1890A5F8F4E35B287
            666AE7505BACED21B591DC26955E4E83D2221D69F3F88873AD191B904F50482A
            7A68C689866D7A25DA41488E8C6E540898711E723F85F8460262DFAE0A766C98
            4265377772901F54FB088C029C5296D29940E0BF6385DDF140616519A3864943
            6524098EE2D24B9A78D7FB96BEF11557E19BF2F1FE0358F6C8A3B8E68EBB76FD
            FD0F1E7B9286ADE3ECB3CFC65B7E7BFF9FBCF5D7AFFE5836158FCB14D3712A8C
            16306AC8E0A61A856F03C35429237EFCEE1960FC126C3F536078D52AAC427E0E
            18157AED8926FAF2798C998C26798A73C78839BAEADD0985DBCBA3856297A398
            98B07C3992F095A0AD6B556A09C5378F53890C34B4ACFA9E64988CD348A7A93F
            766C009E7CC8C3CE07F6101C3C4233875CB5034E320031656C43BABB1BCDF105
            EA5A3A2C9BD16714FDFDDB71F96BFABFF382970D7FD3F33C6BDDFA7D573CF0E0
            CE37EDDADB2455D230B4EC2C3CEF79CFC39BDFB2F795975D7ACE9D22BA5BF588
            C0D0D4759832AE11C9F5876780F14BBCFDD8C010A61E3F8B8B37D41D57A920CA
            594A26A10F8F54C52A64E40D9469901EF5C64C18D986AEB54CC446228925258A
            D699561393952A0ECD4C616CB6860D3B7621F04D358EE8BB861AB313EB17B068
            D42859DD81699A30E8B1EDAC8D8EDE1CBAFBFB902B74C1D40B88F8DD43DB5CAC
            7F701F763C36C670450B7687B9B3AE780030AA0069BAF9DA801A59770C490799
            40AAB891E0E8475FEF305A0D07BB767463B63E25E2075AAE8C451754F1E22BBA
            6E7ED71BBA3EB86438B727206A2DEE3A67C71143800E0146189C01C62FF1F6B3
            07463E4D630E5096EF58694CF36B4110FA6EA389B1B1316CDBBF173B0E1CC2D1
            D22C238A8729B789722B846FDA71AE1401150592B867F087F108894E5E15D53D
            380EC5310DD6E3BFC8E46BD2B66CBE1329BB9BB4AC133DA965A81E33F1E40387
            30B28947AE9152799D8AE269790DD12C750896229FD5E1F2BD3038C6535CAF46
            D62D93800E0B68BACF423657003214FBE51D38EB453AFEC707CEFD83D7BF14FF
            5CE0A5F3ABC85AF1D889EF06C8D806B5559338D0CE00E39778D3BC284EED0893
            81283173259EDB39727203851619215C2D9A1BF7724865524947A5EFB510365D
            95056B5B19DA800D97F4CAB70C059F3254F76B9666D8BFEB50F5E227771FB8F1
            818D5B51A290982997D068F9FCAE0DCD4C2130743544A8D90E2958D2117A62CA
            45FB6FE368FC9C4A25676DAA1E80744B5323D8164148D58274E70234CA1D987A
            8051E3491703A30334501F93A9647F21CF374CF191A510D7A09B53F1EE190664
            2254180EC3B2099C9008705A78D99BA770EDFF5A78CD8B5685DFE119CB99AA56
            5099237226519CDED51ED18B127C840C279A4A94897B2DCC334987BFD0DB8F0D
            0C8354244DED20114706B65296135B4064A2365B453D8860757641A64AEC1AAD
            9EB37EE7EECB37EF3BF4AFFB0E1FC4A1E90A5AE93C397D8896EFA9ECDC284543
            A631872669135F1B4E8A766E28336AE7229D989364A663036EB481C188A21318
            5D09305C3724A5CA2A60C01B4475431395C72AE8D94CD0F2DF54AADD9DF6D4C0
            0848873C996C8EF90499A4CCFB4877E878F53BAA78C7FB0A2F386F38FCC11960
            FCEA6E5A4860C4891CF18D329287263374D43D0C55ECA7DDF13B11DCE47E929D
            AB24413557C274D47BCDA64F812CDEDE5000DA3DD95CF8D0A6AD6F7A74F3F6AB
            B78F1C7DFE64839487C769A46C546D19E3100E424F2F29AE8C101070490E8764
            1B4A0AB91CB48D05FD04CA474B1B2C39EAF319C786676A080D4D01271D34D47C
            8C5AD88CF791EA22B55A08E7680AA5871835D61E03268A309AFD047726316D2B
            7996ACDD2AFF5713594F7D23105D428051EB30420D2E99C01BDFA3E3ADEF3AAF
            777E2E9814EA2814C944DC5BD6EE44D0C3E3A71A2109725A0C8CF64706CE6CBF
            C89B269EF1A980A16EEE330043759D067C973A20A02A0E020D2D02AA4943BB7F
            EDDAABD76EDD79D5235B77BCEB58B5093F93439421576714A8983A2A05FA5B27
            4D2C504413189161AA0947F21C19763C2E12C5D361E3330D4F8A18C353869A61
            27C07065D8204903CF0820088CA611483D101AB70327BD047DF55E4C904E35EF
            DF074C76C0A8F59C16189AD5545AC38896A8A8E86A23587E7E136F795FFAC36F
            78CBFC7FE833C3A6D2D9EA2CCE00E3576DD34231684DBA44E35BA62962138B49
            990C37A716B5F8396C67771321A66329504DD55C38795B75ABAE3F3071F1F71F
            7EEC5DF7ADDBF0E6630D2F5B2268FC5C11612A035F2647D8A64C9DA32777E248
            41C336A84902C5DF248258EA7594A491B7C160CC858EF83CF3CDCE98B6510B28
            60987137B1A6C729E291910C84342264CD410C557A30FEF051941ED80E1C2DC2
            2C0DA96440A8B111D2B6289D30414F01C370E2F4765BEB5454D1D70EE1A21706
            78C7FBBBFEC795AF5EF1E9F98197B4601CA9DA69F771939DD8A111471428009D
            D97E59364DE64F2B60682703437CE8E980A105968A149A138F354C563D3CF4E4
            E6AB6F7FF0C1773DBE6DD7557A4737CA9A85A69DA69EC8C135091C0AF3742187
            6C570FA685BF93821916D936BF17A82C6F1E9522DC34247B3536AE3630D4E099
            D61EDE3B0E8C3A699B00C337E222057A028C96DE88691ECF33E31691396C6366
            CD381A6B0F008732302BF34E0B0CCD9A862FC0D0BB1430608DE2C55766F0CE0F
            F6BCE605CFEDBD79284C92C592F36B03C3FFA13CDA33C0F865DCB4D00F94B1B7
            B4765660A4489508CBB96A1FAA4B579B0308652D79BD8159298046F01CA9B456
            DCFDF89AB77FEBEEFB3EB0EDD8A48D6217C27C471C1148A150E8E2739EC665C7
            03111123434F2FD4F43AD101F2ACEBCA740C43325549A5C204A86DE11D9D4CA5
            5A56E2B123EB942B6AA8D16743F7916945C8351DA40F04683E5141B0B986C22E
            A054F33126C94D7092AC700AF860309931980C503A6371751327A5266519CE04
            5EFDDA3E5CFBBE852F3FFF3CDCB388FA2AFE3E847F51644731756B1790437B86
            9F445F2B7E8E4EEC5DFB79DFFA33DBE9B61F1B1835A9F34717B879D7D1155FB9
            E57B7F75CF136BDF54A168367A07D14A65E1324A08850A489B3C3B039D91434B
            6760DBA44D06A38829066D29A3D2345B79F7B64F95310BCB3AD9BFCECD77480C
            AA6EF9C9D99EF03D759A543804862ED5422A2DD865EA9E0D53A8DF730438A063
            D14C2FEA9E86713512771A606426153074E91D63C4B0539378CD1B86F0F6DF1F
            78C1F295787C9927251310E79E4BD39C01C6AFD4A649750C01868BE3C0501B8D
            2B655814D7A12A91695013C837EA2D8FF4C942857F7FFBB13DFFFB9BB7FED707
            371E383CAF229EB5407AC368018202A452C8F2B54C179503982652E902520484
            448356DE57114072A4023F16F1428D6C1ED392C206C9C0A33EC7DDC2934EDC0B
            CA048F056FCA453EDBA306B3B3591D93B5069FD368CC56511B9B42B0750AD840
            7AB52B446A3487EEA85B92CD31C288A78EAF27A92DEE607C3C3DC6871FED839D
            A9A2BFB797A74F90689378F5EB17E32DEF5974D68285D8332F291124B5A84CC7
            5613A36A7E936F05C8903206497FB71035495494AB50B302DBDDB8FA8F37B03A
            77E37EC5A7D3FEAC0B013E53FB3D2D30D4482E3D66CA492B836DA914725D7D3A
            5E6DE28BB73EF0774FECD97FF9D6BDBB2E9CF269201D9DD008068FC0F0B30544
            8C1AD0538A4A39B90E65C46E2B547C5D4ECA35092DC72153C9527F6794035535
            6A5D9F40D16027D9844F070CDD6CA9E8139568F07681CE3D8C01474317DDD42A
            5711EE3B04AC1F057646AA27AAB33C80CE7AA7BAD2A702467C2F62CAE6648EA2
            A327C4F9ABE7A115343136BE15D7BCF96CBCED77B322F38DA5265C97ED6350E3
            6832CE11B6B82F5309EF52BD849C50489C01C68FBBFDDC81115244AA54E8B95E
            A9F884A4FA53A5DA402A9757BD4DE35E64A42C2D988950B8F5E1B5BFFBA99B6E
            FFBB63FCA0297941122928A84140205F24188A71A4A0E74F1929647800A3C508
            24E9136907FD760E85D61145513C3F5459821A05B81509A5329421CDC874BDE8
            873B35DBE9ED33F5108EC508548D186148DB08DA0AE960E6FC3CA679097B8F8D
            C32D9781FD33C09E2605377F382DC50E786E3ECFB7D6A5AAECC09824F848C8DC
            AEB8589C1A77A74649EDC1CAF3F278EBB58B61D0C66FFBFE1358B25A27955AD5
            554C3B332949212799CA3A71D76BA95643DAD6192DA42E5553514135CEA1A061
            A9415399B87506183FDAF60B0D0CD70B9560AED180A63DDFF60DD37A6CFDBAD7
            7CFAC66F7CF560454359D23FD2F4DA8C122D0222902851A0E8CE75AA49DB8E93
            8319E8D06B2D64B8C76E3B0B99D387991AC2B12D284DCF6064F418709454A52A
            69B55152EECF88277D3F0530E6B8B9C648A665E2945AE95DCAD37A331686DFF8
            0A78391A60D656179F9AA55438E0A3BCB3A99E83AA0DB3558031ADA9391A5E38
            1D8BEB56A79AA7DE068666EEC2F25519BCE7F7CFC6B9170377DD17126CF7E079
            975BEF7CF6B39F7DFBE242EEA892602A472C6294A2BA20954A51BBA4A5FB990E
            E30C307EFCEDE70E0C2F6A53A8B89B566BDF38294FC91F4B1527D11347032CBC
            7FE3F603DFBCF336ACDDB81556FF0A78669E7AC28E23860204BD718E46E774D0
            1B8BE1F9289216CDB7D2E893F491D109ECDCB211939B76A3B66956FA8815FDB1
            E49F998545112ED1229481C256100FF02912629E50FC397E763B07D4E7D94AA8
            5237B48E145A1D0656BDE3A5702E30305990043F5E8CDB227D0BA0D7B3AA2849
            59BAD2184470C491B45EA2668FB87B5E248156217D6B49FE0B8F5D1C21D59BC6
            8A4BCEC6CB5FFB2C38944EEB776F615BECC5D9ABFAEF7CF7B32E7DFFE20CB6D5
            2264BD4A23BDA0909E14F2E7351A28CAA475CF3BA1992D25F22302A37DFE1ACE
            00E374DB2F2C30422968CC1B59D3E224C0B5FB47AFF8F44DDFF8DE431B9F40AA
            6700AED30FCF2EC2CCA51111185147170202234A6761D093DBA446060DAC5727
            7592D48D5D7BB1F3FE1F20DCB90DAA9F77B6C06359EA042DD56BE3D080E38C6D
            E9D92988259E0618552BA73ECFB9961A888B8A36DCA28E8E57ADC4CA6B16607F
            A249AC88D7C51F399EA126D5D5A4EC140FDFC140A5119B6562C29DAAC29BB110
            48F0A8B468DC0413234614519F98352C7FDE723CFFF2E7613618C1AEA30F2393
            6FE1955DF3FEF94DAF7EE9473B4CCC541B7EB6376DD6241B20745D644D5D0688
            4E68E633C0F8EF6E3F7760884688D340C2E3FA369262C69A1AB82BF1F78F1F9E
            78D1D7EEB9EB2F6E5EB3E66535CD436678116F7C0FC234797A3E0D8DE2DACDD1
            50A91D24B55CF44296C63C6CE751AC3531B9612B76DC750FB081A068BA287676
            A234F5A29802293EA2A4291FB12E7164E291786D35EDA7FDD95C85B3E41C557A
            217A40DA22B3B2ED10CD1E17EE2A0D2FFFD06A3CA9C60FCB304D3716E3AEF434
            D968663B29DAE3DDC930051A4760565BD067BBA04D3AF027337079CE51EB405C
            3AC765BCEC29A27BF53930191827BC3AF1388ACB36DF8BAB9FFF5C3CFFD2D58B
            FA8083A107A34846D521433372EAFE89E50CADE41274F8C965183FE18D3F038C
            9F6CFBB1811150E592E9E01879FF97EFBCF3239FFCE6D7FF6CCA34D1B56C0126
            6A2E72E945E4F13D0A18A164CAA6D3D053A45129EA0A3385B0D2C0B2622F9AFB
            0E61D7B76E06D63DA97AA9BA3403A5528932E20D894ED0E3297A4A84C7631B46
            948E0B2CABF532E264C2A05D4D7CAEA8B8AE060BFB5D4958ACA3A5B9F0FA03F8
            FD5378D57FBC0C3B2DA92852A1F1CFA841C3549A34CFC860428A29345C98A9B8
            38731A9328F238D956076CEAFD608A58A8A91A0EC4700B0DEEDD95C1C06C0E06
            D9A24FECB7824378D59E4761CC4EE3B2CB5EF8BED75C7CEE27046BD20F25D3B2
            506DA8B4F5E3DB1960FC77B79F3B30A2B21F1B9BCC9C09920AE534F23A5F1E6E
            21FBD5BBD7FCC58D773DFC47FBEB3EFC0279BD5098346FF460A75AD34BB73A14
            20FC5C36CE94B524DB36C21079FBCABA8387FFF57A341E3F848E6607CA8C421D
            9921CCD40B489B2F51FDFEB0DCE4D8D5780081FBD2695EE10C75037549CE7460
            12149E3741FA5F866ED490CA6668B42978AE0E2982238D98CAD898AE4DC11FA8
            E1D7FEE4423416011BFD19688BD2A440F4DE7601EE6C002765AA5976927A1E37
            7EE20DB436F5898B37632E79314E69F72559467A2964CD33B653A1740C0BC216
            8C23C79A7FF48617BFF9C5BDF84E9E9790D7A5FD9A04723DA9EEAE2BF1AD33B2
            A9D9E6CD588007CEC937A2DDDBD63687B65DB4A9EDA95ADD37E3EFC6DDC0716F
            B61E25DF8F8369F2C364FF496663903C9B7E3298DA3EEE29452D8E5BE8531F3F
            308EEFBE9D3C89137AD403BF7DDC385D463D8EF73DA0D838F97A83F679B6A7DB
            D8277F7EEA96FC3CAEE11D26E9FEED739014A786222FA8B52A6A025BD57361F3
            8D0A4D2E9DE27D8A029C6ED3A26A92462BC6A9A67C060A1815BEBC6BFDDECBAF
            BFF3BEEF3FBCFD00A6AD2CA2CE6198F91E589D79B4F216999009CBEE5414AA95
            CD2860E804866E84E81A9B426EE738F6FDE7ADC0CE597406BD70190952992E94
            EBD424B84469093DC3073DB2AF3563608A4B6D6848E587E89A3DF8CD861A3C2B
            5821F20552A1700253B333A47A79F4F6CEC7F4C4183AEC0ECCB8532852F8CF60
            0F96BCF9D958F2EA0CB6522AD77B4394088C6C571F24EF8F81058D09365A7723
            F11C6D0B3C0E8CB6A128AF722A30C2B82C504F6D12430C2DEEEEFD38CBF0D6FF
            EDDBAF7AF9CA2C66148D32ABBCC18D3960C4B32F4E0646943E051827DBE1F11B
            D4B6EF533E6869271BE61C28A2537672F2B21D73F3418CF0646A3A078CA73194
            538FEF26ED26B037A2E373F64F3D7119BA89B3B7DB0996F196F54F3DC029E771
            8AA33875ABA39D55103B062BFA6170CAD6F4EBB0522994DDA61A2F2BF3B69340
            A0C77A26607811E97AC8138907FA3C86FB263DF49EA9D2C2EBBE7BE7DF7FFBE1
            356F9A8CE895BB182D8A03303AFB607575A1292534C59B5B429D1CD28DB44AEB
            B0F4407C380A23933878F38308BFBF099872D089015E441FCA0EA381DB03475F
            ACAA8637743F96FD9275CB13577331C400EB7E5CD4CDB0D4DBCAE334132B5093
            41CAE42DFC60BAA67A9E3A073A3133BE13E8A326381B78DB3F3E17BBFD0087F5
            111C6B556164D38C301132768F9A32EB366397A4B59327F5E0A42445891A2A9D
            9CD4CF0863EF1A03437011A161D2EC7517F99163F0B73E89F7BFFAF27F78F345
            C5BF662BD5B48A8742B61D89926A21B20FA9929ECC6F0D33D5A7BC21731E3C3C
            9E52F2549B91984C5CC02D52AB54A94963ED40D74EC26C4F39569D10C77F1FEA
            4F9DF81E9D3290AA45FA49AFDB0069CEAD0FA2AB8961277E76E2DF272F417A1C
            0125F3B8611A277D1297339673956739FE49804F76E43A4D75BF248B416F174A
            5555EEE32FF8D478A22D233AA8944C7968D5A1C9104048E3099DB9ECEDA70746
            C0C624BF57A90D2999DDA64126147DEF9147AEFDEAED0F7CE1F183A3B00668C4
            DD8314AE8C16856EF88C2861474A0142276F173DD0E241E313F5E68071E0935F
            05364DD04B7623E77691C20C625C96F2D286913296280D312B0569D54A2CA918
            18D24C22DED39AAA34A8567121A55239492A239717C44885D63135ADB5B3B303
            DD05E0C20B81EFDC7C105E71929FEFC70B3FF2061C4B1FC3586A025A575E0163
            66BAC26317E9390AD419D61C30E211F018186D83F2A5C468020C3349541463D5
            92B6AF4AE8D15A18AED4D13D390A63EF0E7CF0AA57BCE65517F4DC6CD47CE4DB
            C0985B9AC08AADBE6D0F4EFD296FC8A906F4B44C386A032F0186F4789D90F0DE
            EEF59A9B27224998274592A701C6292E573B75A661B20F7F6E67FA9C619F74AE
            4FAB11126068C7BBB37F0818520215F14C4CB4B3054E0146906AA911221DCEF1
            F36A0343B23444E30903926C699939D9A0735453A5C97C842CC8CAA5A7038617
            C974559F82325E5148C62CB61C9BBCF4535FFBC6BF3DB6FBC0C5E3345E677029
            DC7C37A25C1FF442271D1F0DB34BBCBB0D27197B50A010FB8E5C1465DC60C711
            ECFCC497285474468B058478372F613E8EF1C4ECD4A0AAB99926056A314CF991
            43B1ABD15865EC6202B11A9F414606CB32F1D2622DC24D23085B518E94C883E5
            4434721DF5A983A45983E48D3A662A233C2FEA89C53A2E79F3C5B09703FB8319
            54A4AB88C0A8F9BA628A0DF1DAE913EEC649B38C92F7A53C4914DF183D8AAF4D
            4F3C99BC2FE542A577CB283595D6D879EF6D78C5F2C53BFFECEDCF7DE38A1436
            DB229DA2E3BBF34C498D8F53F465EBC0E9B76792D67662BF52413EAEB3153F7B
            898DB47F6F9CF2D0E70CFBA98FF3A34EB86D3DC3E7D6094D3AF77C0256C64E38
            B0F114CF3A4E06CCA954AEA49593895F7196744028F9F17949B3A319D5B2F2BD
            A266CFC8E4E78CEFC2A1A63565545722ABDD7FFAF617604809CA268D4F8071B0
            3CD373E7DA8DD77EFE1BDFFDFB4982A299EF42501C442BD785A86308E9CE1EF8
            F4EE5E4657450F5252533C6AE735450A1805D7C7E483EB31FBD55B80510B9DFA
            22441231088C31A388943380B02EF3C48BCA48233DC360A1A15E0B5531E5450B
            B328E68183FBF7A0549E40A1504060E6509925D4090CABB313DECC5164BABA61
            D43CD5A3957224F5BB867A6606757304E9CB86F1F2DFB90893C4EF3E2A31A9D6
            6C663B91491932F09E741FE178B9F253DD96886C256435C59DC5839D040C32A1
            8E1EDE88A34D749626D1D59C416BE716FCCE152FFE938B87BBEF5835646FB042
            CC4518356744021D999930AB5C334CB20C9F9AD56BDAA91EF7E4EF3949F79602
            861E737EA155AE1EA70B68C905F17C83989AE8C93207F1EF3D3386E8A987F951
            07E43DCD3EE5844F3E3FA17A467422953B19189399E3DF371207D4FE5C5128A1
            B06DE11FFEF07955529349ABE8AADB3F88D246A81986678A28049573432A07E4
            C85E6A7AD3C5602A0D534AE6BB65456D23DAE06981E146BE2A7D5987EC4AC79A
            BD07AEFAE2776EBBE5A1CDBB94AE7029B67D8202D41628F4404B9396148AF005
            86063D3DDD60269492363E32AE271566D143F1BCEB3BF7A27AEF5A9807644C63
            316FD410A5E7428CDB0B816432A8A13B14D7AEB246E92D0A9A3E867B1B78F18B
            F218E279DF7BFFE7B169EB9DC8E7F228F4F5A04A00D4FC1CB2D92C426F9732DE
            EE740FF6ED3D88EE9E01A571BC828131897B8B3B71E5EF5F8BC99C8ED96C4655
            2AACA50A340822825EDE36E23221ED5E93488B4E06C8F1914EF568DF583DF1B1
            6E83EC56BA6E5B5279611AF9A283CACE8D28E6C411F898DDB7577928DD8FC751
            1A1ADB9977D74DECA9E3D8C9EA7BAEF7A99D9AA3B5354492C67E8A6BD74FF0ED
            42A58C6415CDB96E4E3DFE3C48CAF704EDA9C273FBA9C5C769EF2F344E7EDDBE
            FC39717EB2584D85B9E4FDA4109ED66EC7B6460BE6F6A70C5D8012C6DF937DDB
            C1C9177462EF54BC1F5D3DB70B861F7F3FFEDE3CB75DBE49162E4AF1B35E0436
            EDC996A9D17CCF9846B15844B7D6397396D3B9FE6DAF38FB434B6C6CE837DD66
            5EB2359EA957AA19BA0CAB169B294499DCE8CE354F5CFBCF5FB8FE53E3AE466D
            B180BAA28BC6D683D4C07C346CD21801416717C29CA9A8941598484BFA47020C
            5B6BA29BC0DCFAF5EFA3B97E17EC2DA2391628509842A564FCA3E1A9A2078699
            4620866518AAF47FA35E464FA68E2B5E39802387D6E0B7DF7E09AEBC2AF6B8E3
            B2B4850447272E8999CFC46368061F3DDD0CCDE3C00232B6F50721853D7094D7
            5EE2F73F71FB168C5B26DC5C07EAE9223D6A5AF17C3B99F9DA0686F2785A6211
            AA1C79523B378CF3B7A43844DBF329914E8EEE9602C569D2598AF143BBD0D99B
            87373982DAE801F4F2E6582E059FD75223F33546D2A626F5B29219886399936F
            C47F131852A0E1C4BE7E3D3825F23C0330C2B0F21301C3F633A705C69CF87F1A
            6058A7F44A9D0A0C69DF1F151811EF6964F4AB4A339118926920956F2297CBC1
            AE9A58A4E7F0BE37AC5E355FC3B6B4643EA72D328753FACB4F058624BBCDCA49
            7267BBAAD192F7FFCD47F78EB6224C30540712253AFAE193828432032FDFA9D2
            C45D49F72EA494283678C6C2774D0A9E2C81A18735F456221CBA670D66EE7D1C
            D8D64011E7D016FB184D16A3DEBD02AD6921E889E1F95632014A566775C9DB0F
            C34CEDC27BDEF712BCEBF77318A3E14BCFED04BF32D5F2904D59180F65BC2050
            71C74CC45FFB86AAC16CC48B2D6FE5FFD61D9CC61E72A73211E5653AE3E2B8DC
            577FB9DDB091CAD792EE58B5F8647B1CD18EB58D887D4999975E3BD77555F138
            01467F10E779D50C9F06EF91D3B6E2CE7335B9C48FF3AF6666A031CAC904254F
            6A8F4AFE94CAE71751D80B351CAF255DC0320C6F9096D261F8EAEFF61D42FC1D
            A35DC02DF93B93961A41B240879A17228627CB7E5A4114F7C6F05A242DBF1278
            082D879C5AD6293463C0D765FAAF77BC5243D2EBA67ACDDAD5A70558B27F4941
            1623329325DCC4ABC82C4B7242D50B56ABC1E9EA42AB5987C548EED56B6A3AC1
            5CF7F7D38825BD612AEA2D49ACB21F4D1D528F27ACC91C7ADAA514B8502C4BF1
            513FE99FD5E3FE56B9D1326E661AC9352C619BD01B1633F14045EA98EAA62D96
            FA31AF6E60C3A7BF08B354C2BE47FE50EBC908589B2795653AF1A1DE93F23963
            F516397E1AB7AEDFF9A64F7CF5861B0F91B737483BDAC0F0321D08080C8DC0B0
            9D8C02462035294F038CF2BA9DD87FE36DC81FC9216CF62711631126524B923A
            9B6152FEDB4E7A3082938071D5EB97E38F3FBC028FEDD88BAD47B653E71852CD
            1F9381A56EBC634DC7C0086D9E83C3863515D76C310437A498425701D39A8369
            7A9E12E953C3CAA14AF1AE324DDC8051AD9178FE763183F88648379EDC9C8617
            375C94541F915E3B0182FA093F1F92FC2DBEAEEA9E2AD5D394B23D6E3DEE4593
            01930A5FF34658E2D9A9B94458C8791BBC79ADA650ACBC9A9B226546E53A0474
            8E1497362DF57710C6BD36ED19816A4E7C020CD5832A00E47D3008245B3A07DC
            96CA4D73E46F1A4E8D062BFB6ED0A80233AEA4A280E158F17811816C24D14F34
            62BC12AE39276594D1CB4397199E74023270D9BE6FBCFE1CDB5CDAA1CAE3A468
            8075C9D01440B4925E898C7D5A6038345673AE44F709913839B6EBB7D4BDD0A4
            1BDAD495638AD479243B20A391EBD39379352E8111C9310B69180486961E53E7
            5598EDC35055C313FFF1059874547B7F1003C322B24E0B0C9F273152F319154C
            E363D77DE7C67B366E7FC3A19A0BBD7798C0E8A59EE88197CD434FE74865287C
            79D15235B0E5C4C0B00269D8B801747A532BAC23DF8C903E38835D9FF812EC89
            02FCA369148DA5BCF18B70CCCBC719B86EECD5C2303517319457B2D9C0BC28F4
            54F1D63F7E3E26ED007B5B07E00E920E756731DA2220E89922725C755313612C
            CF7A60A8D587A54843B5D2A4336103C9E2987A3C20E647093590C6CD54122F89
            B88B464AF8D373DAA131D7402A5288E38C42B464CD33018915AF109B9B1A8D81
            A325FD3DD27BC5E3CB1887E9F126365CB4662BC849DAFEE40C32324654A9A340
            07542E93B40E3B71151202417AD79AB5D8504D590F5D7ADDACD8B024674DBA46
            23B447877565A84621A3801610101EBD75C4682555D66D879A8F11429D5B140B
            72197F7149B53C2977CADFAAE9C5E5BA6A37C945330908355E21542BD2E646FE
            35995E6C69AA04AA8C98EBB2CA959AA34FBDD4AA2A5B10D05B422B79FE854C56
            D125D97FADD698A33A73A3DF49CFAB7A0E3249218A986299A2E3545681AB2249
            AA3DCEA0F989038B4E725095141D351D8065C69F87C159F03304789E51573A4C
            B3475409D7C2F8222C98011EFDBF5F41FE6819471F7BBD261A35709C9340D1FE
            7B8E4A0930A6684C7BA71BCBFEF45F3EB17B6FA981311A8AD93FFF246068A450
            3A2F5C1AC3E3CD6C3A71EDBDA7024681616E6036C4DACFDC003C3103BBD247B1
            358482B38286CD13A298D75B31C954C08863579C7D67956260E887605D54C0D9
            2F5D8CC18BE7615F700C555EF431BD81743A8D4639A601DAD30023932E285AA0
            D644A2F3AD27A90252D544F2A0FC742B59E13554C0D065298240AE27E1E6343A
            0186846A292DE4093530121AC3DF15AA53CA630691163B60E9BDF22575C557CB
            3EE5AD94024691BC578051945243B526BA0A79542A155E4B8BC6D5A203B761D3
            B05A7557198625548A942593C9CE0163AECABB118FAB88914DB76ACA406419F5
            0CF79D4D11D422EE0910BFD152DE54228F615BF03D460DE9DAD42DB5FCB378D2
            7498542F5103988622A49172C7F1F597AB15B693CD6346740A2DF52CC010507A
            7E837610472609C191D40D6805EA3ADA837DB69D3A2D3042B52A8A7468F01BA4
            7F46102A4068928DA98A63C71136E0B115D532E2482D5386E57599F7575E9B86
            A79EDBC0087252E89BF732735801233F36847953C0C3FF723230A2F4F1CE8FA7
            CA9BD226E9DD5CB6EE77D7ED7CEFBF7EE91B9F3A4AA3AAA7BA1176C63D515A41
            52C9F3B2281E294E8634382E74A61B71BDD830196669B6A502CDC8266F5C58D3
            70F8D687D1B8FE7E58D15278D336BAD3675327B055AC611A41BC2A6B1C3B8DB9
            61A290E088D8BA4687CC053F02F3927938FB8A34C6790ADE3069BBDCB742F253
            350611C43C58168F8C92EA89C2D9EBF1C08E4963D0D51AE071834A193659800C
            3D9DF1DD92391B9E853C779191D42D3A3ABB16A78EA8F9DF463C5FAA65C45F15
            0F2CD89EED4946B4A5683AA9635753838CE9C94C59910821BDD6549D06533050
            77AB0424BD7EA312E799D5CAE8135AC7086290DE646C47CD6634225916816D4A
            CB91444B953CA984ADA53C7D94F06BB9919D8CDE02A0B25E67DB0768C9F44827
            51B56A2A41B2369BCC9F9F719121F8FBCD02B4525DD5179E24EDD522AA92844A
            C5AA56B29963ED90CA65150864AAB0D0C456929024E2BA2917D93573BCE28B8C
            D9F0B7769554CE8D603535A575E6269A3122A9DA5F737953B21C74574CD512CA
            28008F8B50EAEA384D8FD72589A16A0D453F1E9D900826099D6AED053A11DE0C
            CB28C7BAC43F0B3A1D849B6304493182A6F6C5C0183D17F3C78147FEF106140F
            D730B9EEC58E99CBB948F5E1749B768CDECDA3A0FDE71B6EF9C22D3F78F2DA71
            1A52D8318C061B3E2430CC8254FAC8AB020886A47D9871C835A59C66020C69D4
            A6D5A694FE1C30F4CD87B1FDBABB909B28A27AD447C15C8EB2CC13F5BB787333
            73C050B5FCA24474B11184D74A016564CA71296882A370592F7A2F666493082D
            60571974A10AB54F090C37E95162E3E93426C1B134A01F79AA6001FABA1350C4
            1D0039B93FD301AAA3BCE1C74AFCAEA3962253C984B65C9C1B8FBC170BB00619
            4587C3584C1FADF2FB7C54E841B5B45AD24C3C7594B554D57374DA480D74F1D7
            4DEE4F84B2A0C6438EA0A98E4FA97C306511126918717459B790469C96741799
            132302548B4B96B68121D791274514CA22D9BE356AB39A2054965ECE9B2AB953
            45B66A5D5528F1771C269229926540756C5A759307BCBF2702434B72BAA2C441
            B58244ECCA608C18A6DC2A87D7D85544BA9B7A2D3F1E7B003B47EAA82125EBF3
            C8CA3D55462B3ABF74DBA33C053042C964203014B0102F976031324B97BD2589
            A93C8E1FB9BC2DA4A48C4CD293E7197E8C5DB915927AC4FB6B87E2F84A71FDB0
            7005347EB79595DF54113A7B5564CC8FAEC4304FEB07FF70030A87AA985AFF12
            C7CCE729E87A4F0F8C43349E631E16FED5BF7FFEBB6B0F1CBBA0E4E4E0760ED2
            2819CA3BFB69084536485AE532E94E52078A5BA7A487F282A5ABB7C50B6B3AC0
            DC4C277AF1FE5A84FE2335048F1CC4DEEF3E89E6C1088E39085767180B88566D
            71520B275034C8E1452AA79080850C1D693385A3E161184BE88DCF35B1EC2543
            08BAAB98A670CC17BBE34133715812EEE935E5B5A7C59ECA49E9CA8E65982408
            120CDAC9438F5FA6689C29CF400FBF93A783AEEF99C6C8BADD98DD7208591A8B
            CBA82374410CB0AC6AE24658B87239565D7201462F60449014F5470F63FAF1DD
            C8EE2ED15B1A8A0E09309AF373A8CBF0F68A6EAC78DD25A84BB264A78652B3A2
            BA11331F5B8FB10347A937661929CCB8A89BABA98138A13EBA08659917A30467
            9212A3DB71AF0CDB2D5B6EA1AFAF0BF9F31622B76A10E1226293B6369E4AC626
            C529D0E9755742ECB9F50160EB210C8545680727794D0E46D31D6ADE8CC47F29
            7827498E72BC28A152D28ED29E7A9AEFA5049C0441C1C1F29567E3ACF33AB1E3
            5C62A0EAA14F34D224A3C8E1716CFBDE437414B348C9BAEB3CB6E513C4510C38
            5F8F17BA5685F1789C8E466FD20B18C1B769CCD43261969F67C839F858702123
            C0401ECE700722DA7033AD56AC5619353547A6EE8B9DD1214525758FCC705075
            52D5C59FD875DAEFDE58631C5E8EA15160E3DFDE06EDB000E3124D068C0DFD78
            EEC153A5B86BA37C73CB78F9E2BFFEE4E7D66E9BACA291EF4223D7C346289E04
            0C4D8041CFA99971A815604812E05302839E7C90E73674B48955D52C6EFAD017
            81317A29B7C80692EA21E444D1C2396058740576803960446A62AD411F5846C3
            A9C158C49B545A03E3CA95B8EC8D2B314E230A122F140323FC2160F832B6223D
            4D496F5E7B84782EDF80A2D56E86A43F3606781D3906A6E92DA3D87BFF7A60ED
            0EA583141D139D2115D54987A44767D58B5F8897BF76191E22B53B7A9437EBFE
            1DA83EB20DDA9E320A8C82428BA47D8E656848BDFCEDD93DB8F8DD2FC2940456
            52C0C3E347D5C093F1578F627CEF11D21CA24B77E279297054AABD62427A9274
            A8BA6B8DA4BBD69AEBB6CD0726EAF532823C0D6D592FD2972C439120F106632D
            25FE4B58551783EEE6EBBF0BACD9868CDE4D23A6E16A398CD979B4D7ED88559A
            ADD2E3DBC088E6E68E5971D468D173E42C2CBAF4125CFA927E3CD01BA0D16860
            51218714836C65DF18B67EFD76156DED88D188C2EE1981C17F529AD53565455D
            19FC541E327E88D12F1B847DFE32742C1F86D163A39589CFAB419034E5F43552
            D13960F4A95EDC18184DE8B9FD0930966080CDFCE447BF071C2C0B304C022338
            1118A76E4AD31CE6FF6E7F62EFB59FF8F66D5FD832DE40D44350F40E91E317C9
            930B8C9452F020CD137754B75F68D8F18948C935C14092CCD6C65CD38C5B5465
            C2CEBA583DAF13E64E9ED887AF97F5BD3054D2E1FA328FE315A4700E662A93D0
            B2E49B92D4562923D5D5039B42CEACC563F191E1AA6588AB2912FFBE14963E6B
            39BA9F07EC5AA0A66EA802E9AD5046EF670812D21082D7A5510592F371622E77
            18B322939446C6158C968CBAD37088FDE9B1095C3CDA8B359FBC19F68ECDF1F8
            84761E5DD3103DF7C50A1BADE04BE859B4075F7BECFFE0108DF16F1FA7782EF7
            C2FFD2668CDF3F06736C41CC8753C98872D8A522CDD22B9FC0BB3F7A0DBEC648
            446180F1894EE4640CE27DB7E0C89109D46DB66DAA034145C62EE8C58B03886A
            B4E8268539DBBC159449814811D28216D2A5DE741C022716A87C334B9B665B56
            F97915C3170DA3F8EB176366998EA3B2D227EFD3B987426CF99BCFA26B37AFBC
            41FD28024D51999AEA56EE35FB780F3BD00844E7F560D62CC4332B83F88E764B
            02739D37305F41D441042C32F0DB7F720D36D36988C6F168A5C2DC26EEAC62E4
            EE4751287B14EEF4187A05361D803B438741DA64854348613E463044276BA985
            4BA132986B04640599E20C6AAD2601246310F3D8F6BC3139432584762D0FB0FA
            B77B71883A6A6A710FCA250FA90E4FD14C57C62C54F2EA54BCC2965554FEA356
            8873A27A67222C1F31F083FFF365E40E94B163EBFBB55E9968FA0CB92FDA4136
            C0D7EF5BFF479FFBDE3D7FBF4F96FEEDEB83DF3D00239F234F2EC2CAA67F2C60
            D806C51B0D2F3511E17C2AAB8131E0EBBFF73974340D7465E6635F7D310A191A
            1E45FD6CA9A266C849F75B440F6A5398E60255C28CF6DC6298F5504BD7657609
            9C05033057F52173B5A6C6A54C617752459322AC46EEEE09176784F3A4B7EB19
            80213DB0260D4A7A458AF7BB38F08D7BA06FDDA0A84E593F9F1743E36B9D15F7
            B05837E23D1F380F6FFDF039B865DF665C7FAC0F6EA59FC0D8848907C6153064
            419A281D03036E4155725FF4CA35F8E0BFBD095F7DE210FCBC83B1F10E9478B3
            AC0FDE80328DDF35F388325D08C4A56A05E96784CCA6495BB1B8965E805CC142
            C97179BE53F134418960C718756B1E8D99ED956EA26997A00D93425EBD1A99CB
            9661BA100FC49D4F6FB9F1A39F47CF0EC945C31C300ADD36A962134519C10E0A
            8CB0D41B660FA6A90103975A47EEB5E7A23315A1E11DE25766E1D9230A186FFE
            B3DFC07E95BC2A6BA368D29780ED5FDE4AEFB70B69EA0B3FACB1FD276064B3B0
            1A11654F91D15958422F81311087342145D4B3A950E6DB305C73DFAE705F8BD7
            EFF0BBDE7C5EA7DCB05D44E7388A97939EBFF0021CEC2D2AE9A25BF5938061D2
            41184A4BFE9480B1C70BED4F7DEBCEFF7BC3836BDE3B699036F5F6A91410E479
            82048691233064A85DA6AB8A30A7FBD4F4E32157CDF750A39CB110F6DAEB7333
            E65934D070BC8EB3C20CCEA1133A72CF04D65E77A324E3A32B7A0166AA52A48C
            FB37B390591C8695A713B3D508ABACE61AAA855B9ADC0FC5972569DAE4F91468
            1A59CEF2372C0796B00DE958C8D630C6CF6BE2256D3502079DFBD1032BE9BE4D
            BA0889E4D0F462B157B790E79F5E6B1CF37D07BB3EBD17C1DADD88C68EA223DB
            C75B35C850BC08AD697A355E7FC7E28770D3CDBF8ED232E0730F3E84ADD1B964
            579D08BEBC1D13F74FC09E58441DEFD1C893F191268D820E65F0A50FE32FAEFB
            0D7C79CD08B9B186E9D922F6AF398CFC8D5B786CD203976072E36E5219D34811
            B49A1B971955BA8B82BE2E4BABA1839818A29BE850837EE3CE4CEC75192D4D71
            5C6695D4F620F0C22E9CFDD64B303E18F7C29D356362ED3FDE82E2B610958AA6
            46FAC1C880D4F3E38669D5541B436F41F5BB67F5247DDB50A3F7054356B66AD2
            D934516D4C02FD595CF5C18BB17FD92ED59D5ACCCDC70C45EAAE8F7F47AD7398
            A321CAD2707A46AABD586A5C082DDEDB28BEC733E9CE78E43A7A009D561A59D2
            2DE90470DD94026829948A97191A6E4675177B044E2B22AD3ACBC30BFFF76A1C
            E9994663308F4AE0A2411D193AC781211143330A0A18F5E24F01181FF9EC0DAD
            DB366C47A33084B0BB078D0C437A215ECFC2CC6714304236501B18BAAC5F9124
            AD3C2D30C2B8FBAF9B82313712A063CAC7AF9FEFE08E2F1EC643D7FD173DCB73
            1857F2A8067502A3938D9F56E9A7D98E5E7257E9176FAA3907321ADE0646A8A6
            BF26FDAAE71AE878D9522C38AF03B38EDC1352A9021B46C4A2004B3CE0698061
            D62CF4F0BD669D1E776416E3FFB8013854815E6E229766C4F07B91E95889A09E
            428B5CFA55BF15E0E39F5982DB672AF8F68687B13FFD1C78B56E84D76FC7E403
            930A18BED4E8CA25C06864E06432E879E17DF8C8577E0B9F7DE000CA6C9B9637
            843D776E814660D8BCEE96F40EC8200B3DB469D90A18B26478DE221DAC361430
            C4682C8D51D219C04CD356E32AC7ACC9A49D79AD34082B473A299467B58E65BF
            F70ACC2E34D452692B2B693CFE7FEF40E766529C52BCE2ADA6F5F05E5E14F75E
            318C480ABFC1366EB6AA317D49662E6AB516BA435D01434BBB64C633AA17EC9C
            D75D8CF9D7D6A9B18EF21E76E2C8DE594C7C8A1CDEEB47E65019753FA053C9A0
            D58AD045911F366C9E7F1EA65EC4D14267DCBDEADDA3924FCD9AAFAACA54F977
            A7B9905AB14800655113F16ECBAA5AAEAA5C8FA1595CF83F2F467D790DE3B9B8
            FB7C0E1874A29616CFEDFFA901637718D97FF84F9F693D4821E8772DA4A829C0
            CD529814F273110309306441973857257DC2E4E4F8A1C5C49ADF89FB9D75022A
            94C51F098C22956F0F7545479D27B9C8C25D1FBF1F939F7E1C99BED54839394C
            8F50A8E97D0C0683A8D4351EAE9337291927102FA607FCAFCCC6AC22CD8BB548
            2B66B463E8BA741E069EB758CDD89B1862E4A0336A582D157164EAA6C5502F49
            8EAA9340BABE65E4D64E9619E67196D24BA7A6AA38FAFDC7304DC0A2428E9E1A
            449DC62A814BA6F866CC0A7FBB071FFBD26F60D1F30D7C72EF280E3566C97696
            C06FF0C67D791FA61F9CA2A85DA0A84F944B66E6D14BDAA412DD2FB8077F73FD
            9BF0C9FB7633A2C95CE6B3B07DCD565C54DF81454E91BE91C6E4A5D0490AA5A9
            5AB8A420760D13FE2EE5013BBA3A95289EDA6D60F7BA291CDB5E825F9F87C311
            8F672EA6B3C8AA34944CCEE6798F03C35BF1A2F73C1BE145194C4D4DA123E8C3
            A39F59037BB309B7D4529ED8548386756A1D72757D1C175D3A84F39E4B5A989F
            40ADA39AE42E056AE9E7CE7A9A8E818644904B576B2972112DEEC3DE67F761FD
            BA8D046303C14C13A98D9378F9FC0BB1B89C5314CB350D25CE7B7A72740613A8
            FA63A094C4D6D48802EC80BD1076BD03B5D10AA60FA4F1833BCA8C9CCB192DE8
            9078AC667D84DA8A1ACBCDAB5AC0D5A1002BDF98C5F035B3584F0DD3200DAFC8
            209D13774858380E0CE9536874FC84C0D81745C6EF7DE4DF9E7C7C746AB5D7B9
            00D5341BA0D8C388915711435129BED78E18714A44EA1981A10AB1A964358B97
            EA2035DB823D59C3A2A15E2CE7570E7C6512B77FE106E40657913A74A032D542
            5FF705189F6A905E156331DEEE191131406F8588375328074558891E33903ED6
            73FAD175F94AA42E71304B2CD725EC0AD794252D9E01180BF9A6363A86035FFE
            2FE03EE9D25888818E45989C9985DF9155E72F467AEE85397CE6E60BF10435E5
            E78F6C865B4C61BA325F0123BA7E3FA6080C9BC050F5AD041812A23C1A20B5C0
            E04B1FC29F7FE1F5F8CC437BE9702CEE6F013DAD8B0FACB0912D4B0544837A8A
            CD2543F47E7CBD1AA35ACF5906E59E0E915FA28D9612F41AFFBEE5CBC05FFEE9
            ADA48ECB4880E6B39DB26C9626DBC4565CDDEF5E870BDF762E067E6D10FBF78F
            23EFF661ED17D6C2DAA8C3A3304E51BB88A6F2B51A23560D696302EF7CEF9578
            DBEF16555E632917E70E4AE75E9EB73B4FFDD0A80930E28C81699EE361BE7F0B
            5F6FDA7800B2FA6E911EFFFC663756D0D32FA9C4B98622F12A9578F6B12417D4
            8271BCE8157D38944B021DF7D96D288D8E91EDC03FFFE504363FEE62AC2A1D0A
            6938A4861259CAA49B051A7B65D0C7EADF2C60F5EF00F71CDE892A397455769E
            B2959DD8DA6C1C89F85D6181CDCE9F547CF3C76FFBF03FEDDD32555D522B0EA3
            21A1A99FC2272305990BD073319512F1AD46C9244B534B1D9FA2393709452DC0
            7D7C804E7A68640C80A05205CC0E1FC5FC45CB70F8C041BCE8EC85584D36F4C9
            DFFB2C1152E78D5FAC5ABBCB5A426FD6434DE9F0D77935E34DCDC7911E12A9C8
            41869D578BA279BC491EAAD4070DA1CBCF1D46DF8BFA112E9710CA87ED21E0A3
            9DB5A946586129604749229E258984B508F60F76E2D0D7BE8FFCCEF97434CBD8
            B017605A26B414A45B8DC22FB3017FF8E757E2AADF5D88CF6F1CC54D35979867
            78AA9BC89474346E18C1EC0304C6D8427881688C52C2D1F34AEB2CB8E251FCC1
            A7AFC6F58F1F442367A1E60EAAB183FAD73661F69131D4C748099B03301B52C4
            D440C8E34E64F6A0EB3936DEFB4F2F834D1D7AEC18CFDED5B098BBAC514CFFDB
            1FAD437D938EFAEC10A262BFA262A9205EEE2DEABC03AF79EB322CFA9DE5D8B4
            693FC2FA62DC73C37A6003814ECF9EE5FD15E916DAE924976A07DEF3FBAFC4AF
            BD1BD84B833E645451D749B8086A5B16F1A9C44B9647763CE23F2D3D50329847
            BB1BA116F7D954FAAC8BE183219EFCCF8791DDA5A1E9A6492C16AAE44AC9DF4A
            174979B2FBF0877FFB0A34788FA23EA8C964F97C1E037E0169FABC4F7E24C2B6
            C734B40EFB4A47C26BD2B9311AB5CA481724A9F518AEFED80BD07F3970D7DE6D
            98D4878E03434A06D029A814153DFFD301C621FEF82D7FFE0F07B6CDD4179673
            037065A6D3FCA56AC2C70F0143BA8064C8FE4701869DA448AB11DD10050AADD6
            54090314F753DB0FE1C2A088ABCF2EE20FDE4B31FEF804962E793946F7D5492D
            86B8EB22EA146A5265A39DDD6A70DF8E468FC7060B20A5692AA4023AC60B8CF3
            9DBC7BCFEE42F1958C1CC4D8B47487A5C3D302C3F6426426EBA8DFB606EE1D8F
            A378E02C58D159A8111CAEE423D953DCEF043DDE06DCF45F6F436B10F8C2864D
            B83B95E77DE8511375322531F01818CEF822B8BE7B1C18D24F4E71BAF0AAB5F8
            5F9FF835DCB4F130A3B18E91F134BA3BBA08A84D18BD9DC09BB0D0692F47AA2E
            834E06DC7C15E3D884BE9775E3A5EFBE1823EE3E75FEE990B4ABDE89AC9BC1D7
            FFE53EA4477A519996651716A87B916E4897321D46D7DD78D3BBCEC5B2F7CEC7
            E38F8FC02D0FE3AE1BA89F9E947E57EA271ABC549D773559964156CADD83B7BF
            EB325CF86AE0A143BB30628F21D5D3414FDD52190956D55645B35DB65999ADDE
            28E8A8502B358225AAD7382DCBB75722CC27137DF0CFBE08ABDC8DBCB1006ED8
            ABB4905493CF74189876D7E18FFFE1F5D8976FA09C1E81D57D4C25535A63DDE8
            0F2EC1B7BF408D7B781EC19B8A174EA7F6D1E90C4DDA533AD744A9B513EFBF35
            06D6DDFB76E158D87712301C2D1E018FA865844AFDC4C0D81145D977FEE9DFED
            1E8533B87F96573A30C007238694C3911CA96C4A690C55A4472286E80C95FFDE
            982BD9D29E88A27092E463059204D65EA7BB9DFA914C8691C1BC687A279EBFE0
            6C2CE00FBEF45BFF41F793C12023476B5AA6B70FD240652C7688CFA62A7A265D
            7BD29D2BDC574D2D68C96DAA9276307E646A883A9AE87ADE020CBFB81B4D1AF1
            017A3E63410ECD94C4F19A52DF3A758EED9A4AF4D982EFC90A8E7EFCBF90DD5A
            833335C8E32D21535D8540A5248CF14C1FC74B7FD7C3873FFA3ADC4A2E7CEFD4
            5EAC33564806A29A633F3C4DEA71D311CCDE370D931123A47308D309978832D0
            1D07BD2FBE1F7FFC85D7E1FA270FA24CDF52F507E04B57F18DEB307D37DD7F39
            8F2251678614EBFC577666A9958E60DE35C3F8EDBF5B89EFAEDFA152655A932E
            B2044679A48EFD37EF83BD49E6DA2F463D98A75253FA0B0E264B5B905FB01E7F
            FEB1B7227C8989871FDE86EAC432DCF3B52780CD0CA5251A292346831ACAC90E
            A3592B63C1120BBFF6BA7918BA10D8C766DAC1E81EA42DE8695D698B2E23CE7C
            91A22A217138E34C62C60A54129F8CD384F52AC14A1FB2A5825D9FB917A9239D
            7019B6C368502D3E9A4A6B04D134B48EBDF8FCADAFC51D47F660DCA046A40673
            F425E8E531D7DD460A75EFEEB88B56BAACEB71B68F8CE7140A6BE0191B91BF70
            0A7F7EDD9F63376DE7C1C32338E074A0244539D48D3C1E3174330646AD188F93
            F41118671DD11530B2FB4B04C60714306CE3470346F54868E160DD8881D133F8
            3307469F358B0CF5443FB9E94B0753F8CB6BBE0E67C462C4E8A66FEFA713E880
            0B724BA93F2E9AC131798302957FA4F3A0E988F40CD25BA2A3E994F99D0960B1
            85DCCB96A2EF921E4C1619573A65643CC909D11DE814FF46434391D7A1CB5A1A
            472650FAF7DB90DA418A313B5F01631AE7305AF2DC69A0309FC43BFFB213AFFF
            CD0BF0CD7D07F0486D043B8A17F12253A43E2700E3DE29988C183F4D60F45DD5
            8B6BFFF17CDCF4E893AACD16762DC2D14D53D8F98DBB818379F45456A03C55A4
            1EE8576B900C38B2FA4219FBC63F8B7BD6FD117EC0DBB66EDD363467CEC6F705
            189B0A6AC0354B41EBB6021A6D2FF58154B73E8AFE85D443F39A9822AF6FA618
            6DF33209CA8C2B3868C9FAED698A8D6E3E0F07285CB40A4DEAD0D30123935F85
            AACCD110CD99220DEEDA8FCFDE7C35BE3FB25701A31AE6519D6164DAD4C2E863
            6CEB51DA46951CAB9A492A5346E8CA68982EDD82252B3D9CFBBA1CDEF3D1CB71
            F741E05BEB37A132B43406863018FD383034231F8F63FCA4C0905EA9777CE863
            AD0374CAA394B61AA94E20E318859C028646ADA1C6312C993E68C5744A1656F1
            664ED8CDF164B1F8D988CBB3A8129BF10488786A65926AC0ADBB3FC4D4D66D58
            39742ECEE17BD527237CFF4F3E45D0F4225DCBC3F1F3A8B74C551DC4D406D4CD
            6F4809CF285E9D49A720373C9794268045415DF767099349A42EE8C2BC2B97C2
            A1FDF21EA124375ABA33490D43EA03AD1EA09FE24E6B06F0361CC6D8758FC03C
            24C5A13304E412EEE11C36ACC6063FCA9BB9111FBBE939B09677E1A6EDDBB099
            C7AB765CA0AE43D271866629776F3C80D9BBA749A596AAAC5D2F538F81116409
            66073D2F1160BC065FE2B10418B5A08BA23D8BE0FA71028A6A9E3A27ED9167CB
            B27FFCD734665541877997F5E2C39F5C81AFDD423BA57F1ADF464FF9AD83E8F3
            1662F2C834ECDC0E95B61E9A052C5ABC18E72CCE62CBAE5BB1FACA2CDEFB8FAF
            C2D7F7D4B16BD72E38B3E7E1C1CF3D0E6773062D460C43B27B69F4B6BF5275F8
            5934A8889137605C0E2D93742F4B679743DA8A0D3427398FFC4ECDD88566E618
            9E73653F56BDEE127CA52B9E8F241A43CEBD736B13FB3E7327F4D1147D266DC7
            E9537390B582D09B491E680FBE7CFB3B7157F5180153C5C8D665281D00763EC0
            031CADD1FF66E1955A709BBCE3A6745BCB8CC771A4BB1E80D3B9159F7AE05F11
            0DA7F0A1CF6F45B864310E6623CC9216AA99895A2CBE7FAAC0D8E987A9F7FECD
            BF34B6CF3630E574AB452365C69EAABB731A60A46888A70346A46ACE3E3D300C
            675A25DC0D37E929F7B7F0D2F9A4096B805B3E7133BCA311B2A0E7F155852A6A
            832E46570999D938A1517281C8A775B7A5BA3752723EBC01130D12DDAE2AF01C
            82E39A5528917E5764144FB23865A61C7585C99F74079602C9C4FD9BE17F7D13
            699C8DEEA8933A6911F9FDD971A251B80F99250771C3632FC1C6B2879B0F6CC3
            6EBE5FEB5A0D9FE1DF162A558A3073C37ECCDE45F13DB154E5FEFCA8C008BF32
            81997B461530526E1EE92001861E0363F56B97E3EADFE907F533B66E9DC2AE47
            26101ED2A04F0FAA4950119E40476F2F563FFB22F4F7CBE47D52A1230FE2AFAE
            7B116AF423FFB9E910C6C6C690AB5D84073FFD18AC2D6278929A4EBA1148E6F0
            32E4E96773927623C0B028746964253B85C0935482ACCA3C2E067440668DC27B
            1FFCC224FEF2DF5F056325F0A1F1670086D6A10CD3EA60A477A9D253FBF1F5FB
            DE89EF8E8D60EFDEBD78F2BE79704778E2DB1876BDB4AA6A12111832B14CA6E8
            16ED0893956D58BE741F3EF9C5DF82F32C3A8623FBF1C8812E1C766CEC678349
            C46803A3DD5DAB9B71776DBDE327058617A4FEE09F3FD3787C6412D30446D4DD
            A380A17575A8791846E638950ACCE3542AE5C773A6654AA89AACDE2EBA0C7DAE
            1CCA89FA466625B727CDCFBD439765D4EB18B218A966AA78E5CA026EFFDC3A1C
            FEC68324B3D2B5D0836E6B0142B70333B27605E8851C8681565C484B26F5C840
            A0A4C075D0D3F9410D533A8D6DC8C5D01567A1E7390E02D2D6430451C3F47909
            290554C1C9B24301F67D8BC2FB6E46BE99006959613672D070CF8B4766B5FD58
            786E099F5CFF027C6DD338EE2E3719FE33B0B33D148D1172A408C57A88DA970F
            60E6EEE3C008527155101909B305182FBD1F7F78DD6B48A50E2B5D590B098C3A
            41F39F354C3CB0272E0C1164906A52F718B2E08CCB601BE139AF5C89D7BE01F8
            C33FDD8EE6F83406FBCEC1E4E83416DB4BC988CAD0E6CF62C1521BCF7DF60066
            6BE3D8B6EF6EFCC65B2FC3C2DF1AC63AB2B91BB76E44BD54C4D2D94578F45FD7
            A0B0CD40B52269EC925DC8364CCF8FFB659BF4E6864CF34D16FBB40A31CF9791
            3C0230A551ABA526D0CC6E4176451DDF7CF0ADF8E6EE0ABE3E35AA0628BD7A93
            4CA980E2D63A767CF60158A31978B522F2C5A5A8CCD4D59A2762B096D3C0E7AF
            5B817F7B54807E0895DDB4A73103192F8B02E95DA53E0D9F31DFC95650F776A2
            63A084C9D9F5B8E17BFF8465E71A384C89F4B907F6630BF567252D1A905498FA
            C253F3CBF1C3037C3F2930763162FCCDE76FFCF67D3B0F5C31A617E077C85A17
            7D047CE1B4C04807ADD3024366B49D0E18262FCA273FB578F2DDD437059FF46C
            AC82172FEBC13A528647BE741B30E12065CCA3501E40B92E950EFB19BD6424B5
            A526F3A73359727D99765A572B21C91C967ABE044F524A571858F4EA73903B97
            94DCA74CD75A6AF28DCC88117B587E24C4F62FDE05ACA1419012C968B714896E
            79E7AB8CDA746E1CAB2E76F167B7AEC0BF33B26C74F274EE3C5EBA1752D7204D
            05D406C6F45D93702697CD0143921023DEF0FF0E309CA6C6EB3C0E8C2A6F74BE
            B7070D29BFC3531C48CD83D5A03E980931D09143CFF3E28A462307F6A354DF81
            97BD7A25DE7AED221CA316FFFCDAED58E7D611B903583C3D8C87FFE15174EC72
            502BD37BABC56AC90C72926B1503C34AC9F2CF415CEC4172B58C0E38A99CAAB3
            9D8D641083F4C7D98017FEE6D9F8BB7F5B853FBBED49ACEFCC9C161836CF57D2
            F61D23A3CA1D95AB47F03F7EEF027CE28E07634086BC31870355E45BE6A9D71B
            B3AA428A6B8F22CDC834B4C4C3DFFED32BD0BD88328C5F7FB854C5BD8777639B
            3E8CA03BABA27A9394D797BC319503379D448CE24F0718FBC3081FFFC61D5FB8
            6DDDD66B0FFA0EBC7C1146D22B2513944C01463A0686AFA894A9C4B4DD2EF865
            9C90A27C1C054AF01EEFC6F5E7CAAFB4AB6DDBB5020A744C93A3E3B0FAF30883
            590453D378D1F255E867787EE0B37760FC0E1ACE011A8C7116B4561F0F31CCC3
            F7A2E6CBC4F8966A08A98428C5363C922DB53253A1853AF581E491AFBCFA5C0C
            5E92C6FFA3EE3DC0EC3AAB73E1779FBDCFDEA7B7E9A319554BB2E55EC0C63636
            DD14D31302A14308F72640482084848410082D84100C26A60588713060DC6D6C
            DCBB2C59B6D5BB34D28CA6CF99D3CBAE77ADF5ED331AC9B64C6EC2FFDC7FFCCC
            33F2CC39FBECFD7DEB5DED5BEB5DD3640C262942ACE44CD832DD05387B27B0F5
            5FEF80B7278BA0568799D6291865428353C447885BB3B8E8E539BCF9DF97E1AA
            0737E160FFA942B2968EC4A42A9AC9DDA214C4B67F7210F3BF29C12460C8F3C5
            D4704C9F62244B82EF07F0C91FBD410183D9B739F86E4591FAF1011C7A7844F5
            DD72BAA7499A954B353CD5A1C734417E634ED8E023F900FEDC08E2BD165EF7AA
            8B24FFBF6FAF5AF0E991EBF0C28B7BF1D1CF5E029BDEF3440FF0F5FB6FC67466
            0D747F19CE188D63FD17D7A367AF81662D851A1FD0F23C839622454B53FC10D7
            796C81E27A2D4763C2D3D462E609DEC36805D1E438ECAE1DF8FB9FFD1996BCC0
            C50F1FBE1E63CDB7123032B466748BDCBFB51DD8FCC35F233E1EA538C19056DA
            B89927CB6AC2E0E1A54E0D7FF4C117E02BD73DA81A8D701A1CB2284B12790276
            0D969194E79E8D3E8897BD6B08EFFFE4126497E4C0C405DF7D781C1B67073059
            A0607C1D3D74B109B314487AB695782630E4E43BFFDF04069F635C75DB43DFB8
            E1B1A73EBEAF49A629958139B48236D8FA9D03833B1499F59B6B71181885A889
            24C53A85B28B4BFA96E1575FBE1787EFDA473EE74A449A7D646ABBE993072469
            11B1B8219F041A59454ED10EA4112E88556953F7508C54C3C06BD662E9C50372
            063193E1261EDA204E89D1339C4BC078F26BB72172B09B34631D568AAC050585
            70D6A9EAD5F601BCEA2DCBF0CA2B8671F5A62731B9E21CCCCF9106740DDA6CA6
            77390A8CE29DF3B0E656FFDF03C36341B504185C652B1D7ADD6994E726911A48
            9091AEE1EC335762DDC93A46F68E63767616230763D23BFEF6370CE06F3F3F88
            86C5CD8401BEBAE5D7981E4E6197DB2D7445A78EC4B1F10B0FA1B0DF44AB9946
            83179D34BDE65B145F1888FBB3F07CA6456D204E9E014FDDE539228EA3FA4A5C
            6F9A02F63194B25B70DB8E4FE2BEC98D7868DFB6E7054640C8EEED19947E779B
            D6EAE4C115F8FAD707F1BFBE53C2BE9DB4F8E561E86E14FDF10C8E3426E9E790
            94D43030BE76CD65B8F0F5B45FA420EF7A6813F691D19A4D9F8B03B42DA55E36
            D7247F33F6EF161823F4E60D47C62FFFDCBF7DEF9671370EBD6719E62818327B
            56C08FD102928BA171B9418CCC96699306B1558B65D87A19AB6A48B4B85144B1
            2D9449F85A312F6C36E1D20B5B380E62A4116C7217B89394CF07630D72AE0824
            4D4BB18693E44BDA374B02DE5FE1EF044E0EB2F8CEA7AEA1A0935B2507903497
            639EDCA894398C728747DF7A545A1CADB04AD32557C866D20F5A1F8AE0F1FBDF
            A3F8CE99A5209C82DA9C85D9B96101F172FAAC916FDE081C24A13CECABF6370E
            F0D94CB3BF9D28C2C8D9F8DB5F5F8A1F3CDCC6589783AEDE14FC191739C7E00C
            247ACAC0B6EB36A3F87889DECFA7E169691FF56D47CAA5CDF4288C4BEBF8F31F
            BC13576D3B22C1AD4BEE4D8B36FAA4EF1CC0D6270EABCE1AAF4BBD97FE8B9339
            4B32AFA6378254C6C1EAD3F338E7FC3548D36D3FF4D434EE786883ACF3D9D19F
            E2831FFC205EF8915708E0EE2223F9D0A88DED4119153E60E4035ADA9F75070C
            6CBBE201E89B38AD4EEE8D439F15654E2B35EE41CFFC087FFCFE25F8C447CF25
            ED9D834971089780F034E60A09E6447206B5DE04E6A349EC22D5B47EBF83470F
            343091EA429BC2B353394D3C192031E5E2010ABE315390F6D6685C0D07B5CBE4
            0BC5E919F3D7E2473FFB30B6DCE7E3AA6F5F09ABF66171DD1A9C06E698AE5910
            BE6033E522DBDDC05FFFAC17774FDBD8992AA29E35313D9F9724CA201F823A0E
            9C247313B4C9C37154198D66803D7D23EA0960EC484A62C9A1721D274D79B8FF
            2F7F83CC58055B77BF5BEB0A67A43CAFC5786A76EE255FFCC18FEEDB4702C933
            30CA7A1ED1DC103C2B27C088C42D1974E2B11013307C06066B553F420F1841B2
            6D2C00A312E7AA475A74A7A22C8DA35A2C0D8D730DB1055263CBF604182D8B6B
            AB9E098CA14606A746D2F8D997EF426DAF83FA3C9BDF41EE284721B90AB3B6F1
            0C6030BDBBEB9E259FC1B57548FBB8EC1B11CC15EA9835A7081C0605F14B259B
            D24DB73776F5BDC006476219D47B55933D1708F9DC343421B1FE9FFDE2E57898
            E2D3BD69652C83591703F40F877E0E360CECBB750F261FE3038D7E72C952884A
            3F838D4C7E1281B90FD197340818BF876F6E3AA21AA9DC017269805557EEC7B6
            4DA3642948F1F8DD08AA69E101E6DA598AE650A630F37D6F79194E3B0FD84FF8
            797CF7666CD8B1859EDFC2B9175E88EF7D2C8DE1E12C46C91A3E44B7FA9B7DB3
            D849179EEA8A2248A5D062D2B71018DB19184F52CCE72D214B40C030B9B5D814
            CDAA277F84BFFEE419F8E8874F87516D236DA755895A5C25D7A6D22DA9661DA1
            BD7ABA5AC1C6DD3E361DF1501F1C9652B8D3F9907F8414E648154FFD90D6B331
            0C33A0F5693714AB477D8D3A13CBFD0C57FFFC4338F42470E375F762E7C3E74B
            098D4DAEAFF4E1709116B39E24B98C7E0667BC8BDE7BAA8199E5B47FA4646D0C
            CBFA179AAAE9B04ADAF6D980A11BAEA26AD5D3FF3D60CC103076D4EAEBBE71ED
            2FB63F7E70168D5437DA5C7E1EEB8513EF468489D6B820D0E4667CD2F264355C
            A6743054CF77B4C5B96E5DD1D77019B7E58AC6756B45F44413C8B77C68AC4108
            5932D18639A9DAAED0B7B3416952E0E712CA3D5DF110256D1F396E6E2919C894
            B3B8EDFBB7A23D1D51453ADCD925AC7905614F87D01FD5D49C6EB18CFA429F88
            9D9A4290DB8F977EF24264CFB1B0C73B8849D34591406E457B71C6D32DB46E3D
            8CFD37ED44BCD54542B99CDE9D00D30770C1891E2BC3CD57F0B2CFBC08B314A7
            EEEF6AC1716BA4018BC8901FCE669BDB6227E91AD5FB48C5CE2D93AEB3A81F93
            3589628AAEB20BFD17FAF8BB6B5E8A6F6D18133A1ECB2CA05E8EA279CD1EEC78
            72929E87B36D64B5EA29D5A4C4FDDEA4705E78761E272F5754A44F6DBC19DBB6
            DF86175EB0041FF9D3F7E0A24B96631B59902709263B2A556C3C5CC4D8948326
            F21223F2E730850ED74B9E4ADEDAC62B6E42624B533AF598A151D74F42AE7506
            DAB4F735E3265CFEA5D7E29CB79BB87BF718E6C95DAE1909B89AA2B709226575
            80CB8ACF21603752725E3A79525379048185EE9106D27B351CFCCE23888E2E95
            5684C06D4A6BB1132C9746B776E107F8EECDFF1B4F17F9E0712F36FF1BB9A193
            9C0CA1B537C885230196C29D78036D1C0196B6B0EEDDE7CB04DE03E63CBDDF20
            A5CCD62CC113B661D8CAE368704D1B6FBE0043A358C90E819114602CA1EBAE16
            60DC21C0D8B2EBBD5A370123F67CC098A3C539E007433FBEF3AED1DB36EEC234
            4FB7E85E4ED6A10776AC4B80114958020C6168E0208D345F108D09304C12E264
            2B824E1B46CBB20518F5B9090A182B88979B32F89E81A1474CD4F8E4D5E642C0
            B85898668C19E738FDAAD2BF0699F83C9FED1CA8C09A8E61EA6E725E1DE56AE8
            9995A44B69556ADCB8DFBF000C35642438061841BE48E0D88D17FEAF33B0E635
            5DD85C3B84C324F2E5649CDE53C0793B7C6437B6F1F055F7925B54A0BB594157
            4E735F22B81A0BB122AAC611E82FE942FAE22EB4CE48A1BB272DDA9CC39406A9
            CB48DD1360D429F81660B4C89DA2E89E97A94F6F934BB71383AF00FEE63FCEC5
            3F3F34A946254432989F8942BBE1800286C7A7CB79050C615051543497BC288D
            A0D9C2B6CDB762E5521D9FF8E49BF1B25728B64C8EE9BE51DA8227EC198CCD6A
            98A16B6A663F1CA307F39A226C636A50CEF6AC3B181C038C0ADD4324B20AA9D6
            9952115D4EDF893FF8CA6558FD3AE0B62D7BC98065281C372916CCAA98094535
            DE99972412478AE20A76163667C2995D651BBD131EBA0E59D879D56330F790DC
            90AF98D61563A447F1A1CF0D47048C2B6FFC53F014EBF1F10A0E5F9BC1F68D45
            B8650E5F29DEACBB5239A0276A680563E4A7CEA3EB8DA720F7A22CE6FBC84271
            0699DC4CAF9D413416390A8C6C3B2CBD380A0C5E67D748FDF780516726427AE6
            3B376F69FEE4EEC7B0AB449AB17705DC440FBC44373D7C17337A09A78FB40E1A
            6AD08AC3AC6FBE9CF60B6B0BE382CBBC99C63F460B3271FF03C0FDE4D8EE9D14
            8A15CB232D64EBE4E21842BA942C76C90D34C86204AC62CCD0C96201E776E506
            1785F4D0C2719B7EB7948698E843844D24D855882D30ED292444C31910A4C922
            4598F9715423BBF0DA8F9D87D5AF3F058FCC8F60BFDEC01C13E1D2FDAD9ED790
            3D52C51357AE07F69076AC0EA1DB5F4322199302168619D7624DC7E6903EAD0B
            FAA9292C250D9E0D2963B541A97343FD510A539E18854F2E11BB7436012661C6
            E0B436D2638FA3FBE501FEFCAA0FE05F1EDD86801B83C81D9C27C067AE3D8CF1
            478BF2B970689D29FE4AF3A71B35449387D1B3660FCEBCC4C3796FEAC2D9175F
            4C5AD4C0042D4C9582FF07B757F138BD7AB4E9534CD594F4B249C2C7890EDBAB
            09011A77CEA5EC18D61C34B1FE5F3722B695270F2DA327B2A43CE6147F8E404E
            CF179DC66B3EF442F45F4496698AD4CA80469F41CFD550AD37DC5DCA96872BFF
            F9309A69A0C801C6CE531E4561D530A64B2E9C4637966CCE63C7F7B6A36FDF6A
            D5E2ABF96491B8223A2355C3EDBE6FE2CA5BFF12D77887A57850DF7E2A9EF8C5
            389C8D5C569440C13354E540745EFA56022E4BC9C7907DA9852597C628E89EC3
            B4E5C1CDF58AEB9498532E559D8161286F21C2E762A4B825C6206F2558EC4A7D
            EA76A4472BD8BCE7DD46AF19F31291DF021824BAFA96B9E24BBE7BEB7D77AF1F
            99442D3B4802DC8B603130CCA8E267327C65AA9E071838388209AE6778722FBD
            9F6215870499026EA6600199E9E86C5E05674C48C417380E1828FBB4215D48F8
            5958911E423F9BF6BC8C2AE0D6475F5313713AC0E04A50A17AE478452FC28BED
            27EBB51F1FFCF2EB917F511E0FCC8C60C46C633A3B247C4827CD05E89B73B0E3
            5723987F88A460BA0BB960155D25850E151CF37BED37290EE0A993DD2DD56FCD
            7FE4E7631615A625395C0546E9FD7A9F52E5849A6CDF000AD9C3C8F795A19D35
            8B777CEE0DB862C336F29462E4B7F7A2369F46EA3F4730F6C89C0206BB852130
            E2D13A016A1497BEC9C05F7FE52429D13ED49C43336EE0897D073172A88E19BF
            1FBBB2AB5064D7B5C3FDEAB30BE6481A9B8779728952B26D61ED0803E309C4B6
            286054A19AE44FF74A3C3B0BA3F45F7E6D12F6700D632E3D4B6F464ABEC99F0A
            7BD0638AA544232BCFC4D51EC5984CCA70DE66F45FF65252503CD37D190AEB63
            D8F59DCDE83DBC0E86147E36640068341C91E32FF90EAEFAF59FE3FBD583626D
            07664EC5AEDB815D77D2DACDD468672D71A59A98819332E1E769BF2B53C0451A
            86DFB206CE8A39CC73E6B0D025F291987F6E6088E23693FF3D60785E40A698EE
            8DA4EEDF6EBDEBDB776EDFF387334616CD149339F7291A198BE9384C69A1343B
            24C871C571CABEA7A4F57445751823FB956FB9E83E348FCD3FBE0178702F0A7E
            4184C6A387AFB3897373A4AD7A85C3B029A48BFE225EF8905CD84C40238D17C8
            74D11452D90178A4599A5575B0980A7479BF1D1B15EE250E70382B157754274C
            4BDB0233BB0F5FBAEE0F30D717C51D87F6E22099E0A9C42A55A4A6CF8A1BE8ED
            72E1DDB81BD847BF9BEB139786C11E674E57661BE15E67BF0A3F4380F428568A
            2AEED77A89EBE37C2CF35CA1C5D493A6C4B33CAAE00517ACC58B2E4831D90A76
            C57763DD9BD6E20B0F6E261C75A35849A25DCB2172731D95FB6679981D3D2759
            5452D3499EEE1A9D829118234BB112EFFDD2724C6539B02EE3895211473803D2
            3B28ADEF46599564D88970B25687383DACF16437865DBED5875C6CBEF216E85B
            D9E6A6A5941F060528E44E811515D7B4490F76551ACC0C062627AC02DE271ED3
            9056F33D2C5A830459B8CC2C34AB88534E8DE3D5AFBE0C77E4986694DC63F278
            B7FF780BF49141A538B9C982E4C26AAF1212EBE8925FE0DA5FBD177FDB521697
            4B73F4391FE337CFA174CF24D29598B87AF5C043940199A2BD2697DB182863E0
            823CD21790355CA163DF20440B2743CAD53A77EAE9C1023022E492CBE787C058
            42311803E30172A592E44A3DBDF79DD640346627B413234373C9179DD535A1CE
            FFDE431BBE71F3935B3F7EC4A72099E20B2F497E7C92C7166705185A080CFEE0
            7638F532D26110343421308891E62A509C3034D5C4D66B6E85F6D03E246BEC5A
            306D7F06AD5C162D0AA0524280447B6C78C234D7EE00436AAA0C3911B6CC6E44
            29206DD4C8778CE5E0B40D01985920AD5E748E01066736386EE900A3EE3F854C
            DF18FEFDE1DFC7365AA01B76EDC2014BC35C6AADEA25A1808E5BC7879A79ECB9
            7A07ED2A17B3D1B3962C241A147F500C55B54918B436C94F15B101BAF75A4951
            FD9393CD8E1E9F41ACA0D5AFB72B3295CAA3D82AD39BC46B5F7F015E49F1C0C0
            52E09106B953970CE2CB0F3E41D236883239CB9A9B42F36714EFDCCF4C8406A2
            0E59D0799BEE5EA7CFA3B8263E8A335F378C777E7E1D1E9D2DE19189BD304E5E
            834364292B5C48C9BD3C0D452EDE3099D0417119C88403AB33FECE5F00C6D30C
            8C2DE4BE90C0D95268C6490C8A892A4CB5D9A52CA05D54D6D09EA635A7E0BD1A
            90E5A1405EEB91FD6D981504E634E766E98366F1375F7A274E3F1DF81A19542E
            A2F5769175FDE576C40E0F89A26C4767248D97B457A05EAD43EBBF16BFB8E183
            F8EBBACA76D9F32D9CD11F43F137148CFFC70124277DFADC2EBA259B5621C575
            D3147A913BA48D00FD65E42E2F20F382611C66B1892A60B06CD7B2BF2360B4C9
            996C93D03B14F16F989ABBE0170FAD7FECCE6D0751CBF7A192E85575075C9FC4
            CCE6890CF9CF9C5562EA3E271CB8620817A9AF1F9D47CB65C82B4961D88F8E62
            F73F5D8B6C6498E489BDCD2172DB3412F85ED270CA1572166640FBAA5C241C70
            22D4E4E40B6B919830E6099B63100EB5A38D4A3163263B55644A8BE55109C0AE
            B8721D3EF6D1AD74D11AB4EE49BC8C34F5C7FE751DAEDF3685BD818D9DAE8379
            77A570DFA6EC3ABCD90A7AD2031826803CF2D3A7808D4C8046BE7A3B09DD2353
            4E16CB67AB45021990B1E7C5F7858504A1EF481E966A31A78055A5E5E284CB14
            BDF57CC29F9576D1183A80F77C650DBE74F721381CF151F0DAAAD20D5C378391
            FB49D078F88C4E6AB06288CB62E44951787BB1F4F2617CE81FFA71E7AE29D493
            0E2A912639300EAA6D13854281C0D054E4C69C08F1159F30773EB7B8071AF185
            D9C1E7D2236DFA97F5486F28C3248B556B7A88C57B09CC14EF05243CA4A58FA1
            EA3726E4DC89D3EF71B2F03D6697B039D6E9092D1276CD9A80911BC1B5DBDE83
            5F8FB771EDDC245A957E54764451FE35B93E8F5AAA1CD81817C099761E365379
            26FF19D7DFFBCFF89A5FC2489BEE25BB0C87B64FE0525AFF9DBFDC84E9FB48D1
            4DF4A09B2CFACC4C95D48E2567128E4B2E59300BEBEC41745F9A8675BE8F9902
            29620A7EE6786A509EB5842EE4DE168FD78E3B927C68713121FD6E90E299D5D3
            3E1EF8ABDB113F5C2660BC3B3E60C45AA9C889A36F8DA9212B3EB3C01938E862
            D94D1B9EFAE8B50F3DF9894AB687DC2BDA65EEFF26372660922E9EA61A53638B
            1D525932E1868585D9438E03C64964EAADAD153CF9AD9B909C8E426BCA32638A
            6BA92205B22C79050C1C05061603C3EF10959A8A810F8B7AC0E967AEC1B3433C
            8AB98BE47AB8F8C3770FE081075CECDEBA997C7BB276897DF8CC575F81B3DEC2
            C567070418A3310BC5C40A6984496855643C1D4E554357D1C2E5A74770DD9747
            71F8FA47C87364DA1C5F2C56CAEA154DCB64655C5AE475C63F6A8A2A33E16B12
            34B63A2321157915D2DE6EC4B353285C60E3AF7E7219BEBD61020D9DA9F8E3E4
            86D1F57E4AB1CD063E69270B155B26B57CBE6B2392E39E8E099C4CC078C75F66
            70F3E61114292077536491B364315A8AA45AD782130223A25A6670F27E72E7BE
            F520D24F3795466E3117554E00CAC0F0FD1C8E99584CC0606720174B93CBD794
            04087D3A5242713A4601F541BCE53D67E043DFECC24FB7167123F9940C8CDA2E
            0B95EB0E50049F5387BFA9A2CC07815320659182DBF56DFCE4A77F837F0EA630
            4331E5E8581B4B56AC44F7AE162EED8AE1CA8F6C823742C2DC1C408AFCD12479
            20D3ED319CB56A08FB0EEE473543A6E6EC084EFEE05A147B4811932B5F2293E8
            76F9C2591BB4B80A98DC5C920576FD6C2BA78051FEBF0506818227F8D84C784C
            01F62387272FFADE1D0F3CBCABEEE288914633DB059FE20D9F394AE9C3B86E9E
            3FB8411643660BC8041E83F63750216B5866DE456BD23701ECBEE609780F8D93
            A9EF153267DFE383418A198E9F00AF76259CC2C9138BF50596FE4092B0DA318A
            AD4DCE5F26199700995D085F6F616CEA5E0C9D69616CE26E5CFCC72FC347BFF0
            4AEC26D7F9BA470FD0669056A7C5340712284F4DA1D73E0381C3678F75F47525
            911829E16D2FCA617E1370EDF76FC0F841BAF95A147A254A6E4B8C5CBFB40492
            75268820B7CDF35D49899ADE3C096A80729A0247BE0F216EB049899509DFD358
            7A69017F71D507F083A7A6304FFEB36F0C8249CFF33756B0FFEE8370C6F9406F
            1096AB824F3F328F6A740F5EF0AE53F0B6BF5989078FCC63C4AF61CE8DD166F7
            A0D990381D51CEEC46483098795C63A67435E8C6B52261C58122703BF5107989
            FFB603F947AAE41E64681D3328240B28B69F96A24EDB1B94B21EDB08159339AE
            16D851ADA1E9C26A544B2529C8754A144890C5F8DAAFFE1CEE0B809F6FD88F19
            3E09B40791A0306DEF4FF623BD2B4BEB45F7133F229D92563D49315A0D7EEF35
            B8F286AFE30E32AF8FB626B0A52B8B745706C6D808CCD1799C9B391BB77F7E23
            5DA487D431016B7E0A5DC90CCE3E6319A6C82DDF52DE857A640499174D62F8F2
            8B515A7312A69224BB792E05A258B1D99650C9E2DF7131A7D5A3D2B5A5B20ABE
            FFEA0E244609187B0818D1582BF9DB00834D5E8523A2441C877C74FFE7C39B3F
            FBAB0D9B3F3A93E842359985C79424560C89AE2124AC84A4DBDC2E6D0118ACA9
            8E07467AC6C71ADA9CB93BA73072CD7A182E05CFED2C61282BF5F71937764260
            F097A7A621C8BFF5101A81E8676629B491325328DBE318C80EA2D69E829E1947
            A9B111A7BF6E393EFEA557214B5ED34F1F98C7BEC61C8A962ED5AD7E9EE2A346
            03E9D9B5E29AE6BB2324A80E96D67CAC302CBC6C39B9DD24E073A4C127760207
            36DA98DE350D77D243ABA163DC0924ABE2907697B302BFB4008C066F10571D73
            2F687B02B1740DA7BF6105DEF1F76FC1D53B2642602C41719ADC946B0FA2B9A3
            8DD6BC41DE402F526D8A9BCC0809FF3C66FCADB8F80367E2BCB767F1E8D4188E
            90CB5022ED6E5BFDE23773631D1F7FF038568781C1079241C7B7EEF4DA5BB2CE
            ABF6D033FC742F8637917B3117E5E9A6E08E872071E819C0100F20044654C680
            907B4B96DDE54137ACA5B5712C3B3D8DEFFDECC5D840EFB96ED33E928F3CE626
            E230B74731F3F33D189C3B09DE4C1933AD4DE825B9C97805D9AFF469B7E2D357
            FC15EEA5FBBDB7741033E7AC416964122B0B7164675B888FF5A1B41ED8770F3D
            073762D5E6914FA430D0DB831FFE30810F7EDEC5DED60ECC8D5F89E8DB5E85E1
            B7BE1963A60D3B1912C5F1342972A562293E23E5B46F5E42A725A58A00E3BE4F
            FD5A80B179EF7BAC7EC3B27F0B60786272EC5A0D262194B3748F1C295DF0EDDB
            EE7E6C3BF90EE3A4119CDC2002729CAD449EDC8B382D2669C7AC9A8813B75536
            8AC9CC1C32655E341C4A4882B69CAC83BFA98643DFA1086B8EC0554B51403720
            A65F4A36C465823ACD3EBE123112C6134CACD099C3AB796AF0BBEF201DF7502F
            4EA1271E43A33583A6B713467C166B5F95C19F7DF3AFC009B5DBE7DAB865E314
            A2DD7D982561E681333E0E8BC6F71BABE4631A7C4DA38A353D394C6DD98065F4
            FF6F78F58B5090813B145938645148732E275792BD9419729A380DB9A69A12A6
            404D9F93EB8CA7B8DD87474373CD55022BE95978A0E638F933D39938BE72FBE3
            98B7FB90CE2E17F6FCBEF85E9C7F9289170C0FA19F3CF85C4D9D8C47AD98B49E
            1EA498E62005BF3F7E70330E501CD0CEF52248C6D512B5C318A793C8E32C4D3B
            C48329E33E84ADD1ABCF638882CFA1C63CDE7FCAC9583AC02C7F4DF9EF743B2D
            673FC7137DEB647D78A9B9A08FEF8763113DA33E6A3F5DAFE691F5CFE470D5E4
            12ECDDBB17855E1FD5CA2856452DF4392DBCF5BC8BB0849E6740AB639EFE738A
            674BC83116B42980B770EBD3756C2839D89E3791CA25502BCF201725B0CE7B58
            E76571EF176F067612D88FA8012556328AB7BDFD7578EDFB2C7CE3073762C9EA
            2A5EFD7B6FC28FDC34F67A4DCC45E614233D093A97B7735B8DD460113038F6EB
            9F278B31E9E29E4FDE85B402C66F97AEF56DA6C9A4009ADB10C9976F244D121D
            647EB661DF67AF7F72EB27765408CDCB4E21A7398326B9575A34465AB6174553
            393671477B5660C45D137D3C0BFB20F0F4F71F26479776AE922059EF176004CF
            070CEEE535D4582B04B6E4CFC5F7D1942D418DCB295AE8EFEE46BD394D81EE04
            2EBBFC4CFCD117CE01D3A33E4CAEDC2DDB3663D419805EE8C1D8F434F23D3D68
            3BFBD510447B9568943A456D1A598D60C7169C7FF27258534730B2E769AC583D
            88C1AE38CE2A746335EDECB0CFA7AA2ECA495F0EAC5692F949F069AB5912CDCA
            84C3751961D72B67217172270252EBF4C8B4CF017EB67D1453B53C9AED34595C
            6055CF7E5C726A1AE7D25AD213A0DB9994B4275784D93C17511BC4FAAA8B1BB7
            1CC0610A9AAB899C646A64C28AA796008B32DCC956384F32AA80C1836BD09C42
            37B912279396FEC0BA53D0D5CDD34B2AF469759C55CF490A2B088ED59CBAA67A
            F9859FD83030394B72918EA3C5FEBCC5672D019E74F7E1DB7BFAC47348E7DB98
            2F1EC44AC3C4DA640CAF5B772E3986355A814921B9764B6791C002536491F6B4
            8A7864AB8E4D551F932777A1446E221FF6B3CB55685B18988DE164FAEC5FFEDD
            43C897A212444F1DDA8DDE15BD78F15BCFC0E9170EE2956F343145E1C677C9A5
            DC41CF3CE54FCB7EC6A3A6CC8337E38110BD954939296054B172DCC63D9FF80D
            D26395DF1E1836F3A44A16480D1F0CCC046648EB3C51C345573FB0E1E17B0F8C
            A25AA0182391459B47715916CC4C17EA715532906A06028C88CE45811E4A4975
            50C79CA73A69EC95A514F6DFB015A5FBC8979C8E53605E90BF4BBD153B4F1E8F
            A732843950B23E611B6C3D908601F85132F17E43C89DCD8823C13F334F4C0487
            51186C21D1DC8D97BC7405FEF4CF5E8BB56B86B09B84F0B16205BF3E3C87AD6D
            03B3B902023705AFDC26D78604AF441BC18C3EEEB86898E6A95914478B489869
            34C8B4F717866510E81853BA92EBC5E345D27CB657559AE848AEA982DF485A7C
            DAB8AE66C24D5A9A70B532CB1FDD1E866799D884DE989CC5BC5BC568D65514FE
            4141A9F33ADD0BAD41BA1D20D9B4C52AE9AC5C98E98FFE3D4BCF5AA3F5ACD2EF
            E21408CB2C89B68D6EF215F8F3C73435A987C748C75C0785A61AB9D53203A1E9
            69702303D3EED0EFCD4A1D6BC92D2957A651EE560374E22DB5FE6E6451F2038A
            DC824FBA9D1A5D3396A5F827B130D390151957CD4ECE165119EC156B13E7CC3A
            DDBFAF99C23F958A49732579209BD1438AA85E2598B0680D8EC81F3DAF1F7691
            6B6A9AE81B505379A50BBA7A107D250F2F492E450F598B6FBFF7A77250935C62
            A1776980F77FEA5CBCEC8253C052B76B7A2FAE6AADC61EA789A25112CBC6E317
            3299B49CED34C9A398A3808F45BA778E8031E1E0AEBFB8534A4208181A01E3F9
            4B420418B6AF2258564424A0D3B108C8D31CBA69CFFC476F786ADBC7B7CDD74C
            922AC4FB86A5C7A0C4E999DE2195367D0E60A42326DCF10ACE707B30FFC024F6
            DDB819A9990462CDAC3A107C3660F004A1CEE073B24806ADBA9ED085EC80E9FE
            0B190BFD3D5DE02968C317A8B112EF7CB5542B9335E0E9C155EC751BB869D73E
            6C4712D3B92538C8FBCD0315388FCA85986449B274FD5CAE251A6994E78AE572
            301A1E52BE098F4C7A82DCB34A4ACD132783004E950F6A6A8946332A1D18904A
            660D1D8BA81AAF29E651F5A2927FE6ACCE494C16129449CB4EA2A6B5D05AD787
            2AADB55FE162C8011E83241A3F49829BA7D7170874B55A49CE42381D5B62018F
            F0C11A455724747298EA91AF4E80604D5DCD77AB5AB110185D2D35A49149D1AA
            316D011856BD8D78BD8535F1248AF313A8F71B6209A235EF84C048E8F47E5A93
            64248516CFBA3038D11145895CEE588A945D34A4B87555A1353776720B3E7344
            33FD6DCA9C105929CF179892186EFF34E6AA6421E26BA54A969F79F2302D6E6F
            4EAA624D7B0AABDC387A0FD5704EA40FD63E1D5FFDEACFF0D2D7BF081FFF3459
            725E32B78E2D8FDD27F77943F6E518D11AA827D54C460646369B12A0B2048E87
            ADF7BD7335AC208BF15F0746D05CD0D4FCD3F2B1405AC083377F74CF868F5EFB
            D48E2B8A03C398CCF6A2C4A74A0374974C3A14B8C2AB16A32733C89432CB758D
            84830FE2D81DE616D028B95F6B22365EB22A81575030BC86CD7CA32D33F73ABD
            229D81869D8D11EF4043387A4C8DF40D3415547130CE42128D5000498B3B4A1B
            7280DEBF93366433B9287B4A7398E1D48DA5C818100E8047A7D0838FA70335C4
            528A43C3916E9DF9841CDCF3F51DDB0E59B421CC81322D95D31C9EFABB1FAD1F
            BDD140551AAB9FCA462F5C53BE99639C872CF2932886441634E678CDE793989B
            F3C805D0A5E9476E53C6A8B9E22B699A73745D64562184FFD2CDAB498F7C029E
            70B82DA84116C8C17C86E21C2B1C194512186F32E1B14E5696404FEEE81CB3C6
            33CB4AC35A58F7CE44A1C5FBC1BF63978A1F4F6AF48E8B451A91674E3A5D7C2D
            997B78822F2B24CE688607C5ECE4F1E7A76CAE9CF0B03C9EC6C9E4EDADEA5649
            FB0902DDDEA900E3B353E43E353131D0AFF6032A59606035174B50FCC3D54B01
            4A8DA7A411AB7BF20C74933B7FDF57EF472FB9013B7F738656184893EB1FAE2B
            54F208E8C889929BE70446D35684208F8EB54EBFE689AD9F7D70AEFC7B47525D
            A87575A912028E4469A37920804CEBD4A35292D1E48C075B813039C2431F57D3
            CF1790DF7F11E169ADE5C8C456D3B04E080C840BCFA37C25FDC6057264ABB909
            9E177F74A44D318F89DD6E057B6C0787082563E467564815B4A206DA1C979C00
            18200D6B5A8654CFCB496C33CC26714D3F815F4619B36BC97C969E2FD35225C8
            931978ACBDE69F0518D1054EDF05B908C1C1617910A8927C0116536A32717B82
            5CB80AB989E4E62D0043EEF9BF068C18C706048C62DA1760E8F934B95E6D5855
            AE388848E5874600ADD2FB78365D508E0887ED31C2EC07C7ECC7898051EFD4A8
            2D1A07DC990D2ED7D04FAC92433C1030826705460FC5A1A7E42D2CCDAB517F07
            A66C1C2ECD50384ACAB290C48E9815AEF3A48A19FDA53289CD23856CC4DAA40C
            C610716CF44C9D82E8D3C0FACFDF48C89A4573FF9BB5583E2A150DCF04466734
            B500A31D0243FDC10CD46AD8A4CD0C12CE79DAEFBB0FD5DFF09F8F3D79D35395
            266AF92E1928AFC5FB9556081B433CB95E44B88944DA58E3B2C3C702DAAA21E1
            3550A0D7A6295EE08C47317AD23140E8FC5C2050080F0C79635CA5C71700C28B
            7F92352FD769D80404274240A04032C2343F8A78DA0EA781CA5544A0A2EA8143
            D2B7769FAAEE40AB29F54249027A9C47F472FC41C0F5D9EAF0303B5795706B91
            4005A411059016E7F9174D9D553F3B1A473FAA49B58EB074D0AF7E7220CB3588
            3C53A861F3097E1C8D56108E2F85281D0D6AFAEA4217E6023D91018FFB639878
            990BFE344E03B7A4439067D5092AC95224EB1ED699390CF62A6557AB7310DC44
            893BE435F35861F68390D23478F67D394EB05BA106782E603C9FC54838EAEF2D
            4E13335B51D8FA9CA0B5666FBC402E7596E7AE6B81B8AE7314A7D548A9D8E45A
            3253622DE80E67B1CFA87BF0074411B7B9EC9C7F678E48D6B0BB7C21963319F6
            27FF033852C5CCF6B7D1956D8A9C961C733F1DBB17E9E8B2E70206BF829BFF1B
            DCBD052CBB717BE9E3D76FDEF1F18374E33C58C6D70B523B153155B5AD4B8223
            2DAF9629992BE68835628A0A334242A637E691F4EA48BA8A667E565F794260B0
            CBA4069F8743D7239ACAB3874F90ABEE0D8199563DCA1A4F518A4AF30D73A676
            64B5030C2D308E01462D13AE009B63190CD912E1B098D75627178487CCCB79B2
            1AD0CE8390D982F8AEFAA980FBDCC0581878B8A06A431F3EFCFF065982682649
            C2DA261751A310CE449DC315AD736DA1E37B6E6044D567A6DD96F42504D1B674
            087238A5D1BAE42CAEBF72702A017E7840113357484026E96DF38183B2AB2D08
            B27C7BFE0230F8A71ED612FD36C058FCF5DB0223D6C6098191A1FBB11A3CE744
            251598C4822D618D5EC727F16D63600118C259EBF609305A5C9D684CA3BBBF4A
            3ADB476BFB1A9C4B0AFAFAF77C53CE75469F7E8DE654AA99FECC291505884543
            EF173DA7C6742D9E1CAC218486DA08FE509E63502169B42960386463ED6D8FEF
            D8F5E096CD180FB264B2D7D1EF15D5BD1333D0129F5653BDDE5C106897542F28
            A77864B198AE3D2E42CC6B1A6B1EE7421DB770B6A380D189013AB2D7798BD35B
            52C56F554E6191456899F4D1AC6158A3476481243E0983CA08FF8DCC5A87C4C1
            0B2A6AC83DFD3947513C170D7243955BA9C32DD5D09DCE88B9D7C9DD6020B8AE
            AD66CE398AEC8079648FB923CD3FE6FE032969D1C39F868C0BE6747824A42DDD
            D03B81DEB50328921BC5355441C64085012A0C12BC669EACD35150A8FBEE94D9
            F730B794C674339EF02B35E2617A9BFD09CD008FCB5BDA8EE2828C867306D4A0
            A4894960F7F43426290E3323A72852F6F05B46762FFAFFE7916B31A60B46B113
            9F05477F3EDFFB930BC050D5FB5EF87ADE0F5E77B76C23153325B0E72F765C6B
            A435ED84268E48645E51BD7662392DEC2075A582C82345B95FB262B9561EE922
            F0D58FFC08B1993AA60F7D44E3F471B3A3CB4297DF3BEE7E9F13180C0A8EF64B
            24A025DAA87604C96D0D5C72EBC34FFCC9837B672E9F4D9E4C663BB6000C879B
            6819180C0ADD463C678A40399EAB342C73A072930CF3C913D8F47A704260F881
            02464710BC8E4BD2F93EC956C101E39E80A1370CC4C8C76760488BAD611F030C
            8D41B1081886A9E8620C8F2932B9559216B35845758AFCD09979B4F61F50C46E
            2D55E22125AC0B564013CED913014304B9F3DD09EA42A195F7BF7610CB2FBB14
            25F26FFCA40927614809FE4270263DDB8B5CCBE700866329E2B146423F061885
            1239623B4751B96F23B087A24F1E6DC09C39261F2EF12091538F4AF1F1DFA249
            9E47B27DFCF790D10E5F6B20AC7FEB4CE2F2D5190D7305048B04832B2B24D3A3
            AB6B97F3AAD014D3E1FBC2D897295999A93E3BA3C6EA36CEA29790E577625816
            4961DBC6B76A15527EA9FEA44ABE84D7F73B40E9C8230BADA71D65F5E73620F2
            E2D06E56A5EF40D74DB47D5D1A5CD82DDC3736B7EEBE4DBBFEF0CE89FA672662
            BDB08D1869AB0C6A896EB83CE62BAA869A47FD12F9EB0E4C9E114796C3370A14
            8724D00AD72BA6954FB86EC79B6276AD24180E4D7D8B1B6A38ACE499954D75D6
            205E51A0345039E984200D37DBA1C56136132F8A3EF2B587C726D1A5F329B38B
            F15D23D8B9613BEC7D63526F918EE5D4E9B2A33AD638FE764200B05B27057B6E
            F7510911163F2FFCD97199747590E9AB6C1507783ACF9523C1E567AB5F3281B3
            FEF4CD14C4BB68A634D4C85C719AD5EB3442F96A9CB13ADF59B40EA100E5ED79
            D5904382C27E773BAE8B45E2C35AFE7D2F61D93A5CC7C8CDB7038FAF876E0628
            346B6896475188A728308F85777F6C00BEE0027662BCE7DAA05071A967D59E71
            8DE35DACE3BFE2AE7A6D5B572E72A8AF0407AC30D3565C4A6F1A2DC51FA66512
            321AAD426EA043D178D64E485A9927D972D220E265954B156D519C5B45D31F13
            C59E8EAC43E9501169DA8365F95EDC78FD3B8633AB568DC1CD2D14A4FA9D6F5D
            B5CF9E1018DC56542ACD2397EB9206A3C3E5BA6E65D36271B6CFE29C7FB8E19E
            9BC6A25D434DDA8C7A2C8D7AB247349F0CEBE6296A468384D025A0877426C890
            92887161AB2035699C1818ECB274167DB1E5E82C7CBB3FA712F065123926426B
            690B2E170B5729716260F41F1CC5A1CD3B30F9E466609C6C2D73ED709711F775
            16F92E55A649A72095CF11844551E66C046A1583BE13028307D82F06065F6331
            301A67EFC1797FF75E70BC5DE79A39BD2507732E6769E4D9CD130223D72E8655
            CE478111A16B3330F8CB98ACE3CC043DCFDE690CB59AF8BD8B96E18C2E14DA55
            C4BA9398709A92FF5AD09841705C18719C067D263042413E4EFE83E7F8FDF15F
            090F2D050CF256690BDD88BA1F4D9580797C18C1642CDC3ACE0AAF12480F65B2
            1525D13160A7EA2811309AFC397C2E2A051281E89388475E7360BAC8678DCAE4
            410C0C67E879E7E8B94DB4A2E923DCB01F437E754BCDA5578078063082C093DA
            556FE1967D0106B7898977A0759C4F1E786F2A1091C01C22FC7EE3E7B7371FDB
            3F8560F834D40B2B71987C75C7B090CC47D1A837E9C66248D153D6EB7539848B
            F2606E9D539DEACC6D41452CF46D87FF5E9CC409167DE3E86B23E402B28FC904
            68BCAA1D97A3CA4316A33C0B2F0C5EE521742C6DC690232C36C7E711DD338743
            BFBC0BADE92ABC6A5328FB79100CB360185262C703CD120A1CF4CD8AC197303C
            2AB7E5D0F51A56721130C2FA8CCE904EF9B5AF50CADF3C7893672EF351BA6088
            5E77F6769CFB960B105B91C004DD6FA5AB897282345EC6220BE588B3AC793C47
            5053CB1FFAD28EAE9C7B3E3517210CDC508E55035910510A229F25619A69E324
            BADEC8ADB7E0032F3807EF3C73C9F079C098CB3D2409FB588D1F2AA0CEEFDCE0
            B898E938418FE2C4AE923A6338C157E87A76A85D3B8A8F195224AE728F85A41C
            FC868791F2F9CC9E18286524BAC20F594D34B50F81D10A95589794D771C99DCC
            DCB04655AA98E97A38D8685484D93F6837A0512CCD3DF48669FDD780C1DF2A65
            6AE08017642A31ADFB7BB76EF9C6EDDB46DFE02F3915B5EE01B499C190FC997C
            4143BD5A25DFAE219492B1784248F71AB4294C88D64EE29981C562602CFE5D80
            67A8AEE705469A19C7DB61EA3382EE6280D8540B634FED02EE252B7180AC44A9
            AD7C2F3D83789046847CB028E2C7002300CFB68BD18AE8C700A3164B9C101811
            8ABD384C50BEB225A2240061A79AD773E983C85CB81C2F7FD799D8522205B924
            C0B4EE900675C393C7F80981A1E91D55FF4C608816E591EDDC963E3683E5B52A
            EC4D1BF0C577BCFD452F36B05E6E3D13CA67670F8EDB0BEFD8FF7D86E5781E22
            BFE7FD0A701C3016F6555DFBF85390A0D3D0D6799DEC825A7775B6930A5FE7C9
            3EF08C78F59557498CCE369913D21F0FBB47FDD96EC8583DAF512587218E66AB
            26092301864A312E5E202E14E662B270A3458347C262BFA8DA582B82B1D94938
            B921FD678FEC727FFAE093F087D6C129F463C64A508C6D494943244E2E44DA80
            EBDB085A0D39188CA493F0CBC79ADBE07810188BFE1D76A3699D03279EEBE037
            C277AA34AC9436C8A1A53A44D30C027CA5823E2D86E51498BBDB26D0D8780095
            F5BB70641F05A3FA2AE57331C9592C8FA8C62C2696305644F51C1CAE63A07FF3
            C12773B9F20606420AA0B64CF3BDC5771EBA5147B7582A78BD48E877ABB38F88
            9C1D84BC57890710219FEE6357BE0EF74DF15CCC00A3D106F917754554C7E398
            ED282C070BC01053CF9A90931C9A758C147332505CE61040D538841CDAD2DAE4
            5FD750BBFB7E5C56E85EFF990B5FF2FB6BBB319688E259BF3A7B72BCC23FFE80
            0FCFE32A3DDF97BBE8FD0B07BDCFA60483E7F819AB2E7A8D50571C4D67F39204
            6E680975B977DE1D5E47371C63AE31A99EC7D5083E92E4723A0488A8A4C01662
            8C7054E831C060D4F10C366F216DA89C775D0183BE4A9539A47ABA71D836F4B1
            08D6DEBBCF7DF74FEEDBF4E94A3C8B723A8764A18BDC0DAE7B6202665BF18D26
            2DD8BCE2B51A6D5A666123C4373CDE85D29F090CD6267EB88086570FDF1F3D16
            1851655E35D2BC41B1887E338DFEA28BBDB73C8AFA1D1B8149722DB5343C3B2F
            25A83AB97E9699216D62CA5C080686B078BB8AE6474C38BB53C2EAAE2F08B67E
            FC4E1D070C8F336650DD76111E93C6A9672EB7F702D90C743F4117398477FCCB
            3BB1873E6AAAD0C054D2A598C193C19041DB383130601D15CE45C008BD2204A4
            10EBFBC7D0B56608DEFC38968C4EA074D73DF8D22BDFF8F6375EBCF6E749F399
            6058ACA88E8F11FEA781B1383DAA2F5ECACEF76257FAD97EC6EB472FB0008CA3
            17F54971296044168021C99950DE787E4EE0B5C8382845C7C0E024115B626692
            D49C808FE275681D05D8B1D0524BE285E7CD81E4E1F92C402AC2F843CC085AAE
            2335527315D6735173A4EA9EF6EF37DDB96967C94133DF0FAF772582AE5E3562
            4BFC3E1E37CB073A9EE4A39FB1C041B82A02694D51E9C8F47A75320BFF287AA3
            6D15693B9C3D61B2E94847227826B88B74DBC6002995BEBA86E6D3FBF1F4F50F
            C0DE76105D48A32B368CBDADE5E0F13411CD5027E61D6BC81D69042684D5BEC7
            F67D8682EF73ABB113FE7FE4B89FDA318F25B5510BE80E6F931DDED838DADA34
            4E7BFFA5E87E9989CD910A26BB3CB2C0A14A7393028CB8735471F8069FFC860C
            804CFA201D77A103CDF5577C5947915344D23A4A733C1E2C4516919EE4E061F8
            DBF760B811E00BEFBCEC8DE70E38BFD1D529625816A16E500FEF3C2C3E7986FC
            779ED2C3F3C410CFF3A587CE923AED597CDD637F2E54082D7A9D6AB9B7C3DD30
            17AAF017DFAF26322B7419F2FFAE4832A796A23AFD26361D601997E291B73947
            9E6525C61DFE5C49A0A9FC9166078E54B7468EBFB2E186A07017FE20C0F094C5
            08A211349C366A3CE7394356822E36DEC6C01C30F0C3DBB7FFD3E3A3D32F9F20
            5FDDCD7521BEB40F5E8207B437A43F37DB9D41895DA1F064FBD8AF45B9F00E30
            B8BF753130D862D82AB075F90071313038462260C4EB0DAC2110B4778E62D74D
            F7C25BBF17C67C14DD7E54F86FCB7821B9461470EBCA22F80C0AE65032128844
            53F06D15B41F930E93CF568D5D79AFB32ECF0E0C84BD861E170F4AE18746AE6C
            82E2AD383859B4FFC84644125504E715F0DA4F9F85F5ED3AA6BAC9814D7AAA38
            482F9C181876080CEB99C0E0AF06A9493D1985CDEAB8390F637A0ECB9B2EA61E
            DC880FBDF8227CF80DC30B7E7CA01A33D8ED634FCC574FA354A5161C1B6E749E
            D27F9EA9A7C1F18D1EC70323A2AAA504188BCE6B3A96A403BC6380D1E95DF395
            C25900C6A2A0FCF893FA0E30A4625BCEEB62ACF25D6E2F6315CF0E69A48D9E7E
            0BB37C0F51C74582AD0D97840830DCE334239FC3090FC75101E0FF54797804A3
            BAAA77CB90AF16A9CC239E50C1E8C481A964DFAAD5F55F6D2C5F7EF386037FF2
            E0FEC9D738BDC3E85BBB162639B64DBB2996666E38714C36C40F83C9058B299C
            55812AE0F31430385FDD797069C7D4997D262AC32B3BA93766B8608ACF6CBD2D
            D662EF5D8F62E69687C0A4AD098D5CA43AB9225E1259BC45CE16788E030FD1B4
            C9250B740AB439F0D2D4C9BB6C203DBFE1AA402F1A309180A44C301F6F753448
            987D0A7F76B6C4B5C383AEB68AFA480E12290BE94C0C095212D5AD7BC08725B3
            A7B4F1FB5F79199E8A3430D117A01EA985ECD129441C13715B05DF2AC4B30918
            7559B37C459D5714339E6AED0CFD91648DF6C8B3E0D0FB62968936798C8DD12A
            22C924CC4A0DC1A1292C6112E5DA36594FA1D10CBF034795BBF0EFF9A794C268
            6133E57138F0A32706C6F365A50C3ED7095FA26E3D7441E983786FDBF4737139
            3C0F95E91433B291E4566026F1B675D5A6E01AEDCE272B573B2CE5D1F4A22A99
            E1AD89921D0C86E42CAA113491CBA55120B95B964CFCFA1D975DFAC5E13876E7
            80D94113CF0F0CD5751D3C0318D361589287ABC68ECDCFAB8685642FAAF5084A
            14426C3A8297DFB90D1FBA6BC7813FD83F3727A3BE9690F5E8EAEBC5BE547B01
            18EC873330C40F3F0E18F2CD753C5E5833145A0DEEE73811300A2DB276FBA7B0
            F7FA3B010AB8795862B4AA0BD9F150F7C968CE5EA880C10402F45C0C0CA60172
            E4C487C018F6A71C030CFF28308AF1E68981015543A691E1F603EEDF68A8824A
            EE5BA107E9AD79A80573A8AF74F0CABF7F0DF665AB98EC27E51E94617477C3AD
            69270446AEACCBF59F0D181197B4A8ABB356864C688BAAE62106068F97884C4F
            C374F6CABA3220F8CC484A5DDAAADC857FCF4D5927020645F527147CD7754FF8
            F7889CD13C373098CEF444C088D563270446B453154CC0E02484461E4EC48A22
            1A5946FF26A5928890F5A678B259C71252207FFA8E97A15F83A537600F44E51C
            E3B7CFBB2D7EAD1D4667CAF763BDEB2C7AA58E6A838C5CCC021F136CDB513DEB
            FE4736BF63CBB6B14B1A4DFB022D56C0918BD7CA89B9665970633C8F3BCC2884
            7215693784FDC1F59A2AC3938EA1E6D9A83250486833D54ED6C1120D50E634B6
            14BDB4D1452EC3E9932E266F7C08871FDE89C621AEF9E84734B506D1F98430F2
            65B2794C976B928ECD67BA305B99248D4ED6439F9346217ED6A9B171248C9C94
            D53BCD29696E328D59946A7BE1F55445887A1095A0ADD1AE49BF483BA50A0885
            3F966436DD8985B8BB8E5E3797540F9819D8874AB1483BD88D57BEF6DDB02E7C
            1146CD0CCA3D09D4AA58608FAFF3A804AE878A34C59274053194CB6578148BF0
            BA04AD94F0CA16C8FC9BE424CFB54A14A750CCC4E72CB4A491460B1633CF3BBE
            4C4B2D3ACBE4F3133373748F75B49D167C9EB64981A8169035250F40A30B1A46
            9851637A20F255FC203C1E0E54ED9B1699A0D792023198C19DE221C352E5FB9C
            93273734928887A540BEA2F967D206BE514F0D0B5DD248CBB5AA7C4A477F77A4
            2BC008BB1CC313372E9FB13D95E3A78B27C9A2C74C953598638E4E2FCCA86AA6
            8C01E0C83A601798535E514B3E571062A89F110284C11C54F4B3D5A31AEDFA1B
            0D9C6CC771FF3FDD83C2540B3BB7BC474B7002E477050C9F0486CF68D4812050
            A4CDDEBE13173DB67ED79B9FDE79E813B7F288DB644EBAE722BD8388F5F7499F
            80EB2BED15E73911E47A3130B834A06E046AA6B3159372F64C13C700A3920963
            0CB25E0502C669130EB6FFF046CC6D3CC003D9845B5637962246088A6A395483
            06560C9D8A8324FC2902682217C3C4C46EFCD147CEC41D778C60ECF061645319
            99BF7DD6696BE81BE8E901CE3C1D5842B2554FAB8FE3516F913032E4BD6445D6
            296A53C080985627A20AE6A6C3734133A34ABDDA8E1AA17EFB1470C396198C27
            62723A6ED0C51870B6154854D8648DC855B3642659C0DD645841E71424842E70
            12850F0A3D12F614A93CBA77316E9532AC761503816AB43AEC0FC9EF73A3D302
            0CDB6D2B6008209A62D51818EDB6B288BAA6F8AA444843EBC872C0A3D8A4918C
            AED5E6D1D0B4D911DD22F72D21E31EEACD866AC7658F439229B60407BAA19E6B
            6056C588BC5E0C8C5A342C9ED442F328C9529302E1884CDBD599BC4D022D5FE4
            A3D11F563B4BE18126A11F7B3EC2611CB1E4F75256B40818BA49EE9B4596837E
            96C9BDE7AF615ACB352D0BF77CE52EE4271AD8B5F5BDFF83C09083394F9D7B68
            9DA02922406F3267B3C5BCB72A7350AA439F9BC7C05D0FEDF9C0CE7DF3176CD8
            BEF73507C7C87E91B0C6F3AB90CB0F930F9E108DC5B52E3CECB169B6E1E4C975
            E84AA01DD350D6DB32685E52A152B14AC1744669E2A863939BE262E5FE0A1EFA
            D79F00BB6761A49881BB8F16BB07B1461E964112DE954379AA88A1FE25189B2C
            224F9BF5CEF765B06DDF416CDB7B13FCCC24FA4E4EE2837FF621AC39AF5FC805
            98F9BB44C10AF776B49190F6163E56E2DC80191E05CD856B122610910E978C95
            18878133E1FAA5C29F3C9B92F79B87C7DEBDAF8E592E06E43452A9A904DFEC98
            504DCAFCFBD89A344948F450E03C25049CFC764978EA291B656E8B25CBC3E79B
            C64C19D96613DDE5BA08F2617B482C5D2A3A2B0D635C35CC6509018181DB64D5
            CF40E856C53159681853FBEF079AA4645AA4A8A2A2BDC9E16EB5E57D319D5C15
            3EEFE132078AD1A4FC8584922D29534173D319A79CB92C3EDA54F7C3A533522E
            C323253C6E71D62589E0B494ABEDD273DABA0B3B41EF256B6BCB510301A5A246
            B2F9214FAF580F9649B25C0C509F5D42960D06057D07A626899F2801C3B7C865
            CE2F158BB7A252C14A72B1EFF9D21D481FA9630F012363F9BF3B60B8AC4AF4B8
            80A14DBF6A3821656C782EC58A74B28CA1DD63B860EF08CEDD7508176CDD5D7C
            F18E1D87758C8DA99A061ED963D12B9790CBB5BA0F855583D00B4994B8CF3A59
            0F49094CD11095101846088CCCE307B0EBCAFF04A62806CA9D82568BAEE7F721
            E5F609797050C8A23ADFA24DA020979E6BD5700C2F7D15F0CB5B6E2317EB31BC
            EB23AF92818F2CC15CC0CB1A7FD3C85E141B0751236D3A37DD2B4596F1524DFC
            69CB8AAA19723C2433CADD8C9E6C703A24717765FC1501236447E9F27AE1D949
            B448D34663591CEEC9E00059CB22A34F8F51D8A0ABA24956D29CA5E20630D2A8
            A9E91698FA4D871A9BACF959B13C2972A5EA8D22CCE124E60D8A5F52AA4482B3
            73FDFC737C5AEE77221854E722AD23D0C94D6160704C21919654F43A2AA60B1B
            C2DC30EA63A649D1C05C1C49FF6E1A6A38A4CF0CEB0E3D3F01384980669054E6
            4BC825B3A2B43A2DC912C252F0EB1BAA0F24EEB417343EBB6AEA945FA7E73664
            DDE2A69A01686B0EB9910E9A3C73914C70C310260B441BA65A6723745D11D238
            B1B7E247C20355050CBEDF0E300CFA6660B4B383F2D9CB4B252C2F6BB8EB1F6F
            1760ECDDF63E2D1B0BFE078121FF0E799FE4583EACB414524B5F8AB36C32F7DC
            59C71B3AD04C486ECE258D61D362D7E92DE556DB9C2F5707AA4D3BFFE4E6CDAF
            DA7570EA82F15AFDCD735616D3A409EAB95EE8DD0368265328A754D15C8C5C29
            8304A99A50599A2409118F2AABFFEA118CDF741F22F51412E632723F78C6C732
            C4B5558AC291C7F4926F1499CF82BD9297BE9062F44D1490669EC2792F4DE3D3
            DF7D0D4659CB931776FD960D787C846290956B30ED54C96C27906AAF8659B361
            D51DA1D1899196E2EB56C864B34BE839AA5533D3EE0495BE68B7D9B09264F991
            28BD4EB12DB6ED260EF7E9984AB9A83351178FB3A5F76B24B80C7CBFD4468CC0
            1F9B232179EA20F22440DDA9AC04C89A362CCAD2309A14D78DA1FF922194121A
            76930B62C54CF413A6864996AA8F6C96FD9B6BF78826ED6ED1E6BBCABDE29F7A
            C0D92C5A538E29B8FF24CC2AF91CFC72265B0E684D58098B5C1203D31955FCD8
            D4E873BD229A31520849127A43B93AF1C0826593D26A9230D623D2E39DD062E0
            03E5A0EEA275B0008DE291668BE2A57A89C04FAE84D320ABD196A46A82E25306
            B241AEB6DE5D80CF7CBDF4F9AD90C8DA36E7C858BA4238D72425E1465D891D24
            CDCBB5664642A85D2346340446A012063148ACC1432CF9119785C0B8EF73B723
            3156C3DE1DEFD7BAACFFA9E0FB5980E17A4AA3311D8C27677014A472956A987D
            48CEF1882866EF484A1F01BFA6C9C46FAE2A2FE296DE621BFAAC8DA12727BD91
            1B1E7F024F4D97E0A60B6891366CA4598392B04462422C703C300E7DF72638EB
            7720D626EBE07493CFCCBED04988FBCB15305211A101E92E2C4779D2C6CA0269
            D3E256D4F1106E7BF04F105F47C686EEE127F7DE8A31DA7C73783576933BD28C
            414A4662F515286EDB43375913BF9A6F5A323BCC1FC3BEB2A3FA29D2C701A315
            02A330AA08C2B8A3AF4542619FB904DA49DD98B7685DD264A6AA75093CCD781A
            1E593606466BFF0CBC1BEEA3BFD9AA295FF8F4D7A8B4B0C9B418D3E87BCFC568
            93CB59EA1B2457940050F7912F35B0E5EA5F4108AD2A19C5055CACAB4A0651D9
            615384179EDBF0EF64C662A8E438EBC5F41B5C4712CE4A499FB70ED1C12E64FA
            4DEE5345319843D323F7D6528AC129B7918D641027574FA3FD6897294E9CAD62
            7EE208304E0EE7E41235B1D626DFB059517DC65CA681B0598BCF8964262259BE
            9E2EE88383480CF623333C04B39769489AF0637C4AD446D9AE91BB6593389862
            95C492C2148BA1E98600C3256048AB4A5C53564653C1DEB25295BE817B3E7BEB
            FF0C308ED6BA68AAE30F1D2F4ABDA6495A20168B42B5164B351D69E9061CAF1D
            E3C39F5464B59CE9FB7E0B2D0AB01DAD29F2143502193C325E29E69128CC3BC6
            807EF7E8ACFBDD3BD6637391AEDEBB86F691DBEE3411C0180FA189C6D00A9BE3
            D3B4D84B4B0176FCEBB5B0378F224180089C7E34795269741522F68098E0B6E9
            90E623A0CE3491B53268B60F21999E41FF6936AEBCF952214EBCFA81C318F1A3
            988FF763DA236723A1F68BB5C11BD71FC4A6FFB80933644906795E6199B4579B
            009ECBA2DDD4A40C84FDA04CC8DFD4A94E6DD0AFB912C0ED5A1D9E60CF0A1362
            EFDBCEC6D04B4EC2939131F97D269B82D7B291B1F208E65C74076485B6CC62E7
            95D70335BA778BFEBFC980384DAD79A246CF3785CB3E7F3982E11C1E6F551133
            D3C89749AE66DAD8F4AD9F081159C0BDCAD134599F3622E1699AE1C729C826C5
            E5C7547D97CFC588BAAA7B90823CB2FB862FD640AA7A39FE4B2C4576491F7217
            64619E4D2E622F306650046536D57C822A27260AC817A3F07695D1DA35056F4F
            11E5B171B833357461891C03B4A11486AB6B6A6297AED2F7CC37D02625D770EA
            4AD9B2C6A735E91AE84576A80FDAC583C090E2F02D92ECCCE9F31016B50E2F0E
            1F44B3F04554598E2F15A7AC91D538EB084FE0A24B2E23C02E2F06B8FB6F6F46
            6CA44CAE941A45F63B03869CC692DBD4668DC0A4C3314D025276AC7814A5C969
            05092E21D90A4FA20ECE61A851326DE6C4D5BAC8674F98D76CDCFED97FBBFDD1
            CF4C99FD48AE3C07350212529E00C35A040CB6181D606CFDFA35244863D04912
            0D0CA39D594E8B310CBFD68534B92AD5EAA464B7F2893E3449EBC7CD2A8CE418
            DEF447E7E01D9FD271DDA66961CE1B8BC449032FC30C977871BCC08A86FEFDBE
            DD25DCF8C56FA344C17A213E049BA3685AF948AA1B55125CA6F7116004C71E5C
            72E963939F39BB223CC8237515AD61F0BD1762CD6B976353A4220212656203B2
            1A4966259FB131C003E27754B0F98A5F2AD3CA168981113D55357453CC056B06
            6FBEE25D847F138FD41411766CD2436EBC868D5FFBAE3A516FA6554A6CDE5938
            663682B858739D0FC025A3A8C96037A9E6E65E7E3E2B2050F84CE9D3A14EAD93
            B54F92A49D9D42EEE5CB113D2B85D97C0D015B3C7E2EDB427ACE4073DB2CDCFB
            77019B0F434640511CD21D64E154C239F1A23434F2403A4D4EEAA0DD08E7B028
            5297085A4CC0C795C46CB1980CFAD265C89EDA8BDE610B8D38F7F1CDA245C149
            10D3C3BA34D547A385C0700918E24E85C08886F44DCB2B3696CDF9B8F3333721
            76609E82EFF790C5D0FF6BC058FCE590D3A11AC90DF94F562B2CF63BA625518A
            033B25D90E3A4559259E502AE793475F268793E1351CF6BD35211CC73FDFF4E4
            D5376EDDFCAED9649A043CA936966BE9C9CD486B29D1CE2DE936D4C5A71F2EFA
            D8F8F9EF433B548155E321C14B51B5C86270AA120374F1180121264332631A1F
            62CEC08EED869F3C884FFFE83DE83DDFC42F9FDC20F14031DA4796AE405A5305
            B37CD014253FF98C996D78F01FAE6066010A1CD8E925C1056977B320A7D68852
            B04FB108E768757155D482F05C0739D474560A8B4534322EACE8AFFFC26B5178
            097047B528A9CBB68EB0273D03D38D2149D632BBB38EDD57FC826E8AFC69EEEE
            412F79D727B16A824BDADAC98CE1A33F7D3B66BB80BB4A45D8AD285691E2D877
            FD06946E79143172F79A95063DFB12F2C496C0D453E4ADF144A4A4A4309B9C46
            E433045A4F2B9D23F76716C9EE15A8CF57958B458266A43342F2DCC769545AB9
            23A911A45F3D84A1370DA35868C9886116CC7C9041B0D7C6E1EB9E007691ACCC
            53705EF3C84E64A59A827083F1761119522AA5260969AC870277526EB47E016F
            3EC98CA19BE492B764188C1F483A0E5A92AC99256C09489EB304A7BFAA8059BA
            56ABD7C15CAC29992B9EE0A46B09A173E2C9B1C21EC2CA28CEC07004189CF564
            4766D97C13CB663DDCFBB7B7224EF27260EB7B65DCF1FFB3C0E0331056884503
            C92FFDE703D7DEBA73FBE5450206A759C1ADA7EC7BC6524885C06893F93E0618
            9FFBAECCC78B9166E3197115B39BEE8FFC5A9E2AE9D0EF24A5E793EF4E2E903F
            450B7D102E01E31F7FFE5E8094F9CDDB7F4B6090C217603829BAFF3C3C0606BF
            9607971030F436692C4F1DCBCBCC4136E70C8CF6F21302C366FEA4056058328C
            31B7AB7114182E5BE01E5AD1D5020CC798869B3D828F5CFD07028CF51E05A575
            1EC7A063F3D57722B6F100F9FC26CA33557874AF9AB65692177C6EC4593D7197
            5820754B9D5930B520D3F827B3B0CC04AA14D3046D61FF865518404F914BE4CB
            98CD91FBB48EE298B7AC80B69A54774165D35AE3E4223F4A56E2BE8314ACF1A4
            5DB220E462F64075A895C8767AE4D216BA97637C862305920737052B9597D899
            69CB38535D6F70BC5A9269C1918427330683167DE610BD7EA985BE0B97217F5A
            0CD5BC2D2C984D231C4FE15B020C2924D4C48041264F7480A16BBF1B60F84133
            ECF6523DD0EA9791A325C3C754CD1EF7133C91B87DCCF522EA4890070A2C4085
            0F8DA6FC007FFBFD1FDF72F7BE4397CF2672F07B48183224E099216816B94546
            5C4C663DA64EA03374D9C1928FA73E7B15400F6A3412E476AE404DE7A1868364
            5AFBA17B590AC2152839EDD92243AC150EA095DB8F7FBCF5FDD84F56E4A1E9ED
            028CBA36208D46DC1025639923B3E8227F285B89E1912FFF906C38217986EEA1
            D54DEE48AF50F553A0412F2480F849E6D73FB6C7C0EC2C0C176FDA240EA3E471
            8DE2AD9F7B25B2AF007E5399C69164409A977B580C05325AD7CC34D0BDAB8D03
            DFFA05A293148C3778621FB986580B55B832812073001FBEF60D98A347BD797E
            14312B8B423983ED57DC046C3A2CE71F5C1D9F21C75C6B2F139755B7288E307D
            34821AF3B8D1FDD1B5A4158123550277C915DFCF4C2C4732E8C27CB38A9E68BF
            1CBA9598A1AAB74CEF1F41FEF27E9C77E1E988C654126266C3249EBE6D0B30E2
            21E10F90125042CAD9493E91B6AD2A05EB15A528296837BAD815F6080C11D44B
            65E836B701F0DEE6C97BEB268BB2049E9F962CA6C84B725A148A7E660AE7BF7B
            3926320EAABD3E66C835656A50CE1C6A81A90A0F65FE3C9799D047D1EB789664
            8453BB9CAE2D36B174C6C3FD14632860BCFFFF756044E490F088EDE02FBEF99D
            071E1D9FB9643A46E6B9B7176E6E98620CD2FC213058E33D03189FFB1E70B024
            C0881B2B516560D8FDB429031464E610F3F4B0ABD626DB378148EE20ECEC3E7C
            EE963FC286E211ECD1667F3B6070F0412F34426038B101D2F47CD29E3B06180B
            D4A39D3E88E0B70086F4BEA4C58DC90A306CEC2760980C8C7A92567D882E7DB2
            ACD3F1C07824D24089B4617CB20BB507B6E0B5C9E518A0F5732916B2CB2D24F5
            B450A8C673D2772DC36862057508596B2B7A5556AAD313C0BD376E145731ADF7
            51D8C8E8F164B66D8D071F0CD549F7EF41F42529BCFD3D2FC25C49CD0FD97FF7
            1E8C32305A3DE4F5D0BADB11193AD4A00B33E34BD32821DB93404F7F374E3963
            3956AF53CBC282CC09AABD9B2BD8F2F408E666697FAAB4FEC96574DDA864324D
            F254ED806ECC1B23C9F670E1272FC068A20167A98949772E3C474A499CA4871D
            0CCC4BC5C070D23C8053EDC9EF04189268D2167DCB660732DFF958968848C8AD
            74B4515E574422EA771DF73BC26313B912B5161A0C757E3C4E82F5B12F7DEFE1
            A78BEE4593E886DFBD06ED42027E2182683C8E783423C028274D01469234597F
            D9C7CEAFFE987C5B32B915133102462BD223F483D16048480938F322D90F9FB5
            65037ABC0A3B77187FF1E317E369928E914411134CEC2CB3DC0CD1B46285E9DE
            FB08184B4980EFFAE2B748724C246612C8FADD04EA41D8913EBA5E37EA142CB3
            D632650C581032DC695296E970338CA5762CE1EC1360BCF3EF08182FA7D8A03C
            85916C806A9C7BEC638A8B8BB3A72130C6BEF10B49B56A0D02A2BF9CEEEB3429
            EE742347C8FFDF810FFFE29598EE8EE26E6F9A8051455F731556CD036F2400F4
            45542639E5AA2416731373E7278F2FA0B00383A7A85180D272CEA7E9CCBF340E
            5CF7BD195C73C52D306B7D48FB799E97453BB54C180DFDBE318A9B8E207B410C
            9FFCD4C5D8FE1459845A0B0F5CB311E31B27C8BAAC22CD9F24A7CB413C59404D
            6B483B696EF0017CF07FBF0AE7BF661D569C2E8368E97AB5902C966B0B92B8E7
            E627F1F86F0EE1DE5FEC87E9AC41ACB50E7E7B891465CA7C1CBD89F9E1295CF8
            F13331BDC4416D88271097D4C4DA485E5C2971F2E9B9991485B38A7E965C322E
            10755561FDF2B9BA72A53E732B12FFBF008674B09B040C137FFCD92B9EDADBB6
            CE1A75B2F0BA56C32660A09BFC4461B9CE0A304A89A8688A0E30765F791DFCCD
            A4516602F25757A16DF42960F84BC88CC60518C26427A7BBE46127E6D1EE99C0
            3BFEE17C54C920EDC08981B1AC3A83DF3030A6A2028C9CDF439B304042DF8FBA
            4F5A9A89E5C86244198038B6C1874FC0C56D793E60F0F8E24842806185AED491
            10189156AF0003CEA9CF0A8C7BFC19492DF7367A90DE0D4C5CFB20469FD82A45
            7CDD71722F2B657814D09A7D1468F76A78F15BCEC7CBDFF262D2A8640D524954
            6A2E05E9065AA498C748F17FE52FAF46CA1E46ABEA22175941EEE75254748F2C
            DB76329FB358F986A5F8C8C74EC1E30F714B7103B75E752F9CD1008560584EF8
            2B146746AC245A89400A3D2F7F431D9FFDC7F35058064CD2B63F3D7A18759747
            3907429E71CAD233513AA861625780AFFFF575281F4C2019390F56E424B26865
            39548D5AE4B22D99C0DA779E8EF425E420587529896991C58A723F0BC533068E
            5A8CFF6F80D1EE08348E127EB206D11C696ED216B59804E18B02FFA888187E29
            FCB362E2F039C9BCA89D918B24D9931873117BDF67BE7E6054D70746598DF5F3
            EC710AA453390A0AB388C5942B55CC987288C8D9B8EEB287F1FFB813ADF57B81
            513EAF580ECF2095E874C3A2CD65CDDD4A78624B63AD0171191CAD8568BE8DF3
            3F90C5D0EB81C79D518CC9E96E7853EC1EB1A07A0672A4DE4E9FAEFD1FF6BE03
            CCAEB26AF7DD7B9FDECF993367FA4C324926210929F4264510449A624445047F
            100441C51F10111441AA741008BD4807416A022110D208690412D2662699DECF
            9CDE77B96B7DFBCC0410F87FEF7DEE0F3CF78ECF3864CA397B7F7BBD6BBDEBFB
            D67A17965DF137029E02FBA00B41BD4A24C305A5121923802C4B6F6B365A607E
            0086C865B82F402307C0A39F2157987D15B956BACF2E9CF687A3113A0C581C37
            81117738E875ECF4FB66C4A820604436E73170C353C2708A5642AF3E11C8CE2C
            572DF642F16D24601C82C1B00D6F19C3C8654BF08C36606202D872E722643B07
            A0E7127CD48EA0FD0851C292B293E5DB0730FBE4FD31E7C8A9D834F8A1494508
            90ECE9F55E2F063FD4D1FD568CA2542D8C980EBF62257AC4194A0C7DEE762030
            84A3FE7C2C0E3F5CC2B2E5407460082B1F5E0329EA8365D80DA73D2CB6813385
            3CF40A9B98C67AD9CD451C7D740B96F414B176B01B1FE54691AF88A0E0F6223A
            44BF9D73A28EAE612A2DF9CB7FEA003692BD642A11203A672D6A424C9CBD735F
            7D07AA8EADC77EE706B068909C419505059EDF60F8E8775CE2445F0CD4E14747
            8ECE08E4457B845452602366D010236010955A7CD9CB7013303A3E385D0AB8BE
            C2C0103DBA16010CDB2917FFB577C0E1087796C8986B6B4C60383C9464053E01
            0C4EAA3C42C857C3E833EF20B16C338C8E3C798826E8D6FA7160F0C1124F41D5
            B9C6295F4DF9A684342580367F11138E7160BF73DC5855FC6260CC1ACE60E99F
            EF180746408F98C0904D60E478181C0143FE0C6088D9203C3CE60B8011A30492
            81A197234605B1C2CA8F72E3C028D91ABF10182FA57652F2ED4145A65A00E3ED
            8B9E046259D8F9A0AEA4A2189D2E92D4826F94E8541227FCE678CC3DCA857736
            B79B73364458F3C1190FE1CD6B16D203DB9B883F451167159C7C56562C086044
            430364707D38FF89EFA08E7CCFF215C08E6DEDD8F8CF565847FD28F5AAF053E2
            6EB3BB301C235EE677C14ECFEAA1171B50453EEEE1E5EBD14FD734E45130EAF4
            2041A0E339F095CE08F23BC9A3D3D2AF9F4FFF31405EB28F68719E2207AD26CF
            44CF2289D1CA4E38BF55891FDDD088C73EEC835CEF14A5324689F23E010C5399
            9253A37160706F37E58CFF7780F17FFA513EC8D13F2594228FA9D9D1C3C951D8
            C8D865FCE4D21BB67E309A9E9AA9AC15E26E62F638D7802B1E31B3CE66732267
            2FE70C8458A74A5C7ED956A49E7D078E0F8B04C51AF8D04249B60FA9D07473BA
            23CF2A57ADC496EDC8EB594AE22D48A83B91AB2BE09CC7666119017FB32F4A39
            4DC924E6099528600061DDC99AC17066A2687BE049734F795B37BD4E18A58C1D
            5E32D8684C21DEDD8C92C132E315E365D48AC1DD1FAA109910B3FF14161E6367
            92C677EF4AA3F290DDB07080D8198187254FD9A3F35015DE86F68CD07D6D8EA1
            E3C6553032AC8BC3A51D95E2AB85F3317D54CC203CE7B93D315061C5A2BC5970
            EACA16514709F1861B5642ED22069FA0082AD542F3524291C8C0AF0DC0E56EC3
            8FEE9C89C2E44A2C2E4511236A318972316CA014EAB93EF474146031268A4A69
            DD65AA9844465444C8FB6F89DE8B13CF9C8413EE3D9CA24D1A8B97F5213E5087
            F65B7A21111795F376A83C17C49F1227FCAE6802A1480157AE380A6F25925864
            D1908C132DD08266756D7910CD0E2E9DA1F5A9EEA408F48F0E589FEA24DBA845
            DAD2646E277322C4D50E8EED98B64711BFBE7F261EDBB801230D0E6C2F11D8E5
            0384B3B6ABE6CEB3E2EC11EB1877D608DFAC9835996818CAD067094BAE7C531C
            F06D5DFF53A9DAEBF8EA0283CBAC73450369CAB27EF6E75BDF5F3B189BC3BA55
            59171945885C4D282494CEC780912F9F785AA5A2D83D727FD88F9E4717C2F33E
            B7B246C8CB4CA275AAC520793CA190CE9D80790995920D25952807FD7DAED48B
            44531627FE752ADE252F3F308152C64AD53C311627C921F80BE48968216BAC2A
            DADF7E0FC7CCDC0BE19C84C6AC0B859484C12E1D8F3FB208696B0D997F95090C
            31CACD2C39B28A1E41023C272D5F26308C266119B56A0C5963158EBE863CF837
            F7C49BC5119113F42C8943D948007FBB0FE9B8136EDB5451ED909753A2BA7537
            77107EBA0C7BC3669CFADBE9089C082CF8A803EB36669118ACC7CEDBFAA10C12
            9D21CF5D2C117DF41143B065E01E49C01FCEE282D78EC67BEA08DEB4EA4255DF
            6554C0C1A21CA602213A59333BABA27AC8828127B723F04A146A214CE9792D81
            C16D6E9B390941F6EDD8FB103BCEFA5B131EFD6023066A2CE8E03685FC9CAF29
            30CAF32B74794C706BAC3CA1DCCF21293CDB0509BA81736FB877F9B29D030726
            029562048111224FECF30B350F8B9D3CB8C385BCD30486852CD0A949A8EECD62
            FB23AF01CBC823129DB019D5F0CA2DE8D679D457C42CA4CB151120C894581E41
            218A216590AA4C12DF6E82654FF254D514BDDDC47D59B2D46E358702E46C42A6
            7EA22B8F52571F4E3A719A08F7AC9DEBA707DC451CFBD73F7F18F9B417B25647
            DCB6C29C1429C4AC0DBA3653B234C3134EE8C9B8B4E2BF078C1B561330B8FA96
            811111A2080C0C593381F18B7F7C0E30FEBA0A6A370123CE1B7E15E42C3CC202
            6B4A39148D76FCE4B64330E1601B9E5C0F74B41631BCA01BDCBFEC1BC8D265B3
            AE5648B49B96DC7DB0B83B30A32689A9BBDBB1CF51B3B1DF771BB094D6E0D5A5
            9B108FD560B43F88DEDB3E84A5B7126EB502F9621E053E5CE3FE8D740A769784
            FF7C38829D3E03AF3AD262BE896C7310F55760C9980774D900C5FEA128A6252B
            B0F59E75A85AA51280FC4891A391884A1BE982101457DD8B71E4BC26CCBB7232
            FEBEEE43ECF4D811F3552353F40B60F0EEB862CD4372C4C43AA688A2097D6D45
            D41BA2FEEB080C2E3F8AD3C5FFE1DE275F5EB0B1EDD8A827083D58B50B18568F
            008542E02894AB6BC78031292E61E095F7D0FFE8BBF096888FAB21783005FD5C
            AA21FB69B19CD0D2397889ADAA82DE14C8931690F211999F63C521E74F46A7C7
            4087D445E1C7015F38844C9A20929251EB76C395EA872396C23E7BB620902576
            470CA3862EBDFF3DE08FE7DF46AF4749BD5E0F9581C14D1D0C0C9E6DA7997A47
            5F3A309490D87CF017A314650770D6FD47A08772A027C8B8D4D574110394C78D
            58112C3AC4994056778B1E7BDDD60929D08BE30E0CE3841FCCC6DE47922112A3
            99BFB91F5B7A3AC889EF81A16E3BDA6FDC08B923008F1646A15410BD144CC1C4
            AC148AB6A7DD6441AE258C97AC2931D744972D44A1884AA54D75FC6C8022792C
            8E39B900365CFD0E2A3FB4A1900D2129D17ABA42623E20376E19CED7F1935FEF
            8F6F9CEBC7E3EF7F884D1489D3150DE4EC2ABFAEC0C87F0C18CAC774D6CA7D00
            BC8B41061E274A75CB330B1F7866D586D3071417F40885528A1A92DB4F374B54
            8AC2AAE6724175DAC486B52C97440B64535282BCA9075B6E7E1ED66415949497
            D6A90A5EF74424B20E4A4FBCE481248A1736317280C56EAC9414A72D514AD086
            B1D74FA783873E91C342C2934431286198A570740D16E210FEC1382D6E0945AF
            8A443C8E6A4A9227A5E941BD378C95772C21D0F845F162D656055D099BD23C86
            85925649449EBC665607BB74EE6D4B1130B22630FA091844B4FF0518C325018C
            9D37AD02A19780CEADAB11484455AC6354CA3580B3894AF585AD78236F318191
            2160240C6CBC6E350A3D64C1719B1049E0C9545E2BF7952684EAE4BC4BBE81C7
            5F7D156A9632E84C08E17823F2B934390EDE06C923E6D608C0718A9DAD68D8AD
            13E75D1BC17E871F4A3FA9C18BAD49FCA33B06A3580D1F25F459CAC1BAFFB611
            789FFE3E172143F7537E47EFED759BA76AB4CEC79E5FC0947D5C78C261F6A868
            ACA642DE5E4927C4A93A978C5B4A76CC1DB462E91F1722B883EFB91A3147A578
            CEAC45C1B94BA9E211FCFA9693D17844182F6EFD089B523548074222D916E218
            B6B898862BC43DB824DDEE1B17A9E2E9BAB5C35F43606429694DD08F1F59BCF6
            8A07DF5CFEA74E5511C03088DFF2762D03C3C692F69F018C06F292D54345AC9B
            BF10C656F22E31021085E180673246D364183C0696BCA05D33731C85AB396901
            19183AD1054C3630F5846908EF6D47BF9CC7801143DE4B20B259C5C3AD4C1529
            68D931A48D88F2E83A8B0791FE1C4A2BFAD1FECC16E43B7827AA1E396B35E1A1
            721C187CE0CFC028E8F2970B8C529EF22AA2A2F90C37AAE2B8DFED8FC79E7E82
            30D0407F3415DECE0A8A782504AD5CE53E8261A50017398159733D38EFF77598
            756414AC55B9B23D8305DB86B0D9534DBF5F27DA2B1432DAD45303882DEE822B
            19A075088B3112A23256B49F4AD8FD7BDBF1CDEFEF86A70814AC285350E98F7C
            448B3349010C9D1C87D7E247786D06DB6E7A13FEEE0A314E2CEEAD1389B7BBC4
            CE250F4BD30BB8EEB1D391267FF976DF766CCB37224AB947DEFA750586616ACF
            1A9265BCF6D00486F961CA2B58B9AC1FFF7CBFF5CCBB5F7EF3DED69C062D5C8D
            02DD9CDD1D82EEA428E0F61085F71130EC02183C2B8F5BE24329B36129FEDE0E
            743EB38EA8810D4E35029B1A80617891240F66A304B9C8E5DBF4DF768B39179A
            623DE52D4914A4414C38A411D3BE1940AE9E92417B0EC9888E44C88046899F6D
            3808978B9239DEBBE5152EE4E11ACEA372C9003AEF5C01F7B0571CF865091C7C
            E827127ED6F72B57C2E894CFB0A89D4BD3BF181816B94CA58A26306E5C630283
            A894645442521D669FB5112560F41030F6425F250123C71D853A014315C0F8F0
            BA75283230622E518A6D50D2EDA4F7605922AB4DC64FAEDC035D5D05BCF6F456
            7AFD306AB3D5A2349BF3DBFEFC08128EA290C5FCF621113CF4941F1FD0835AD1
            D781E53B1C68CBFB3058E1324523B9FF8367B7ACE843F7D3ABE1EE0A98B56A25
            3E9391A1F2F9915D8367623F7E7EDEDE788598ED30AD6F82C58CFDAC3E4E097A
            4E87ADE44463DC819EE77722FAF20E84D361C24310095F950046482B506ED409
            CF010B70E30B97623939A575A3DD182CB4F00E3A8ACC5C6D45CA0D0705673214
            B2132BA1D066F97A034317F53F16F039F8EBADFDF36E7F7EC1B35BC8D8D58A2A
            E428E9B6BB825F088C8A7411E1D1126A92762CBAFA29D18E57699B8091589618
            7F2D99A2135E0FD7DFE445EDBEDD46394DD15479777B0BC85A46607847507940
            0D9A8E988044958E014F1AA9A0A9FE1ECE570820C5793BD747EE696000BE9C05
            CDEB32D870C58B708F06FE15187CA651EE0137B834E24B04864CEFE9B04AA286
            ABA4E671F215FB61EA54E092DF7C0463C88DA9A50930054E4AF49B69680D1EA2
            8C6D08B8BB70FDED4761A0763DDE1BDA89017926E29E66ECE0484A06C7671C01
            9646DD5CC007F72F86ABCD05B76D3252799BD994C4C070708DCB7A9C79E90978
            838269A299D6514FEE0206CF17870FA11E055BEF7C1BD8A8A3AE548764DA8194
            B75A44EC8851822A75A3EA5B4B71F30BBFC463EF0D6143A20F09690EFAD9983C
            5F576094A9148B427E1218632A238A28298C5258ED97E5FAEB1E79A1FBEDED9D
            9478576394E2A2A7B2169AC303D5ED13C0D0B8BDB43C6A985F23C05BA3D10CEA
            154ADE5E7C17C5B5447C5B73A218C84700C91A01E2D93E3228590877C9B24700
            8AC5BC3416A1B365912976839BA6EB0E9D80C6C32A41B6820E5B4914C955BBFC
            82AA74F06025DE7151E96FA25904177561E4AE77108856899C2643E0284AE4E5
            6C0111DAAD6560948CF4670383936FEE9A732AE41855B3A99F681E03C3B5398E
            8E9B5613302AC47835877B0AE50465916B5B02927D07CE7E7E2F748764BC4E79
            14978404750581DE1CDAEED88E6C3B1905CF0E2C69A6321D5D8344D4D3EECEE0
            F83FEE839933ED58B2D0C05B8FBE83AAC40CE48BF4146C768CF2647B6FC86C6F
            4DBC8FE6DDDCD8FDEC16F4921D0F10DEB96831E7293FC4D2102A7232268E7AB0
            F68657606DAB86345C812039A31283CC42FFCF32A38E6EEC7DD46EF09C1001B1
            24B4E97178BC5E04B8036FC880234ACF8282D7E68757C0130FC2CAF91B39B0B8
            9F254EDDF06B9D88E596E3E70F1E8AB9DF9F8A3B5FDF8411770099423D46B96C
            9DB52FACDCFE1A15D36C0D4B9007B48C0BF3F127FBD2BAC12CEA060A78E78A45
            A28870DBFBA74A61A7F5AB0D0CA65249D6C49510B9EF9515832FACFE00395700
            693B450C7F580043F3908152E4D0796F5B440CA6B08698FA19E141373D09D414
            0378E7C667880F69082B35188D33F7E4926DBF781F060617EB2B86042B2B5770
            8DA99CA2DF4920E31F25B75284658F30220712916DF199431047CDEB1D88D053
            E0964A49853BA3A3EA9D01EC9CBF0CBE76DB38304A2803830C9CE5A14447EBFF
            2930F24ED8F81EF2B2108463C53D55DE86735FDC17C989013C37A87E3E30546E
            51651E9F147A4F4E6F4E0063D62C1BD62E0716BFDA85D27B44579C3518CEC560
            B35720ED66499F043C1523906C03A8FE7E05ECBB53546974A08B7E54E002060F
            D7C1A5E0113B3D0E1456C688C6F6C19B6822BF6105FF6F8448ACE467899D2D68
            D8B78680310B9929409762CE4D7759C8F0D306515507E24BFB907DA7939E9B8C
            0A4B588C65CBFB83D87D561506367F808629499CFBF837304C01F489F73620E6
            A3EBA41CA92068D4D71618E601DF9832E8D820114BB9BA90F76E58B23627DBC1
            4DA80B3FDC5978E0953731C4A2033EE29B9E208184DC82DB8FA2DB0BC3EA1575
            FE56B1654BDEC6A141CFE4E190ACA8D65D685DB009B9E75610770DA238C419ED
            0421A3236656F06017A224926A15F22D66156C0E0E8B86AC2D4521BB4FECC57A
            E644503F770202B5DC8FACC3420FB8B7B2049787D5E209E8A91CD4256DD879E7
            1BB065EA2859AC1209BF2E5742B7B8C5D9895D95846A5E5ED7CADBB5EABF5229
            96A9B4D33590012B8A59EBE319215AB4858071335329BFD87E565402B64A7980
            D06F1A4549DE22B66B0B5323788ACF1FE87E42BA15FE9E225AEFD8865C3BDD77
            3664AAE071211D8B2918C370850670FC5F5A50BF770336B467B1F98318FA1EFB
            90167F02512F0D5EFF14A454BBD0BAB2061C28157A60A5A8D1745C08AE7D2810
            DBB9D87204D6880497421161280E3BE5048DD1303EB87D33B0D58B603228361D
            B88A561352425B60ABCD93B3998ADA0303DC2A233EB87B56A1F4ABB40D58CFF9
            CECE145C449D7DE428E2C93E4C3B681601398DB51F3E86D3CEF80E8EFBF36C3C
            BE358FB7FB07507212780A1E315EA4C492404A81FC479E40A2987DE8B27D7C7E
            885EFE56FDD71118259E294E1E846CC5F6515C3BE0B6A7FEF9F6477DDCA956F9
            0960945875CFEA15866615A7DFB200466A288A5ACA49E4810C5A641F563EB21A
            19A255CE8A59C8C5F9F4DB0F59719865E8941C1A2545783545D0B89C30D8928D
            0CDE47A4D94921C24D096213458CE6100E3860779E2B8376CA47589F9681E131
            14783F8862E3232B812DDA383034294CC0F58C0383DD5681CF6BFE0D6078A386
            00C64E8E18E90081980C5C081B5BC4D82F9FB70887BF0727DDDF4C51CC8E0539
            450023C8B55DBD25018C2C032313DC050C4E92B44178C24302185573EAB0BD5F
            C3E8A082AE977BD1FBF6002C4A909E4904793E10E49D9E785C2874A02203CF51
            9310384842B48647C725C4F7DD1405AD94DF790A350877D3B37BA580C1E72917
            2836D23DAB70785C1848A7E95A07C839B4015382A838642A427302A25BB9404B
            9DA135E85AB09D405180256E47C8E6C2D0E80EB43435E0E45F4FC46B6F74A07B
            7011AEBEFE4CB88E04EE59D68D6DF4CC0BF610F926A7307896FFF99A02039F02
            067FF060E592D9D46368D04A2572E63EA29C32FA75D4DFFBE292EE651F6CC228
            25517932F80C818381C1544AB28604ED10DA0AEC912C69280E1BE50319D85C2E
            34647CF077EB587FDD03C028ABA8D5F15823D1F7A14801A250E4098B7CBACD07
            660E31834E28BD1317B7B98A745571185C836DE1C1F504D85016E1493ED4ECD6
            8889CD0DE234B750D030B4B117AB9E5ECE6363C96DF1966798CC9641E110077B
            4AF900332759761DF00960E43F031866D982E8A16045D32D09ECA08821A702D0
            737EBA34DE0AB58BB56A6C70A2617216875FEFC37A2D8AB70DB7188413D46578
            7B7502C676145A894A647D223A8A16567AF6AE622FBCE19D38E2BA26B8673563
            692E8A12D1346BAB1B5B1F5805ECD0444BB04C091663A990212AE5B5D29FAAA8
            A8F74239DA06FF81B42C5525E2F649217521BBF9A4DC8718DD4B15DFCFE39B80
            D52CD75301AF731252298A026E7A36E96121E2606F74C23B81F28B400085AC84
            E19E14F2AD1978253B4AC95102540C139A755CF0FB7D45CDE98DB7FD1987CE9B
            8A537EF763BCD805BCD2914397DF5CDF923E2A465A5B0B56A19F95B393ABB549
            E4C40A8251D860B61B14ACD2D714185C43C47C9FC22803634442F8F50F7B865F
            7C7B29B627B29F000627DF63C0B097D5D3F37212EE800F894C5A5491FAFB254C
            CEBB61DF92C25BB73E4FEF3F953CAFC51C2FA08460A31C43E53D3EB80530341E
            636A232FC47AAEEAA068C49779E0A55C205E4FE4CE31627A4E2FDD40C82B5A56
            158F07957A0003EF53A23FEA206322609031303074C3360E0C318E59B6FE5BC0
            F046191849B4133014028696F112ED0BC149EB53CAE731A5C58FE9738103AF00
            56666278BD6015C0085114F3F46868FB5B2B195B191825BB885E2C8EEDCA7611
            956AC3D1374D86634613DE4A0D422F79D090F2A0EDB53C7A9F798FEE9940A135
            A194CDC112B040CDC7C5B3829532FF43E9C19C301155D335018C4C917EC7EB42
            41F3239394309BD85AE15D625377ACA567538542DA0DA7CB8B7C81137FBA7737
            E75A3CCD9E4285C723E621224EC9B75C8F7CEF80D02AA9AD0BE0B4332338E010
            E04F7FF90751DB1E5C35FF5C544CB6E0AAB732F8909E614FD055B6A0B8900A55
            72CAD71418E546A5D2276A080D31834254DC31FFE5986773234674615086BB33
            8DF4132F2DC4929D3D88511296F2868578B16C0F12C70E08607039320323E7CA
            517E424973C42F542DDC6917C264CF07FB3D5871EF46EC589337DB528B7958E4
            103D088F004691953DC8DBE942F314A62A43294BFF9942A5854C9C2853DE8862
            C099A6709D10ADB11E8F03A9524E0C86B407AA51E8E38A41165D08C25A0A94C9
            D9983FD0C4ADE7FFE51CE3BF098C5BD6424984081874DFBA0741770532991419
            8F152DB30C1C72951B5B6C59BC92D6CB11C3222246FBED6D44A5F8A49B0C2FE7
            16878D2E96D52CF4C2EEDC86A3EF6C81B4673D9ECB0F8A75A8A524DD4D14BFE7
            EFAD4812E391934DC89193B052A42C64328814C870E97FC9C9DDB01C12C4E43D
            C93155BB9061A13CFA4C12CBE59BF6D3324FA2FC68F4F1F518D8480E6D67899E
            D754E8F15A61A42E7B41AC635A8D9223B2517E10121490023EB2F4BF19132298
            41809F300BD8D8BA105B363E87AB6F3807738E9A8B85835BF0DCBAE9F8C8AE23
            1E29CFA5D0B6C1E120E796201661F88554118F5A343C79010C77B9412D6D97BF
            C6C0608BA01C23416649F6E22ED0E723AFAFB9EAA50F369F39E87423CDC0F0FA
            3F131859273D049ED317A6704F2B2077E630833CAC77471607065CB8E54F9B50
            EC2FC2C8A661FD18300AAA93AE8292797B59825EE1012C321CA534F4E230BD7E
            46CC70ED77A5502C50D42060B8BDACEE9D126A6C52A411060FAE225ECEC0B015
            FD744FF2F848411DA68059E15FCE31FEFBC0B0242BA0A6BDA20D30E8AC443217
            87C79143DDA4348EBAB102D17ACF7F0D0C22D91E4A681DB91ED8EC5B71DC3DD3
            61DDB7164F13552AE62DA8A63CA6AA87FC0EE5FAEF3CDB8EFC68252ABC446BB3
            5B2133352D50CE40CF68A0663D30310565DF089AF79D0D991E090528EE2912C0
            B00C65308B78FF1EE4D9FE79DF7A8C103090E4083D85A86B89C04154CAAE222B
            A7CA5D9F4EFABE42B99157FCDBE929A0BE99E7807D881D7D0B70F105C7E2ACF3
            F6C3CE7C1237BCF10CFAEC3FC70794E3A51ACC5A34643FA23CC6FFF50546B9EA
            1C9A922AE3646C40887FBCF555C8A8B83242FB36AE16C8F87D68EDEA6F7EFAD5
            75ED7F1FD221D7340A2A96B2D860276A95B53BC5B9844CD4AABCE943066F3A7E
            E963923EDC307424E5164FFF91F28D76FA469E563E57076BBC927EC58980CD81
            38814297C9BBDB32F4FBBCC75A3255C055930A95ECE5A9B1E57310D155A5D985
            5A370B97492CBE26228532DEF9FBF12E606EB3CCF061168142766EC171D737A2
            EA8849786D641B323E1B622C6BA1BB60A36B890DAB9860786027AADE76D72342
            D33537BC8758200B1927B7A81A12ADA33D8EF31E3E05D909C072025C9E285626
            ADD295F8D077E33B94CC3AD0B093650C6C62DBD4EEF0D37D441193BAF1A36BE6
            A1EA1BC0C28E7EE46B7CE8CCC5E0F785E02BB8D07DC39B402FD1D6362B2A87BC
            F0BB2AD0C6427104102B6F6BD36B38AAF2683EB00E8143ABB1D3D9874ECA3978
            CE482EAB22D391C441FE698C1FACBD7103B6ACDA01ABA34538B2BC4A342A9331
            9B8788161B9493093131EEFD65CBE53918F915E467B6E1E4B3E7E294B3272044
            51E5976D558852929F243690E316025A13839E3F0F9FD4799FDAC75B5345F314
            8FCF5F78D481A4417159C5FB827230B6AF09040A8E686F5EB60421BACEAD1B7E
            28F191D8571618AC6AC807688A3D4D3C5F3567CA497E0CA6338EA5EBFB7E78D9
            B22D0F279D4C7964188110ACC14A646C0E539291BBE7CAB229ACE32B9727F118
            659FCDC0382867C5EEB400D7FFF6453218276C720BF4211F998C4F84F0889FBC
            63828D7FC8FC63BB983F2672129B9528D76700431A03061F18525C91C588C7CF
            9E3C94224FE9F7B9D15C451E76E45D1C726900534EDC0D2F0DB4A3353D025F55
            0B72195606979025DB6820EF27BF0F74DE39DFBCB1F8BEC27082F49019180583
            689D2381B3E77F17E946E039E2E7AC8D6B51DC50C87BECB87E25B05D41E34E2F
            5D9903794517F54429A31739E7304EBE6E1E42FB01AFB6772216B022EB31674D
            C85137BE35C18E977EBC9447CBA239518D81DC08B241B33AF7B06F56235C0D74
            2586E126CE6FCCB6235E9B431B51AED4F0B0985FD23061063CEB4A984A79CF09
            44B19E7A44C31BAF6E8491E2DD3E15FE4844D4CCA586462921A15F70D69AEA2A
            62FBA81BAEE6187E74FA14FCE4E711F87C83681B68C39FFA6708095FAE532BB2
            A81AAD854ECFBF545657176060EF28248178564056CCC8B0F02461322C8B1210
            F58C93884E370F6B5878F122F877C4D1BAF164C9EDFB4A01C3FC500CAF29125D
            2ACF2A51D2E6282CAB9D7EC7C5B2ADE81C46F3156FBDD3BE91163E4FA071D4D4
            A148942AC5CA751C356C1E48E44184C46359B746E3315FDC35271BA25870762E
            8BAA6809FBCC6AC1D567DF83C23BADF078C9D862C495B50948A815A87407B842
            1DC32CC4C7CD214CAF9C5121068D7CBD009CCE8035506EE555CB3AA51ABD8729
            88AC8BE1942ADD67B12C3C6796DB57544F477447978008ECA3F8C12D73507598
            172FF76948719B272BFB4ABB06CC54F2CCCA3571C49FBB073E258364D7461378
            ACA9CB0DF294E7386BAAF1D32B2E42C26F153B532E721CDCE69988E7D177FF3F
            8101A26EDD66B156BE9032A7C7BAADD0C34E9C72E1D970B4D46179E776A4D829
            948850BA6A8456B49372B316CA15165E4AE0E891E0F38628DEE485E1FEF0C78D
            F8D92FC2F0D59875929BE518EE5AF21276DA1B619D3C1751327435914095CF0B
            4F26016FA917DF99B93BB62FDA84B5CFBD8B8E25F406F166FAFE1CD84B0522B1
            4584FC2A94E066F4669663AFEF4DC60F7E7316C2D35D60E2DAD601BCB831874D
            B5288F28609D5D3EC791CD614F8049A9CA221BDCA4C45F797E87DB63633D6A0A
            5039E403C2D8D042A0681A2C61D1856FC0D116C3CE4D674B155EE9AB0B0C16BE
            16374546A051682C2976E4E86E33C47F893EBB1F6E8F5FFBF29A35BFEA1D1E84
            ADAA0679B717599B131225E39AC545B9A5A53C63BBFC7E3CFB5BD6C5FC7A0646
            4D6707E6B03A615EC177766FC2DD97AFC0FB4F7E80906B776453154417A6239E
            35849AB6B810475933CBD2677AB2748DC000ABA2C85F000C432A7E1218727936
            1DEB55D1C5D507EDC814DB70E825B5946304F1DA6011318782A2AC88BC9FCF1F
            F57C01018A424D09607A3E8DEFEEE9C1CC49E4007954046394AB59E9EDBA1963
            2DC0A21D2A16F46D26237009EFE8F7455047D4F3DB932BB09FC5EC17E2DA49AE
            12A0DBC77662455E7ABDD5141C177EB44354A76A44A39214A9BC9A03B65E601F
            32FABEB780F50FBC270E45F38A3932AC66621F8E3A7E32F63C58C21EFBED0EEE
            0F7AA8632D56279DE82433B75734223E92839D1D11AD839268C5619376C7410D
            947BD1EBF66E07FA575330A268280421B9AB919C41EDB4220EFDAE0D81DD09CF
            749D510ACA1F5100DA4C74B2839EE386882A346D79F08C56C6C227A6FE9505DC
            B91B900F8A2D8A868AB05914C9A2EF31A7A98A39654815C078E3A24570113076
            6CFC8514747F9911634C634036E5728CF2DD583487990FB06315C048903D9161
            59DC4417880214CD69AD1BE238F0D1B75B977FB0E523645DF433B707451FD18D
            801F45AB530C6A61556E363E83126895356AD97358CA4323C98B36B982A8B097
            20F576E1D42376C3D2C7D6E2999B1FA655A3A79B0C121EA6913F6A20E3ABA6EB
            635512BB18536090A1FAC7672349E5A7603E09BDFC55130DAC96B230B2449145
            32A713959995A76909D2435BC1A76692258563AED90B9587CEC5C2817E140215
            C8AA1EE43924717EC31B11A530AAC9020E20AAFF7DD671CE9A06AE9AB3428571
            106445D1E5DBBD4974664B427C2299CE889CA48ED6E280DDC2A2D996D905E736
            567134E8400F5D2537EEAE8F65B06530414E2688419EFBE1F051D2ADA392DEC0
            4F20994DEFFDCC6D6F5002B305532CC7A0AD7513AAC3ED7005FB70E21944757E
            F50B6CD17218F2BAF03CDDDA3A02723ACFF74A5F13FCBE294C9B58C4E615AB31
            9190B8D7E416CC241AC6D7C4B5C73CE0464C8662A9225AC6EDFCF7F48D7E5AB3
            053BFBB13ADA8962A54B8C192824260BE969A93CD05ED3CA530B24B38598975A
            3C150B0FDB2CC14E34AAB6CA0E3FBD519A1669ADA788924636309841F39086B7
            FFF0165CED71B4ADFFB91450BE443184FF1218E32223A3E23C834FC079A6017B
            8551F290BD564C7EE9FD52EBAAF56BD195CD2145BCBFE427DEE8710B605878BC
            B2553107239681C1DC5393CDA19661E2DEC6500261878A16971DF91D9D38F5D0
            39885332FECFFB9663F9EB5B85B85731CF426D14B7E5102DB2C334742EA855BB
            FF5BC0E031EC9F004639825D7E1B79D64797A1EBFD4DB0070C9C7CE7E1B0CD6D
            C6D3DBB6420B572195E3467F8B59A04886ED267E6E238F1A89EEC024A231F5FE
            844822D3C5BCD087CFCA2C0F4BF75D57836E4E785D7E38ECB416AA26E894379B
            461551411B81DA921945D03324282A97D2C40A121C1535E8C9118DA37F2728E2
            EA5C93D69F425D7D000EF2B06A1B717102D7EC66E0EEF35E456151117B4DDB8B
            1CD6525CF0871370EC8F3D684FA9E8A3DCE4D98D5BB0261E46B1B112ED64DC5C
            7A462F0F0E325A760302860511B99AA2880A0FE547CDF4AC5AC21E4CA4DCD051
            3427C66E69EB42F5A4A9584F8E6269771B94C975C8D678B129D6038D927597EB
            1B65ED64F3636C7AB218BB0733BD607516ABD5744F5C541BA9B08A415DEC67DE
            E3819FE45D1AE81E19184B28F9F6EC4860FBDAD3251FE72C5FF676ADAA64C710
            200CCAC2730D74131806F3605751DC6D5135A564B82261631BF6DE3E84BDBB12
            B873D3CE1E6C1D18468A8C48F70628C7708829B02E9F531CEE5ACCB32CC13FC5
            1074D914EE1EAE2CBF6514A20F7BF70605F9BE51EC3F39843DC8C3B5AE89E21F
            F31FC2CED7D7D2DBEF069FD482448F45E8C54EF04FC7762D551E5F8CF2286388
            EB17EE9BFFFDF1AD28717B9F9C7B6DC93845459697FE3081361C73C514ECF603
            075E273AD361E458C0440C99512DA3261F90594591A8543A291CC5E06840E41F
            06857DABCF40DA1A43960F459D56E4597FAB4429B6C723FE86A74D8B2BD50A44
            A1B274DB05D4D82076ADB8483F95D5E020A792A6CC55A1FC2293CDF3103CF826
            0528974909AE16A4757513FF0AB86CF01235DA71E67C343535E1823F9D8AC814
            A272F47ADBE8BDFEFEEE0A60F204B4D122678B063C13EB908ED2338CC6E17351
            EED73F809A1A026FD41477B6394609C0BCABD64D0E471572489CC3140B1518A0
            6793CA7B60A1DC808F97B88C831D059F7E4B83E9F2F29ABDFEE6E1A939468077
            0F457E47F760234438AC5C965F82D769A73CD221FEAEDBB0892853174D88B2F3
            37FEB000361E03F0FEE95295ECFC0A03833D47210E5BC874B1F9828516DA838E
            8E52CDEB4B5BCF7C6AE1B62B6C95D5184CC7D13D42713EE021B71421824A9642
            FC98A7BB4AB41076971356A762564028E54FDEE2AD318D969505ED294AA053C3
            98E0B3A042CFA09AAC69FFDD1AD142D461601BF0C2FCF578E7956D50E211D88B
            4D48129F4A7B7D5F0C0C795C9ED18CF5B2D9C73126C718D0FC28D13D066C047A
            A317DFBCBA0E55871365A00479C4AD224F114E0EBB906177CDEE5014FF01330A
            A3C2D3BBFC5542B927C5923CE4050BAEB4E877C8B0C43EDF93BD426092E7AEA8
            194ABAB9279E2B9A25A6154427638382523A89D067F23C11D72680E18A04104F
            16CCD9172C3164B752524C09311397640A237D5D38AA652E4EA5FCA09AB88F35
            604A7CAED8DA8F75A93EA8132244A1A228354CC0A8C463D228BC872BE0E65DC6
            91381A88A6B02E966AAB329743E243D21158ED836263BB582C110EE9DEA53AF8
            2A5A90A668962A99FAD22CD682229F4DF1015EA6BCBC72399794C5ECC0B1619B
            DC7CA5157370920DB82852168B591139781230FFEEB03D286857432C8D7ACAEB
            165EF412E4F651B47F78A654CBA2D75F1A30CA129FBA9217215117C26C560246
            1934C5ACB907CDBB364419B27907724537B66FC7E45BEE5AD8FAC6AA6E141C44
            ADC81BA8EC51C9D38892024AC04586CDADABAC0668B78BE9A2169B02BBDB0517
            790CAE50EF9F9012C267068F11284F42E64F9E7EEBA664BF929EE464AF15BBD7
            4998410FDF4536D5BD5EC5CAD79762FDBA8F30D8E913B22F2C07C943AAF980D0
            667845EB989EB709153C990F2B600ACAB11AAB243E6571BF456B0F5D5301F90C
            CF1ACFE0D81B6763C6776BF1E496510C3974310E2BE322AAC4D223AC87AF558B
            658BE44685771CF4D9CB637A0B50DC44B5C893AB458A08E9027C06E55BC92222
            7697D8EAE51AA77CA9802025FAD16C42FCBD3DEE13C7049C840F0FEBA86D90C5
            1051CE59C4081C5AC66C2E072BD12707191F0B47B8786E06773AC6D398260FE3
            5BFB4F413FADCBBB1B3342E896EC0B3BD323084F09A34F4B8BEDE2C4F00001D7
            0F5BD20A25439F5153F948F244455F8BAE503E68B1B1F6BB38542D524EC5A3D7
            B893D2C3E712B93CAD243938C347D7404E40F59A325FA6C88939C390674273CF
            3EDD288F4BE60D0755EC0012C0884EDB788B96B560541EF9AC881CC593B46012
            45B9E8B611EC130CE3AEB31F259A3080D8C0EF245BE6DF1C67FC3F0A0C96BCE6
            A86724C50AE48B2EA4734E6CDCA8CEB9F5EE57DF5FDF9643C9E515922E055A90
            1C25C625BA6143299F80AAE5590F63DB52926E1A9210E9A2CF59BC87CEBB4D15
            B0385D22911D9B97CE329FA5442F258579347A644C23EF3CB5C28566B2FB90D5
            0C06BD948B8C8E50C2DB439F9DC0504F0943DD094489B3A647554AD8E9AE4A4E
            E8C48934950F98E8C1EB8AE925791685AB9F5E284380B2C017B0609FDFD72072
            6000AFF52551AAF161349110C048F9886608605489DBA8CAC584610F547810AE
            B688FD09EE6C2910556023E239F321C52B7CCA705B86FE2D936777D2DA1948A5
            62D06C4429BC645C232EF031028F4DAFA800624993AA700B3CF752DB7870A6C1
            09BC2AAA09B80FBB94CA0A60D40742A84AB40943332C21E4285F1B29129079B7
            2BE010730A87B33D4215443C4C5ED8988CB02D88906A4A42E9CE1E713F9922C4
            F9834ECFADC85BE92E4974143A5C440F0787859138253E79F1D335D01B64ED08
            04EC684D8F8AE86BA567CE11C047D459550D14C9016468ED1C7E8FD819E4ED74
            DE967690F310493BFD9C8B1883B92AD182DB4C91C83B50C013BFBC0F2E5A8F0F
            D6FFD4DEE0F017BF7460185CB22D363BADC268A4F2E19ED876B1D2C273430F47
            0C3D8C4452C1BBCB71F4AD0F3DFDDAB67C1C06F161AE9C654014ECE4A9294A94
            285AA8251E82C2E8B298EF23CAAB4B65858A728D05450F3BFDAD544D5EA6C649
            09AF0525E6B28AC9B7EC12797C4A6215DED5C9A5E1B112C5F258515923A1CAED
            C7B7AB825C686B76E5B1B0976CCE0167F54D9BB87E26563C16B728383D370429
            C47FC5D9017DF4D3DBA4333ABC46BD282F8F06647CA8F7E1F1951D28C875F4B2
            5E14C938D3EE0C7DE55AE96AC1D42A8B9474DB4731EADE892A02AC173590D34E
            D82967B152A2AB538E624D9A820421B223BA4C24E8810F0CF69007B7133DF121
            4186E39422481265E21CCC45DFCFE463C2C3BA9C66B1231F9C392D4EA17FCBB3
            F9027E27CF8C010538119833218DF2BD38BC2E1E4760457C3846097D903E150C
            F6E4E0E7DF6746E63377A6123933D7E3B3D768B424E2685595953B598553E2E7
            94889A83B2A4F2C86EFE5E0D6B7167CDB3551F0B27240A223752227EFAAA53D4
            93E93E8832B91D48A7D3F007CD8892E7521B591A9F21C82442A27C43B19A14D7
            CB8C7DA4849A1001A9B507CFDCBA10358603CBDEFD310FAFFBF223C6E70283FD
            204FCF219AC1375820FF3D1295F1FA6BC9D3EF7AFCD907BA6532B85090926C1F
            0C7A522AE5121CFF750ACB631AB9521918ECD98A3C46D730CA7BDFBC8D9922BE
            690243AAB20B6014F9B0AB0C0CA6476EAE4CE5BE694AE2ACFA285C5C44E74CC0
            4B4F38D89182CFEA80973C55C8E747057D86BD6EF83D16B1E88A0009838295FF
            8AA285D45AF65E6C7831D921E6F1451014016E03DDE1BB23AD786D4B0259A39A
            825A18799B24805110752D557C888C89864ECE204111675494C5970A7638527E
            A27A01C45AB3E87E9792A26D3DA6150E5048E3DAEFB0DBDCFA668B232A65CEC8
            8B981C8B353107E8F71B2B8164D43CC414F2E09C5F784C5E956687521E9FC647
            CBECF283432642F821F210774E6C347997E8B0C25338E90E2BC3E68459B753F4
            738B9D3631FBAB6072AA7E7A1D8AFCC473C5045CB83D9C5096B795646EE9E349
            A7849A6131D4061E9BE9E8F840825F83276B714989C7C99CD09C5DC0AFCF6C80
            0F783823F7B8CD33247E1D4E0B795C742A6B0E03D17AE0513C48AF49C1A1D9D0
            D1F33B49C996BE446014CB9BCEFC606449EC8E8C6DE10A8F412E8F823F81A228
            B6235534A17F18BEE79E4CFCEEA1179EB9B423928451E9859BF8ABE4F142E785
            A705908957F3E8315D00C35A7E33C5D48E22FEC925240C0CDB504870D2523003
            2D5044219016236F75736B83BCA48F7204F29E79F3904CE507251E169FA013D5
            0868E214800F98CC937AC3146FE6FE6B31DE8A6801FD9BA98818644F4FC15CEB
            7243562E054B9E721969BA498D7C09E42822C5A41AF1CCE5F29E449EF5736DAC
            854BF7EA56D0E01C25283904F0B5940A4BBF070176F66D40FBDB3D687B6F1DF4
            28AD9BD68EDA7A0706A21B11E2424BD96C81EDEF4A63E2C48948153E324B236C
            56E151AD4427733C4E8CE8889AD528E726275330E077F905051C1A191552A8BE
            705824FF05B59F6CBF008D9C05AB973B69ED8AA90CAC049CDA401DB2444F5886
            DFE30DA0AFAF0FDE8921A4D404864B23F08602A6D0B761C7706F023E4B180157
            A5A06B6EEEA1E1F1C6721A45956869218A486D0D5145037D4323F005AB446399
            A7E4412E99165BD6ECF882FE80882436ABC5DC8696CC7211DE2EB7BA1C42F03B
            4F897921CF220A067C4D5ECA5B47E835DAE1E383E1641D02947C2E59FB4B7FA5
            2794FCEA028307127259B7A221CD03CE31015DBD88FCFDC1AEC16717BD869166
            5D00832386EE74099510C9EBA17CC1438B65134A8622D995CC56525931A5E718
            18627862C6651E605378CE3A334891072E5A78C69B79110A01C3282802184213
            97A89AC5610A0A72584E8DB68A4A2806060341E13918BA090A8BD80FD2053038
            7B126B2C95CAD5A3BAF9FE7C44C1032613B5E28132308A7E0732F61A91C390CD
            99F2F58194484A35875350F63A4B828F1A31141F81BD608373A4027ABB84AEC5
            FD187E732558BE71F69419F9EF1C3363FE492759AE253C65D2C4720803DD1172
            D0C37D666D9EDD6B3A58BE97FA09943477C3D4A2B5983A09450A0A71FA79809C
            6D150517CE6FD93173C06087ED0B0AC551B3FD98931C7A83885F016F37A406C9
            911BA62007F92C74759932BB0EFA9B1E0A0AACCB1D4FB096170514565A55CD80
            C0C501F6F2069F835E88472E8E24CC00EEA4DFE3AA1C1E0DCE748EA56D3D7693
            15F3F5E4B370F2D4621E30CBE563B902A5156EE4F9B54629A5C817E1A6A094A1
            F432A3D2B28F68A8A7DFF1355463B352825641B8A1F40DD58D8350B5C2573362
            88DD4D250B95126F99D09D16851913B0B30BCD0FCC6F6F7F75C512F4CDA26850
            E98383288C4E1653E4D0497983B01E22CE8A85651FADE2C94B6287CA224E7EF4
            722497AC69935AB1AEACAAEC1A414097C36A921EA6F5E40D0D23634A4692C729
            4AE5D9D164040E8B4D9482F0CF787B96E5FE8DB16245C37C58FC3E7C76229BC3
            A1C443E450CEDFCFF13635513939667EBF54953627EAE81EF10716CA6F78CBD1
            E6498AC85694DDE2EFC26489014AA8853A0819607E2319F8F2187D7E0069C730
            0E99533174C289536EFA8FB31BFE9A471CB23B85582C160E7AEB87E5AC0F01BA
            0FDED748164610A9098BEB6BEF48A28212FE4C4A1C75085D342E2DABA2A43C4B
            DFE324DDCD07637483D95292181079FC76D3E863CC9E9CE6540336DA44DA0498
            87D660C747394CAC3601CD8CC91380D87A0D727F19FD7CFB76027AA309845421
            8DEA2A8F606219BAB7588CF21097151408D03F6202912784EDE81EC5E48610E2
            04C6009777A47431B72F118F859A6A83316EBDE7A84D403173115A5CBFCF2A76
            D938E749664C961866FD37D13352C42045B4486082A8CDCB5A57375174D5BE16
            C04821AF1430516BDF89C9F7DDB5B5F58DD52BD03793ACA92A00773004830C8C
            81A1739E51DE991A0386441E9D81213BCC99D163C0D0A48C0086CE2764A256C4
            7C6FCE8D792446294149B7C2BA4E45B3F1898D934B4DC6F493529A70970C0C8E
            4C423F563281C158613018C6AEFA1DAD7CAC619437C98AEEF268D2FEF2E65923
            1FBE91C5CA015117611BA2C492AED9E1CB9A65E6864594497BCBBA4B85940FA3
            9B28E2BDB9157897AC346960AF86E9B133E6355FF9831FE1566E314F148660F3
            E770CD35D73CDBBAA56F5EC4D58C8BCEB9092A71F827FE7115FEFCE73FA324DB
            F1CB5F5D88DF5D76395E7C6121B66E6A17E709931A27E0941FFD106DDB36E1A1
            87EEA7C79546656D184D93EB70E49147E2DEDFBF4000F0234AEB78C8B18763CF
            A3E6E2BEFB1EC7E66D1FE1FAEBAF01E3FEDEDBFE86C9754D983973265E7EED55
            0C8D469156F3A8ADADC565E7FF0A575C712B864777889DB1B9FBCEC04F7FFA53
            C4099D5B36B7E2B1C79E139AB6BF39FF42CC9853254603BCB964331E7FEA015C
            76D96568AA0FE2FDF55B71DF3DF7A240488A5456BC72EE59679F57158A743AE8
            D93FF5C4D3BF5AB972E589E4547227FFF8A757EF7FE0DC159B36764EFDE7CB2F
            9DBF79F3E603F7983C79D51F2EBDE02C872723A8980D7E24B86DBDF68308EFC1
            7D89ADADFDE617723545CA2A3F3EAA9287AC281815B53C624F87BC7A811EE08A
            8D38FAAEF94B5F7BAF7B3B322D643D4127E5841590BD41684EB7A0547C302591
            6BB172C26A3587B50BBB279ECE23A6446D112794A924821E9FA00D5CEECCE50A
            DC736CB1CAC8660BE405296DB6F079838E12FF90B71D79AD14AD3C8E5812E5E6
            3AAB038B09A7E58B2F2F276F7EC90C1AA95006866E5E876CDEA1427982286320
            24592844290EA25C961245068A521491EC440D19104A91729804717DD58E0AC9
            A49956F2BEF6BFF296F130BA8717D12D6EC53EFB7BDACEF9C511BF3EE2B0590B
            F4224BD5D9293197F0C6820FBF77DFFCA76FBFF6FAABEBEF99FF4FECB6FB2C34
            3737E396DB7F83679FBD4DD099830F3A078F3F76379E7A72B998747AD041FBE0
            E69BE7E3F8E38F27BE1FC7B6ED9B71F24FBE0FAF4F022F7147C7106EBCE96E5C
            7FDDE5E8E92EE2B24BAEC53D775F8EFBEF5D87F7DEFD1037DEF81F489367BEE4
            92BB70F43107E2B4FF988DF32FB816D7FDF512545699397390A2CD01FB9F8607
            1F7844EC9E5F74D15F70E1851762F254272EB8E802DC78EB251451B6E38E3BEE
            C0B2A54F82FBC0CE3BFB59BCBBAC03575D7511BEFD3D60FDFA6101EEDF5F7C99
            D882FDED6F2F447BDB4BD26DB72DBD6AFDBAF78F3CF3CC73F6E6A871CBCD770C
            DD76EBA5FB3CFEF8922B7C3EDF69FBEDB7071E7DE02FABBE7FD2B7AE3DF6B8FD
            5E6260E68BA61C2AEF4B6473D92FB3E7FB8B8161251AA088FF3281C1323A6FAF
            29CEBBF3EEB79F5DDBD70E6D56047A9027789AC0D05D1E010CC36513C3DC253E
            D226607039B2A85122F2CA1A56259E659DCBC1E37323DD435C84FE5D13A981DF
            6E86EF4C366BEE775332C987870C0CCDA28A7275D3E2CD70A0647531FC5015C0
            B0FC0B30F81C45544CF16C41029279EACE04D8540931B2A6229E2C3670783E1D
            8F1AA0BCC46588219BA5524144344B89E884E6246010B8888777B67722F7D130
            02F77A11277EE2ABEAC7D147352DF9EEF75B6E3960BFE04B11DE382A69D08B12
            DC04EE575E6C3DF2EA2BEF787EFACCFDDCFBEF7728BE737C2D366C00FE76F725
            78F0C16B45A27FCCD197E0A20B2FC30BCFBF86CA8A5A1C43C67CDD75F7E38C33
            CEC0E62D1BB0F2DD6538FC888388DA4998357B2A868686F0E0434FE307F34E21
            FF92C703F73E85575FBE1497FF710346477238E080FD912FE4B069D326842304
            B48367E3B6BF5D8DE34E389CF29224A64F9F8E3D67D7E3949F5C8E5FFFEA02F4
            D27358B3660DBDDFC97863F1CB70BA75FCE6821304C564E741762A28DE49275E
            85B37F7E195E7B6D11EE7AE85BF4FAC30492ABF0D28BB7890DB61FFEF0AA8D67
            9C7EE6C58F3EFAC415C71F77C2DEDFFB5EB360073F3CE9167CFFC479B42E0645
            A92B44643AE97B7367CD98E5DFC885124CDD1C441374E28F9A5E2046EEFE128B
            0891145F4BC41BC6CEF484DD71C1173264870993F3185694340F52B20B0B96C5
            E7CD9FBFF8D9F7A3DDC8EC3381C8AC9392480286CF4B80A0D72150E80EAB9865
            A149A6589964310DCDC2DBB8061F7225C52421E780415C37082B459864298FB4
            44C93EFDB74E199D1898E910F33E31564D6EE539251438841E027D7B283462D6
            5EF136339353FE2C9786889E3DBD383E4A97A918EBCE4B94EFE8E52A120E42BC
            7FCF753FFCBDAC94238C6A62578C7FDF4D3985D00760B94BFAB451D21C5F6B60
            C7EA5664B776404A6DC7D46637BE79C4CC274EFCFEDE37EDBD27D673302A9562
            F05A5D888D16E1F752E64DB7BBB30DCD0B172F6F5FB86011F6DD7F3FECBFFFFE
            F8CBB56761D5AA67785C0566CE380ACFFFE3258A20CF63E58AD52336AB33BFE7
            9E7BBE71F2C9DFBFF2A59717FC6AF5EA772FF8CE3147C2E1B462CF3DE75232DD
            850B2EFC1D8E3B76DE238BDE78EBB47BEFB91F8DF5C06FCF7F0CD35AE612F036
            60C78E769C7AEAA94865863077CFE9B8E1A63FE3F4337E720E9F684F9E3C795D
            D01FE8FFF6B7BFDD7DEA29E7E0B55717E30F975C8AA38E6AC01F2EBB177BEC35
            15DF9B7788D824B0DACC9CE0817B5E25F02DC345E75F47003A0B4F3CFD477150
            F99FFFF99F78F9E507451E74C6E917E0C413BF8B458BDEC249279D84E38FDB4D
            4480737F791F2A29545D72C9F1745DC0D34FBF847FFEE31EFCE59A0B4F38F6B8
            C35E52294213E110E2CF7CB8C827F25F5D6068B1B25511E530884F6B76BCB878
            E0B4071F5CF6F0B65C14B1B975D059AEF163C050E9C13130F820C750CCDD1F83
            92060686DDCED485DE3549801BA5F7DE6A2ADF59C2015436D6C1F028182910DF
            E404984F922CE6D5880FD5DC2572D157AF3A068C51B36A9680A113288C323038
            B0F0A745D6CD6D5C98136CF57263AB56CE31DC4A390FB198470539392B247B18
            18FCFB7E1B45408A107A6F1E466B0E99F709196B0780118A2C861D87CCACD871
            E271336F3AF8503C535D8311BBD8B6A71C45A744DA1D10ADB5BC6DFFF003AFFF
            6AEB477D07FFF677FF31EFE9A7DE45FFE0C063DFF9CE77E65FF2C753DE7CF0C1
            071D1EB71747132F79E2F167263DFEF8537F9A3861CAC69F9DB6DF4DA3A3B0D5
            D5A178FF03EB7FD9DDDD71E72FCE3E518C24E1B758B56A1B6EBBFD6FFD4F3F75
            47ED6597DEFFB25A52942B2EFF8FA3AFBD66010E3BE4685C7CF1EFB1DB6ED304
            155BB6E20D9C72EA0F70E3CD57E09E7BAFF4D43520C365DFDC8FF3AD6FFD587D
            E4A12727AC59BDE5D8DB6EBDFDEE279FBCBBB6A76F68EA95575DFCFC0B2F3D14
            6C6D6DC599679D81279E7802D75C397F8DCD12CE85FDD387DADADAF638F4F0AA
            66A69A1C69EEBBEF4AD16371F4B74FD19E7DF6B1D0BDF73E7A0B19B7EF8A3F9F
            3D6FE74E15679D790E6EBDF5F67D1E78E081BF1E76D86187EEB3CF0C3CFAD05D
            A8A9775DF683934EBCAEB1C9A7C51231CA7514B888C2A633E92F0F18A2045CE4
            BCF2F8F7D82659FA1706EF0B26CB48F1882D8F9E8C8C2717B4FFFEB1C7D75CDB
            EB50119D13212B75C2C97BF40218443FC8F835074506B1035576CDBA26F6EF5D
            44AF58888D4F4773B124F6EBABC340FF2806E351A2616E041B6AE0A89190A3FC
            3D417F9AE323104E1D6CBA9883C172FD76A9048F5E1291A8839B9C503EA115FF
            51DEED1A037E795D3FAFB5D5661F14456F86EA8643F389CE594EFA99A9715D56
            9298668E72EAD8B65EE4B76E86BAB31DE16C1AFB354EC1ACB9131EDBF384C8DF
            F7DCB7E68D3017D7914BB5581342755137B4B2689C0FD1E1125ADB8727FFFEE2
            CBDFEE1918A8A71C2A79DD8DD71FD6D252BBFE8E9BFF7AF70B2FBC70764D4D55
            CF37BFF9CD277EFFFB5F5F7CF9E5D7DF595959D9FDCB5F9E7E1D27BB0C024AA8
            2FB8FDF6DB6FD4548393EDE2C1071FFA1C01EB9EFB1EBCFBC6BFFFFDDE7D3842
            EEBBCF51C679E7FDE69CD5EFAD3FE698638EBB67F19B4B4EE3FB9F3B77EEE281
            C1DEA6638E396AFE0F7FF4830E767FFE8037532AE51C8BDE7CDEF28D6F7CC378
            7BF11AC94549C65FAEBCF361A2B0990B2E3CE3DCF9F7DC77D5732F3C7C412211
            755C75F5153FA0E47DE9CF4E3DA773D1EB4B9DC430D1DADA37E78F979DFFDA2D
            B7DCB23F5D7B474343035C2E4FF2673FFBD965F3E67DF70E5EDFB3CE3A6F5D7F
            7FFFE45251759C7BEEB9E79D72CA91F7AD5FDF33FD820B2E58AEEBBAE2F35946
            EEBCFBE659535A6A327DFD7D88547B45A48E4687894E567E8581A1A5CB251C1E
            6864385B876CC1875E5879CDF32F7C74762AE24274CF1A02840B2E96CF2160E8
            4E05058ABB0C0C8D15C21D267532345500C24909B95DB188431FAEF999DD1E12
            0360136484CBDEEF456184BCF1845A284D55D098EFD758C52E16531D85ACD541
            21D6A2E7296A98D950AFBBE613C090C64AB23E768F52B9FD62AC4071FC77C57D
            0F08C0DA94909842CA85AF3C70254A8050E952B0752765B99403F50D88BDC72A
            AF1B874D6C5A7CFC5E739EDF636FBCEA6A412777BA09F8EB2AA5506971E02806
            E080EBB3DCE2F49DCF1AE2B1F21840D5EC8EE30FDE00635E3E3A9A86D3C9EA7D
            8A59EA61EA12085030D5E3DFE13A49BFCFFCDEC84811E1B04D44787E3DAFC7AC
            1DE3C370D16A4D8E6564D83CD4E6247B60108EEA6AFA7181450CF38EBA7A07E7
            C30464D5CCA50AA686EC68B4AC8642EF33344C3430A4D07BB34CABA982AD956C
            A2073E129628C7310FBE85BA52996AF107BF375FEFC808E81A7993A0646B6CB0
            16F9DF6C4AFCBB742F8ADB0D8D7F3793CB133DA4FBE65205211ECAEB55FA72A9
            144FF4E12D9AB16D4CC9301FB2CC0267BA6A1EE1F3DD5803881515ACEBC51EF7
            3CB761DD4BAF6F8332A506F9DDAD8419A718D6AED057C34E49BA8D926BAB5954
            2808AA38F99645898993AB0BD8502829B66672B06CDA8019C15AEC3665222A69
            917A360D60F5EAD5485144A9A888C00856A0404FA9E40BA0E00921EF9490B19A
            3DFAFCC1950B4A3942283CDC5D2E965B59CD46283E4814365B460CD74D891658
            C9A458F99C5D3465B9F3A6765BA90B486F1B417C473F4A7D51F20BA3F05A52A8
            AFB260E6B4D02B7BCFAE5A306746E5E2699322DBC25576142927296A290A8C12
            3913851C0D9F5A136D94B95AD84958221AA95B4565061BC450BC009FCF8EBC91
            150E438D9191918349A735320C0509A2983EBF0BFDFD3D4A6D4DADA6B274A8CE
            AFC1C2644E71E8CFA21BE3C0B76862665E577717EAEBEBE93D65F411885D2E17
            3D138F70406EB7D973D1DF17474D4D40008941974A91A37125C4CFAC4A00D98C
            06B7D38281813CAAABCD7E896C9E78BF4BA6C4D8FC3D0F2D782C962280060960
            19B81C6E51F35555ED1780CCE70D381C127DCFDC3CE17BB4D914BABF1C4529F3
            3A583C84875266D2057A4E325DA755D41F657329CA2DD29493F9CBEFFD550686
            5634B7476D41018C551D38F09EE7D62C7F7D49073CB39A9168D1C781C19290BA
            4D429E3CCC18300C6BF9304E324FA429A506B706E99468D9B27944FABAE023A3
            0851B4993DA90933EACC5EE095EF76106F5D8F2D5CD9190C41AAAA81B5BA1132
            855783721A3EDAE587CBDB9626300CA1B72BB66585D882992D95C64418F83D79
            DB5637CF3D58DA921B697259CAA44655181DE4CEB746B95E1B1856C5A865AB66
            41D86DC5CC49A16D07EFDFF2F437F6773D377D3236063DE6CBAB7A41080FE4B5
            8448182DA28F810C91CBECB981345980D71D825A328B8C853ABB5CF6985A8122
            A71D769DA345910CD9262AF6755648E4BA2EEE04248ECD06CEE3BED2E92CADB1
            0FC90445DAA2818A9043B48672E449A5D2E4204CA34B5314F673DF284C7FC6F7
            9CA2EF05E9A2F93A7239959265CB7844B23952023C0E5B058A05491CC8F1C120
            4727BE5E3EF91E1A1E22F0860468F9C3EFAB408240E1F7BB458EC23E67A03F4E
            D12120B65A4B63266367C743E0236FC8877A4AF950359FE739E516F177AA66BE
            4F2219155A005C24C90A5FDC2BE2757BBFCC224233FE89A4557C35BF2D6BE553
            3E82762E4186E2B160847EE589C5DAA5773EFFCE55DD717A90136BE1A88B2358
            C154CA2E1E28974B4B2E3B79752BE204243664EE552B952B5DD96FBBCA74C691
            33AB4F0B1DE4AA47BB30D367C151BB35E1D0663F1A9C264558B96A3D56AFFB00
            EF7CD485EEB40D096B98C047F429D48CCAAA2AF868F5FD762BDC94EC3B283A38
            E5F209362D67A664B6DFF2C1BBAA9B34831F7C819E6F7234853CD75A94882615
            098999182C9961F03CD2E6808C967AEF92BA88A573DEBC6FFFB5B2CAD5595917
            CCB8DD16F13ABC0DABD053658A013939EE50CC8629B9DC856533D7734C6CA24C
            F134BE615194695241875A55F648185B7801E3F1C936E31F664DD3B80447D95C
            84AE2F8F641EDF9F1EABE72997D48C6D638B4AD1B1AF1FFB75D914C110D72B5E
            FF633FC32E6A6AEE5968BB5E7FECC3B07CF2DFD2D8CF3FF57B632F2A7DF2FB86
            E1287FBF08F318B6B4EB7E795FF1AB0A0C4EF6B8B9871B18976EC7C1F7BFBCE2
            FAD73FECDDCF08B42030A511962AEEFAD2515D5B89FA06A23D5C82D0DF8BFE1C
            CF44080A05F41C793CADDC26CB9FECDB1818AE8239F947192AA138D00677B41B
            13E43CF6A5707F404B031A1B1BE9351544C990B7900D6FE82C62CDCE51AC6D8F
            A3B78B252662A6CBE152F652DE2C2CE27514D5AAEC7EB9A0B1827E871E7A4131
            3BF545C73E4C8B6509147781759E51EB73604A8573C7F43ADFAABD2755BEBAC7
            34DFDB13EAD02FF8BDDD94A4E18F92667A614EE6150A55B2E58B8131661FBB80
            C1DD7BBB80615723BB0CCF5C78FC3BC0D08558D7E703431AEF85FFFFC0F8F73E
            8A66B2C3B19B0BFE74C91403321FB48C7C41A7A44C06B70B3FF166C7AF1E59B0
            F4F68E2CF1C296B9A8228F5D191C46D02D614A73039A27B9857AC8E6CD3BB1A1
            6F0823BA0385402D128A973E1DE3FDDEC276CBAEB4905744011DABD76B1D43D0
            BBFA504D89F5ECDA2ACCAE0A6342B507B326004D0DF4377CC89466FBCF233D3A
            8068348A159D3D62872BD1D78BD1DE01A2453914B276A40B76C40B3E64A53034
            6B2D3DF79030689543B4D581A9931B30A7B9F6D689DEBEFE9A6AC78E898D759B
            6BEBB1CD5B01CD22C4C120CE604AE50725BE9275DB351B6C3C0D65CC169D9FFD
            FCC7FF39267B28EDCA7D4C649A452AB21ADE65789F3040ED532FFC29C31EFB18
            9756FDB4411AFF7A3963466C7C7C6B42FD8C9F7FEC5D3FDD33FF2F06FE69007C
            CE42489FFD7BBB8051AE6A18078654B6C3AF28304C292D609028C88275D1535E
            59FDD1DF7B4B76280DD3447237B12187294D9E8B1B23D8CCA3ECD907C732A87A
            6FE7E0F16BDAFB8F4DBB2B053052561F645B5904416C879A55AEC5824524A621
            56716425AF9E4128FD3DB0254611C867307B6A1DF69BDE8CDD6754B0FC2D8831
            51C267B635F0D098219B6C02AD688872693B77B9318FA5354ED06B72AF7E3745
            9B1DBDBC3B427CB93B4AB903307B66050E9A857D0E9A86355C0A2195CF113156
            5BC5C7215656D763E94DCD3CFDA6777511126476FF85B24D79BFD81EC6F54025
            533FC9C0278121A9159F34BCFF616048D2C7DE67BC77FE33ECE4F380217D9EDD
            7EFAFB9F070C7BF975BE72C0281781102D28B168D61895E26F91159B3B37107D
            C8BDF1BC6FC5B6B679DB07471E2886424213754E630853AB5D1EBF4CF9522167
            E3B226D67DDAD437BAF7A26D7DAB370C17D12D0530620B20EF71417559CBCFA6
            08C55640219414F33758DEC29171434951AE322C23DB4F6F1A4D8932D196CA6A
            CC9D5889DD89754CA4C4B0D90DD479CA5B922173E3CBCF390B3BF5BC28BF420F
            81AC9BA2D0A61EE0DDCD8358BF758B39EEB8C68A59D36AB1E7DC69D87B0A661D
            10EEDE281AF845C9AF9DEE9F3B0B5D44AF64A162922B3FA2F21C454AA9895AF2
            DE66A1DC89E8F17FC206C66D8E0D46DA450DA431C310A7F265DE6F7CECC0E5F3
            0CEB5F3CEDA7FE2D8D2143FEEC5719BF36ED53AF67FE40D26CBBEC50F419943E
            F502CA2E407EC6F519F218B03EFBFDBFF843DE753BE3EBF5B1D733BE542AF55F
            0343B43DBA4D9ABEAEAB347D6357EFA1A58A0A5B438377DB240FD6F9C8849925
            19C4F59D8A556CCEF668086F4CE0D097D7EF38776BD67A6867C98A8C930CCF6D
            33E7D9F136235972DA3D2C0C4CCA3AE1CA7961CFB9614BDAC09528B6B48EECE0
            08458F343C6A02B54A0955D69CF8DAE053442949B4C222225725A1C3A94A28A4
            8B888D66D139A8A22BAE62D5D601742733C8682AC29108664E8F60CEF47A4C9D
            E2474B04730F08776EE0B91D1277C9B1F6AD64E6099CB81778C7C4F54911681B
            AD975557C59C40B339DDFE49E7F809EAA18AC628F39FFF7780B1EBFCE9E3C9C0
            677D7C0E30F48F03837FF66960C8FFAF02A33CE8DEC2F3D876314E5112A2976B
            F6F8E4C6662EE048268EC15C3268F85DF0383CB1088B26B3B11447C4382E51AC
            CF5CDE70A387E8D33BDDC59357F6E71F7F8FB85807259D39AE7DB210306C2558
            0928A95444F022B7D5ECD3E6E7A2161230C82B5B541DB94C1EA5BE5172FF717A
            73BA9834EB59F2905D8FD084952DA6DA845F5621E75228A41262AB2F9A579114
            0A15F49A8D55B0B684513FD1869ADA3C26D652D469B662B2CBF1A3BDE15DE086
            966403E64E3E2701C849BCCA69331B3758F183A38818AC4306A28BB2762BC6C6
            768CF9EB5D4FAF2C115FE65AC678C45044722BF186802E8F3F7FC33196644B9F
            4A643F550D396E34FAC7BE426C7E8F5F85A1E0733FA472B1D9388D332F40D6FD
            E376582E8AF9D87D406C828FDFE9270062FEBD3E9E84FCEF00637C57BD0CCC31
            708CDDFA974AA5FE0B60F076926A7E97CF1EF8708DBB4D584D28A125DCD58A2B
            C3B30E2CECE2F9E4A6DCCCA1CB3E02868705806BDE18C4E90BB7E6CFDC948936
            2564F3A45DB1AB021879A356EC63DBCAB54DAC2363A869B15B66E59654F6DA19
            0D7A4C85342A89D26FFE8A91BC38202AF1893A4F24D27230D271E8F9AC38C9E5
            8E9E9CC789AA19D3A1543BE0AA311B6202C1149AEB244C68502E9908EB0793A1
            AE0B401E62611D3EF976F134297E16FA98B62D3F7C85AE5912746BBC8F8A37B8
            4A06DC0EA96C40631FFFB3C010073AF87C3A356E56FF1F18FFDE876168FFC5CF
            8D722B28C6BF8E5DAB59EA6129FF0CE53AA5B1076DFE0EF7EF47C920DA12C53D
            56760EAC7B97C87F7B4E479A2250DE1D468C7CBF8D4FCD6D922847D624B3D890
            2B5C452D0313FD0237D0ABE6573EA0E016358E62590DDE98D9A494E13259A5BC
            17FCBFDABB9ADDB68D20FC2D975C92A245198EEA9F3A8E9AC42DDA434F057AE9
            BDCFD0635FA1E71EFA087990A2CFD1538BA0E81F90284AE13AA91DB99265C916
            2592DB99E1126D0E157C936D700C43026C51A6BCDFCE7C3B33DFA4F44FEA6869
            4F4B238BFDD8E23D72491F241A1FB6237C9426D86D071BDDD2CCB6BC60E5FD2B
            A5D0D8FAECCE02634671348F05F8CB62EF97313E7B7A967DFBF3DF33F447231C
            5D5AE49D03696892542F1B475ABE123C14F5913E0382D8BF5E14D0053727E5D2
            68AFE6B4E82F2A5185AC451E2FD4C808088B88BC4B5C8848C0DE66885E5BE3FD
            CD160E63F5D5A3D07BFA40E1D714CBB3B440D100E366DBAD0546EE12831571CB
            B95AA8AA4572B793E5E405FC0D113B268A901C6598FEFE26C76FFD67F8F1648C
            D3CE63B006204FC453110532A111E9FD2BAF72E39ED1D5C4650EE94A0BCD0947
            D644A55846110709632EFF5E4A91A2A15FE43925DB049077E2083B7E895E2741
            6F23C043E2D63B5A5A97652C5DEC5443B46E807193EDCE0223B72C73160B3026
            0A8668F4DE3170F8F255F1F14F67D327DF130939CBE65814447E93362C2D68D6
            826560283F92CEBA5AED4624718AEA9113BE32FA42CF89B41752CFDAF2143A2D
            837D02C23EADFE7743FA8EF025D18BC10EF022256C525435EF100F6AABEABEAC
            5DBDF01B60ACD76E2F30BCEAB8F7DF43C4124E8483166FDD4D57499B67E0E242
            8585E232F3429FCC97BDEFFE98F407932B8CCECF31F50D2E8308171E790D22E6
            79925228E6AE5AD7FED84A4E3EE031C7848C45F91A2DE20E3D62D60FE318BD30
            C681F2B0477FEB2EF191AE5161971849283DE64B699B944E4223AA5304E20618
            37D9EE2E30725555F1B1E7B05C2EAEE4E89399C898E8F10FC0E7CFCFF1C9D1F1
            F4EB97E309082C185B8D79188858F43230AE03B09EDC6145493062691BAE6A4F
            A65216BD6F2864A2D71CD0B5EF035F909778B16B31D82831EAF2B84ACF4D0060
            EFC2C247FC65B967C25F79FF0D30D66BB716189E728D254C96A5F0DB157FD123
            1FF7DA65EEA66BBBBE0E3E9FD3BC3017C888178C693F3F255A703ABE3CE90F2F
            30B898E24DA6302C2C46E46572F220AC5CE811A044C58F16365108842640A215
            1EB415529BA3455EA24B80D956FAD33DE33FDF36FEE89EF625C7A2F8F8561298
            7C201970B027C7CD2C1FD75B75F68F0618EBB63B0B0CAF4A04408021E35FCBEA
            044AE5C88900F7333FC9E344B2870490DEAB0287C305EE1F5FE2C9F134C77036
            7722C09E64CC43DAF6637A1E479A2BE171CFCBBFD9D278DDF1FD21F188018FB7
            DE222E91F29470CB0A22D29440DC3D27EE42143FE4F2F850AA853364E691358B
            55F7DF0063BDB6BE04DFFF56475ED3B86C50065A04B0B47039B0AA53497C4B2C
            83AFEB0CBA34102DE5A7659D6062F96C7AFD524744D08D4CA49B1448C725D110
            CE814C8B4A73D60138E6308A3C484860A1E78FBBDAFF33E271805EAD766E613C
            96A62E5C2ACA25A24444C7A777566FA5C7D2357DEA8D5DCF6E2F30E66EC30D02
            113DCBDC065BE72FB9A87825308A4A09B1F4225CC94EAE783737137206DCAE41
            578FDC8194C43C213065210EEE6EA56BCF5A16B3F03F43108DAAB2F60C814A00
            E16D602C1D306A3FB9B9A64FBDB1EBD93FEDA6959F03FE0FB50000000049454E
            44AE426082}
          HightQuality = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 90.708720000000000000
        Top = 207.874150000000000000
        Width = 755.906000000000000000
        DataSet = fsreducao
        DataSetName = 'fsreducao'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 15.000000000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NRO_ORDEM_EQP'
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '0##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsreducao."NRO_ORDEM_EQP"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 42.456710000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NRO_CONTADOR_INICIO'
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsreducao."NRO_CONTADOR_INICIO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 85.811070000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NRO_CONTADOR_Z'
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsreducao."NRO_CONTADOR_Z"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 193.094620000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'VALOR_VENDA_BRUTA'
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsreducao."VALOR_VENDA_BRUTA"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 138.165430000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NRO_CONTADOR_CANCELAMENTO'
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsreducao."NRO_CONTADOR_CANCELAMENTO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 334.614410000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'VALOR_VENDA_LIQUIDA'
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsreducao."VALOR_VENDA_LIQUIDA"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 260.567100000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<fsreducao."CANCELAMENTO">+<fsreducao."DESCONTO">]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 408.645950000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<fsreducao."ISENTO">+<fsreducao."NAO_INCIDENCIA">]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 483.779840000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'SUBSTITUICAO_TRIBUTARIA'
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsreducao."SUBSTITUICAO_TRIBUTARIA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 559.472790000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'BASE01'
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsreducao."BASE01"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 559.472790000000000000
          Top = 18.897650000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'BASE02'
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsreducao."BASE02"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 559.472440940000000000
          Top = 37.795300000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'BASE03'
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsreducao."BASE03"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 559.472790000000000000
          Top = 56.692949999999990000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'BASE04'
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsreducao."BASE04"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 559.472440940000000000
          Top = 75.590600000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'BASE05'
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsreducao."BASE05"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 621.165740000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ALIQUOTA01'
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsreducao."ALIQUOTA01"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 621.165354330000000000
          Top = 18.897637795275610000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ALIQUOTA02'
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsreducao."ALIQUOTA02"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 621.165740000000000000
          Top = 37.795275590551200000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ALIQUOTA03'
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsreducao."ALIQUOTA03"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 621.165354330000000000
          Top = 56.692913385826780000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ALIQUOTA04'
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsreducao."ALIQUOTA04"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 621.165740000000000000
          Top = 75.590551181102280000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ALIQUOTA05'
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsreducao."ALIQUOTA05"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 678.638220000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'VALOR1'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fxrelatorio."VALOR1"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 678.638220000000000000
          Top = 18.897650000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'VALOR2'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fxrelatorio."VALOR2"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 678.638605670000000000
          Top = 37.795300000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'VALOR3'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fxrelatorio."VALOR3"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 678.638220000000000000
          Top = 56.692949999999990000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'VALOR4'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fxrelatorio."VALOR4"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 678.638605670000000000
          Top = 75.590600000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'VALOR5'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fxrelatorio."VALOR5"]')
          ParentFont = False
        end
        object Line12: TfrxLineView
          Left = 37.795300000000000000
          Height = 89.952790080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          Left = 84.692950000000000000
          Height = 89.952790080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 132.283550000000000000
          Height = 89.952790080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          Left = 177.637910000000000000
          Height = 89.952790080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          Left = 257.008040000000000000
          Height = 89.952790080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          Left = 328.819110000000000000
          Height = 89.952790080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line18: TfrxLineView
          Left = 404.409710000000000000
          Height = 89.952790080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          Left = 478.661720000000000000
          Height = 89.952790080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line20: TfrxLineView
          Left = 551.811380000000000000
          Height = 89.952790080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line21: TfrxLineView
          Left = 616.063390000000000000
          Height = 89.952790080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line22: TfrxLineView
          Left = 661.417750000000000000
          Height = 89.952790080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line23: TfrxLineView
          Left = 2.000000000000000000
          Height = 89.952790080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line24: TfrxLineView
          Left = 735.008350000000000000
          Height = 89.952790080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 109.606370000000000000
        Top = 359.055350000000000000
        Width = 755.906000000000000000
        object Shape2: TfrxShapeView
          Left = 2.000000000000000000
          Width = 733.228820000000000000
          Height = 26.456710000000000000
          ShowHint = False
        end
        object Shape7: TfrxShapeView
          Left = 531.134200000000000000
          Top = 72.149659999999990000
          Width = 204.094620000000000000
          Height = 37.795300000000000000
          ShowHint = False
        end
        object Shape6: TfrxShapeView
          Left = 304.362400000000000000
          Top = 72.149659999999990000
          Width = 226.771800000000000000
          Height = 37.795300000000000000
          ShowHint = False
        end
        object Memo23: TfrxMemoView
          Left = 193.267716540000000000
          Top = 4.338590000000011000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fsreducao."VALOR_VENDA_BRUTA">,MasterData1)]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 260.740157480000000000
          Top = 4.338590000000011000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<fsreducao."CANCELAMENTO">,MasterData1)+SUM(<fsreducao."DES' +
              'CONTO">,MasterData1)]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 335.488188980000000000
          Top = 4.338590000000011000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fsreducao."VALOR_VENDA_LIQUIDA">,MasterData1)]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 409.496062990000000000
          Top = 4.338590000000011000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<fsreducao."ISENTO">,MasterData1)+SUM(<fsreducao."NAO_INCID' +
              'ENCIA">,MasterData1)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 483.622047240000000000
          Top = 4.338590000000011000
          Width = 64.251968500000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fsreducao."SUBSTITUICAO_TRIBUTARIA">,MasterData1)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 559.527559060000000000
          Top = 4.338590000000011000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsreducao
          DataSetName = 'fsreducao'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<fsreducao."BASE01">,MasterData1)+SUM(<fsreducao."BASE02">,' +
              'MasterData1)+SUM(<fsreducao."BASE03">,MasterData1)+SUM(<fsreduca' +
              'o."BASE04">,MasterData1)+SUM(<fsreducao."BASE05">,MasterData1)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 680.803149610000000000
          Top = 5.338590000000011000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'VALOR6'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fxrelatorio."VALOR6"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 345.378170000000000000
          Top = 51.574830000000020000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'RESPONSAVEL'
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fxemitente."RESPONSAVEL"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 311.921460000000000000
          Top = 91.692950000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'SOCIO ADM')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 5.779530000000000000
          Top = 3.559060000000045000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TOTAIS DO DIA R$')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          Left = 2.000000000000000000
          Top = 26.795300000000000000
          Width = 302.362400000000000000
          Height = 83.149660000000000000
          ShowHint = False
        end
        object Shape4: TfrxShapeView
          Left = 304.362400000000000000
          Top = 26.795300000000000000
          Width = 430.866420000000000000
          Height = 18.897650000000000000
          ShowHint = False
        end
        object Shape5: TfrxShapeView
          Left = 304.362400000000000000
          Top = 45.692949999999990000
          Width = 430.866420000000000000
          Height = 26.456710000000000000
          ShowHint = False
        end
        object Memo49: TfrxMemoView
          Left = 416.748300000000000000
          Top = 29.574830000000020000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'RESPONS'#195#129'VEL PELO ESTABELECIMENTO')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 308.141930000000000000
          Top = 52.252009999999990000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NOME:')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 383.732530000000000000
          Top = 72.149659999999990000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FUN'#195#8225#195#402'O')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 610.504330000000000000
          Top = 72.149659999999990000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ASSINATURA')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 5.779530000000000000
          Top = 30.574830000000020000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'OBSERVA'#195#8225#195#8226'ES:')
          ParentFont = False
        end
        object Line25: TfrxLineView
          Left = 177.637910000000000000
          Height = 25.700780080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line26: TfrxLineView
          Left = 257.008040000000000000
          Height = 25.700780080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line27: TfrxLineView
          Left = 328.819110000000000000
          Height = 25.700780080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line28: TfrxLineView
          Left = 404.409710000000000000
          Height = 25.700780080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          Left = 478.661720000000000000
          Height = 25.700780080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          Left = 551.811380000000000000
          Height = 25.700780080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line31: TfrxLineView
          Left = 616.063390000000000000
          Height = 25.700780080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          Left = 661.417750000000000000
          Height = 25.700780080000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
      end
    end
  end
  object fsreducao: TfrxDBDataset
    UserName = 'fsreducao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'MOVIMENTO=MOVIMENTO'
      'CODIGO_EMPRESA=CODIGO_EMPRESA'
      'OBS1=OBS1'
      'CNPJ=CNPJ'
      'IE=IE'
      'UF=UF'
      'CODIGO_CLIENTE=CODIGO_CLIENTE'
      'CNPJ_CLIENTE=CNPJ_CLIENTE'
      'IE_CLIENTE=IE_CLIENTE'
      'UF_CLIENTE=UF_CLIENTE'
      'CFOP=CFOP'
      'COD_SINTEGRA_R60=COD_SINTEGRA_R60'
      'DATA_EMISSAO=DATA_EMISSAO'
      'NRO_SERIE_EQP=NRO_SERIE_EQP'
      'NRO_ORDEM_EQP=NRO_ORDEM_EQP'
      'MODELO_DOC=MODELO_DOC'
      'NRO_CONTADOR_INICIO=NRO_CONTADOR_INICIO'
      'NRO_CONTADOR_FIM=NRO_CONTADOR_FIM'
      'NRO_CONTADOR_Z=NRO_CONTADOR_Z'
      'NRO_DOC_FISCAL=NRO_DOC_FISCAL'
      'NRO_ITENS=NRO_ITENS'
      'CONTADOR_REINICIO=CONTADOR_REINICIO'
      'VALOR_VENDA_BRUTA=VALOR_VENDA_BRUTA'
      'VALOR_TOTAL_GERAL=VALOR_TOTAL_GERAL'
      'BRANCOS=BRANCOS'
      'DATAHORA_RECEBIMENTO=DATAHORA_RECEBIMENTO'
      'MODELO_NF=MODELO_NF'
      'DATAHORA_INI=DATAHORA_INI'
      'DATAHORA_FIM=DATAHORA_FIM'
      'CANCELAMENTO=CANCELAMENTO'
      'DESCONTO=DESCONTO'
      'ISSQN=ISSQN'
      'SUBSTITUICAO_TRIBUTARIA=SUBSTITUICAO_TRIBUTARIA'
      'ISENTO=ISENTO'
      'NAO_INCIDENCIA=NAO_INCIDENCIA'
      'ACRESCIMO_IOF=ACRESCIMO_IOF'
      'ALIQUOTA01=ALIQUOTA01'
      'ALIQUOTA02=ALIQUOTA02'
      'ALIQUOTA03=ALIQUOTA03'
      'ALIQUOTA04=ALIQUOTA04'
      'ALIQUOTA05=ALIQUOTA05'
      'BASE01=BASE01'
      'BASE02=BASE02'
      'BASE03=BASE03'
      'BASE04=BASE04'
      'BASE05=BASE05'
      'VALOR_TPARCIAL01=VALOR_TPARCIAL01'
      'VALOR_TPARCIAL02=VALOR_TPARCIAL02'
      'VALOR_TPARCIAL03=VALOR_TPARCIAL03'
      'VALOR_TPARCIAL04=VALOR_TPARCIAL04'
      'VALOR_TPARCIAL05=VALOR_TPARCIAL05'
      'BRANCOS_60A01=BRANCOS_60A01'
      'BRANCOS_60A02=BRANCOS_60A02'
      'BRANCOS_60A03=BRANCOS_60A03'
      'BRANCOS_60A04=BRANCOS_60A04'
      'BRANCOS_60A05=BRANCOS_60A05'
      'TOTAL_INICIO_DIA=TOTAL_INICIO_DIA'
      'TOTAL_FINAL_DIA=TOTAL_FINAL_DIA'
      'TOTAL_DIA=TOTAL_DIA'
      'OBSERVACAO=OBSERVACAO'
      'VALOR_VENDA_LIQUIDA=VALOR_VENDA_LIQUIDA'
      'total_imposto=total_imposto'
      'NRO_CONTADOR_CANCELAMENTO=NRO_CONTADOR_CANCELAMENTO')
    DataSet = qrreducao
    BCDToCurrency = False
    Left = 376
    Top = 50
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 8
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
  object qrreducao: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrreducaoCalcFields
    Active = True
    SQL.Strings = (
      'select * from sintegra_reg60')
    Params = <>
    Left = 376
    Top = 10
    object qrreducaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qrreducaoMOVIMENTO: TStringField
      FieldName = 'MOVIMENTO'
      Size = 1
    end
    object qrreducaoCODIGO_EMPRESA: TIntegerField
      FieldName = 'CODIGO_EMPRESA'
    end
    object qrreducaoOBS1: TStringField
      FieldName = 'OBS1'
      Size = 40
    end
    object qrreducaoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object qrreducaoIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object qrreducaoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrreducaoCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object qrreducaoCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 14
    end
    object qrreducaoIE_CLIENTE: TStringField
      FieldName = 'IE_CLIENTE'
      Size = 14
    end
    object qrreducaoUF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      Size = 2
    end
    object qrreducaoCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrreducaoCOD_SINTEGRA_R60: TStringField
      FieldName = 'COD_SINTEGRA_R60'
      Size = 10
    end
    object qrreducaoDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object qrreducaoNRO_SERIE_EQP: TStringField
      FieldName = 'NRO_SERIE_EQP'
    end
    object qrreducaoNRO_ORDEM_EQP: TIntegerField
      FieldName = 'NRO_ORDEM_EQP'
    end
    object qrreducaoMODELO_DOC: TStringField
      FieldName = 'MODELO_DOC'
      Size = 2
    end
    object qrreducaoNRO_CONTADOR_INICIO: TIntegerField
      FieldName = 'NRO_CONTADOR_INICIO'
    end
    object qrreducaoNRO_CONTADOR_FIM: TIntegerField
      FieldName = 'NRO_CONTADOR_FIM'
    end
    object qrreducaoNRO_CONTADOR_Z: TIntegerField
      FieldName = 'NRO_CONTADOR_Z'
    end
    object qrreducaoNRO_DOC_FISCAL: TIntegerField
      FieldName = 'NRO_DOC_FISCAL'
    end
    object qrreducaoNRO_ITENS: TIntegerField
      FieldName = 'NRO_ITENS'
    end
    object qrreducaoCONTADOR_REINICIO: TIntegerField
      FieldName = 'CONTADOR_REINICIO'
    end
    object qrreducaoVALOR_VENDA_BRUTA: TFloatField
      FieldName = 'VALOR_VENDA_BRUTA'
    end
    object qrreducaoVALOR_TOTAL_GERAL: TFloatField
      FieldName = 'VALOR_TOTAL_GERAL'
    end
    object qrreducaoBRANCOS: TStringField
      FieldName = 'BRANCOS'
      Size = 37
    end
    object qrreducaoDATAHORA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATAHORA_RECEBIMENTO'
    end
    object qrreducaoMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrreducaoDATAHORA_INI: TDateTimeField
      FieldName = 'DATAHORA_INI'
    end
    object qrreducaoDATAHORA_FIM: TDateTimeField
      FieldName = 'DATAHORA_FIM'
    end
    object qrreducaoCANCELAMENTO: TFloatField
      FieldName = 'CANCELAMENTO'
    end
    object qrreducaoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrreducaoISSQN: TFloatField
      FieldName = 'ISSQN'
    end
    object qrreducaoSUBSTITUICAO_TRIBUTARIA: TFloatField
      FieldName = 'SUBSTITUICAO_TRIBUTARIA'
    end
    object qrreducaoISENTO: TFloatField
      FieldName = 'ISENTO'
    end
    object qrreducaoNAO_INCIDENCIA: TFloatField
      FieldName = 'NAO_INCIDENCIA'
    end
    object qrreducaoACRESCIMO_IOF: TFloatField
      FieldName = 'ACRESCIMO_IOF'
    end
    object qrreducaoALIQUOTA01: TFloatField
      FieldName = 'ALIQUOTA01'
    end
    object qrreducaoALIQUOTA02: TFloatField
      FieldName = 'ALIQUOTA02'
    end
    object qrreducaoALIQUOTA03: TFloatField
      FieldName = 'ALIQUOTA03'
    end
    object qrreducaoALIQUOTA04: TFloatField
      FieldName = 'ALIQUOTA04'
    end
    object qrreducaoALIQUOTA05: TFloatField
      FieldName = 'ALIQUOTA05'
    end
    object qrreducaoBASE01: TFloatField
      FieldName = 'BASE01'
    end
    object qrreducaoBASE02: TFloatField
      FieldName = 'BASE02'
    end
    object qrreducaoBASE03: TFloatField
      FieldName = 'BASE03'
    end
    object qrreducaoBASE04: TFloatField
      FieldName = 'BASE04'
    end
    object qrreducaoBASE05: TFloatField
      FieldName = 'BASE05'
    end
    object qrreducaoVALOR_TPARCIAL01: TFloatField
      FieldName = 'VALOR_TPARCIAL01'
    end
    object qrreducaoVALOR_TPARCIAL02: TFloatField
      FieldName = 'VALOR_TPARCIAL02'
    end
    object qrreducaoVALOR_TPARCIAL03: TFloatField
      FieldName = 'VALOR_TPARCIAL03'
    end
    object qrreducaoVALOR_TPARCIAL04: TFloatField
      FieldName = 'VALOR_TPARCIAL04'
    end
    object qrreducaoVALOR_TPARCIAL05: TFloatField
      FieldName = 'VALOR_TPARCIAL05'
    end
    object qrreducaoBRANCOS_60A01: TStringField
      FieldName = 'BRANCOS_60A01'
    end
    object qrreducaoBRANCOS_60A02: TStringField
      FieldName = 'BRANCOS_60A02'
    end
    object qrreducaoBRANCOS_60A03: TStringField
      FieldName = 'BRANCOS_60A03'
    end
    object qrreducaoBRANCOS_60A04: TStringField
      FieldName = 'BRANCOS_60A04'
    end
    object qrreducaoBRANCOS_60A05: TStringField
      FieldName = 'BRANCOS_60A05'
    end
    object qrreducaoTOTAL_INICIO_DIA: TFloatField
      FieldName = 'TOTAL_INICIO_DIA'
    end
    object qrreducaoTOTAL_FINAL_DIA: TFloatField
      FieldName = 'TOTAL_FINAL_DIA'
    end
    object qrreducaoTOTAL_DIA: TFloatField
      FieldName = 'TOTAL_DIA'
    end
    object qrreducaoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 60
    end
    object qrreducaoVALOR_VENDA_LIQUIDA: TFloatField
      FieldName = 'VALOR_VENDA_LIQUIDA'
    end
    object qrreducaototal_imposto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total_imposto'
      Calculated = True
    end
    object qrreducaoNRO_CONTADOR_CANCELAMENTO: TIntegerField
      FieldName = 'NRO_CONTADOR_CANCELAMENTO'
    end
  end
  object dsnota: TDataSource
    DataSet = qrreducao
    Left = 56
    Top = 24
  end
  object qrmapa_resumo: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from SINTEGRA_MAPA_RESUMO')
    Params = <>
    Left = 376
    Top = 80
    object qrmapa_resumoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrmapa_resumoCONTROLE: TStringField
      FieldName = 'CONTROLE'
      Size = 6
    end
    object qrmapa_resumoMOVIMENTO_DIA: TFloatField
      FieldName = 'MOVIMENTO_DIA'
    end
    object qrmapa_resumoCANCELAMENTO: TFloatField
      FieldName = 'CANCELAMENTO'
    end
    object qrmapa_resumoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrmapa_resumoVALOR_CONTABIL: TFloatField
      FieldName = 'VALOR_CONTABIL'
    end
    object qrmapa_resumoISENTAS: TFloatField
      FieldName = 'ISENTAS'
    end
    object qrmapa_resumoNAO_TRIBUTADAS: TFloatField
      FieldName = 'NAO_TRIBUTADAS'
    end
    object qrmapa_resumoIMPOSTO: TFloatField
      FieldName = 'IMPOSTO'
    end
    object qrmapa_resumoSUBST_TRIBUTARIA: TFloatField
      FieldName = 'SUBST_TRIBUTARIA'
    end
  end
  object QUERY: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 336
    Top = 88
  end
end
