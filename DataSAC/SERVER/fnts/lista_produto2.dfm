object frmlista_produto2: Tfrmlista_produto2
  Left = 436
  Top = 236
  BorderStyle = bsToolWindow
  Caption = ' Relat'#243'rio de Produtos'
  ClientHeight = 399
  ClientWidth = 387
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
    Left = 10
    Top = 11
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Relat'#243'rio: '
  end
  object Bevel1: TBevel
    Left = 9
    Top = 35
    Width = 385
    Height = 2
  end
  object Label2: TLabel
    Left = 8
    Top = 70
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Grupo:'
  end
  object Label3: TLabel
    Left = 8
    Top = 102
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Subgrupo:'
  end
  object Label4: TLabel
    Left = 8
    Top = 166
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Marca:'
  end
  object Label5: TLabel
    Left = 8
    Top = 198
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Estoque:'
  end
  object Label6: TLabel
    Left = 8
    Top = 230
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Invent'#225'rio:'
  end
  object Label7: TLabel
    Left = 8
    Top = 134
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Fornecedor:'
  end
  object Label8: TLabel
    Left = 225
    Top = 198
    Width = 46
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Ordem:'
  end
  object Label9: TLabel
    Left = 201
    Top = 230
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Tipo:'
  end
  object lcst: TLabel
    Left = 8
    Top = 260
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'CST:'
  end
  object bar: TRzProgressBar
    Left = 0
    Top = 361
    Width = 387
    Height = 6
    Align = alBottom
    BackColor = clBtnFace
    BarColor = 12582847
    BarColorStop = 59904
    BarStyle = bsGradient
    BorderOuter = fsStatus
    BorderWidth = 0
    FlatColor = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = 12582847
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    InteriorOffset = 0
    ParentFont = False
    PartsComplete = 0
    Percent = 0
    ShowPercent = False
    ThemeAware = False
    TotalParts = 500
  end
  object Label10: TLabel
    Left = 8
    Top = 284
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Situa'#231#227'o:'
  end
  object ltext_remarcado: TLabel
    Left = 4
    Top = 312
    Width = 92
    Height = 39
    Caption = 'Produtos que'#13#10'Foram Remarcados'#13#10'Pre'#231'os em  :'
    Transparent = True
    Visible = False
  end
  object Label12: TLabel
    Left = 8
    Top = 45
    Width = 70
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Produto:'
  end
  object combo_relatorio: TComboBox
    Left = 82
    Top = 6
    Width = 296
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnChange = combo_relatorioChange
    OnKeyPress = DateEdit1KeyPress
    Items.Strings = (
      'RELA'#199#195'O DE ESTOQUE - SINT'#201'TICA'
      'INVENT'#193'RIO DE ESTOQUE ATUAL'
      'RELA'#199#195'O DE ESTOQUE - COM GRADE'
      'RELA'#199#195'O DE ESTOQUE - COM SERIAIS'
      'RELA'#199#195'O DE ESTOQUE - POR GRUPO/SUBGRUPO'
      'RELA'#199#195'O DE ESTOQUE - POR FORNECEDOR'
      'RELA'#199#195'O DE ESTOQUE - POR MARCA'
      'RELA'#199#195'O DE ESTOQUE - ESTOQUE MINIMO'
      'RELA'#199#195'O DE PRODUTOS DE BALAN'#199'A'
      'RELA'#199#195'O DE PRODUTOS COM MOVIMENTA'#199#195'O'
      'RELA'#199#195'O DE PRODUTOS POR AL'#205'QUOTA'
      'TABELA DE PRE'#199'OS - SINT'#201'TICA'
      'TABELA DE PRE'#199'OS - A PRAZO'
      'TABELA DE PRE'#199'OS - POR GRUPO/SUBGRUPO'
      'TABELA DE PRE'#199'OS - POR FORNECEDOR'
      'TABELA DE PRE'#199'OS - POR MARCA'
      'ETIQUETAS'
      'PRODUTOS REMARCADOS'
      'RELA'#199#195'O DE COMPRAS'
      'SUGEST'#195'O DE COMPRAS'
      'POSI'#199#195'O DE ESTOQUE'
      'RELA'#199#195'O DE PRODUTOS SEM PIS/COFINS'
      'RELA'#199#195'O DE PRODUTOS COM PIS/COFINS'
      'RELA'#199#195'O COM PRE'#199'OS (VENDA/SUGERIDO/LUCRO 0)'
      'RESUMO FISCAL'
      'REGISTRO DE CONTROLE DA PRODU'#199#195'O E DO ESTOQUE')
  end
  object combo_grupo: TComboBox
    Left = 82
    Top = 65
    Width = 296
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
    OnChange = combo_grupoChange
    OnKeyPress = DateEdit1KeyPress
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object combo_subgrupo: TComboBox
    Left = 82
    Top = 97
    Width = 296
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
    OnChange = combo_subgrupoChange
    OnKeyPress = DateEdit1KeyPress
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object combo_marca: TComboBox
    Left = 82
    Top = 161
    Width = 296
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 4
    OnChange = combo_marcaChange
    OnKeyPress = DateEdit1KeyPress
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object combo_estoque: TComboBox
    Left = 82
    Top = 193
    Width = 144
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 5
    Text = 'TODOS'
    OnKeyPress = DateEdit1KeyPress
    Items.Strings = (
      'TODOS'
      'COM ESTOQUE'
      'ESTOQUE NEGATIVO'
      'SEM ESTOQUE')
  end
  object combo_inventario: TComboBox
    Left = 82
    Top = 225
    Width = 144
    Height = 21
    Style = csDropDownList
    Enabled = False
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 7
    Text = 'PRE'#199'O DE CUSTO'
    OnKeyPress = DateEdit1KeyPress
    Items.Strings = (
      'PRE'#199'O DE CUSTO'
      'PRE'#199'O DE VENDA')
  end
  object combo_fornecedor: TComboBox
    Left = 82
    Top = 129
    Width = 296
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
    OnChange = combo_fornecedorChange
    OnKeyPress = DateEdit1KeyPress
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object COMBO_ORDEM: TComboBox
    Left = 273
    Top = 193
    Width = 105
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 6
    Text = 'PRODUTO'
    OnKeyPress = DateEdit1KeyPress
    Items.Strings = (
      'PRODUTO'
      'C'#211'DIGO'
      'C'#211'DIGO DE BARRAS')
  end
  object combo_tipo: TComboBox
    Left = 273
    Top = 225
    Width = 105
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 8
    Text = 'TODOS'
    OnKeyPress = DateEdit1KeyPress
    Items.Strings = (
      'TODOS'
      'VENDA'
      'CONSUMO'
      'MAT'#201'RIA-PRIMA'
      'IMOBILIZADO')
  end
  object combo_cst: TComboBox
    Left = 81
    Top = 255
    Width = 297
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 9
    Text = 'TODOS'
    OnChange = combo_cstChange
    OnKeyPress = DateEdit1KeyPress
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object Panel1: TPanel
    Left = 0
    Top = 367
    Width = 387
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 12
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
  object grem: TGroupBox
    Left = 81
    Top = 307
    Width = 296
    Height = 49
    Caption = 'Per'#237'odo'
    Enabled = False
    TabOrder = 11
    Visible = False
    object lfim_remarcado: TLabel
      Left = 145
      Top = 20
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object ldataini_remarcado: TDateEdit
      Left = 34
      Top = 18
      Width = 101
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
      TabOrder = 0
      Text = '01/01/0001'
      OnKeyPress = ldataini_remarcadoKeyPress
    end
    object ldatafim_remarcado: TDateEdit
      Left = 161
      Top = 18
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
      TabOrder = 1
      Text = '31/12/2099'
      OnExit = ldatafim_remarcadoExit
      OnKeyPress = ldatafim_remarcadoKeyPress
    end
  end
  object combo_situacao: TComboBox
    Left = 82
    Top = 281
    Width = 111
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 10
    Text = 'Ativo'
    OnKeyPress = DateEdit1KeyPress
    Items.Strings = (
      'Ativo'
      'Inativo'
      'Todos')
  end
  object pdesconto: THeaderView
    Left = 214
    Top = 280
    Width = 184
    Height = 72
    AdaptiveColors = True
    BorderStyle = bsNone
    Color = clBtnFace
    HeaderColor = clHighlight
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindow
    HeaderFont.Height = -16
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = [fsBold]
    HeaderSize = 181
    ParentColor = False
    Visible = False
    object HeaderView5: THeaderView
      Left = 3
      Top = 1
      Width = 178
      Height = 68
      AdaptiveColors = True
      BorderStyle = bsNone
      Caption = 'Taxa de Juros'
      Color = clBtnFace
      HeaderColor = clHighlight
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindow
      HeaderFont.Height = -11
      HeaderFont.Name = 'Verdana'
      HeaderFont.Style = [fsBold]
      HeaderSize = 17
      ParentColor = False
      object Label11: TLabel
        Left = 72
        Top = 34
        Width = 22
        Height = 16
        Caption = ' % '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bdesconto: TAdvGlowButton
        Left = 94
        Top = 30
        Width = 79
        Height = 24
        Caption = 'Ok'
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
        OnClick = bdescontoClick
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
      object edesconto: TRzNumericEdit
        Left = 8
        Top = 32
        Width = 65
        Height = 21
        TabOrder = 1
        Value = 10.000000000000000000
        DisplayFormat = ',0;(,0)'
      end
    end
  end
  object combo_produto: TComboBox
    Left = 82
    Top = 40
    Width = 296
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 14
    OnChange = combo_produtoChange
    OnKeyPress = DateEdit1KeyPress
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SortedFields = 'CODSUBGRUPO'
    OnCalcFields = qrprodutoCalcFields
    SQL.Strings = (
      
        'select prod.*, estq.* from c000025 prod, c000100 estq where prod' +
        '.codigo = estq.codproduto')
    Params = <>
    MasterFields = 'CODIGO'
    MasterSource = dssubgrupo
    IndexFieldNames = 'CODSUBGRUPO Asc'
    Left = 88
    Top = 134
    object qrprodutoCODIGO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodutoCODBARRA: TStringField
      DisplayLabel = 'BARRAS'
      DisplayWidth = 13
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrprodutoPRODUTO: TStringField
      DisplayWidth = 36
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrprodutoUNIDADE: TStringField
      DisplayLabel = 'UN.'
      DisplayWidth = 2
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrprodutoESTOQUE: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTOQUE'
      DisplayFormat = '###,###,##0.000'
    end
    object qrprodutoPRECOVENDA: TFloatField
      DisplayLabel = 'PRE'#199'O-R$'
      DisplayWidth = 8
      FieldName = 'PRECOVENDA'
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoFORNECEDOR: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'FORNECEDOR'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Size = 40
      Lookup = True
    end
    object qrprodutoDATA_CADASTRO: TDateTimeField
      FieldName = 'DATA_CADASTRO'
      Visible = False
    end
    object qrprodutoCODGRUPO: TStringField
      FieldName = 'CODGRUPO'
      Visible = False
      Size = 6
    end
    object qrprodutoCODSUBGRUPO: TStringField
      FieldName = 'CODSUBGRUPO'
      Visible = False
      Size = 6
    end
    object qrprodutoCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object qrprodutoCODMARCA: TStringField
      FieldName = 'CODMARCA'
      Visible = False
      Size = 6
    end
    object qrprodutoDATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
      Visible = False
    end
    object qrprodutoNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Visible = False
      Size = 6
    end
    object qrprodutoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      Visible = False
    end
    object qrprodutoDATA_ULTIMAVENDA: TDateTimeField
      FieldName = 'DATA_ULTIMAVENDA'
      Visible = False
    end
    object qrprodutoESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      Visible = False
      DisplayFormat = '###,###,##0.000'
    end
    object qrprodutoAPLICACAO: TMemoField
      FieldName = 'APLICACAO'
      Visible = False
      BlobType = ftMemo
    end
    object qrprodutoLOCALICAZAO: TStringField
      FieldName = 'LOCALICAZAO'
      Visible = False
      Size = 50
    end
    object qrprodutoPESO: TFloatField
      FieldName = 'PESO'
      Visible = False
    end
    object qrprodutoVALIDADE: TStringField
      FieldName = 'VALIDADE'
      Visible = False
    end
    object qrprodutoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      Visible = False
    end
    object qrprodutoUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
      Visible = False
    end
    object qrprodutoUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
      Visible = False
    end
    object qrprodutoUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
      Visible = False
    end
    object qrprodutoCODRECEITA: TStringField
      FieldName = 'CODRECEITA'
      Visible = False
      Size = 6
    end
    object qrprodutoFOTO: TStringField
      FieldName = 'FOTO'
      Visible = False
      Size = 80
    end
    object qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
      Visible = False
    end
    object qrprodutoNOTAFISCAL_ANTERIOR: TStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Visible = False
      Size = 6
    end
    object qrprodutoCODFORNECEDOR_ANTERIOR: TStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Visible = False
      Size = 6
    end
    object qrprodutoPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
      Visible = False
    end
    object qrprodutoPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
      Visible = False
    end
    object qrprodutoCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Visible = False
    end
    object qrprodutoAUTO_APLICACAO: TStringField
      FieldName = 'AUTO_APLICACAO'
      Visible = False
      Size = 60
    end
    object qrprodutoAUTO_COMPLEMENTO: TStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Visible = False
      Size = 60
    end
    object qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField
      FieldName = 'DATA_REMARCACAO_CUSTO'
      Visible = False
    end
    object qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField
      FieldName = 'DATA_REMARCACAO_VENDA'
      Visible = False
    end
    object qrprodutoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
      Visible = False
    end
    object qrprodutoDATA_PROMOCAO: TDateTimeField
      FieldName = 'DATA_PROMOCAO'
      Visible = False
    end
    object qrprodutoFIM_PROMOCAO: TDateTimeField
      FieldName = 'FIM_PROMOCAO'
      Visible = False
    end
    object qrprodutoMARCA: TStringField
      FieldKind = fkLookup
      FieldName = 'MARCA'
      LookupDataSet = frmmodulo.qrmarca
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODMARCA'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qrprodutoGRUPO: TStringField
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
    object qrprodutoSUBGRUPO: TStringField
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
    object qrprodutoPRECO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRECO'
      Calculated = True
    end
    object qrprodutoTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrprodutoCODALIQUOTA: TStringField
      FieldName = 'CODALIQUOTA'
      Size = 5
    end
    object qrprodutoDATA_INVENTARIO: TDateTimeField
      FieldName = 'DATA_INVENTARIO'
    end
    object qrprodutoESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
    end
    object qrprodutoCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
    end
    object qrprodutoREPOSICAO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'REPOSICAO'
      DisplayFormat = '###,###,##0.000'
      Calculated = True
    end
    object qrprodutoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object qrprodutoCST: TStringField
      FieldName = 'CST'
      Size = 10
    end
    object qrprodutosituacaotributaria: TStringField
      FieldKind = fkLookup
      FieldName = 'situacaotributaria'
      LookupDataSet = frmmodulo.qrfiscal_cst
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SITUACAO'
      KeyFields = 'CST'
      Size = 50
      Lookup = True
    end
    object qrprodutoNOME_ALIQUOTA: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME_ALIQUOTA'
      Size = 30
      Calculated = True
    end
    object qrprodutosugestao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'sugestao'
      DisplayFormat = '###,###,##0.000'
      Calculated = True
    end
    object qrprodutovendas: TFloatField
      FieldKind = fkCalculated
      FieldName = 'vendas'
      DisplayFormat = '###,###,##0.000'
      Calculated = True
    end
    object qrprodutoESTOQUE_INICIAL: TFloatField
      FieldName = 'ESTOQUE_INICIAL'
    end
    object qrprodutoENTRADAS: TFloatField
      FieldName = 'ENTRADAS'
    end
    object qrprodutoSAIDAS: TFloatField
      FieldName = 'SAIDAS'
    end
    object qrprodutoESTOQUE_ATUAL: TFloatField
      FieldName = 'ESTOQUE_ATUAL'
    end
    object qrprodutoULTIMA_ENTRADA: TDateTimeField
      FieldName = 'ULTIMA_ENTRADA'
    end
    object qrprodutoULTIMA_SAIDA: TDateTimeField
      FieldName = 'ULTIMA_SAIDA'
    end
    object qrprodutoNOTA_FISCAL: TStringField
      FieldName = 'NOTA_FISCAL'
      Size = 10
    end
    object qrprodutoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrprodutoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 30
    end
  end
  object fsproduto: TfrxDBDataset
    UserName = 'fsproduto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODBARRA=CODBARRA'
      'PRODUTO=PRODUTO'
      'UNIDADE=UNIDADE'
      'ESTOQUE=ESTOQUE'
      'PRECOVENDA=PRECOVENDA'
      'FORNECEDOR=FORNECEDOR'
      'DATA_CADASTRO=DATA_CADASTRO'
      'CODGRUPO=CODGRUPO'
      'CODSUBGRUPO=CODSUBGRUPO'
      'CODFORNECEDOR=CODFORNECEDOR'
      'CODMARCA=CODMARCA'
      'DATA_ULTIMACOMPRA=DATA_ULTIMACOMPRA'
      'NOTAFISCAL=NOTAFISCAL'
      'PRECOCUSTO=PRECOCUSTO'
      'DATA_ULTIMAVENDA=DATA_ULTIMAVENDA'
      'ESTOQUEMINIMO=ESTOQUEMINIMO'
      'APLICACAO=APLICACAO'
      'LOCALICAZAO=LOCALICAZAO'
      'PESO=PESO'
      'VALIDADE=VALIDADE'
      'COMISSAO=COMISSAO'
      'USA_BALANCA=USA_BALANCA'
      'USA_SERIAL=USA_SERIAL'
      'USA_GRADE=USA_GRADE'
      'CODRECEITA=CODRECEITA'
      'FOTO=FOTO'
      'DATA_ULTIMACOMPRA_ANTERIOR=DATA_ULTIMACOMPRA_ANTERIOR'
      'NOTAFISCAL_ANTERIOR=NOTAFISCAL_ANTERIOR'
      'CODFORNECEDOR_ANTERIOR=CODFORNECEDOR_ANTERIOR'
      'PRECOCUSTO_ANTERIOR=PRECOCUSTO_ANTERIOR'
      'PRECOVENDA_ANTERIOR=PRECOVENDA_ANTERIOR'
      'CUSTOMEDIO=CUSTOMEDIO'
      'AUTO_APLICACAO=AUTO_APLICACAO'
      'AUTO_COMPLEMENTO=AUTO_COMPLEMENTO'
      'DATA_REMARCACAO_CUSTO=DATA_REMARCACAO_CUSTO'
      'DATA_REMARCACAO_VENDA=DATA_REMARCACAO_VENDA'
      'PRECO_PROMOCAO=PRECO_PROMOCAO'
      'DATA_PROMOCAO=DATA_PROMOCAO'
      'FIM_PROMOCAO=FIM_PROMOCAO'
      'MARCA=MARCA'
      'GRUPO=GRUPO'
      'SUBGRUPO=SUBGRUPO'
      'PRECO=PRECO'
      'TOTAL=TOTAL'
      'CODALIQUOTA=CODALIQUOTA'
      'DATA_INVENTARIO=DATA_INVENTARIO'
      'ESTOQUE_INVENTARIO=ESTOQUE_INVENTARIO'
      'CUSTO_INVENTARIO=CUSTO_INVENTARIO'
      'REPOSICAO=REPOSICAO'
      'ALIQUOTA=ALIQUOTA'
      'CST=CST'
      'situacaotributaria=situacaotributaria'
      'NOME_ALIQUOTA=NOME_ALIQUOTA'
      'sugestao=sugestao'
      'vendas=vendas'
      'ESTOQUE_INICIAL=ESTOQUE_INICIAL'
      'ENTRADAS=ENTRADAS'
      'SAIDAS=SAIDAS'
      'ESTOQUE_ATUAL=ESTOQUE_ATUAL'
      'ULTIMA_ENTRADA=ULTIMA_ENTRADA'
      'ULTIMA_SAIDA=ULTIMA_SAIDA'
      'NOTA_FISCAL=NOTA_FISCAL'
      'TIPO=TIPO')
    DataSet = qrproduto
    BCDToCurrency = False
    Left = 280
    Top = 62
  end
  object qrproduto_grade: TZQuery
    Connection = frmmodulo.Conexao
    SortedFields = 'CODSUBGRUPO'
    OnCalcFields = qrprodutoCalcFields
    SQL.Strings = (
      
        'select  produto.*, grade.*  from c000025 produto, c000021 grade ' +
        ' where produto.codigo = grade.codproduto')
    Params = <>
    MasterFields = 'CODIGO'
    MasterSource = dssubgrupo
    IndexFieldNames = 'CODSUBGRUPO Asc'
    Left = 344
    Top = 134
  end
  object fsproduto_grade: TfrxDBDataset
    UserName = 'fsproduto_grade'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODBARRA=CODBARRA'
      'PRODUTO=PRODUTO'
      'UNIDADE=UNIDADE'
      'DATA_CADASTRO=DATA_CADASTRO'
      'CODGRUPO=CODGRUPO'
      'CODSUBGRUPO=CODSUBGRUPO'
      'CODFORNECEDOR=CODFORNECEDOR'
      'CODMARCA=CODMARCA'
      'DATA_ULTIMACOMPRA=DATA_ULTIMACOMPRA'
      'NOTAFISCAL=NOTAFISCAL'
      'PRECOCUSTO=PRECOCUSTO'
      'PRECOVENDA=PRECOVENDA'
      'DATA_ULTIMAVENDA=DATA_ULTIMAVENDA'
      'ESTOQUE=ESTOQUE'
      'ESTOQUEMINIMO=ESTOQUEMINIMO'
      'CODALIQUOTA=CODALIQUOTA'
      'APLICACAO=APLICACAO'
      'LOCALICAZAO=LOCALICAZAO'
      'PESO=PESO'
      'VALIDADE=VALIDADE'
      'COMISSAO=COMISSAO'
      'USA_BALANCA=USA_BALANCA'
      'USA_SERIAL=USA_SERIAL'
      'USA_GRADE=USA_GRADE'
      'CODRECEITA=CODRECEITA'
      'FOTO=FOTO'
      'DATA_ULTIMACOMPRA_ANTERIOR=DATA_ULTIMACOMPRA_ANTERIOR'
      'NOTAFISCAL_ANTERIOR=NOTAFISCAL_ANTERIOR'
      'CODFORNECEDOR_ANTERIOR=CODFORNECEDOR_ANTERIOR'
      'PRECOCUSTO_ANTERIOR=PRECOCUSTO_ANTERIOR'
      'PRECOVENDA_ANTERIOR=PRECOVENDA_ANTERIOR'
      'CUSTOMEDIO=CUSTOMEDIO'
      'AUTO_APLICACAO=AUTO_APLICACAO'
      'AUTO_COMPLEMENTO=AUTO_COMPLEMENTO'
      'DATA_REMARCACAO_CUSTO=DATA_REMARCACAO_CUSTO'
      'DATA_REMARCACAO_VENDA=DATA_REMARCACAO_VENDA'
      'PRECO_PROMOCAO=PRECO_PROMOCAO'
      'DATA_PROMOCAO=DATA_PROMOCAO'
      'FIM_PROMOCAO=FIM_PROMOCAO'
      'CODIGO_1=CODIGO_1'
      'CODPRODUTO=CODPRODUTO'
      'NUMERACAO=NUMERACAO'
      'CODBARRA_1=CODBARRA_1'
      'ESTOQUE_1=ESTOQUE_1'
      'COR=COR'
      'CODSUBGRUPO_1=CODSUBGRUPO_1'
      'CODGRUPO_1=CODGRUPO_1')
    DataSet = qrproduto_grade
    BCDToCurrency = False
    Left = 120
    Top = 94
  end
  object qrgrupo: TZQuery
    Connection = frmmodulo.Conexao
    SortedFields = 'CODIGO'
    SQL.Strings = (
      'select * from c000017')
    Params = <>
    IndexFieldNames = 'CODIGO Asc'
    Left = 280
    Top = 134
  end
  object qrsubgrupo: TZQuery
    Connection = frmmodulo.Conexao
    SortedFields = 'CODGRUPO'
    SQL.Strings = (
      'select * from c000018 order by codgrupo,subgrupo')
    Params = <>
    MasterFields = 'CODIGO'
    MasterSource = dsgrupo
    IndexFieldNames = 'CODGRUPO Asc'
    Left = 312
    Top = 134
  end
  object dsgrupo: TDataSource
    DataSet = qrgrupo
    Left = 600
    Top = 107
  end
  object dssubgrupo: TDataSource
    DataSet = qrsubgrupo
    Left = 632
    Top = 107
  end
  object fsgrupo: TfrxDBDataset
    UserName = 'fsgrupo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'GRUPO=GRUPO')
    DataSet = qrgrupo
    BCDToCurrency = False
    Left = 344
    Top = 62
  end
  object fssubgrupo: TfrxDBDataset
    UserName = 'fssubgrupo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODGRUPO=CODGRUPO'
      'SUBGRUPO=SUBGRUPO')
    DataSet = qrsubgrupo
    BCDToCurrency = False
    Left = 88
    Top = 94
  end
  object fxproduto: TfrxReport
    Version = '4.7.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39181.615094942100000000
    ReportOptions.LastChange = 40185.837720300900000000
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
        DataSet = fsproducao
        DataSetName = 'fsproducao'
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
      LeftMargin = 3.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader1: TfrxGroupHeader
        Height = 181.417440000000000000
        Top = 18.897650000000000000
        Width = 793.323347000000000000
        Condition = 'fsproducao."CODPRODUTO"'
        StartNewPage = True
        object Shape1: TfrxShapeView
          Left = 246.386002520000000000
          Top = 130.338582680000000000
          Width = 101.669291338583000000
          Height = 26.456692910000000000
          ShowHint = False
        end
        object Shape2: TfrxShapeView
          Left = 79.527622520000000000
          Top = 130.228510000000000000
          Width = 29.480314960629900000
          Height = 49.133875350000000000
          ShowHint = False
        end
        object Shape6: TfrxShapeView
          Left = 108.763862520000000000
          Top = 130.448980000000000000
          Width = 50.267716540000000000
          Height = 49.133875350000000000
          ShowHint = False
        end
        object Shape26: TfrxShapeView
          Left = 159.000102520000000000
          Top = 130.228510000000000000
          Width = 56.692950000000000000
          Height = 49.133875350000000000
          ShowHint = False
        end
        object Shape27: TfrxShapeView
          Left = 216.149762520000000000
          Top = 130.448980000000000000
          Width = 30.236220470000000000
          Height = 49.133875350000000000
          ShowHint = False
        end
        object Shape28: TfrxShapeView
          Left = 246.425196850394000000
          Top = 157.173228350000000000
          Width = 56.692913390000000000
          Height = 21.921254960000000000
          ShowHint = False
        end
        object Shape29: TfrxShapeView
          Left = 302.283652520000000000
          Top = 157.228510000000000000
          Width = 45.354340470000000000
          Height = 21.921254960000000000
          ShowHint = False
        end
        object Shape30: TfrxShapeView
          Left = 347.692920710000000000
          Top = 130.448980000000000000
          Width = 30.992125980000000000
          Height = 49.133875350000000000
          ShowHint = False
        end
        object Shape31: TfrxShapeView
          Left = 378.685046690000000000
          Top = 130.228510000000000000
          Width = 31.370078740000000000
          Height = 49.133875350000000000
          ShowHint = False
        end
        object Shape32: TfrxShapeView
          Left = 409.905792520000000000
          Top = 130.228510000000000000
          Width = 71.811070000000000000
          Height = 49.133875350000000000
          ShowHint = False
        end
        object Shape33: TfrxShapeView
          Left = 553.512162520000000000
          Top = 130.448980000000000000
          Width = 71.811070000000000000
          Height = 49.133875350000000000
          ShowHint = False
        end
        object Shape34: TfrxShapeView
          Left = 698.016182520000000000
          Top = 107.448980000000000000
          Width = 78.614173230000000000
          Height = 71.811055350000000000
          ShowHint = False
        end
        object Shape35: TfrxShapeView
          Left = 625.488196300000000000
          Top = 107.362400000000000000
          Width = 72.566929130000000000
          Height = 71.811055350000000000
          ShowHint = False
        end
        object Shape36: TfrxShapeView
          Left = 481.701092520000000000
          Top = 130.228510000000000000
          Width = 71.811070000000000000
          Height = 49.133875350000000000
          ShowHint = False
        end
        object Shape37: TfrxShapeView
          Left = 14.496082520000000000
          Top = 130.448980000000000000
          Width = 34.771653543307100000
          Height = 49.133875350000000000
          ShowHint = False
        end
        object Shape38: TfrxShapeView
          Left = 49.291382520000000000
          Top = 130.228510000000000000
          Width = 30.236220470000000000
          Height = 49.133875350000000000
          ShowHint = False
        end
        object Memo4: TfrxMemoView
          Left = 63.291382520000000000
          Top = 27.015770000000000000
          Width = 525.354670000000000000
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
        object Shape39: TfrxShapeView
          Left = 14.338590000000000000
          Width = 611.527559055118000000
          Height = 22.677180000000000000
          ShowHint = False
        end
        object Shape40: TfrxShapeView
          Left = 625.543702520000000000
          Width = 151.181200000000000000
          Height = 22.677165350000000000
          ShowHint = False
        end
        object Memo5: TfrxMemoView
          Left = 95.968562520000000000
          Top = 2.559060000000000000
          Width = 423.307360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'REGISTRO DE CONTROLE DA PRODU'#195#8225#195#402'O E DO ESTOQUE')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 17.937022520000000000
          Top = 27.015770000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Firma:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 17.937022520000000000
          Top = 45.692950000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Insc.Est:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 74.629972520000000000
          Top = 45.692950000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'IE'
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fxemitente."IE"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 339.858482520000000000
          Top = 45.692950000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 388.110492520000000000
          Top = 45.692950000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CNPJ'
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fxemitente."CNPJ"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 17.937022520000000000
          Top = 65.590600000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Folha:')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 17.937022520000000000
          Top = 85.267780000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Produto:')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 331.638012520000000000
          Top = 65.763779530000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Per'#195#173'odo:')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 327.858482520000000000
          Top = 85.417322830000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Unidade:')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 418.567202520000000000
          Top = 85.417322830000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Classif.Fiscal:')
          ParentFont = False
        end
        object Shape41: TfrxShapeView
          Left = 625.543702520000000000
          Top = 22.677165350000000000
          Width = 151.181200000000000000
          Height = 84.283464570000000000
          ShowHint = False
        end
        object Memo58: TfrxMemoView
          Left = 626.102762520000000000
          Top = 4.779530000000000000
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'C'#195#8220'DIGO DE ENTRADAS E SAIDAS')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 627.323232520000000000
          Top = 29.795300000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '1 - NO PR'#195#8220'PRIO ESTABELECIMENTO')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 627.323232520000000000
          Top = 47.472480000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '2 - EM OUTRO ESTABELECIMENTO')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 627.323232520000000000
          Top = 64.149660000000000000
          Width = 173.858380000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '3 - DIVERSOS')
          ParentFont = False
        end
        object Shape42: TfrxShapeView
          Left = 14.377962520000000000
          Top = 106.960629920000000000
          Width = 201.448818897638000000
          Height = 23.055118110000000000
          ShowHint = False
        end
        object Memo62: TfrxMemoView
          Left = 75.070912520000000000
          Top = 111.330860000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DOCUMENTO')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 21.377962520000000000
          Top = 133.181200000000000000
          Width = 18.897650000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Esp'#195#169'cie')
          ParentFont = False
          Rotation = 90
        end
        object Memo64: TfrxMemoView
          Left = 54.614202520000000000
          Top = 138.960730000000000000
          Width = 18.897650000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'S'#195#169'rie')
          ParentFont = False
          Rotation = 90
        end
        object Memo65: TfrxMemoView
          Left = 78.850442520000000000
          Top = 142.519790000000000000
          Width = 30.236240000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ' Sub'
            'S'#195#169'rie')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 112.425272520000000000
          Top = 145.078740160000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'N'#195#186'mero')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 171.456812520000000000
          Top = 145.078850000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Data')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 221.149762520000000000
          Top = 145.078850000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Dia')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 248.488352520000000000
          Top = 160.196970000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Cont'#195#161'bil')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 305.181302520000000000
          Top = 160.196970000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Fiscal')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 351.535662520000000000
          Top = 146.078850000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'E/S')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 382.551432520000000000
          Top = 146.078850000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'C'#195#179'd')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 415.787672520000000000
          Top = 146.078850000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Quantidade')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 503.716862520000000000
          Top = 146.078850000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Valor')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 578.307462520000000000
          Top = 146.078850000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'IPI')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 638.779942520000000000
          Top = 133.740260000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Estoque')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 703.811482520000000000
          Top = 133.740260000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Observa'#195#167#195#181'es')
          ParentFont = False
        end
        object Shape43: TfrxShapeView
          Left = 215.811023622047000000
          Top = 106.771800000000000000
          Width = 131.527559060000000000
          Height = 23.055118110000000000
          ShowHint = False
        end
        object Shape44: TfrxShapeView
          Left = 347.756132520000000000
          Top = 106.960629920000000000
          Width = 277.417322834646000000
          Height = 23.055118110000000000
          ShowHint = False
        end
        object Memo78: TfrxMemoView
          Left = 241.708822520000000000
          Top = 111.551330000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAN'#195#8225'AMENTO')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 419.008142520000000000
          Top = 111.551330000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ENTRADAS E SA'#195#141'DAS')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 265.386002520000000000
          Top = 134.181200000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Codifica'#195#167#195#163'o')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 14.338590000000000000
          Top = 23.456710000000000000
          Height = 83.149660000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo81: TfrxMemoView
          Left = 75.189032520000000000
          Top = 86.417322830000000000
          Width = 249.448980000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = fsproducao
          DataSetName = 'fsproducao'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsproducao."PRODUTO"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 385.110492520000000000
          Top = 86.929190000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'UNIDADE'
          DataSet = fsproducao
          DataSetName = 'fsproducao'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsproducao."UNIDADE"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 502.275922520000000000
          Top = 86.929190000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CLASSIFICACAO_FISCAL'
          DataSet = fsproducao
          DataSetName = 'fsproducao'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsproducao."CLASSIFICACAO_FISCAL"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 222.992270000000000000
        Width = 793.323347000000000000
        DataSet = fsproducao
        DataSetName = 'fsproducao'
        RowCount = 0
        object Memo12: TfrxMemoView
          Left = 159.559060000000000000
          Top = 1.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DATA_EMISSAO'
          DataSet = fsproducao
          DataSetName = 'fsproducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsproducao."DATA_EMISSAO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 417.071120000000000000
          Top = 1.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'QTDE'
          DataSet = fsproducao
          DataSetName = 'fsproducao'
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsproducao."QTDE"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 486.661720000000000000
          Top = 1.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'TOTAL'
          DataSet = fsproducao
          DataSetName = 'fsproducao'
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsproducao."TOTAL"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 558.811380000000000000
          Top = 1.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'IPI'
          DataSet = fsproducao
          DataSetName = 'fsproducao'
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsproducao."IPI"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 14.000000000000000000
          Top = 18.897650000000000000
          Width = 759.685530000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 34.015770000000000000
        Top = 264.567100000000000000
        Width = 793.323347000000000000
        object Line4: TfrxLineView
          Width = 786.141732280000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object Footer1: TfrxFooter
        Height = 26.456710000000000000
        Top = 321.260050000000000000
        Width = 793.323347000000000000
        object Line1: TfrxLineView
          Left = -7.559060000000000000
          Top = 22.677180000000000000
          Width = 786.142240000000000000
          ShowHint = False
          Diagonal = True
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
  object frxCrossObject1: TfrxCrossObject
    Left = 152
    Top = 62
  end
  object qrproduto_serial: TZQuery
    Connection = frmmodulo.Conexao
    SortedFields = 'CODPRODUTO'
    SQL.Strings = (
      'select * from c000022')
    Params = <>
    MasterFields = 'CODIGO'
    MasterSource = dsproduto
    IndexFieldNames = 'CODPRODUTO Asc'
    Left = 152
    Top = 134
    object qrproduto_serialCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrproduto_serialCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrproduto_serialSERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrproduto_serialESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object qrproduto_serialCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrproduto_serialPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object qrproduto_serialPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
    object qrproduto_serialDATAVENDA: TDateTimeField
      FieldName = 'DATAVENDA'
    end
    object qrproduto_serialSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrproduto_serialCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 80
    end
    object qrproduto_serialCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object qrproduto_serialCODITEM: TStringField
      FieldName = 'CODITEM'
      Size = 6
    end
    object qrproduto_serialDATACOMPRA: TDateTimeField
      FieldName = 'DATACOMPRA'
    end
    object qrproduto_serialNUMERONOTA: TStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrproduto_serialCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrproduto_serialCODVENDA_ITEM: TStringField
      FieldName = 'CODVENDA_ITEM'
      Size = 6
    end
    object qrproduto_serialFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrproduto_serialCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Size = 6
    end
    object qrproduto_serialfornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 40
      Lookup = True
    end
  end
  object fsproduto_serial: TfrxDBDataset
    UserName = 'fsproduto_serial'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODPRODUTO=CODPRODUTO'
      'SERIAL=SERIAL'
      'ESTOQUE=ESTOQUE'
      'CODCLIENTE=CODCLIENTE'
      'PRECOCUSTO=PRECOCUSTO'
      'PRECOVENDA=PRECOVENDA'
      'DATAVENDA=DATAVENDA'
      'SITUACAO=SITUACAO'
      'CLIENTE=CLIENTE'
      'CODNOTA=CODNOTA'
      'CODITEM=CODITEM'
      'DATACOMPRA=DATACOMPRA'
      'NUMERONOTA=NUMERONOTA'
      'CODFORNECEDOR=CODFORNECEDOR'
      'CODVENDA_ITEM=CODVENDA_ITEM'
      'FILTRO=FILTRO'
      'CODVENDA=CODVENDA'
      'fornecedor=fornecedor')
    DataSet = qrproduto_serial
    BCDToCurrency = False
    Left = 248
    Top = 62
  end
  object qrfornecedor: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 184
    Top = 134
  end
  object dsproduto: TDataSource
    DataSet = qrsugestao_compra
    Left = 568
    Top = 107
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 107
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
  object QRMOVIMENTO: TZQuery
    Connection = frmmodulo.Conexao
    SortedFields = 'CODPRODUTO'
    OnCalcFields = QRMOVIMENTOCalcFields
    SQL.Strings = (
      'select * from c000032')
    Params = <>
    MasterFields = 'CODIGO'
    MasterSource = dsproduto2
    IndexFieldNames = 'CODPRODUTO Asc'
    Left = 216
    Top = 134
    object QRMOVIMENTOCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QRMOVIMENTOCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object QRMOVIMENTOCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object QRMOVIMENTOUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object QRMOVIMENTOTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object QRMOVIMENTOICMS: TFloatField
      FieldName = 'ICMS'
    end
    object QRMOVIMENTOIPI: TFloatField
      FieldName = 'IPI'
    end
    object QRMOVIMENTOCFOP: TStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object QRMOVIMENTODATA: TDateTimeField
      FieldName = 'DATA'
    end
    object QRMOVIMENTONUMERONOTA: TStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object QRMOVIMENTOCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object QRMOVIMENTODESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object QRMOVIMENTOACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object QRMOVIMENTOMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object QRMOVIMENTOCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object QRMOVIMENTOCODGRADE: TStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object QRMOVIMENTOSERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 25
    end
    object QRMOVIMENTOUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object QRMOVIMENTOQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object QRMOVIMENTOVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object QRMOVIMENTOICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object QRMOVIMENTOBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object QRMOVIMENTOVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object QRMOVIMENTOPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUTO'
      LookupDataSet = qrproduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Size = 50
      Lookup = True
    end
    object QRMOVIMENTOMOV: TStringField
      FieldKind = fkCalculated
      FieldName = 'MOV'
      Size = 30
      Calculated = True
    end
    object QRMOVIMENTOCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = frmmodulo.qrcliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Size = 30
      Lookup = True
    end
  end
  object fsmovimento: TfrxDBDataset
    UserName = 'fsmovimento'
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
      'PRODUTO=PRODUTO'
      'MARCA=MARCA'
      'FORNECEDOR=FORNECEDOR'
      'MOV=MOV'
      'CLIENTE=CLIENTE')
    DataSet = QRMOVIMENTO
    BCDToCurrency = False
    Left = 184
    Top = 62
  end
  object qrsugestao_compra: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      
        'select p.codigo,p.produto,p.codfornecedor,p.codmarca,p.estoque,p' +
        '.precocusto,p.data_ultimacompra,p.data_ultimavenda,sum(m.qtde) v' +
        'endas,sum(m.qtde)-p.estoque as sugestao'
      'from c000025 p,  c000032 m'
      'where m.codproduto = p.codigo and'
      'm.data >= '#39'01.01.2008'#39' and m.data <= '#39'25.02.2008'#39
      'and p.codigo is not null'
      
        'group by p.codigo,p.produto,p.codfornecedor,p.codmarca,p.estoque' +
        ',p.precocusto,p.data_ultimacompra,p.data_ultimavenda'
      'order by p.codfornecedor,p.produto')
    Params = <>
    Left = 248
    Top = 134
    object qrsugestao_compraCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrsugestao_compraPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrsugestao_compraCODMARCA: TStringField
      FieldName = 'CODMARCA'
      Size = 6
    end
    object qrsugestao_compraESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      DisplayFormat = '###,###,##0.000'
    end
    object qrsugestao_compraPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrsugestao_compraDATA_ULTIMACOMPRA: TDateTimeField
      FieldName = 'DATA_ULTIMACOMPRA'
    end
    object qrsugestao_compraDATA_ULTIMAVENDA: TDateTimeField
      FieldName = 'DATA_ULTIMAVENDA'
    end
    object qrsugestao_compraVENDAS: TFloatField
      FieldName = 'VENDAS'
      ReadOnly = True
      DisplayFormat = '###,###,##0.000'
    end
    object qrsugestao_compraSUGESTAO: TFloatField
      FieldName = 'SUGESTAO'
      ReadOnly = True
      DisplayFormat = '###,###,##0.000'
    end
    object qrsugestao_compraCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrsugestao_compramarca: TStringField
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupDataSet = frmmodulo.qrmarca
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODMARCA'
      Size = 30
      Lookup = True
    end
    object qrsugestao_comprafornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Size = 40
      Lookup = True
    end
  end
  object fssugestao_compra: TfrxDBDataset
    UserName = 'fssugestao_compra'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'PRODUTO=PRODUTO'
      'CODMARCA=CODMARCA'
      'ESTOQUE=ESTOQUE'
      'PRECOCUSTO=PRECOCUSTO'
      'DATA_ULTIMACOMPRA=DATA_ULTIMACOMPRA'
      'DATA_ULTIMAVENDA=DATA_ULTIMAVENDA'
      'VENDAS=VENDAS'
      'SUGESTAO=SUGESTAO'
      'CODFORNECEDOR=CODFORNECEDOR'
      'marca=marca'
      'fornecedor=fornecedor')
    DataSet = qrsugestao_compra
    BCDToCurrency = False
    Left = 312
    Top = 62
  end
  object QUERY: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      
        'SELECT SUM(CUSTO_INVENTARIO*ESTOQUE_INVENTARIO) TOTAL, TIPO, CST' +
        ', ALIQUOTA FROM C000025 GROUP BY TIPO,CST, ALIQUOTA ORDER BY TIP' +
        'O,CST, ALIQUOTA')
    Params = <>
    Left = 408
    Top = 243
  end
  object QUERY_TIPO: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      
        'SELECT SUM(CUSTO_INVENTARIO*ESTOQUE_INVENTARIO) TOTAL, TIPO FROM' +
        ' C000025 GROUP BY TIPO ORDER BY TIPO')
    Params = <>
    Left = 440
    Top = 243
  end
  object fstotal_TIPO: TfrxDBDataset
    UserName = 'fstotal_TIPO'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TOTAL=TOTAL'
      'TIPO=TIPO')
    DataSet = QUERY_TIPO
    BCDToCurrency = False
    Left = 408
    Top = 275
  end
  object fstotal: TfrxDBDataset
    UserName = 'fstotal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TOTAL=TOTAL'
      'TIPO=TIPO'
      'CST=CST'
      'ALIQUOTA=ALIQUOTA')
    DataSet = QUERY
    BCDToCurrency = False
    Left = 440
    Top = 275
  end
  object dsproduto2: TDataSource
    DataSet = qrproduto
    Left = 48
    Top = 187
  end
  object qrposicao: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select '
      'c000025.codigo,'
      'c000025.produto,'
      'c000025.unidade,'
      'c000100.ESTOQUE_INiCIAL,'
      
        '(select sum(c000032.movimento_estoque) from c000032 where c00003' +
        '2.codproduto = c000025.codigo) saldo_anterior,'
      
        '(select sum(c000032.movimento_estoque) from c000032 where c00003' +
        '2.codproduto = c000025.codigo) movimento'
      'from c000025, c000100'
      'where c000025.codigo = c000100.codproduto')
    Params = <>
    Left = 200
    Top = 283
    object qrposicaoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrposicaoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrposicaoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrposicaoSALDO_ANTERIOR: TFloatField
      FieldName = 'SALDO_ANTERIOR'
      ReadOnly = True
    end
    object qrposicaoMOVIMENTO: TFloatField
      FieldName = 'MOVIMENTO'
      ReadOnly = True
    end
    object qrposicaoESTOQUE_INICIAL: TFloatField
      FieldName = 'ESTOQUE_INICIAL'
    end
  end
  object fsposicao: TfrxDBDataset
    UserName = 'fsposicao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'PRODUTO=PRODUTO'
      'UNIDADE=UNIDADE'
      'SALDO_ANTERIOR=SALDO_ANTERIOR'
      'MOVIMENTO=MOVIMENTO'
      'ESTOQUE_INICIAL=ESTOQUE_INICIAL')
    DataSet = qrposicao
    BCDToCurrency = False
    Left = 231
    Top = 283
  end
  object query_pis_entrada: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = query_pis_entradaCalcFields
    Active = True
    SQL.Strings = (
      
        'select sum(m.qtde) qtde,m.movimento,  m.codproduto,m.unitario,p.' +
        'codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,' +
        'p.aliquota'
      
        'from c000032 m, c000025 p where m.movimento in (1) and p.codigo ' +
        '= m.codproduto'
      
        'and p.piscofins = '#39'N'#39' and m.DATA >= '#39'01.01.2008'#39' and m.DATA <= '#39 +
        '31.12.2008'#39
      
        'group by m.movimento,m.codproduto,m.unitario,p.codigo,p.produto,' +
        ' p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota'
      'order by m.movimento, p.codsubgrupo,p.produto')
    Params = <>
    Left = 480
    Top = 243
    object query_pis_entradaQTDE: TFloatField
      FieldName = 'QTDE'
      ReadOnly = True
    end
    object query_pis_entradaMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object query_pis_entradaCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object query_pis_entradaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object query_pis_entradaPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object query_pis_entradaCODSUBGRUPO: TStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object query_pis_entradaPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object query_pis_entradaPISCOFINS: TStringField
      FieldName = 'PISCOFINS'
      Size = 1
    end
    object query_pis_entradasubgrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'subgrupo'
      LookupDataSet = frmmodulo.qrsubgrupo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SUBGRUPO'
      KeyFields = 'CODSUBGRUPO'
      Size = 40
      Lookup = True
    end
    object query_pis_entradaCST: TStringField
      FieldName = 'CST'
      Size = 10
    end
    object query_pis_entradaALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object query_pis_entradapis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pis'
      Calculated = True
    end
    object query_pis_entradacofins: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cofins'
      Calculated = True
    end
    object query_pis_entradaUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
  end
  object query_pis_saida: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = query_pis_saidaCalcFields
    Active = True
    SQL.Strings = (
      
        'select sum(m.total-m.desconto) total,sum(m.desconto) desconto,su' +
        'm(m.qtde) qtde,m.movimento,'
      'm.codproduto,m.unitario,p.codigo,'
      
        'p.produto, p.codsubgrupo,p.precocusto, p.piscofins, p.cst,p.aliq' +
        'uota'
      ''
      'from c000032 m, c000025 p'
      'where m.movimento = 2'
      'and p.codigo = m.codproduto'
      
        'and p.piscofins = '#39'S'#39'  and m.data >= '#39'10.09.2009'#39' and m.data <= ' +
        #39'10.09.2009'#39
      ''
      'group by m.movimento,m.codproduto,m.unitario,p.codigo,p.produto,'
      
        'p.codsubgrupo,p.precocusto, p.piscofins, p.piscofins,p.cst,p.ali' +
        'quota'
      'order by m.movimento, p.codsubgrupo,p.produto')
    Params = <>
    Left = 512
    Top = 243
    object FloatField1: TFloatField
      FieldName = 'QTDE'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object StringField1: TStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object StringField2: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object StringField3: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object StringField4: TStringField
      FieldName = 'CODSUBGRUPO'
      Size = 6
    end
    object FloatField3: TFloatField
      FieldName = 'PRECOCUSTO'
    end
    object StringField5: TStringField
      FieldName = 'PISCOFINS'
      Size = 1
    end
    object query_pis_saidasubgrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'subgrupo'
      LookupDataSet = frmmodulo.qrsubgrupo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'SUBGRUPO'
      KeyFields = 'CODSUBGRUPO'
      Size = 40
      Lookup = True
    end
    object query_pis_saidaCST: TStringField
      FieldName = 'CST'
      Size = 10
    end
    object query_pis_saidaALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
    end
    object query_pis_saidapis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pis'
      Calculated = True
    end
    object query_pis_saidacofins: TFloatField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'cofins'
      Calculated = True
    end
    object query_pis_saidaUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object query_pis_saidaTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
    object query_pis_saidaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      ReadOnly = True
    end
  end
  object fspis_saida: TfrxDBDataset
    UserName = 'fspis_saida'
    CloseDataSource = False
    FieldAliases.Strings = (
      'QTDE=QTDE'
      'MOVIMENTO=MOVIMENTO'
      'CODPRODUTO=CODPRODUTO'
      'CODIGO=CODIGO'
      'PRODUTO=PRODUTO'
      'CODSUBGRUPO=CODSUBGRUPO'
      'PRECOCUSTO=PRECOCUSTO'
      'PISCOFINS=PISCOFINS'
      'subgrupo=subgrupo'
      'CST=CST'
      'ALIQUOTA=ALIQUOTA'
      'pis=pis'
      'cofins=cofins'
      'UNITARIO=UNITARIO'
      'TOTAL=TOTAL'
      'DESCONTO=DESCONTO')
    DataSet = query_pis_saida
    BCDToCurrency = False
    Left = 512
    Top = 275
  end
  object fspis_entrada: TfrxDBDataset
    UserName = 'fspis_entrada'
    CloseDataSource = False
    FieldAliases.Strings = (
      'QTDE=QTDE'
      'MOVIMENTO=MOVIMENTO'
      'CODPRODUTO=CODPRODUTO'
      'CODIGO=CODIGO'
      'PRODUTO=PRODUTO'
      'CODSUBGRUPO=CODSUBGRUPO'
      'PRECOCUSTO=PRECOCUSTO'
      'PISCOFINS=PISCOFINS'
      'subgrupo=subgrupo'
      'CST=CST'
      'ALIQUOTA=ALIQUOTA'
      'pis=pis'
      'cofins=cofins'
      'UNITARIO=UNITARIO')
    DataSet = query_pis_entrada
    BCDToCurrency = False
    Left = 480
    Top = 275
  end
  object qrproduto_preco: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      
        'select prod.codigo,prod.codbarra,prod.produto, prod.precovenda, ' +
        'prod.unidade, nf.codproduto, prec.LUCRO, PREC.PRECO_VENDA SUGERI' +
        'DO from'
      'c000025 prod,'
      'c000026 prec,'
      'c000088 nf'
      'where'
      'prod.codigo = prec.codproduto'
      'and prod.codigo = nf.codproduto'
      'and nf.data between '#39'07.04.2009'#39' and '#39'07.04.2009'#39
      'and prec.data_alteracao between '#39'07.04.2009'#39' and '#39'07.04.2009'#39
      
        'group by prod.codigo,prod.codbarra,prod.produto, prod.precovenda' +
        ', prod.unidade, nf.codproduto, prec.LUCRO , sugerido'
      'order by prod.produto')
    Params = <>
    Left = 120
    Top = 134
    object qrproduto_precoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrproduto_precoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrproduto_precoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrproduto_precoCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object qrproduto_precoLUCRO: TFloatField
      FieldName = 'LUCRO'
    end
    object qrproduto_precoSUGERIDO: TFloatField
      FieldName = 'SUGERIDO'
    end
    object qrproduto_precoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrproduto_precoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
    end
  end
  object fs_produto_preco: TfrxDBDataset
    UserName = 'fs_produto_preco'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODBARRA=CODBARRA'
      'PRODUTO=PRODUTO'
      'CODPRODUTO=CODPRODUTO'
      'LUCRO=LUCRO'
      'SUGERIDO=SUGERIDO'
      'UNIDADE=UNIDADE'
      'PRECOVENDA=PRECOVENDA')
    DataSet = qrproduto_preco
    BCDToCurrency = False
    Left = 120
    Top = 166
  end
  object qrprecos: TZQuery
    Connection = frmmodulo.Conexao
    SortedFields = 'codsubgrupo'
    SQL.Strings = (
      'SELECT * FROM C000025')
    Params = <>
    IndexFieldNames = 'codsubgrupo Asc'
    Left = 262
    Top = 283
  end
  object fxprecos: TfrxDBDataset
    UserName = 'fxprecos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODBARRA=CODBARRA'
      'PRODUTO=PRODUTO'
      'UNIDADE=UNIDADE'
      'DATA_CADASTRO=DATA_CADASTRO'
      'CODGRUPO=CODGRUPO'
      'CODSUBGRUPO=CODSUBGRUPO'
      'CODFORNECEDOR=CODFORNECEDOR'
      'CODMARCA=CODMARCA'
      'DATA_ULTIMACOMPRA=DATA_ULTIMACOMPRA'
      'NOTAFISCAL=NOTAFISCAL'
      'PRECOCUSTO=PRECOCUSTO'
      'PRECOVENDA=PRECOVENDA'
      'DATA_ULTIMAVENDA=DATA_ULTIMAVENDA'
      'ESTOQUE=ESTOQUE'
      'ESTOQUEMINIMO=ESTOQUEMINIMO'
      'CODALIQUOTA=CODALIQUOTA'
      'APLICACAO=APLICACAO'
      'LOCALICAZAO=LOCALICAZAO'
      'PESO=PESO'
      'VALIDADE=VALIDADE'
      'COMISSAO=COMISSAO'
      'USA_BALANCA=USA_BALANCA'
      'USA_SERIAL=USA_SERIAL'
      'USA_GRADE=USA_GRADE'
      'CODRECEITA=CODRECEITA'
      'FOTO=FOTO'
      'DATA_ULTIMACOMPRA_ANTERIOR=DATA_ULTIMACOMPRA_ANTERIOR'
      'NOTAFISCAL_ANTERIOR=NOTAFISCAL_ANTERIOR'
      'CODFORNECEDOR_ANTERIOR=CODFORNECEDOR_ANTERIOR'
      'PRECOCUSTO_ANTERIOR=PRECOCUSTO_ANTERIOR'
      'PRECOVENDA_ANTERIOR=PRECOVENDA_ANTERIOR'
      'CUSTOMEDIO=CUSTOMEDIO'
      'AUTO_APLICACAO=AUTO_APLICACAO'
      'AUTO_COMPLEMENTO=AUTO_COMPLEMENTO'
      'DATA_REMARCACAO_CUSTO=DATA_REMARCACAO_CUSTO'
      'DATA_REMARCACAO_VENDA=DATA_REMARCACAO_VENDA'
      'PRECO_PROMOCAO=PRECO_PROMOCAO'
      'DATA_PROMOCAO=DATA_PROMOCAO'
      'FIM_PROMOCAO=FIM_PROMOCAO'
      'CST=CST'
      'CLASSIFICACAO_FISCAL=CLASSIFICACAO_FISCAL'
      'NBM=NBM'
      'NCM=NCM'
      'ALIQUOTA=ALIQUOTA'
      'IPI=IPI'
      'REDUCAO=REDUCAO'
      'QTDE_EMBALAGEM=QTDE_EMBALAGEM'
      'TIPO=TIPO'
      'PESO_LIQUIDO=PESO_LIQUIDO'
      'FARMACIA_CONTROLADO=FARMACIA_CONTROLADO'
      'FARMACIA_APRESENTACAO=FARMACIA_APRESENTACAO'
      'FARMACIA_REGISTRO_MEDICAMENTO=FARMACIA_REGISTRO_MEDICAMENTO'
      'FARMACIA_PMC=FARMACIA_PMC'
      'ULTIMA_ALTERACAO=ULTIMA_ALTERACAO'
      'ULTIMA_CARGA=ULTIMA_CARGA'
      'DATA_INVENTARIO=DATA_INVENTARIO'
      'CUSTO_INVENTARIO=CUSTO_INVENTARIO'
      'ESTOQUE_INVENTARIO=ESTOQUE_INVENTARIO'
      'ESTOQUE_ANTERIOR=ESTOQUE_ANTERIOR'
      'PRECOVENDA_NOVO=PRECOVENDA_NOVO'
      'USA_RENTABILIDADE=USA_RENTABILIDADE'
      'SITUACAO=SITUACAO'
      'QUANTIDADE_MINIMA_FAB=QUANTIDADE_MINIMA_FAB'
      'APRESENTACAO=APRESENTACAO'
      'DESCONTO_PRECOVENDA=DESCONTO_PRECOVENDA'
      'MARGEM_MINIMA=MARGEM_MINIMA'
      'PISCOFINS=PISCOFINS'
      'REFERENCIA_FORNECEDOR=REFERENCIA_FORNECEDOR')
    DataSet = qrprecos
    BCDToCurrency = False
    Left = 320
    Top = 294
  end
  object qrnota_entrada: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      
        'select codigo,codempresa,codfornecedor,numero,total_nota,base_ic' +
        'ms,valor_icms,'
      'credito_icms,pis,cofins,data_lancamento,data_emissao,'
      
        '( select sum(total) subtotal from c000088 where codnota = n.codi' +
        'go and (pis+cofins) > 0 )'
      'from c000087 n'
      'where data_lancamento BETWEEN '#39'12.08.2009'#39' and '#39'12.08.2009'#39
      'order by DATA_LANCAMENTO')
    Params = <>
    Left = 400
    Top = 2
    object qrnota_entradaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrnota_entradaCODEMPRESA: TStringField
      FieldName = 'CODEMPRESA'
      Size = 10
    end
    object qrnota_entradaCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 10
    end
    object qrnota_entradaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrnota_entradaTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrnota_entradaCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
    end
    object qrnota_entradaPIS: TFloatField
      FieldName = 'PIS'
    end
    object qrnota_entradaCOFINS: TFloatField
      FieldName = 'COFINS'
    end
    object qrnota_entradaDATA_LANCAMENTO: TDateTimeField
      FieldName = 'DATA_LANCAMENTO'
    end
    object qrnota_entradaDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object qrnota_entradafornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODFORNECEDOR'
      Size = 40
      Lookup = True
    end
    object qrnota_entradacnpj: TStringField
      FieldKind = fkLookup
      FieldName = 'cnpj'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'CNPJ'
      KeyFields = 'CODFORNECEDOR'
      Lookup = True
    end
    object qrnota_entradaColumn: TFloatField
      FieldName = 'sum'
      ReadOnly = True
    end
    object qrnota_entradaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object qrnota_entradaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
  end
  object fscredito_icms: TfrxDBDataset
    UserName = 'fscredito_icms'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODEMPRESA=CODEMPRESA'
      'CODFORNECEDOR=CODFORNECEDOR'
      'NUMERO=NUMERO'
      'TOTAL_NOTA=TOTAL_NOTA'
      'CREDITO_ICMS=CREDITO_ICMS'
      'PIS=PIS'
      'COFINS=COFINS'
      'DATA_LANCAMENTO=DATA_LANCAMENTO'
      'DATA_EMISSAO=DATA_EMISSAO'
      'fornecedor=fornecedor'
      'cnpj=cnpj'
      'sum=sum'
      'BASE_ICMS=BASE_ICMS'
      'VALOR_ICMS=VALOR_ICMS')
    DataSet = qrnota_entrada
    BCDToCurrency = False
    Left = 432
    Top = 3
  end
  object qricms1: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qricms1CalcFields
    SQL.Strings = (
      'SELECT * FROM sintegra_rEG60')
    Params = <>
    Left = 400
    Top = 34
    object qricms1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qricms1MOVIMENTO: TStringField
      FieldName = 'MOVIMENTO'
      Size = 1
    end
    object qricms1CODIGO_EMPRESA: TIntegerField
      FieldName = 'CODIGO_EMPRESA'
    end
    object qricms1OBS1: TStringField
      FieldName = 'OBS1'
      Size = 40
    end
    object qricms1CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object qricms1IE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object qricms1UF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qricms1CODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object qricms1CNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 14
    end
    object qricms1IE_CLIENTE: TStringField
      FieldName = 'IE_CLIENTE'
      Size = 14
    end
    object qricms1UF_CLIENTE: TStringField
      FieldName = 'UF_CLIENTE'
      Size = 2
    end
    object qricms1CFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qricms1COD_SINTEGRA_R60: TStringField
      FieldName = 'COD_SINTEGRA_R60'
      Size = 10
    end
    object qricms1DATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object qricms1NRO_SERIE_EQP: TStringField
      FieldName = 'NRO_SERIE_EQP'
    end
    object qricms1NRO_ORDEM_EQP: TIntegerField
      FieldName = 'NRO_ORDEM_EQP'
    end
    object qricms1MODELO_DOC: TStringField
      FieldName = 'MODELO_DOC'
      Size = 2
    end
    object qricms1NRO_CONTADOR_INICIO: TIntegerField
      FieldName = 'NRO_CONTADOR_INICIO'
    end
    object qricms1NRO_CONTADOR_FIM: TIntegerField
      FieldName = 'NRO_CONTADOR_FIM'
    end
    object qricms1NRO_CONTADOR_Z: TIntegerField
      FieldName = 'NRO_CONTADOR_Z'
    end
    object qricms1NRO_DOC_FISCAL: TIntegerField
      FieldName = 'NRO_DOC_FISCAL'
    end
    object qricms1NRO_ITENS: TIntegerField
      FieldName = 'NRO_ITENS'
    end
    object qricms1CONTADOR_REINICIO: TIntegerField
      FieldName = 'CONTADOR_REINICIO'
    end
    object qricms1VALOR_VENDA_BRUTA: TFloatField
      FieldName = 'VALOR_VENDA_BRUTA'
    end
    object qricms1VALOR_TOTAL_GERAL: TFloatField
      FieldName = 'VALOR_TOTAL_GERAL'
    end
    object qricms1BRANCOS: TStringField
      FieldName = 'BRANCOS'
      Size = 37
    end
    object qricms1DATAHORA_RECEBIMENTO: TDateTimeField
      FieldName = 'DATAHORA_RECEBIMENTO'
    end
    object qricms1MODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qricms1DATAHORA_INI: TDateTimeField
      FieldName = 'DATAHORA_INI'
    end
    object qricms1DATAHORA_FIM: TDateTimeField
      FieldName = 'DATAHORA_FIM'
    end
    object qricms1CANCELAMENTO: TFloatField
      FieldName = 'CANCELAMENTO'
    end
    object qricms1DESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qricms1ISSQN: TFloatField
      FieldName = 'ISSQN'
    end
    object qricms1SUBSTITUICAO_TRIBUTARIA: TFloatField
      FieldName = 'SUBSTITUICAO_TRIBUTARIA'
    end
    object qricms1ISENTO: TFloatField
      FieldName = 'ISENTO'
    end
    object qricms1NAO_INCIDENCIA: TFloatField
      FieldName = 'NAO_INCIDENCIA'
    end
    object qricms1ACRESCIMO_IOF: TFloatField
      FieldName = 'ACRESCIMO_IOF'
    end
    object qricms1ALIQUOTA01: TFloatField
      FieldName = 'ALIQUOTA01'
    end
    object qricms1ALIQUOTA02: TFloatField
      FieldName = 'ALIQUOTA02'
    end
    object qricms1ALIQUOTA03: TFloatField
      FieldName = 'ALIQUOTA03'
    end
    object qricms1ALIQUOTA04: TFloatField
      FieldName = 'ALIQUOTA04'
    end
    object qricms1ALIQUOTA05: TFloatField
      FieldName = 'ALIQUOTA05'
    end
    object qricms1BASE01: TFloatField
      FieldName = 'BASE01'
    end
    object qricms1BASE02: TFloatField
      FieldName = 'BASE02'
    end
    object qricms1BASE03: TFloatField
      FieldName = 'BASE03'
    end
    object qricms1BASE04: TFloatField
      FieldName = 'BASE04'
    end
    object qricms1BASE05: TFloatField
      FieldName = 'BASE05'
    end
    object qricms1VALOR_TPARCIAL01: TFloatField
      FieldName = 'VALOR_TPARCIAL01'
    end
    object qricms1VALOR_TPARCIAL02: TFloatField
      FieldName = 'VALOR_TPARCIAL02'
    end
    object qricms1VALOR_TPARCIAL03: TFloatField
      FieldName = 'VALOR_TPARCIAL03'
    end
    object qricms1VALOR_TPARCIAL04: TFloatField
      FieldName = 'VALOR_TPARCIAL04'
    end
    object qricms1VALOR_TPARCIAL05: TFloatField
      FieldName = 'VALOR_TPARCIAL05'
    end
    object qricms1BRANCOS_60A01: TStringField
      FieldName = 'BRANCOS_60A01'
    end
    object qricms1BRANCOS_60A02: TStringField
      FieldName = 'BRANCOS_60A02'
    end
    object qricms1BRANCOS_60A03: TStringField
      FieldName = 'BRANCOS_60A03'
    end
    object qricms1BRANCOS_60A04: TStringField
      FieldName = 'BRANCOS_60A04'
    end
    object qricms1BRANCOS_60A05: TStringField
      FieldName = 'BRANCOS_60A05'
    end
    object qricms1TOTAL_INICIO_DIA: TFloatField
      FieldName = 'TOTAL_INICIO_DIA'
    end
    object qricms1TOTAL_FINAL_DIA: TFloatField
      FieldName = 'TOTAL_FINAL_DIA'
    end
    object qricms1TOTAL_DIA: TFloatField
      FieldName = 'TOTAL_DIA'
    end
    object qricms1OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 60
    end
    object qricms1VALOR_VENDA_LIQUIDA: TFloatField
      FieldName = 'VALOR_VENDA_LIQUIDA'
    end
    object qricms1NRO_CONTADOR_CANCELAMENTO: TIntegerField
      FieldName = 'NRO_CONTADOR_CANCELAMENTO'
    end
  end
  object fsicms: TfrxDBDataset
    UserName = 'fsicms'
    CloseDataSource = False
    FieldAliases.Strings = (
      'aliquota=aliquota'
      'total=total'
      'imposto=imposto')
    DataSet = qricms
    BCDToCurrency = False
    Left = 432
    Top = 35
  end
  object FSimposto_vendas: TfrxDBDataset
    UserName = 'FSimposto_vendas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TOTAL=TOTAL'
      'CREDITO_ICMS=CREDITO_ICMS'
      'PIS=PIS'
      'COFINS=COFINS')
    DataSet = qrimposto_vendas
    BCDToCurrency = False
    Left = 432
    Top = 67
  end
  object qrimposto_vendas: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qricms1CalcFields
    Active = True
    SQL.Strings = (
      
        'SELECT SUM(TOTAL) TOTAL, SUM(CREDITO_ICMS) CREDITO_ICMS, SUM(PIS' +
        ') PIS , SUM(COFINS) COFINS from c000032'
      'WHERE DATA >= '#39'01.12.2008'#39' and DATA <= '#39'31.12.2008'#39
      'and movimento = 2')
    Params = <>
    Left = 400
    Top = 66
    object qrimposto_vendasTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
    object qrimposto_vendasCREDITO_ICMS: TFloatField
      FieldName = 'CREDITO_ICMS'
      ReadOnly = True
    end
    object qrimposto_vendasPIS: TFloatField
      FieldName = 'PIS'
      ReadOnly = True
    end
    object qrimposto_vendasCOFINS: TFloatField
      FieldName = 'COFINS'
      ReadOnly = True
    end
  end
  object qricms: TRxMemoryData
    Active = True
    FieldDefs = <
      item
        Name = 'aliquota'
        DataType = ftFloat
      end
      item
        Name = 'total'
        DataType = ftFloat
      end>
    OnCalcFields = qricmsCalcFields
    Left = 464
    Top = 40
    object qricmsaliquota: TFloatField
      FieldName = 'aliquota'
    end
    object qricmstotal: TFloatField
      FieldName = 'total'
    end
    object qricmsimposto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'imposto'
      Calculated = True
    end
  end
  object query_pis_entrada_resumo: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = query_pis_entrada_resumoCalcFields
    SQL.Strings = (
      'select sum(m.qtde*p.precocusto) TOTAL,m.movimento,  m.DATA'
      
        'from c000032 m, c000025 p where m.movimento in (1) and p.codigo ' +
        '= m.codproduto'
      
        'and p.piscofins = '#39'S'#39' and m.DATA >= '#39'01.01.2009'#39' and m.DATA <= '#39 +
        '31.01.2009'#39' '
      'group by m.movimento,M.DATA'
      'order by m.movimento,M.DATA')
    Params = <>
    Left = 544
    Top = 243
    object query_pis_entrada_resumoTOTAL: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
    object query_pis_entrada_resumoMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object query_pis_entrada_resumoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object query_pis_entrada_resumopis: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pis'
      Calculated = True
    end
    object query_pis_entrada_resumocofins: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cofins'
      Calculated = True
    end
  end
  object query_pis_saida_resumo: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = query_pis_saida_resumoCalcFields
    SQL.Strings = (
      'select sum(m.qtde*p.precocusto) TOTAL,m.movimento,  m.DATA'
      
        'from c000032 m, c000025 p where m.movimento in (2) and p.codigo ' +
        '= m.codproduto'
      
        'and p.piscofins = '#39'S'#39' and m.DATA >= '#39'01.01.2009'#39' and m.DATA <= '#39 +
        '31.01.2009'#39
      'group by m.movimento,M.DATA'
      'order by m.movimento,M.DATA')
    Params = <>
    Left = 584
    Top = 243
    object FloatField4: TFloatField
      FieldName = 'TOTAL'
      ReadOnly = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DATA'
    end
    object FloatField5: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pis'
      Calculated = True
    end
    object FloatField6: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cofins'
      Calculated = True
    end
  end
  object fspis_saida_resumo: TfrxDBDataset
    UserName = 'fspis_saida_resumo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TOTAL=TOTAL'
      'MOVIMENTO=MOVIMENTO'
      'DATA=DATA'
      'pis=pis'
      'cofins=cofins')
    DataSet = query_pis_saida_resumo
    BCDToCurrency = False
    Left = 584
    Top = 275
  end
  object fspis_entrada_resumo: TfrxDBDataset
    UserName = 'fspis_entrada_resumo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TOTAL=TOTAL'
      'MOVIMENTO=MOVIMENTO'
      'DATA=DATA'
      'pis=pis'
      'cofins=cofins')
    DataSet = query_pis_entrada_resumo
    BCDToCurrency = False
    Left = 544
    Top = 275
  end
  object qrproducao: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select p.codigo,p.produto,p.unidade,p.classificacao_fiscal,'
      
        'm.codnota,m.codproduto, m.qtde, m.unitario,m.total,m.ipi_valor a' +
        's ipi,'
      'n.codigo,n.numero,n.data_emissao,n.data_lancamento,'
      's.codigo, s.numero, s.data,'
      
        'i.codnota, i.codproduto, i.qtde, i.unitario, i.total, i.ipi as i' +
        'pi'
      'from c000025 p , c000088 m, c000087 n, c000061 s, c000062 i'
      'where m.codproduto = p.codigo'
      'and i.codproduto = p.codigo'
      'and m.codnota = n.codigo'
      'and s.codigo = i.codnota'
      'order by m.codproduto, n.data_lancamento')
    Params = <>
    Left = 262
    Top = 315
    object qrproducaoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrproducaoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrproducaoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 2
    end
    object qrproducaoCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
    end
    object qrproducaoCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Size = 10
    end
    object qrproducaoCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 13
    end
    object qrproducaoQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrproducaoUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrproducaoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrproducaoIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrproducaoCODIGO_1: TStringField
      FieldName = 'CODIGO_1'
      Required = True
      Size = 10
    end
    object qrproducaoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object qrproducaoDATA_EMISSAO: TDateTimeField
      FieldName = 'DATA_EMISSAO'
    end
    object qrproducaoDATA_LANCAMENTO: TDateTimeField
      FieldName = 'DATA_LANCAMENTO'
    end
    object qrproducaoCODIGO_2: TStringField
      FieldName = 'CODIGO_2'
      Required = True
      Size = 6
    end
    object qrproducaoNUMERO_1: TStringField
      FieldName = 'NUMERO_1'
      Size = 6
    end
    object qrproducaoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrproducaoCODNOTA_1: TStringField
      FieldName = 'CODNOTA_1'
      Required = True
      Size = 6
    end
    object qrproducaoCODPRODUTO_1: TStringField
      FieldName = 'CODPRODUTO_1'
      Size = 6
    end
    object qrproducaoQTDE_1: TFloatField
      FieldName = 'QTDE_1'
    end
    object qrproducaoUNITARIO_1: TFloatField
      FieldName = 'UNITARIO_1'
    end
    object qrproducaoTOTAL_1: TFloatField
      FieldName = 'TOTAL_1'
    end
    object qrproducaoIPI_1: TFloatField
      FieldName = 'IPI_1'
    end
  end
  object fsproducao: TfrxDBDataset
    UserName = 'fsproducao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'PRODUTO=PRODUTO'
      'UNIDADE=UNIDADE'
      'CLASSIFICACAO_FISCAL=CLASSIFICACAO_FISCAL'
      'CODNOTA=CODNOTA'
      'CODPRODUTO=CODPRODUTO'
      'QTDE=QTDE'
      'UNITARIO=UNITARIO'
      'TOTAL=TOTAL'
      'IPI=IPI'
      'CODIGO_1=CODIGO_1'
      'NUMERO=NUMERO'
      'DATA_EMISSAO=DATA_EMISSAO'
      'DATA_LANCAMENTO=DATA_LANCAMENTO'
      'CODIGO_2=CODIGO_2'
      'NUMERO_1=NUMERO_1'
      'DATA=DATA'
      'CODNOTA_1=CODNOTA_1'
      'CODPRODUTO_1=CODPRODUTO_1'
      'QTDE_1=QTDE_1'
      'UNITARIO_1=UNITARIO_1'
      'TOTAL_1=TOTAL_1'
      'IPI_1=IPI_1')
    DataSet = qrproducao
    BCDToCurrency = False
    Left = 231
    Top = 315
  end
end
