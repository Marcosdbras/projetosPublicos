object frmlista_notacompra: Tfrmlista_notacompra
  Left = 467
  Top = 199
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'NOTA DE ENTRADA | Relat'#243'rios'
  ClientHeight = 179
  ClientWidth = 414
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
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Relat'#243'rio: '
  end
  object Bevel1: TBevel
    Left = 16
    Top = 40
    Width = 385
    Height = 2
  end
  object Label6: TLabel
    Left = 16
    Top = 53
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Ordem:'
  end
  object Label2: TLabel
    Left = 16
    Top = 85
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Per'#237'odo:'
  end
  object Label3: TLabel
    Left = 193
    Top = 82
    Width = 9
    Height = 13
    Caption = 'a '
  end
  object Label7: TLabel
    Left = 16
    Top = 118
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'CFOP:'
  end
  object Bevel2: TBevel
    Left = 0
    Top = 144
    Width = 414
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
      'RELA'#199#195'O DE NOTAS FISCAIS'
      'RELA'#199#195'O DE NOTAS FISCAIS COM ITENS'
      'RELA'#199#195'O DE COMPRA DE PRODUTOS'
      'REGISTRO DE ENTRADA')
  end
  object combo_ordem: TComboBox
    Left = 93
    Top = 48
    Width = 300
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
    OnKeyPress = combo_relatorioKeyPress
    Items.Strings = (
      'DATA'
      'NUMERO'
      'CFOP')
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
    OnKeyPress = combo_relatorioKeyPress
  end
  object DateEdit2: TDateEdit
    Left = 205
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
  object ecfop: TEdit
    Left = 93
    Top = 112
    Width = 84
    Height = 21
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 147
    Width = 414
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
    object bimprimir: TAdvGlowButton
      Left = 47
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
      Left = 154
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
      Left = 266
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
    Left = 232
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
    ReportOptions.LastChange = 39368.560987766200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo45OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo45OnAfterData(Sender: TfrxComponent);'
      'begin'
      '    IF COPY(MEMO45.TEXT,1,1) = '#39'0'#39' THEN'
      '  BEGIN'
      '    MEMO45.TEXT := '#39#39';                                      '
      '  END;  '
      'end;'
      ''
      'begin'
      '  '
      'end.')
    Left = 200
    Top = 10
    Datasets = <
      item
        DataSet = fsnota
        DataSetName = 'fsnota'
      end
      item
        DataSet = fsnota_item
        DataSetName = 'fsnota_item'
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
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'N'#195#353'MERO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 174.133890000000000000
          Top = 19.897650000000000000
          Width = 309.921460000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DESTINAT'#195#129'RIO')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 590.527830000000000000
          Top = 19.897650000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CFOP')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 650.590910000000000000
          Top = 19.897650000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'VALOR DA NOTA')
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
        object Memo18: TfrxMemoView
          Left = 60.252010000000000000
          Top = 18.897650000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'EMISS'#195#402'O')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 118.944960000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'SA'#195#141'DA')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 506.457020000000000000
          Top = 18.897650000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'MOD')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 544.252320000000000000
          Top = 19.677180000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'S'#195#8240'RIE')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 37.795300000000000000
        Top = 442.205010000000000000
        Width = 740.409927000000000000
        object Memo15: TfrxMemoView
          Top = 10.779530000000000000
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
          Top = 10.779530000000000000
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
          Top = 10.779530000000000000
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
        object Line3: TfrxLineView
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo24: TfrxMemoView
          Width = 298.582870000000000000
          Height = 22.677180000000000000
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
            'Com'#195#169'rcio Plus! 7')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Top = 18.897650000000000000
          Width = 298.582870000000000000
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
      object MasterData2: TfrxMasterData
        Height = 37.795300000000000000
        Top = 196.535560000000000000
        Width = 740.409927000000000000
        DataSet = fsnota
        DataSetName = 'fsnota'
        RowCount = 0
        object Line7: TfrxLineView
          Top = 18.897650000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Line8: TfrxLineView
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo50: TfrxMemoView
          Left = 4.338590000000000000
          Top = 18.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'C'#195#179'digo')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 564.590553620000000000
          Top = 18.897650000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 61.031540000000000000
          Top = 18.897650000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'Produto')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 364.275820000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            'Unit'#195#161'rio')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 303.803340000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            'Qtde.')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 432.307360000000000000
          Top = 18.897650000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            'Subtotal')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 277.008040000000000000
          Top = 18.897650000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'CST')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 634.961040000000000000
          Top = 18.897650000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            'ICMS')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 687.874460000000000000
          Top = 18.897650000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            'IPI')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 504.118430000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            'Desconto')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Top = 34.015770000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 181.133890000000000000
          Width = 309.921460000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'fornecedor'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."fornecedor"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 54.440940000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DATA_EMISSAO'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."DATA_EMISSAO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 588.189240000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CFOP'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."CFOP"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 656.701207000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'TOTAL_NOTA'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsnota."TOTAL_NOTA"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 114.913420000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DATA_LANCAMENTO'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."DATA_LANCAMENTO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 1.440940000000010000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NUMERO'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."NUMERO"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 501.016080000000000000
          Top = 1.661409999999990000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'MODELO'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."MODELO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 543.693260000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'SERIE'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."SERIE"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 241.889920000000000000
          Top = 18.897650000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            'CFOP')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        Height = 34.015770000000000000
        Top = 294.803340000000000000
        Width = 740.409927000000000000
        object Memo42: TfrxMemoView
          Left = 146.252010000000000000
          Top = 8.314958190000029000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[COUNT(DetailData1)]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Top = 8.314958190000029000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'QUANTIDADE DE ITENS:')
          ParentFont = False
        end
        object TITEN: TfrxMemoView
          Left = 532.913373620000000000
          Top = 8.314958190000029000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fsnota_item."TOTAL">,DetailData1)]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 418.953000000000000000
          Top = 8.314958190000029000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'TOTAL DOS ITENS:')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 5.000000000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo45: TfrxMemoView
          Left = 646.299630000000000000
          Top = 8.559059999999990000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo45OnAfterData'
          OnAfterPrint = 'Memo45OnAfterPrint'
          ShowHint = False
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clFuchsia
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[<fsnota."TOTAL_NOTA"> - (SUM(<fsnota_item."TOTAL">,DetailData1)' +
              ')]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 15.118120000000000000
        Top = 257.008040000000000000
        Width = 740.409927000000000000
        DataSet = fsnota_item
        DataSetName = 'fsnota_item'
        RowCount = 0
        object Memo46: TfrxMemoView
          Left = 4.338590000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CODPRODUTO'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            '[fsnota_item."CODPRODUTO"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 564.590553620000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'TOTAL'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[fsnota_item."TOTAL"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 61.031540000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'produto'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            '[fsnota_item."produto"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 364.275820000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'UNITARIO'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[fsnota_item."UNITARIO"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 303.803340000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'QTDE'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[fsnota_item."QTDE"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 432.307360000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'UNITARIO'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[fsnota_item."UNITARIO"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 277.008040000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CST'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            '[fsnota_item."CST"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 634.961040000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ICMS_ALIQUOTA'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[fsnota_item."ICMS_ALIQUOTA"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 687.874460000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'IPI_ALIQUOTA'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[fsnota_item."IPI_ALIQUOTA"]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 504.118430000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DESCONTO'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          HAlign = haRight
          Memo.UTF8 = (
            '[fsnota_item."DESCONTO"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 241.889920000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CFOP'
          DataSet = fsnota_item
          DataSetName = 'fsnota_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Memo.UTF8 = (
            '[fsnota_item."CFOP"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 30.236240000000000000
        Top = 389.291590000000000000
        Width = 740.409927000000000000
        object Memo34: TfrxMemoView
          Left = 146.252010000000000000
          Top = 7.094488189999990000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '######'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[COUNT(MasterData2)]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Top = 7.094488189999990000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'QUANTIDADE DE NOTAS:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 609.866420000000000000
          Top = 3.314958190000030000
          Width = 117.165430000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fsnota."TOTAL_NOTA">,MasterData2)]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 449.205010000000000000
          Top = 7.094488189999990000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'TOTAL DAS NOTAS FISCAIS:')
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
  object fsnota: TfrxDBDataset
    UserName = 'fsnota'
    CloseDataSource = False
    FieldAliases.Strings = (
      'SITUACAO=SITUACAO'
      'NUMERO=NUMERO'
      'DATA_EMISSAO=DATA_EMISSAO'
      'DATA_LANCAMENTO=DATA_LANCAMENTO'
      'fornecedor=fornecedor'
      'MODELO=MODELO'
      'ESPECIE=ESPECIE'
      'SERIE=SERIE'
      'CFOP=CFOP'
      'TOTAL_NOTA=TOTAL_NOTA'
      'empresa=empresa'
      'CODIGO=CODIGO'
      'CODEMPRESA=CODEMPRESA'
      'CODFORNECEDOR=CODFORNECEDOR'
      'CONF_BASEICMS=CONF_BASEICMS'
      'CONF_VALORICMS=CONF_VALORICMS'
      'CONF_BASESUB=CONF_BASESUB'
      'CONF_VALORSUB=CONF_VALORSUB'
      'CONF_FRETE=CONF_FRETE'
      'CONF_SEGURO=CONF_SEGURO'
      'CONF_OUTRAS=CONF_OUTRAS'
      'CONF_IPI=CONF_IPI'
      'CONF_DESCONTO=CONF_DESCONTO'
      'CONF_TOTALPRODUTOS=CONF_TOTALPRODUTOS'
      'CONF_TOTALNOTA=CONF_TOTALNOTA'
      'CONF_ICMSRETIDO=CONF_ICMSRETIDO'
      'CONF_ICMSREDITO_PERC=CONF_ICMSREDITO_PERC'
      'BASE_ICMS=BASE_ICMS'
      'VALOR_ICMS=VALOR_ICMS'
      'BASE_SUB=BASE_SUB'
      'FRETE=FRETE'
      'SEGURO=SEGURO'
      'OUTRAS=OUTRAS'
      'IPI=IPI'
      'DESCONTO=DESCONTO'
      'TOTAL_PRODUTOS=TOTAL_PRODUTOS'
      'TRANSP_NOME=TRANSP_NOME'
      'TRANSP_FRETE=TRANSP_FRETE'
      'TRANSP_PLACA=TRANSP_PLACA'
      'TRANSP_PLACAUF=TRANSP_PLACAUF'
      'TRANSP_IE=TRANSP_IE'
      'TRANSP_CNPJ=TRANSP_CNPJ'
      'TRANSP_ENDERECO=TRANSP_ENDERECO'
      'TRANSP_CIDADE=TRANSP_CIDADE'
      'TRANSP_UF=TRANSP_UF'
      'TRANSP_QTDE=TRANSP_QTDE'
      'TRANSP_ESPECIE=TRANSP_ESPECIE'
      'TRANSP_MARCA=TRANSP_MARCA'
      'TRANSP_NUMERO=TRANSP_NUMERO'
      'TRANSP_PESOBRUTO=TRANSP_PESOBRUTO'
      'TRANSP_PESOLIQUIDO=TRANSP_PESOLIQUIDO'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'OBS3=OBS3'
      'OBS4=OBS4'
      'OBS5=OBS5'
      'OBS6=OBS6'
      'OBS7=OBS7'
      'VALOR_SUB=VALOR_SUB'
      'ITENS=ITENS'
      'TIPO=TIPO'
      'NOTA_FISCAL=NOTA_FISCAL'
      'CODREMETENTE=CODREMETENTE'
      'REMETENTE=REMETENTE'
      'VALOR_MERCADORIAS=VALOR_MERCADORIAS'
      'ICMS_ISENTO=ICMS_ISENTO'
      'ICMS_OUTRAS=ICMS_OUTRAS'
      'DESCONTO_INCIDENTE=DESCONTO_INCIDENTE'
      'ITEM_FRETE_VALOR=ITEM_FRETE_VALOR'
      'ITEM_FRETE_BASE=ITEM_FRETE_BASE'
      'ITEM_FRETE_ALIQUOTA=ITEM_FRETE_ALIQUOTA'
      'ITEM_FRETE_ICMS=ITEM_FRETE_ICMS'
      'ITEM_SEGURO_VALOR=ITEM_SEGURO_VALOR'
      'ITEM_SEGURO_BASE=ITEM_SEGURO_BASE'
      'ITEM_SEGURO_ALIQUOTA=ITEM_SEGURO_ALIQUOTA'
      'ITEM_SEGURO_ICMS=ITEM_SEGURO_ICMS'
      'ITEM_PIS_VALOR=ITEM_PIS_VALOR'
      'ITEM_PIS_BASE=ITEM_PIS_BASE'
      'ITEM_PIS_ALIQUOTA=ITEM_PIS_ALIQUOTA'
      'ITEM_PIS_ICMS=ITEM_PIS_ICMS'
      'ITEM_COMPLEMENTO_VALOR=ITEM_COMPLEMENTO_VALOR'
      'ITEM_COMPLEMENTO_BASE=ITEM_COMPLEMENTO_BASE'
      'ITEM_COMPLEMENTO_ALIQUOTA=ITEM_COMPLEMENTO_ALIQUOTA'
      'ITEM_COMPLEMENTO_ICMS=ITEM_COMPLEMENTO_ICMS'
      'ITEM_SERVICO_VALOR=ITEM_SERVICO_VALOR'
      'ITEM_SERVICO_BASE=ITEM_SERVICO_BASE'
      'ITEM_SERVICO_ALIQUOTA=ITEM_SERVICO_ALIQUOTA'
      'ITEM_SERVICO_ICMS=ITEM_SERVICO_ICMS'
      'ITEM_OUTRAS_VALOR=ITEM_OUTRAS_VALOR'
      'ITEM_OUTRAS_BASE=ITEM_OUTRAS_BASE'
      'ITEM_OUTRAS_ALIQUOTA=ITEM_OUTRAS_ALIQUOTA'
      'ITEM_OUTRAS_ICMS=ITEM_OUTRAS_ICMS'
      'ITEM_ESPECIAL_TOTAL=ITEM_ESPECIAL_TOTAL'
      'ITEM_ESPECIAL_VALOR=ITEM_ESPECIAL_VALOR')
    DataSet = qrnota
    BCDToCurrency = False
    Left = 168
    Top = 10
  end
  object PopupMenu1: TPopupMenu
    Left = 360
    Top = 8
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
  object qrnota_item: TZQuery
    Connection = frmmodulo.Conexao
    SortedFields = 'CODNOTA'
    SQL.Strings = (
      'select * from c000088')
    Params = <>
    MasterFields = 'CODIGO'
    MasterSource = dsnota
    IndexFieldNames = 'CODNOTA Asc'
    Left = 296
    Top = 10
    object qrnota_itemCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object qrnota_itemITEM: TStringField
      FieldName = 'ITEM'
      Size = 3
    end
    object qrnota_itemCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Size = 10
    end
    object qrnota_itemCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object qrnota_itemCODLANCAMENTO: TStringField
      FieldName = 'CODLANCAMENTO'
      Size = 10
    end
    object qrnota_itemUN_COMPRA: TStringField
      FieldName = 'UN_COMPRA'
      Size = 5
    end
    object qrnota_itemUN_FRACAO: TStringField
      FieldName = 'UN_FRACAO'
      Size = 5
    end
    object qrnota_itemFRACAO: TFloatField
      FieldName = 'FRACAO'
    end
    object qrnota_itemCST: TStringField
      FieldName = 'CST'
      Size = 5
    end
    object qrnota_itemCFOP: TStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qrnota_itemQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrnota_itemUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrnota_itemSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object qrnota_itemDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrnota_itemTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrnota_itemDESCONTO_P: TFloatField
      FieldName = 'DESCONTO_P'
    end
    object qrnota_itemICMS_RETIDO: TStringField
      FieldName = 'ICMS_RETIDO'
      Size = 1
    end
    object qrnota_itemICMS_ALIQUOTA: TFloatField
      FieldName = 'ICMS_ALIQUOTA'
    end
    object qrnota_itemICMS_REDUCAO: TFloatField
      FieldName = 'ICMS_REDUCAO'
    end
    object qrnota_itemICMS_BASE: TFloatField
      FieldName = 'ICMS_BASE'
    end
    object qrnota_itemICMS_VALOR: TFloatField
      FieldName = 'ICMS_VALOR'
    end
    object qrnota_itemICMS_VALORRETIDO: TFloatField
      FieldName = 'ICMS_VALORRETIDO'
    end
    object qrnota_itemICMS_ISENTO: TFloatField
      FieldName = 'ICMS_ISENTO'
    end
    object qrnota_itemICMS_NAOTRIBUTADO: TFloatField
      FieldName = 'ICMS_NAOTRIBUTADO'
    end
    object qrnota_itemSUB_MARGEM: TFloatField
      FieldName = 'SUB_MARGEM'
    end
    object qrnota_itemSUB_BASE: TFloatField
      FieldName = 'SUB_BASE'
    end
    object qrnota_itemSUB_VALOR: TFloatField
      FieldName = 'SUB_VALOR'
    end
    object qrnota_itemIPI_TIPO: TStringField
      FieldName = 'IPI_TIPO'
      Size = 25
    end
    object qrnota_itemIPI_ALIQUOTA: TFloatField
      FieldName = 'IPI_ALIQUOTA'
    end
    object qrnota_itemIPI_BASE: TFloatField
      FieldName = 'IPI_BASE'
    end
    object qrnota_itemIPI_VALOR: TFloatField
      FieldName = 'IPI_VALOR'
    end
    object qrnota_itemDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrnota_itemTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrnota_itemNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 10
    end
    object qrnota_itemFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object qrnota_itemOUTRAS: TFloatField
      FieldName = 'OUTRAS'
    end
    object qrnota_itemSEGURO: TFloatField
      FieldName = 'SEGURO'
    end
    object qrnota_itemCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Size = 15
    end
    object qrnota_itemPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUTO'
      LookupDataSet = ZQuery1
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Size = 40
      Lookup = True
    end
  end
  object fsnota_item: TfrxDBDataset
    UserName = 'fsnota_item'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'ITEM=ITEM'
      'CODNOTA=CODNOTA'
      'CODPRODUTO=CODPRODUTO'
      'CODLANCAMENTO=CODLANCAMENTO'
      'UN_COMPRA=UN_COMPRA'
      'UN_FRACAO=UN_FRACAO'
      'FRACAO=FRACAO'
      'CST=CST'
      'CFOP=CFOP'
      'QTDE=QTDE'
      'UNITARIO=UNITARIO'
      'SUBTOTAL=SUBTOTAL'
      'DESCONTO=DESCONTO'
      'TOTAL=TOTAL'
      'DESCONTO_P=DESCONTO_P'
      'ICMS_RETIDO=ICMS_RETIDO'
      'ICMS_ALIQUOTA=ICMS_ALIQUOTA'
      'ICMS_REDUCAO=ICMS_REDUCAO'
      'ICMS_BASE=ICMS_BASE'
      'ICMS_VALOR=ICMS_VALOR'
      'ICMS_VALORRETIDO=ICMS_VALORRETIDO'
      'ICMS_ISENTO=ICMS_ISENTO'
      'ICMS_NAOTRIBUTADO=ICMS_NAOTRIBUTADO'
      'SUB_MARGEM=SUB_MARGEM'
      'SUB_BASE=SUB_BASE'
      'SUB_VALOR=SUB_VALOR'
      'IPI_TIPO=IPI_TIPO'
      'IPI_ALIQUOTA=IPI_ALIQUOTA'
      'IPI_BASE=IPI_BASE'
      'IPI_VALOR=IPI_VALOR'
      'DATA=DATA'
      'TIPO=TIPO'
      'NOTAFISCAL=NOTAFISCAL'
      'FRETE=FRETE'
      'OUTRAS=OUTRAS'
      'SEGURO=SEGURO'
      'CLASSIFICACAO_FISCAL=CLASSIFICACAO_FISCAL'
      'PRODUTO=produto')
    DataSet = qrnota_item
    BCDToCurrency = False
    Left = 264
    Top = 10
  end
  object dsnota: TDataSource
    DataSet = qrnota
    Left = 104
    Top = 8
  end
  object ZQuery1: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 336
    Top = 10
  end
  object qrnota: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000087')
    Params = <>
    Left = 136
    Top = 10
    object IntegerField1: TIntegerField
      DisplayLabel = 'SIT'
      DisplayWidth = 2
      FieldName = 'SITUACAO'
    end
    object StringField1: TStringField
      DisplayWidth = 7
      FieldName = 'NUMERO'
      Size = 10
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'EMISS'#195'O'
      DisplayWidth = 11
      FieldName = 'DATA_EMISSAO'
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = 'LAN'#199'AMENTO'
      DisplayWidth = 11
      FieldName = 'DATA_LANCAMENTO'
    end
    object StringField2: TStringField
      DisplayLabel = 'FORNECEDOR'
      DisplayWidth = 32
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
    object StringField3: TStringField
      DisplayLabel = 'MOD.'
      DisplayWidth = 4
      FieldName = 'MODELO'
      Size = 10
    end
    object StringField4: TStringField
      DisplayWidth = 7
      FieldName = 'ESPECIE'
      Size = 10
    end
    object StringField5: TStringField
      DisplayWidth = 4
      FieldName = 'SERIE'
      Size = 10
    end
    object StringField6: TStringField
      DisplayWidth = 7
      FieldName = 'CFOP'
      Size = 10
    end
    object FloatField1: TFloatField
      DisplayLabel = 'TOTAL'
      DisplayWidth = 9
      FieldName = 'TOTAL_NOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object StringField7: TStringField
      DisplayLabel = 'EMPRESA'
      DisplayWidth = 17
      FieldKind = fkLookup
      FieldName = 'empresa'
      LookupDataSet = frmmodulo.qrFilial
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'FILIAL'
      KeyFields = 'codempresa'
      Size = 30
      Lookup = True
    end
    object StringField8: TStringField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 10
    end
    object StringField9: TStringField
      DisplayWidth = 10
      FieldName = 'CODEMPRESA'
      Visible = False
      Size = 10
    end
    object StringField10: TStringField
      DisplayWidth = 10
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 10
    end
    object FloatField2: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_BASEICMS'
      Visible = False
    end
    object FloatField3: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_VALORICMS'
      Visible = False
    end
    object FloatField4: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_BASESUB'
      Visible = False
    end
    object FloatField5: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_VALORSUB'
      Visible = False
    end
    object FloatField6: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_FRETE'
      Visible = False
    end
    object FloatField7: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_SEGURO'
      Visible = False
    end
    object FloatField8: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_OUTRAS'
      Visible = False
    end
    object FloatField9: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_IPI'
      Visible = False
    end
    object FloatField10: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_DESCONTO'
      Visible = False
    end
    object FloatField11: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_TOTALPRODUTOS'
      Visible = False
    end
    object FloatField12: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_TOTALNOTA'
      Visible = False
    end
    object FloatField13: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_ICMSRETIDO'
      Visible = False
    end
    object FloatField14: TFloatField
      DisplayWidth = 10
      FieldName = 'CONF_ICMSREDITO_PERC'
      Visible = False
    end
    object FloatField15: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_ICMS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField16: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR_ICMS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField17: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_SUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField18: TFloatField
      DisplayWidth = 10
      FieldName = 'FRETE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField19: TFloatField
      DisplayWidth = 10
      FieldName = 'SEGURO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField20: TFloatField
      DisplayWidth = 10
      FieldName = 'OUTRAS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField21: TFloatField
      DisplayWidth = 10
      FieldName = 'IPI'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField22: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField23: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_PRODUTOS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object StringField11: TStringField
      DisplayWidth = 60
      FieldName = 'TRANSP_NOME'
      Visible = False
      Size = 60
    end
    object StringField12: TStringField
      DisplayWidth = 20
      FieldName = 'TRANSP_FRETE'
      Visible = False
    end
    object StringField13: TStringField
      DisplayWidth = 10
      FieldName = 'TRANSP_PLACA'
      Visible = False
      Size = 10
    end
    object StringField14: TStringField
      DisplayWidth = 2
      FieldName = 'TRANSP_PLACAUF'
      Visible = False
      Size = 2
    end
    object StringField15: TStringField
      DisplayWidth = 25
      FieldName = 'TRANSP_IE'
      Visible = False
      Size = 25
    end
    object StringField16: TStringField
      DisplayWidth = 25
      FieldName = 'TRANSP_CNPJ'
      Visible = False
      Size = 25
    end
    object StringField17: TStringField
      DisplayWidth = 40
      FieldName = 'TRANSP_ENDERECO'
      Visible = False
      Size = 40
    end
    object StringField18: TStringField
      DisplayWidth = 30
      FieldName = 'TRANSP_CIDADE'
      Visible = False
      Size = 30
    end
    object StringField19: TStringField
      DisplayWidth = 2
      FieldName = 'TRANSP_UF'
      Visible = False
      Size = 2
    end
    object FloatField24: TFloatField
      DisplayWidth = 10
      FieldName = 'TRANSP_QTDE'
      Visible = False
    end
    object StringField20: TStringField
      DisplayWidth = 20
      FieldName = 'TRANSP_ESPECIE'
      Visible = False
    end
    object StringField21: TStringField
      DisplayWidth = 20
      FieldName = 'TRANSP_MARCA'
      Visible = False
    end
    object StringField22: TStringField
      DisplayWidth = 20
      FieldName = 'TRANSP_NUMERO'
      Visible = False
    end
    object FloatField25: TFloatField
      DisplayWidth = 10
      FieldName = 'TRANSP_PESOBRUTO'
      Visible = False
    end
    object FloatField26: TFloatField
      DisplayWidth = 10
      FieldName = 'TRANSP_PESOLIQUIDO'
      Visible = False
    end
    object StringField23: TStringField
      DisplayWidth = 60
      FieldName = 'OBS1'
      Visible = False
      Size = 60
    end
    object StringField24: TStringField
      DisplayWidth = 60
      FieldName = 'OBS2'
      Visible = False
      Size = 60
    end
    object StringField25: TStringField
      DisplayWidth = 60
      FieldName = 'OBS3'
      Visible = False
      Size = 60
    end
    object StringField26: TStringField
      DisplayWidth = 60
      FieldName = 'OBS4'
      Visible = False
      Size = 60
    end
    object StringField27: TStringField
      DisplayWidth = 60
      FieldName = 'OBS5'
      Visible = False
      Size = 60
    end
    object StringField28: TStringField
      DisplayWidth = 60
      FieldName = 'OBS6'
      Visible = False
      Size = 60
    end
    object StringField29: TStringField
      DisplayWidth = 60
      FieldName = 'OBS7'
      Visible = False
      Size = 60
    end
    object FloatField27: TFloatField
      FieldName = 'VALOR_SUB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object IntegerField2: TIntegerField
      FieldName = 'ITENS'
      Visible = False
      DisplayFormat = '00#'
    end
    object StringField30: TStringField
      FieldName = 'TIPO'
      Visible = False
      Size = 30
    end
    object StringField31: TStringField
      FieldName = 'NOTA_FISCAL'
      Visible = False
      Size = 6
    end
    object StringField32: TStringField
      FieldName = 'CODREMETENTE'
      Visible = False
      Size = 6
    end
    object StringField33: TStringField
      FieldKind = fkLookup
      FieldName = 'REMETENTE'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODREMETENTE'
      Visible = False
      Size = 40
      Lookup = True
    end
    object FloatField28: TFloatField
      FieldName = 'VALOR_MERCADORIAS'
      Visible = False
    end
    object FloatField29: TFloatField
      FieldName = 'ICMS_ISENTO'
      Visible = False
    end
    object FloatField30: TFloatField
      FieldName = 'ICMS_OUTRAS'
      Visible = False
    end
    object IntegerField3: TIntegerField
      FieldName = 'DESCONTO_INCIDENTE'
      Visible = False
    end
    object FloatField31: TFloatField
      FieldName = 'ITEM_FRETE_VALOR'
      Visible = False
    end
    object FloatField32: TFloatField
      FieldName = 'ITEM_FRETE_BASE'
      Visible = False
    end
    object FloatField33: TFloatField
      FieldName = 'ITEM_FRETE_ALIQUOTA'
      Visible = False
    end
    object FloatField34: TFloatField
      FieldName = 'ITEM_FRETE_ICMS'
      Visible = False
    end
    object FloatField35: TFloatField
      FieldName = 'ITEM_SEGURO_VALOR'
      Visible = False
    end
    object FloatField36: TFloatField
      FieldName = 'ITEM_SEGURO_BASE'
      Visible = False
    end
    object FloatField37: TFloatField
      FieldName = 'ITEM_SEGURO_ALIQUOTA'
      Visible = False
    end
    object FloatField38: TFloatField
      FieldName = 'ITEM_SEGURO_ICMS'
      Visible = False
    end
    object FloatField39: TFloatField
      FieldName = 'ITEM_PIS_VALOR'
      Visible = False
    end
    object FloatField40: TFloatField
      FieldName = 'ITEM_PIS_BASE'
      Visible = False
    end
    object FloatField41: TFloatField
      FieldName = 'ITEM_PIS_ALIQUOTA'
      Visible = False
    end
    object FloatField42: TFloatField
      FieldName = 'ITEM_PIS_ICMS'
      Visible = False
    end
    object FloatField43: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_VALOR'
      Visible = False
    end
    object FloatField44: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_BASE'
      Visible = False
    end
    object FloatField45: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ALIQUOTA'
      Visible = False
    end
    object FloatField46: TFloatField
      FieldName = 'ITEM_COMPLEMENTO_ICMS'
      Visible = False
    end
    object FloatField47: TFloatField
      FieldName = 'ITEM_SERVICO_VALOR'
      Visible = False
    end
    object FloatField48: TFloatField
      FieldName = 'ITEM_SERVICO_BASE'
      Visible = False
    end
    object FloatField49: TFloatField
      FieldName = 'ITEM_SERVICO_ALIQUOTA'
      Visible = False
    end
    object FloatField50: TFloatField
      FieldName = 'ITEM_SERVICO_ICMS'
      Visible = False
    end
    object FloatField51: TFloatField
      FieldName = 'ITEM_OUTRAS_VALOR'
      Visible = False
    end
    object FloatField52: TFloatField
      FieldName = 'ITEM_OUTRAS_BASE'
      Visible = False
    end
    object FloatField53: TFloatField
      FieldName = 'ITEM_OUTRAS_ALIQUOTA'
      Visible = False
    end
    object FloatField54: TFloatField
      FieldName = 'ITEM_OUTRAS_ICMS'
      Visible = False
    end
    object FloatField55: TFloatField
      FieldName = 'ITEM_ESPECIAL_TOTAL'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField56: TFloatField
      FieldName = 'ITEM_ESPECIAL_VALOR'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
  end
  object qrcompra_produto: TZQuery
    Connection = frmmodulo.econexao2
    Active = True
    SQL.Strings = (
      'select '
      'sum(c000088.qtde) total_compra,'
      'c000088.codproduto,'
      'c000025.produto'
      'from '
      'c000088,'
      'c000025'
      'where '
      'c000088.codproduto = c000025.codigo'
      'group by'
      'c000088.codproduto,'
      'c000025.produto'
      'order by'
      'c000025.produto')
    Params = <>
    Left = 344
    Top = 104
  end
  object fscompra_produto: TfrxDBDataset
    UserName = 'fscompra_produto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TOTAL_COMPRA=TOTAL_COMPRA'
      'CODPRODUTO=CODPRODUTO'
      'PRODUTO=PRODUTO')
    DataSet = qrcompra_produto
    BCDToCurrency = False
    Left = 312
    Top = 106
  end
  object qrentrada: TZQuery
    Connection = frmmodulo.econexao2
    Active = True
    SQL.Strings = (
      'select'
      '    sum(c000088.TOTAL) VALOR_TOTAL,'
      '    sum(c000088.ICMS_BASE) BASE_CALCULO,'
      '    sum(c000088.ICMS_VALOR) IMPOSTO,'
      '    c000088.icms_aliquota,'
      '    c000088.cst,'
      '    c000088.cfop,'
      '    c000087.numero,'
      '    c000087.data_lancamento,'
      '    c000087.especie,'
      '    c000087.serie,'
      '    c000009.uf'
      '    from'
      '    c000087,'
      '    c000088,'
      '    c000009'
      '    where'
      '    c000088.codnota = c000087.codigo'
      '    and c000087.codfornecedor = c000009.codigo'
      '    group by'
      '    c000088.icms_aliquota,'
      '    c000088.cst,'
      '    c000088.cfop,'
      '    c000087.numero,'
      '    c000087.data_lancamento,'
      '    c000087.especie,'
      '    c000087.serie,'
      '    c000009.uf'
      '    order by'
      '    c000087.numero')
    Params = <>
    Left = 224
    Top = 112
  end
  object fxentrada: TfrxDBDataset
    UserName = 'fxentrada'
    CloseDataSource = False
    FieldAliases.Strings = (
      'VALOR_TOTAL=VALOR_TOTAL'
      'BASE_CALCULO=BASE_CALCULO'
      'IMPOSTO=IMPOSTO'
      'ICMS_ALIQUOTA=ICMS_ALIQUOTA'
      'CST=CST'
      'CFOP=CFOP'
      'NUMERO=NUMERO'
      'DATA_LANCAMENTO=DATA_LANCAMENTO'
      'ESPECIE=ESPECIE'
      'SERIE=SERIE'
      'UF=UF')
    DataSet = qrentrada
    BCDToCurrency = False
    Left = 256
    Top = 114
  end
end
