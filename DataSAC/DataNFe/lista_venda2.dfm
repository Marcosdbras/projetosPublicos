object frmlista_venda2: Tfrmlista_venda2
  Left = 193
  Top = 156
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'VENDAS | Relat'#243'rios'
  ClientHeight = 414
  ClientWidth = 400
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
    Left = 8
    Top = 40
    Width = 385
    Height = 2
  end
  object lcliente: TLabel
    Left = 16
    Top = 56
    Width = 37
    Height = 13
    Caption = 'Cliente:'
  end
  object lvendedor: TLabel
    Left = 16
    Top = 85
    Width = 50
    Height = 13
    Caption = 'Vendedor:'
  end
  object LPRODUTO: TLabel
    Left = 16
    Top = 241
    Width = 42
    Height = 13
    Caption = 'Produto:'
    Visible = False
  end
  object Label9: TLabel
    Left = 16
    Top = 352
    Width = 40
    Height = 13
    Caption = 'Per'#237'odo:'
  end
  object Label10: TLabel
    Left = 78
    Top = 352
    Width = 29
    Height = 13
    Caption = 'In'#237'cio:'
  end
  object Label11: TLabel
    Left = 246
    Top = 352
    Width = 20
    Height = 13
    Caption = 'Fim:'
  end
  object Bevel2: TBevel
    Left = 8
    Top = 328
    Width = 385
    Height = 2
  end
  object lcaixa: TLabel
    Left = 16
    Top = 177
    Width = 31
    Height = 13
    Caption = 'Caixa:'
  end
  object lforma: TLabel
    Left = 16
    Top = 209
    Width = 59
    Height = 13
    Caption = 'Forma Pgto:'
  end
  object lgrupo: TLabel
    Left = 16
    Top = 273
    Width = 83
    Height = 13
    Caption = 'Subgrupo/Se'#231#227'o:'
    Visible = False
  end
  object Bevel3: TBevel
    Left = 0
    Top = 379
    Width = 400
    Height = 3
    Align = alBottom
  end
  object lfornecedor: TLabel
    Left = 16
    Top = 117
    Width = 59
    Height = 13
    Caption = 'Fornecedor:'
  end
  object lmarca: TLabel
    Left = 16
    Top = 147
    Width = 33
    Height = 13
    Caption = 'Marca:'
  end
  object lsituacao: TLabel
    Left = 16
    Top = 305
    Width = 45
    Height = 13
    Caption = 'Situa'#231#227'o:'
  end
  object combo_relatorio: TComboBox
    Left = 87
    Top = 11
    Width = 298
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnChange = combo_relatorioChange
    Items.Strings = (
      'RELA'#199#195'O SINT'#201'TICA'
      'RELA'#199#195'O ANAL'#205'TICA'
      'VENDAS DE PRODUTOS'
      'RESUMO DE VENDAS DE PRODUTOS'
      'RESUMO DE VENDAS POR VENDEDOR'
      'VENDAS / COMISS'#195'O'
      'VENDAS / RECEBIMENTO'
      'RESUMO DE VENDAS / RECEBIMENTO'
      'CURVA ABC DE PRODUTOS'
      'COMISS'#195'O POR VENDA A VISTA/RECEBIMENTOS'
      'PRODUTOS VENDIDOS EM CONDICIONAL'
      'RESUMO DE VENDAS / META POR VENDEDOR'
      'VENDAS DE PRODUTOS AGRUPADOS POR DIA'
      'VENDAS DE PRODUTOS COM SERIAL ( CELULAR )')
  end
  object combo_cliente: TComboBox
    Left = 87
    Top = 51
    Width = 298
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
    OnChange = combo_clienteChange
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object combo_vendedor: TComboBox
    Left = 87
    Top = 80
    Width = 298
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
    OnChange = combo_vendedorChange
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object combo_produto: TComboBox
    Left = 87
    Top = 236
    Width = 298
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
    Visible = False
    OnChange = combo_produtoChange
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object DateEdit1: TDateEdit
    Left = 118
    Top = 348
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
    TabOrder = 4
    Text = '01/01/0001'
    OnKeyPress = DateEdit1KeyPress
  end
  object DateEdit2: TDateEdit
    Left = 277
    Top = 348
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
    TabOrder = 5
    Text = '31/12/2099'
    OnKeyPress = DateEdit2KeyPress
  end
  object combo_caixa: TComboBox
    Left = 87
    Top = 172
    Width = 298
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 6
    OnChange = combo_caixaChange
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object combo_forma: TComboBox
    Left = 87
    Top = 204
    Width = 298
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'TODAS'
      'DINHEIRO'
      'CHEQUE A VISTA'
      'CHEQUE A PRAZO'
      'CARTAO DE CREDITO'
      'CARTAO DE DEBITO'
      'CREDIARIO'
      'CONVENIO'
      'FINANCEIRA')
  end
  object combo_grupo: TComboBox
    Left = 128
    Top = 268
    Width = 257
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 8
    Text = 'TODOS'
    Visible = False
    OnChange = combo_grupoChange
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object Panel1: TPanel
    Left = 0
    Top = 382
    Width = 400
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 10
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
  object combo_fornecedor: TComboBox
    Left = 87
    Top = 112
    Width = 298
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 11
    OnChange = combo_fornecedorChange
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object combo_marca: TComboBox
    Left = 87
    Top = 142
    Width = 298
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 12
    OnChange = combo_marcaChange
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object COMBO_SITUACAO: TComboBox
    Left = 87
    Top = 300
    Width = 298
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 1
    TabOrder = 9
    Text = 'ATIVAS'
    Items.Strings = (
      'TODAS'
      'ATIVAS'
      'CANCELADAS')
  end
  object rserial: TRzCheckBox
    Left = 16
    Top = 332
    Width = 115
    Height = 15
    Caption = 'Produtos Com Serial'
    State = cbUnchecked
    TabOrder = 13
    Transparent = True
  end
  object bTodos_Produtos: TRzCheckBox
    Left = 142
    Top = 330
    Width = 185
    Height = 15
    Caption = 'Produtos Baixados e N'#227'o Baixados'
    State = cbUnchecked
    TabOrder = 14
    Transparent = True
    Visible = False
  end
  object qrvenda: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrvendaCalcFields
    Active = True
    SQL.Strings = (
      'select * from c000048')
    Params = <>
    Left = 280
    object qrvendaCUPOM_FISCAL: TIntegerField
      DisplayLabel = 'CF'
      DisplayWidth = 3
      FieldName = 'CUPOM_FISCAL'
    end
    object qrvendaNUMERO_CUPOM_FISCAL: TStringField
      DisplayLabel = 'CUPOM'
      DisplayWidth = 7
      FieldName = 'NUMERO_CUPOM_FISCAL'
      Size = 10
    end
    object qrvendaCODIGO: TStringField
      DisplayLabel = 'VENDA/NR.'
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrvendaDATA: TDateTimeField
      DisplayWidth = 12
      FieldName = 'DATA'
    end
    object qrvendacliente: TStringField
      DisplayLabel = 'CLIENTE'
      DisplayWidth = 38
      FieldKind = fkLookup
      FieldName = 'cliente'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 50
      Lookup = True
    end
    object qrvendaTOTAL: TFloatField
      DisplayWidth = 11
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendavendedor: TStringField
      DisplayLabel = 'VENDEDOR'
      DisplayWidth = 12
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = frmmodulo.qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Size = 30
      Lookup = True
    end
    object qrvendaCODCAIXA: TStringField
      DisplayLabel = 'CAIXA'
      DisplayWidth = 6
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrvendaCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrvendaCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrvendaOBS: TStringField
      FieldName = 'OBS'
      Visible = False
      Size = 50
    end
    object qrvendaMEIO_DINHEIRO: TFloatField
      FieldName = 'MEIO_DINHEIRO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaMEIO_CHEQUEAV: TFloatField
      FieldName = 'MEIO_CHEQUEAV'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaMEIO_CHEQUEAP: TFloatField
      FieldName = 'MEIO_CHEQUEAP'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaMEIO_CARTAOCRED: TFloatField
      FieldName = 'MEIO_CARTAOCRED'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaMEIO_CARTAODEB: TFloatField
      FieldName = 'MEIO_CARTAODEB'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaMEIO_CREDIARIO: TFloatField
      FieldName = 'MEIO_CREDIARIO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrvendaP5: TFloatField
      FieldName = 'P5'
    end
    object qrvendaP3: TFloatField
      FieldName = 'P3'
    end
    object qrvendavalor_selecionado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'valor_selecionado'
      Calculated = True
    end
    object qrvendaMEIO_CONVENIO: TFloatField
      FieldName = 'MEIO_CONVENIO'
    end
    object qrvendaMEIO_FINANCEIRA: TFloatField
      FieldName = 'MEIO_FINANCEIRA'
    end
  end
  object fxvenda: TfrxReport
    Version = '4.7.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39181.615094942100000000
    ReportOptions.LastChange = 40886.919010081020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 88
    Top = 168
    Datasets = <
      item
        DataSet = fsvenda
        DataSetName = 'fsvenda'
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
        Height = 35.015770000000000000
        Top = 98.267780000000000000
        Width = 740.409927000000000000
        object Line1: TfrxLineView
          Top = 15.118120000000010000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Top = 32.015769999999990000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Top = 16.118120000000000000
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
            'N'#195#353'MERO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 98.472480000000000000
          Top = 16.118120000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'DATA')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 363.157700000000000000
          Top = 16.118120000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'VENDEDOR')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 672.756340000000000000
          Top = 16.118120000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL-R$')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 623.622450000000000000
          Top = 0.779529999999994100
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
          Left = 161.504020000000000000
          Top = 16.118120000000000000
          Width = 204.094620000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CLIENTE')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 444.425480000000000000
          Top = 15.118120000000010000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'SUBTOTAL')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 520.016080000000000000
          Top = 15.118120000000010000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'DESCONTO')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 598.386210000000000000
          Top = 15.118120000000010000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ACR'#195#8240'SCIMO')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 52.133890000000000000
          Top = 16.118120000000000000
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
            'CUPOM')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 740.409927000000000000
        DataSet = fsvenda
        DataSetName = 'fsvenda'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 161.504020000000000000
          Width = 204.094620000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'cliente'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsvenda."cliente"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CODIGO'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsvenda."CODIGO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 363.157700000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'vendedor'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsvenda."vendedor"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 98.472480000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DATA'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsvenda."DATA"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 672.756340000000000000
          Top = 1.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'TOTAL'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
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
            '[fsvenda."TOTAL"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 444.425480000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'SUBTOTAL'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
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
            '[fsvenda."SUBTOTAL"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 520.016080000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DESCONTO'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
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
            '[fsvenda."DESCONTO"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 598.386210000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ACRESCIMO'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
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
            '[fsvenda."ACRESCIMO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 52.133890000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NUMERO_CUPOM_FISCAL'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsvenda."NUMERO_CUPOM_FISCAL"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 317.480520000000000000
        Width = 740.409927000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000022000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 234.330860000000000000
        Width = 740.409927000000000000
        object Line4: TfrxLineView
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo20: TfrxMemoView
          Left = 521.575140000000000000
          Top = 3.779529999999937000
          Width = 124.724490000000000000
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
            'TOTAL GERAL:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 616.063390000000000000
          Top = 3.779529999999994000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
            '[SUM(<fsVENDA."TOTAL">,MasterData1)]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object LEMPRESA: TfrxMemoView
          Width = 253.228510000000000000
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
            'DataSAC 2.0')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
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
        object Memo6: TfrxMemoView
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
        object Memo22: TfrxMemoView
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
      end
    end
  end
  object fsvenda: TfrxDBDataset
    UserName = 'fsvenda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CUPOM_FISCAL=CUPOM_FISCAL'
      'NUMERO_CUPOM_FISCAL=NUMERO_CUPOM_FISCAL'
      'CODIGO=CODIGO'
      'DATA=DATA'
      'cliente=cliente'
      'TOTAL=TOTAL'
      'vendedor=vendedor'
      'CODCAIXA=CODCAIXA'
      'CODVENDEDOR=CODVENDEDOR'
      'CODCLIENTE=CODCLIENTE'
      'OBS=OBS'
      'MEIO_DINHEIRO=MEIO_DINHEIRO'
      'MEIO_CHEQUEAV=MEIO_CHEQUEAV'
      'MEIO_CHEQUEAP=MEIO_CHEQUEAP'
      'MEIO_CARTAOCRED=MEIO_CARTAOCRED'
      'MEIO_CARTAODEB=MEIO_CARTAODEB'
      'MEIO_CREDIARIO=MEIO_CREDIARIO'
      'SUBTOTAL=SUBTOTAL'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'P5=P5'
      'P3=P3'
      'valor_selecionado=valor_selecionado'
      'MEIO_CONVENIO=MEIO_CONVENIO'
      'MEIO_FINANCEIRA=MEIO_FINANCEIRA')
    DataSet = qrvenda
    BCDToCurrency = False
    Left = 216
    Top = 96
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
    Top = 173
  end
  object qrvenda_produto: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select '
      'codproduto,unitario,'
      'avg(unitario) media_venda, '
      'sum(qtde) total_qtde, '
      'sum(total) total_geral '
      'from c000032 '
      'group by codproduto, unitario'
      'order by codproduto')
    Params = <>
    Left = 280
    Top = 65
    object qrvenda_produtoproduto: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'codproduto'
      Size = 50
      Lookup = True
    end
    object qrvenda_produtoun: TStringField
      FieldKind = fkLookup
      FieldName = 'un'
      LookupDataSet = qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'UNIDADE'
      KeyFields = 'codproduto'
      Size = 3
      Lookup = True
    end
    object qrvenda_produtopreco_venda: TFloatField
      FieldKind = fkLookup
      FieldName = 'preco_venda'
      LookupDataSet = qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'PRECOVENDA'
      KeyFields = 'codproduto'
      DisplayFormat = '###,###,##0.00'
      Lookup = True
    end
    object qrvenda_produtopreco_custo: TFloatField
      FieldKind = fkLookup
      FieldName = 'preco_custo'
      LookupDataSet = qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'PRECOCUSTO'
      KeyFields = 'codproduto'
      DisplayFormat = '###,###,##0.00'
      Lookup = True
    end
    object qrvenda_produtoCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrvenda_produtoMEDIA_VENDA: TFloatField
      FieldName = 'MEDIA_VENDA'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produtoTOTAL_QTDE: TFloatField
      FieldName = 'TOTAL_QTDE'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produtoTOTAL_GERAL: TFloatField
      FieldName = 'TOTAL_GERAL'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produtocodfornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'codfornecedor'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODFORNECEDOR'
      KeyFields = 'CODPRODUTO'
      Size = 6
      Lookup = True
    end
    object qrvenda_produtocodmarca: TStringField
      FieldKind = fkLookup
      FieldName = 'codmarca'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CODMARCA'
      KeyFields = 'CODPRODUTO'
      Size = 6
      Lookup = True
    end
    object qrvenda_produtoUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrvenda_produtoalq: TFloatField
      FieldKind = fkLookup
      FieldName = 'alq'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ALIQUOTA'
      KeyFields = 'CODPRODUTO'
      DisplayFormat = '###,###,##0.00'
      Lookup = True
    end
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 216
    Top = 33
  end
  object fsvenda_produto: TfrxDBDataset
    UserName = 'fsvenda_produto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'produto=produto'
      'un=un'
      'preco_venda=preco_venda'
      'preco_custo=preco_custo'
      'CODPRODUTO=CODPRODUTO'
      'MEDIA_VENDA=MEDIA_VENDA'
      'TOTAL_QTDE=TOTAL_QTDE'
      'TOTAL_GERAL=TOTAL_GERAL'
      'codfornecedor=codfornecedor'
      'codmarca=codmarca'
      'UNITARIO=UNITARIO'
      'alq=alq')
    DataSet = qrvenda_produto
    BCDToCurrency = False
    Left = 280
    Top = 98
  end
  object qrvenda_produto2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 88
    Top = 65
    object StringField1: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'codproduto'
      Size = 50
      Lookup = True
    end
    object StringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'un'
      LookupDataSet = qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'UNIDADE'
      KeyFields = 'codproduto'
      Size = 3
      Lookup = True
    end
    object qrvenda_produto2CODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrvenda_produto2CODNOTA: TStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object qrvenda_produto2CODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrvenda_produto2UNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrvenda_produto2TOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrvenda_produto2ICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrvenda_produto2IPI: TFloatField
      FieldName = 'IPI'
    end
    object qrvenda_produto2CFOP: TStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qrvenda_produto2DATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrvenda_produto2NUMERONOTA: TStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrvenda_produto2CODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrvenda_produto2DESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrvenda_produto2ACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrvenda_produto2MOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrvenda_produto2CODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrvenda_produto2CODGRADE: TStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qrvenda_produto2SERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 25
    end
    object qrvenda_produto2UNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrvenda_produto2QTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrvenda_produto2VALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrvenda_produto2ICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object qrvenda_produto2BASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrvenda_produto2VALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qrvenda_produto2CLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 40
      Lookup = True
    end
    object qrvenda_produto2VENDEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'VENDEDOR'
      LookupDataSet = frmmodulo.qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Size = 30
      Lookup = True
    end
    object qrvenda_produto2SUBTOTAL: TFloatField
      FieldKind = fkLookup
      FieldName = 'SUBTOTAL'
      LookupDataSet = qrvenda
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SUBTOTAL'
      KeyFields = 'CODNOTA'
      Lookup = True
    end
    object qrvenda_produto2DESC: TFloatField
      FieldKind = fkLookup
      FieldName = 'DESC'
      LookupDataSet = qrvenda
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCONTO'
      KeyFields = 'CODNOTA'
      Lookup = True
    end
    object qrvenda_produto2ACRES: TFloatField
      FieldKind = fkLookup
      FieldName = 'ACRES'
      LookupDataSet = qrvenda
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ACRESCIMO'
      KeyFields = 'CODNOTA'
      Lookup = True
    end
    object qrvenda_produto2TOT: TFloatField
      FieldKind = fkLookup
      FieldName = 'TOT'
      LookupDataSet = qrvenda
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TOTAL'
      KeyFields = 'CODNOTA'
      Lookup = True
    end
    object qrvenda_produto2CUPOM_NUMERO: TStringField
      FieldName = 'CUPOM_NUMERO'
      Size = 10
    end
    object qrvenda_produto2ALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produto2CODSUBGRUPO: TStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
  end
  object fsvenda_produto2: TfrxDBDataset
    UserName = 'fsvenda_produto2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'produto=produto'
      'un=un'
      'CODIGO=CODIGO'
      'CODNOTA=CODNOTA'
      'CODPRODUTO=CODPRODUTO'
      'UNITARIO=UNITARIO'
      'TOTAL=TOTAL'
      'ICMS=ICMS'
      'IPI=IPI'
      'CFOP=CFOP'
      'DATA=DATA'
      'NUMERONOTA=NUMERONOTA'
      'CODCLIENTE=CODCLIENTE'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'MOVIMENTO=MOVIMENTO'
      'CODVENDEDOR=CODVENDEDOR'
      'CODGRADE=CODGRADE'
      'SERIAL=SERIAL'
      'UNIDADE=UNIDADE'
      'QTDE=QTDE'
      'VALOR_ICMS=VALOR_ICMS'
      'ICMS_REDUZIDO=ICMS_REDUZIDO'
      'BASE_CALCULO=BASE_CALCULO'
      'VALOR_IPI=VALOR_IPI'
      'CLIENTE=CLIENTE'
      'VENDEDOR=VENDEDOR'
      'SUBTOTAL=SUBTOTAL'
      'DESC=DESC'
      'ACRES=ACRES'
      'TOT=TOT'
      'CUPOM_NUMERO=CUPOM_NUMERO'
      'ALIQUOTA=ALIQUOTA')
    DataSet = qrvenda_produto2
    BCDToCurrency = False
    Left = 88
    Top = 128
  end
  object QRVENDA2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      
        'select SUM(TOTAL) TOTAL_GERAL, CODVENDEDOR from c000048 GROUP BY' +
        ' CODVENDEDOR')
    Params = <>
    Left = 152
    Top = 32
    object QRVENDA2TOTAL_GERAL: TFloatField
      FieldName = 'TOTAL_GERAL'
      ReadOnly = True
    end
    object QRVENDA2CODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object QRVENDA2VENDEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'VENDEDOR'
      LookupDataSet = frmmodulo.qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Size = 40
      Lookup = True
    end
  end
  object fsvenda2: TfrxDBDataset
    UserName = 'fsvenda2'
    CloseDataSource = False
    DataSet = QRVENDA2
    BCDToCurrency = False
    Left = 184
    Top = 97
  end
  object qrvenda_produto3: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    Left = 248
    object StringField3: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'codproduto'
      Size = 50
      Lookup = True
    end
    object StringField4: TStringField
      FieldKind = fkLookup
      FieldName = 'un'
      LookupDataSet = qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'UNIDADE'
      KeyFields = 'codproduto'
      Size = 3
      Lookup = True
    end
    object StringField5: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object StringField6: TStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object StringField7: TStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object FloatField1: TFloatField
      FieldName = 'UNITARIO'
    end
    object QRVENDA_PRODUTO3TOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object FloatField3: TFloatField
      FieldName = 'ICMS'
    end
    object FloatField4: TFloatField
      FieldName = 'IPI'
    end
    object StringField8: TStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DATA'
    end
    object StringField9: TStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object StringField10: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object FloatField5: TFloatField
      FieldName = 'DESCONTO'
    end
    object FloatField6: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object IntegerField1: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object StringField11: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object StringField12: TStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object StringField13: TStringField
      FieldName = 'SERIAL'
      Size = 25
    end
    object StringField14: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object FloatField7: TFloatField
      FieldName = 'QTDE'
    end
    object FloatField8: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object FloatField9: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object FloatField10: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object FloatField11: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object StringField15: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 40
      Lookup = True
    end
    object StringField16: TStringField
      FieldKind = fkLookup
      FieldName = 'VENDEDOR'
      LookupDataSet = frmmodulo.qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Size = 30
      Lookup = True
    end
    object qrvenda_produto3comissao: TFloatField
      FieldKind = fkLookup
      FieldName = 'comissao'
      LookupDataSet = qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'COMISSAO'
      KeyFields = 'codproduto'
      Lookup = True
    end
  end
  object fsvenda_produto3: TfrxDBDataset
    UserName = 'fsvenda_produto3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'produto=produto'
      'un=un'
      'CODIGO=CODIGO'
      'CODNOTA=CODNOTA'
      'CODPRODUTO=CODPRODUTO'
      'UNITARIO=UNITARIO'
      'TOTAL=TOTAL'
      'ICMS=ICMS'
      'IPI=IPI'
      'CFOP=CFOP'
      'DATA=DATA'
      'NUMERONOTA=NUMERONOTA'
      'CODCLIENTE=CODCLIENTE'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'MOVIMENTO=MOVIMENTO'
      'CODVENDEDOR=CODVENDEDOR'
      'CODGRADE=CODGRADE'
      'SERIAL=SERIAL'
      'UNIDADE=UNIDADE'
      'QTDE=QTDE'
      'VALOR_ICMS=VALOR_ICMS'
      'ICMS_REDUZIDO=ICMS_REDUZIDO'
      'BASE_CALCULO=BASE_CALCULO'
      'VALOR_IPI=VALOR_IPI'
      'CLIENTE=CLIENTE'
      'VENDEDOR=VENDEDOR'
      'comissao=comissao')
    DataSet = qrvenda_produto3
    BCDToCurrency = False
    Left = 88
    Top = 97
  end
  object qrabc: TZQuery
    Connection = frmmodulo.ConexaoLocal
    SQL.Strings = (
      'select * from cl00006')
    Params = <>
    Left = 88
    Top = 2
    object qrabcVALOR2: TFloatField
      DisplayLabel = '?'
      DisplayWidth = 2
      FieldName = 'VALOR2'
    end
    object qrabcCODIGO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Size = 6
    end
    object qrabcCAMPO1: TStringField
      DisplayLabel = 'CLIENTE'
      DisplayWidth = 60
      FieldName = 'CAMPO1'
      Size = 50
    end
    object qrabcVALOR1: TFloatField
      DisplayLabel = 'TOTAL DAS COMPRAS'
      DisplayWidth = 18
      FieldName = 'VALOR1'
      DisplayFormat = '###,###,##0.00'
    end
    object qrabcPERCENTUAL: TFloatField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'PERCENTUAL'
      DisplayFormat = '###,###,##0.00%'
      Calculated = True
    end
    object qrabcABC: TStringField
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'ABC'
      Size = 1
      Calculated = True
    end
    object qrabcCAMPO2: TStringField
      DisplayWidth = 27
      FieldName = 'CAMPO2'
      Visible = False
      Size = 50
    end
    object qrabcCAMPO3: TStringField
      DisplayWidth = 50
      FieldName = 'CAMPO3'
      Visible = False
      Size = 50
    end
    object qrabcCAMPO4: TStringField
      DisplayWidth = 50
      FieldName = 'CAMPO4'
      Visible = False
      Size = 50
    end
    object qrabcVALOR3: TFloatField
      DisplayWidth = 10
      FieldName = 'VALOR3'
      Visible = False
    end
  end
  object fsabc: TfrxDBDataset
    UserName = 'fsabc'
    CloseDataSource = False
    FieldAliases.Strings = (
      'VALOR2=VALOR2'
      'CODIGO=CODIGO'
      'CAMPO1=CAMPO1'
      'VALOR1=VALOR1'
      'PERCENTUAL=PERCENTUAL'
      'ABC=ABC'
      'CAMPO2=CAMPO2'
      'CAMPO3=CAMPO3'
      'CAMPO4=CAMPO4'
      'VALOR3=VALOR3')
    DataSet = qrabc
    BCDToCurrency = False
    Left = 152
    Top = 97
  end
  object qrvenda_produto4: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      
        'select codproduto, sum(qtde) total_qtde, sum(total) total_valor ' +
        'from c000032 where movimento in (2,7,9)  group by codproduto')
    Params = <>
    Left = 120
    object qrvenda_produto4CODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrvenda_produto4TOTAL_QTDE: TFloatField
      FieldName = 'TOTAL_QTDE'
      ReadOnly = True
    end
    object qrvenda_produto4TOTAL_VALOR: TFloatField
      FieldName = 'TOTAL_VALOR'
      ReadOnly = True
    end
    object qrvenda_produto4preco_custo: TFloatField
      FieldKind = fkLookup
      FieldName = 'preco_custo'
      LookupDataSet = qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'precoCUSTO'
      KeyFields = 'codproduto'
      Lookup = True
    end
    object qrvenda_produto4PRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUTO'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Size = 40
      Lookup = True
    end
  end
  object QUERY: TZQuery
    Connection = frmmodulo.ConexaoLocal
    SQL.Strings = (
      'select * from cl00006')
    Params = <>
    Left = 152
    Top = 2
  end
  object PopupMenu1: TPopupMenu
    Left = 152
    Top = 177
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
  object qrvenda_produto10: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select codproduto, avg(unitario) media_venda, '
      'sum(qtde) total_qtde,  avg(unitario)*  sum(qtde) total_geral '
      'from c000032 where  movimento in (2,9) '
      'group by codproduto order by codproduto')
    Params = <>
    Left = 280
    Top = 32
    object StringField17: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'codproduto'
      Size = 50
      Lookup = True
    end
    object StringField18: TStringField
      FieldKind = fkLookup
      FieldName = 'un'
      LookupDataSet = qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'UNIDADE'
      KeyFields = 'codproduto'
      Size = 3
      Lookup = True
    end
    object FloatField2: TFloatField
      FieldKind = fkLookup
      FieldName = 'preco_venda'
      LookupDataSet = qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'PRECOVENDA'
      KeyFields = 'codproduto'
      DisplayFormat = '###,###,##0.00'
      Lookup = True
    end
    object FloatField12: TFloatField
      FieldKind = fkLookup
      FieldName = 'preco_custo'
      LookupDataSet = qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'PRECOCUSTO'
      KeyFields = 'codproduto'
      DisplayFormat = '###,###,##0.00'
      Lookup = True
    end
    object StringField19: TStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object FloatField13: TFloatField
      FieldName = 'MEDIA_VENDA'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField14: TFloatField
      FieldName = 'TOTAL_QTDE'
      ReadOnly = True
      DisplayFormat = '###,###,##0.00'
    end
    object qrvenda_produto10TOTAL_GERAL: TFloatField
      FieldName = 'TOTAL_GERAL'
      ReadOnly = True
    end
    object qrvenda_produto10alq: TFloatField
      FieldKind = fkLookup
      FieldName = 'alq'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ALIQUOTA'
      KeyFields = 'CODPRODUTO'
      DisplayFormat = '###,###,##0.00'
      Lookup = True
    end
  end
  object fsvenda_produto10: TfrxDBDataset
    UserName = 'fsvenda_produto10'
    CloseDataSource = False
    FieldAliases.Strings = (
      'produto=produto'
      'un=un'
      'preco_venda=preco_venda'
      'preco_custo=preco_custo'
      'CODPRODUTO=CODPRODUTO'
      'MEDIA_VENDA=MEDIA_VENDA'
      'TOTAL_QTDE=TOTAL_QTDE'
      'TOTAL_GERAL=TOTAL_GERAL'
      'alq=alq')
    DataSet = qrvenda_produto10
    BCDToCurrency = False
    Left = 152
    Top = 129
  end
  object fsvenda_cupom: TfrxDBDataset
    UserName = 'fsvenda_CUPOM'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODVENDEDOR=CODVENDEDOR'
      'TOTAL=TOTAL'
      'DESCONTO=DESCONTO'
      'vendedor=vendedor'
      'comissao_vendedor=comissao_vendedor')
    DataSet = qrvenda_cupom
    BCDToCurrency = False
    Left = 120
    Top = 98
  end
  object fscontas_receber: TfrxDBDataset
    UserName = 'fscontas_receber'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FILTRO=FILTRO'
      'situacao2=situacao2'
      'CODIGO=CODIGO'
      'DATA_VENCIMENTO=DATA_VENCIMENTO'
      'DOCUMENTO=DOCUMENTO'
      'TIPO=TIPO'
      'VALOR_ORIGINAL=VALOR_ORIGINAL'
      'VALOR_PAGO=VALOR_PAGO'
      'VALOR_ATUAL=VALOR_ATUAL'
      'juros=juros'
      'DIAS=DIAS'
      'RESTANTE=RESTANTE'
      'VALOR_JUROS=VALOR_JUROS'
      'DATA_PAGAMENTO=DATA_PAGAMENTO'
      'CODVENDEDOR=CODVENDEDOR'
      'CODCAIXA=CODCAIXA'
      'CODCLIENTE=CODCLIENTE'
      'DATA_EMISSAO=DATA_EMISSAO'
      'VALOR_DESCONTO=VALOR_DESCONTO'
      'SITUACAO=SITUACAO'
      'CODVENDA=CODVENDA'
      'NOSSONUMERO=NOSSONUMERO'
      'CODREGIAO=CODREGIAO'
      'CODCEDENTE=CODCEDENTE'
      'CLIENTE=CLIENTE'
      'CEDENTE=CEDENTE')
    DataSet = qrcontasreceber
    BCDToCurrency = False
    Left = 248
    Top = 97
  end
  object qrcontasreceber: TZQuery
    Connection = frmmodulo.Conexao
    SortedFields = 'CLIENTE'
    SQL.Strings = (
      
        'select CR.*, CLIENTE.NOME CLIENTE  from c000049 CR, C000007 CLIE' +
        'NTE WHERE CR.CODCLIENTE = CLIENTE.CODIGO')
    Params = <>
    MasterFields = 'CODIGO'
    IndexFieldNames = 'CLIENTE Asc'
    Left = 120
    Top = 33
    object qrcontasreceberFILTRO: TIntegerField
      DisplayLabel = 'S'
      DisplayWidth = 2
      FieldName = 'FILTRO'
    end
    object qrcontasrecebersituacao2: TIntegerField
      DisplayLabel = '?'
      DisplayWidth = 3
      FieldKind = fkCalculated
      FieldName = 'situacao2'
      Calculated = True
    end
    object qrcontasreceberCODIGO: TStringField
      DisplayLabel = 'VENDA/NR.'
      DisplayWidth = 9
      FieldName = 'CODIGO'
      Required = True
      Size = 9
    end
    object qrcontasreceberDATA_VENCIMENTO: TDateTimeField
      DisplayLabel = 'VENCTO.'
      DisplayWidth = 10
      FieldName = 'DATA_VENCIMENTO'
    end
    object qrcontasreceberDOCUMENTO: TStringField
      DisplayWidth = 11
      FieldName = 'DOCUMENTO'
    end
    object qrcontasreceberTIPO: TStringField
      DisplayWidth = 11
      FieldName = 'TIPO'
    end
    object qrcontasreceberVALOR_ORIGINAL: TFloatField
      DisplayLabel = 'VALOR'
      DisplayWidth = 9
      FieldName = 'VALOR_ORIGINAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberVALOR_PAGO: TFloatField
      DisplayLabel = 'VLR.PAGO'
      DisplayWidth = 9
      FieldName = 'VALOR_PAGO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberVALOR_ATUAL: TFloatField
      DisplayLabel = 'L'#205'QUIDO'
      DisplayWidth = 9
      FieldName = 'VALOR_ATUAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberjuros: TFloatField
      DisplayLabel = 'JURO/MULTA'
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'juros'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrcontasreceberDIAS: TIntegerField
      DisplayWidth = 4
      FieldKind = fkCalculated
      FieldName = 'DIAS'
      Calculated = True
    end
    object qrcontasreceberRESTANTE: TFloatField
      DisplayLabel = 'L'#205'QUIDO'
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'RESTANTE'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrcontasreceberVALOR_JUROS: TFloatField
      DisplayLabel = 'JURO/MULTA'
      DisplayWidth = 11
      FieldName = 'VALOR_JUROS'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberDATA_PAGAMENTO: TDateTimeField
      DisplayLabel = #218'LT.PAGTO.'
      DisplayWidth = 11
      FieldName = 'DATA_PAGAMENTO'
      Visible = False
    end
    object qrcontasreceberCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrcontasreceberCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
    object qrcontasreceberCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrcontasreceberDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
      Visible = False
    end
    object qrcontasreceberVALOR_DESCONTO: TFloatField
      FieldName = 'VALOR_DESCONTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrcontasreceberSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrcontasreceberCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Visible = False
      Size = 7
    end
    object qrcontasreceberNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Visible = False
      Size = 30
    end
    object qrcontasreceberCODREGIAO: TStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrcontasreceberCODCEDENTE: TStringField
      FieldName = 'CODCEDENTE'
      Size = 6
    end
    object qrcontasreceberCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 80
    end
    object qrcontasreceberCEDENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CEDENTE'
      LookupDataSet = frmmodulo.qrconfig_cobrebem
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CODCEDENTE'
      Size = 30
      Lookup = True
    end
  end
  object qrvendedor: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000008')
    Params = <>
    Left = 184
    Top = 2
  end
  object fscomissao: TfrxDBDataset
    UserName = 'fscomissao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODVENDEDOR=CODVENDEDOR'
      'VENDEDOR=VENDEDOR'
      'VALOR_5=VALOR_5'
      'VALOR_3=VALOR_3'
      'COMISSAO_5=COMISSAO_5'
      'COMISSAO_3=COMISSAO_3'
      'TIPO=TIPO'
      'TOTAL_COMISSAO=TOTAL_COMISSAO'
      'NOME_VENDEDOR=nome_vendedor')
    DataSet = QRCOMISSAO
    BCDToCurrency = False
    Left = 184
    Top = 129
  end
  object qrvenda1: TZQuery
    Connection = frmmodulo.ConexaoLocal
    SQL.Strings = (
      'select * from c000008')
    Params = <>
    Left = 216
    Top = 2
  end
  object QRCOMISSAO: TZQuery
    Connection = frmmodulo.ConexaoLocal
    SQL.Strings = (
      'SELECT * FROM COMISSAO')
    Params = <>
    Left = 120
    Top = 64
    object QRCOMISSAOCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object QRCOMISSAOVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
    object QRCOMISSAOVALOR_5: TFloatField
      FieldName = 'VALOR_5'
    end
    object QRCOMISSAOVALOR_3: TFloatField
      FieldName = 'VALOR_3'
    end
    object QRCOMISSAOCOMISSAO_5: TIntegerField
      FieldName = 'COMISSAO_5'
    end
    object QRCOMISSAOCOMISSAO_3: TIntegerField
      FieldName = 'COMISSAO_3'
    end
    object QRCOMISSAOTIPO: TStringField
      FieldName = 'TIPO'
      Size = 15
    end
    object QRCOMISSAOTOTAL_COMISSAO: TFloatField
      FieldName = 'TOTAL_COMISSAO'
    end
    object QRCOMISSAONOME_VENDEDOR: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_VENDEDOR'
      LookupDataSet = qrvendedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Size = 50
      Lookup = True
    end
  end
  object qrvenda_cupom: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select v.codvendedor,'
      
        'sum(meio_dinheiro+meio_chequeav+meio_chequeap+meio_cartaocred+me' +
        'io_cartaodeb) total,sum(desconto) desconto'
      'from c000048 v'
      'where data = '#39'22.04.2008'#39' and codvendedor = '#39'000011'#39
      'GROUP BY v.codvendedor'
      'ORDER BY v.codvendedor')
    Params = <>
    Left = 88
    Top = 33
    object qrvenda_cupomCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrvenda_cupomTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
    object qrvenda_cupomDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ReadOnly = True
    end
    object qrvenda_cupomvendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = frmmodulo.qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODVENDEDOR'
      Size = 40
      Lookup = True
    end
    object qrvenda_cupomcomissao_vendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'comissao_vendedor'
      LookupDataSet = frmmodulo.qrfunci
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'COMISSAO'
      KeyFields = 'CODVENDEDOR'
      Size = 40
      Lookup = True
    end
  end
  object query_venda_recebimento: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select v.codigo, v.nome,v.comissao,'
      ''
      '('
      ''
      
        'select sum(meio_dinheiro+meio_chequeav+meio_chequeap+meio_cartao' +
        'cred+meio_cartaodeb) vendas'
      'from c000048 where codvendedor = v.codigo'
      'and data >= '#39'03.06.2008'#39' and data <= '#39'03.06.2008'#39
      ''
      '),'
      ''
      '('
      ''
      'select sum(valor_original) original'
      'from c000049 where codvendedor = v.codigo'
      
        'and data_pagamento >= '#39'03.06.2008'#39' and data_pagamento <= '#39'03.06.' +
        '2008'#39
      ''
      '),'
      ''
      '('
      ''
      'select sum(valor_pago) pago'
      'from c000049 where codvendedor = v.codigo'
      
        'and data_pagamento >= '#39'03.06.2008'#39' and data_pagamento <= '#39'03.06.' +
        '2008'#39
      ''
      ')'
      ''
      'from  c000008 v'
      ''
      'GROUP BY v.codigo,v.nome,v.comissao'
      'ORDER BY v.nome')
    Params = <>
    Left = 248
    Top = 33
    object query_venda_recebimentoCODIGO: TStringField
      DisplayWidth = 10
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object query_venda_recebimentoNOME: TStringField
      DisplayWidth = 50
      FieldName = 'NOME'
      Size = 80
    end
    object query_venda_recebimentoColumn: TFloatField
      DisplayWidth = 15
      FieldName = 'sum'
      ReadOnly = True
    end
    object query_venda_recebimentoColumn_1: TFloatField
      DisplayWidth = 15
      FieldName = 'sum_1'
      ReadOnly = True
    end
    object query_venda_recebimentoColumn_2: TFloatField
      DisplayWidth = 15
      FieldName = 'sum_2'
      ReadOnly = True
    end
    object query_venda_recebimentoCOMISSAO: TFloatField
      DisplayWidth = 15
      FieldName = 'COMISSAO'
    end
  end
  object fsvenda_recebimento: TfrxDBDataset
    UserName = 'fsvenda_recebimento'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'sum=sum'
      'sum_1=sum_1'
      'sum_2=sum_2'
      'COMISSAO=COMISSAO')
    DataSet = query_venda_recebimento
    BCDToCurrency = False
    Left = 120
    Top = 129
  end
  object qrcondicional: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select '
      'mov.*,'
      'pro.produto,'
      'cli.nome'
      'from'
      'c000032 mov,'
      'c000025 pro,'
      'c000007 cli'
      'where'
      'mov.codproduto = pro.codigo and'
      'mov.codcliente = cli.codigo and'
      'movimento in (50,51,52)'
      'order by cli.nome, mov.codnota'
      '')
    Params = <>
    Left = 240
    Top = 186
  end
  object fscondicional: TfrxDBDataset
    UserName = 'fscondicional'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODNOTA=CODNOTA'
      'CODPRODUTO=CODPRODUTO'
      'UNITARIO=UNITARIO'
      'TOTAL=TOTAL'
      'ICMS=ICMS'
      'IPI=IPI'
      'CFOP=CFOP'
      'DATA=DATA'
      'NUMERONOTA=NUMERONOTA'
      'CODCLIENTE=CODCLIENTE'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'MOVIMENTO=MOVIMENTO'
      'CODVENDEDOR=CODVENDEDOR'
      'CODGRADE=CODGRADE'
      'SERIAL=SERIAL'
      'UNIDADE=UNIDADE'
      'QTDE=QTDE'
      'VALOR_ICMS=VALOR_ICMS'
      'ICMS_REDUZIDO=ICMS_REDUZIDO'
      'BASE_CALCULO=BASE_CALCULO'
      'VALOR_IPI=VALOR_IPI'
      'SITUACAO=SITUACAO'
      'ECF_SERIE=ECF_SERIE'
      'ECF_CAIXA=ECF_CAIXA'
      'CODALIQUOTA=CODALIQUOTA'
      'CUPOM_NUMERO=CUPOM_NUMERO'
      'CUPOM_MODELO=CUPOM_MODELO'
      'CUPOM_ITEM=CUPOM_ITEM'
      'ALIQUOTA=ALIQUOTA'
      'CST=CST'
      'LOTE_FABRICACAO=LOTE_FABRICACAO'
      'MOVIMENTO_ESTOQUE=MOVIMENTO_ESTOQUE'
      'LANCADO=LANCADO'
      'VENCIMENTO=VENCIMENTO'
      'PRODUTO=PRODUTO'
      'NOME=NOME')
    DataSet = qrcondicional
    BCDToCurrency = False
    Left = 272
    Top = 185
  end
  object query1: TZQuery
    Params = <>
    Left = 304
    Top = 96
  end
  object qrmeta: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select '
      '   codvendedor,'
      '   sum(meio_dinheiro+meio_chequeav+meio_cartaodeb) total_avista,'
      
        '   sum(meio_cartaocred+meio_crediario+meio_convenio+meio_chequea' +
        'p) total_aprazo,'
      '   count (codigo) as clientes_todos,'
      '   sum(iif(exists(select first 1 codigo from '
      
        '           c000007 where codigo = c000048.codcliente and data_ca' +
        'dastro between '#39'01/01/2008'#39' and '#39'10/01/2008'#39' ),1,0)) as clientes' +
        '_novos'
      'from c000048, c000007'
      'where c000048.codcliente = c000007.codigo'
      'and c000048.data between '#39'01/01/2008'#39' and '#39'10/01/2008'#39
      'group by codvendedor')
    Params = <>
    Left = 24
    Top = 184
    object qrmetaCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrmetaTOTAL_AVISTA: TFloatField
      FieldName = 'TOTAL_AVISTA'
      ReadOnly = True
    end
    object qrmetaTOTAL_APRAZO: TFloatField
      FieldName = 'TOTAL_APRAZO'
      ReadOnly = True
    end
    object qrmetaCLIENTES_TODOS: TIntegerField
      FieldName = 'CLIENTES_TODOS'
      ReadOnly = True
    end
    object qrmetaCLIENTES_NOVOS: TIntegerField
      FieldName = 'CLIENTES_NOVOS'
      ReadOnly = True
    end
    object qrmetavendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = qrvendedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codvendedor'
      Size = 50
      Lookup = True
    end
  end
  object fsmeta: TfrxDBDataset
    UserName = 'fsmeta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODVENDEDOR=CODVENDEDOR'
      'TOTAL_AVISTA=TOTAL_AVISTA'
      'TOTAL_APRAZO=TOTAL_APRAZO'
      'CLIENTES_TODOS=CLIENTES_TODOS'
      'CLIENTES_NOVOS=CLIENTES_NOVOS'
      'vendedor=vendedor')
    DataSet = qrmeta
    BCDToCurrency = False
    Left = 56
    Top = 185
  end
end
