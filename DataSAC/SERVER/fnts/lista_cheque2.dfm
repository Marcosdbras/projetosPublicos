object frmlista_cheque2: Tfrmlista_cheque2
  Left = 430
  Top = 23
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'CHEQUE | Relat'#243'rios'
  ClientHeight = 256
  ClientWidth = 424
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
    Left = 20
    Top = 16
    Width = 50
    Height = 13
    Alignment = taRightJustify
    Caption = 'Relat'#243'rio: '
  end
  object Bevel1: TBevel
    Left = -8
    Top = 40
    Width = 424
    Height = 2
  end
  object Label2: TLabel
    Left = 33
    Top = 56
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cliente:'
  end
  object Label3: TLabel
    Left = 37
    Top = 88
    Width = 33
    Height = 13
    Alignment = taRightJustify
    Caption = 'Banco:'
  end
  object Label5: TLabel
    Left = 25
    Top = 120
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Situa'#231#227'o:'
  end
  object Label9: TLabel
    Left = 30
    Top = 168
    Width = 40
    Height = 13
    Alignment = taRightJustify
    Caption = 'Per'#237'odo:'
  end
  object Label10: TLabel
    Left = 78
    Top = 192
    Width = 29
    Height = 13
    Caption = 'In'#237'cio:'
  end
  object Label11: TLabel
    Left = 246
    Top = 192
    Width = 20
    Height = 13
    Caption = 'Fim:'
  end
  object Bevel2: TBevel
    Left = -8
    Top = 152
    Width = 420
    Height = 2
  end
  object Bevel3: TBevel
    Left = 0
    Top = 221
    Width = 424
    Height = 3
    Align = alBottom
  end
  object combo_relatorio: TComboBox
    Left = 81
    Top = 11
    Width = 328
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = 'RELA'#199#195'O SINT'#201'TICA'
    Items.Strings = (
      'RELA'#199#195'O SINT'#201'TICA'
      'RELA'#199#195'O AGRUPADA POR CLIENTE')
  end
  object combo_cliente: TComboBox
    Left = 81
    Top = 51
    Width = 328
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 1
    Text = 'TODOS'
    OnChange = combo_clienteChange
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object combo_banco: TComboBox
    Left = 81
    Top = 83
    Width = 328
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 2
    Text = 'TODOS'
    OnChange = combo_bancoChange
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object combo_situacao: TComboBox
    Left = 81
    Top = 115
    Width = 328
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 3
    Text = 'TODOS'
    OnChange = combo_clienteChange
    Items.Strings = (
      'TODOS'
      'ATIVO'
      'BAIXADO'
      'DEPOSITADO - 1'#170' VEZ'
      'DEPOSITADO - 2'#170' VEZ'
      'DESCONTADO'
      'DEVOLVIDO - 1'#170' VEZ'
      'DEVOLVIDO - 2'#170' VEZ'
      'REPASSADO'
      'SUSTADO'
      'OUTROS')
  end
  object combo_periodo: TComboBox
    Left = 78
    Top = 163
    Width = 331
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 4
    Text = 'DATA DE VENCIMENTO'
    OnChange = combo_clienteChange
    Items.Strings = (
      'DATA DE VENCIMENTO'
      'DATA DA EMISSAO'
      'DATA DA BAIXA')
  end
  object DateEdit1: TDateEdit
    Left = 118
    Top = 188
    Width = 103
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
    TabOrder = 5
    Text = '01/01/0001'
    OnKeyPress = DateEdit1KeyPress
  end
  object DateEdit2: TDateEdit
    Left = 277
    Top = 188
    Width = 104
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
    TabOrder = 6
    Text = '31/12/2099'
    OnKeyPress = DateEdit2KeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 224
    Width = 424
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 7
    object bimprimir: TAdvGlowButton
      Left = 51
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
      Left = 158
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
      Left = 270
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
  object fxcheque: TfrxReport
    Version = '4.7.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineExpand = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39181.615094942100000000
    ReportOptions.LastChange = 39578.700084085650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo30OnAfterData(Sender: TfrxComponent);'
      'begin'
      '  if copy(memo30.text,1,5) <> '#39'ATIVO'#39' then'
      '  begin'
      
        '    memo30.font.color := clred;                                 ' +
        '                               '
      '  end;            '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 280
    Top = 56
    Datasets = <
      item
        DataSet = fscheque
        DataSetName = 'fscheque'
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
        Height = 110.606370000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 623.622450000000000000
          Top = 34.795300000000000000
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
        object LEMPRESA: TfrxMemoView
          Width = 185.196970000000000000
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
        object Memo1: TfrxMemoView
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
        object Memo4: TfrxMemoView
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
        object Memo7: TfrxMemoView
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
        object Memo6: TfrxMemoView
          Top = 30.236240000000000000
          Width = 298.582870000000000000
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
        object Memo22: TfrxMemoView
          Top = 41.574830000000000000
          Width = 298.582870000000000000
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
        object Memo5: TfrxMemoView
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
        object Memo23: TfrxMemoView
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
        object Memo24: TfrxMemoView
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
        object Memo25: TfrxMemoView
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
        object Memo10: TfrxMemoView
          Left = 419.527830000000000000
          Top = 90.929190000000000000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'AGENCIA')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 532.913730000000000000
          Top = 90.929190000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'N'#195#353'MERO')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 608.504330000000000000
          Top = 90.929190000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'VALOR-R$')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 328.819110000000000000
          Top = 90.708720000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'BANCO')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 3.779530000000000000
          Top = 90.952802280000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 476.220780000000000000
          Top = 90.708720000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CONTA')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 143.283550000000000000
          Top = 90.708720000000000000
          Width = 177.637910000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'TITULAR')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 676.197280000000000000
          Top = 90.708720000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'SITUA'#195#8225#195#402'O')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 76.811070000000000000
          Top = 90.708720000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'EMISS'#195#402'O')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 105.826840000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 86.929190000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.362202280000000000
        Top = 188.976500000000000000
        Width = 740.409927000000000000
        DataSet = fscheque
        DataSetName = 'fscheque'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 419.527830000000000000
          Top = 0.220470000000006000
          Width = 49.133890000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'AGENCIA'
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fscheque."AGENCIA"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 532.913730000000000000
          Top = 0.220470000000006000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'NUMERO'
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fscheque."NUMERO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 608.504330000000000000
          Top = 0.220470000000006000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'VALOR'
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fscheque."VALOR"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 328.819110000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'banco'
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fscheque."banco"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 0.244082280000043300
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'VENCIMENTO'
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fscheque."VENCIMENTO"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 476.220780000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'CONTA'
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fscheque."CONTA"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 139.504020000000000000
          Width = 181.417440000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'TITULAR'
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fscheque."TITULAR"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 676.197280000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          OnAfterData = 'Memo30OnAfterData'
          ShowHint = False
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fscheque."SIT"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 73.031540000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'EMISSAO'
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fscheque."EMISSAO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 740.409927000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000022000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          Top = 3.779529999999908000
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
          Top = 3.779530000000022000
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
          Top = 3.779530000000022000
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
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 226.771800000000000000
        Width = 740.409927000000000000
        object Memo20: TfrxMemoView
          Left = 472.441250000000000000
          Width = 124.724490000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL DOS CHEQUES')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Style = fsDot
          Diagonal = True
        end
        object Memo50: TfrxMemoView
          Left = 604.724800000000000000
          Width = 64.252010000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fscheque
          DataSetName = 'fscheque'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fscheque."VALOR">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object fscheque: TfrxDBDataset
    UserName = 'fscheque'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'EMISSAO=EMISSAO'
      'VENCIMENTO=VENCIMENTO'
      'DATA_DEPOSITO1=DATA_DEPOSITO1'
      'DATA_DEPOSITO2=DATA_DEPOSITO2'
      'DATA_DEVOLUCAO1=DATA_DEVOLUCAO1'
      'DATA_DEVOLUCAO2=DATA_DEVOLUCAO2'
      'SITUACAO=SITUACAO'
      'CODCLIENTE=CODCLIENTE'
      'TITULAR=TITULAR'
      'CODBANCO=CODBANCO'
      'AGENCIA=AGENCIA'
      'CONTA=CONTA'
      'DATA_CONTA=DATA_CONTA'
      'NUMERO=NUMERO'
      'VALOR=VALOR'
      'DESCONTO=DESCONTO'
      'LIQUIDO=LIQUIDO'
      'CODVENDA=CODVENDA'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'CODCONTAS_PAGAR=CODCONTAS_PAGAR'
      'DESTINO=DESTINO'
      'DATA_BAIXA=DATA_BAIXA'
      'CODCONTA_CORRENTE=CODCONTA_CORRENTE'
      'CODCONTA=CODCONTA'
      'NOME=NOME'
      'SIT=SIT'
      'banco=banco'
      'TELEFONE1=TELEFONE1'
      'TELEFONE2=TELEFONE2')
    DataSet = qrcheque
    BCDToCurrency = False
    Left = 280
    Top = 88
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
    Left = 280
    Top = 124
  end
  object PopupMenu1: TPopupMenu
    Left = 328
    Top = 8
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
  object qrcheque: TZQuery
    Connection = frmmodulo.Conexao
    SortedFields = 'CODCLIENTE'
    OnCalcFields = qrchequeCalcFields
    SQL.Strings = (
      
        'select ch.*, cli.nome, cli.telefone1, cli.telefone2 from c000040' +
        ' ch, c000007 cli where ch.codcliente = cli.codigo')
    Params = <>
    MasterFields = 'CODIGO'
    IndexFieldNames = 'CODCLIENTE Asc'
    Left = 280
    Top = 16
    object qrchequeCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrchequeEMISSAO: TDateTimeField
      FieldName = 'EMISSAO'
    end
    object qrchequeVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
    end
    object qrchequeDATA_DEPOSITO1: TDateTimeField
      FieldName = 'DATA_DEPOSITO1'
    end
    object qrchequeDATA_DEPOSITO2: TDateTimeField
      FieldName = 'DATA_DEPOSITO2'
    end
    object qrchequeDATA_DEVOLUCAO1: TDateTimeField
      FieldName = 'DATA_DEVOLUCAO1'
    end
    object qrchequeDATA_DEVOLUCAO2: TDateTimeField
      FieldName = 'DATA_DEVOLUCAO2'
    end
    object qrchequeSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrchequeCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrchequeTITULAR: TStringField
      FieldName = 'TITULAR'
      Size = 80
    end
    object qrchequeCODBANCO: TStringField
      FieldName = 'CODBANCO'
      Size = 6
    end
    object qrchequeAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 8
    end
    object qrchequeCONTA: TStringField
      FieldName = 'CONTA'
      Size = 15
    end
    object qrchequeDATA_CONTA: TDateTimeField
      FieldName = 'DATA_CONTA'
    end
    object qrchequeNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object qrchequeVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qrchequeDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrchequeLIQUIDO: TFloatField
      FieldName = 'LIQUIDO'
    end
    object qrchequeCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
    object qrchequeOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrchequeOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrchequeCODCONTAS_PAGAR: TStringField
      FieldName = 'CODCONTAS_PAGAR'
      Size = 6
    end
    object qrchequeDESTINO: TStringField
      FieldName = 'DESTINO'
      Size = 50
    end
    object qrchequeDATA_BAIXA: TDateTimeField
      FieldName = 'DATA_BAIXA'
    end
    object qrchequeCODCONTA_CORRENTE: TStringField
      FieldName = 'CODCONTA_CORRENTE'
      Size = 6
    end
    object qrchequeCODCONTA: TStringField
      FieldName = 'CODCONTA'
    end
    object qrchequeNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrchequeSIT: TStringField
      FieldKind = fkCalculated
      FieldName = 'SIT'
      Size = 30
      Calculated = True
    end
    object qrchequebanco: TStringField
      FieldKind = fkLookup
      FieldName = 'banco'
      LookupDataSet = frmmodulo.qrbanco
      LookupKeyFields = 'NUMERO'
      LookupResultField = 'BANCO'
      KeyFields = 'codbanco'
      Lookup = True
    end
    object qrchequeTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
    end
    object qrchequeTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
  end
end
