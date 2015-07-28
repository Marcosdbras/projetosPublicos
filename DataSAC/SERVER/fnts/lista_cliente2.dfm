object frmlista_cliente2: Tfrmlista_cliente2
  Left = 360
  Top = 370
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'CLIENTE | Relat'#243'rios'
  ClientHeight = 292
  ClientWidth = 398
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
    Width = 60
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
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
    Width = 60
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Cliente:'
  end
  object Label3: TLabel
    Left = 16
    Top = 88
    Width = 60
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Vendedor:'
  end
  object ldia: TLabel
    Left = 16
    Top = 216
    Width = 60
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Dia:'
    Visible = False
  end
  object Label7: TLabel
    Left = 16
    Top = 120
    Width = 60
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Regi'#227'o:'
  end
  object Label6: TLabel
    Left = 16
    Top = 184
    Width = 60
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Ordem:'
  end
  object Label4: TLabel
    Left = 16
    Top = 152
    Width = 60
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Situa'#231#227'o:'
  end
  object lmes: TLabel
    Left = 176
    Top = 216
    Width = 23
    Height = 13
    Caption = 'M'#234's:'
    Visible = False
  end
  object Bevel2: TBevel
    Left = 0
    Top = 257
    Width = 398
    Height = 3
    Align = alBottom
  end
  object combo_relatorio: TComboBox
    Left = 85
    Top = 11
    Width = 300
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnChange = combo_relatorioChange
    Items.Strings = (
      'RELA'#199#195'O'
      'RELA'#199#195'O AGRUPADA POR CIDADE'
      'RELA'#199#195'O AGRUPADA POR REGI'#195'O'
      'FICHA CADASTRAL'
      'ETIQUETAS'
      'ANIVERSARIANTES - RELA'#199#195'O'
      'ANIVERSARIANTES - ETIQUETAS')
  end
  object combo_cliente: TComboBox
    Left = 85
    Top = 51
    Width = 300
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
    Left = 85
    Top = 83
    Width = 300
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
    OnChange = combo_vendedorChange
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object combo_dia: TComboBox
    Left = 85
    Top = 211
    Width = 76
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 6
    Text = 'TODOS'
    Visible = False
    Items.Strings = (
      'TODOS'
      '01'
      '02'
      '03'
      '04'
      '05'
      '06'
      '07'
      '08'
      '09'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20'
      '21'
      '22'
      '23'
      '24'
      '25'
      '26'
      '27'
      '28'
      '29'
      '30'
      '31')
  end
  object combo_regiao: TComboBox
    Left = 85
    Top = 115
    Width = 300
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
    OnChange = combo_regiaoChange
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object combo_ordem: TComboBox
    Left = 85
    Top = 179
    Width = 300
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'NOME'
      'CODIGO')
  end
  object combo_situacao: TComboBox
    Left = 85
    Top = 147
    Width = 300
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 4
    Items.Strings = (
      'CADASTRO APROVADO'
      'CADASTRO EM OBSERVA'#199#195'O'
      'CADASTRO BLOQUEADO'
      'INATIVO'
      'SPC'
      'TODOS')
  end
  object combo_mes: TComboBox
    Left = 224
    Top = 211
    Width = 161
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 7
    Text = '01 - JANEIRO'
    Visible = False
    Items.Strings = (
      '01 - JANEIRO'
      '02 - FEVEREIRO'
      '03 - MAR'#199'O'
      '04 - ABRIL'
      '05 - MAIO'
      '06 - JUNHO'
      '07 - JULHO'
      '08 - AGOSTO'
      '09 - SETEMBRO'
      '10 - OUTUBRO'
      '11 - NOVEMBRO'
      '12 - DEZEMBRO')
  end
  object Panel1: TPanel
    Left = 0
    Top = 260
    Width = 398
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 8
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
    Left = 288
  end
  object fxcliente: TfrxReport
    Version = '4.7.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39179.400035798600000000
    ReportOptions.LastChange = 39219.443323206000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 224
    Top = 8
    Datasets = <
      item
        DataSet = fscliente
        DataSetName = 'fxcliente'
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
          Top = 34.692950000000010000
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
          Font.Style = []
          Memo.UTF8 = (
            'C'#195#8220'DIGO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 60.472480000000000000
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
            'NOME/RAZ'#195#402'O SOCIAL')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 419.527830000000000000
          Top = 19.897650000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CPF/CNPJ')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 555.590910000000000000
          Top = 19.897650000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'TELEFONES')
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
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 740.409927000000000000
        DataSet = fscliente
        DataSetName = 'fxcliente'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 60.472480000000000000
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
            '[fxcliente."NOME"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CODIGO'
          DataSet = fscliente
          DataSetName = 'fxcliente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fxcliente."CODIGO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 419.527830000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CPF'
          DataSet = fscliente
          DataSetName = 'fxcliente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fxcliente."CPF"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 555.590910000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fscliente
          DataSetName = 'fxcliente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[<fxcliente."TELEFONE1">] [fxcliente."TELEFONE2"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 275.905690000000000000
        Width = 740.409927000000000000
        object Line3: TfrxLineView
          Top = 3.779529999999965000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          Top = 3.779529999999965000
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
          Top = 3.779529999999965000
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
          Top = 3.779529999999965000
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
            'Siscom +7')
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
    end
  end
  object fscliente: TfrxDBDataset
    UserName = 'fxcliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NOME=NOME'
      'CODIGO=CODIGO'
      'CPF=CPF'
      'ENDERECO=ENDERECO'
      'APELIDO=APELIDO'
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
      'regiao=regiao'
      'vendedor=vendedor'
      'pessoa=pessoa'
      'sit=sit')
    DataSet = qrcliente
    BCDToCurrency = False
    Left = 256
  end
  object qrcliente: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrclienteCalcFields
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 128
    Top = 112
    object qrclienteNOME: TStringField
      DisplayWidth = 40
      FieldName = 'NOME'
      Size = 80
    end
    object qrclienteCODIGO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrclienteCPF: TStringField
      DisplayLabel = 'CPF/CNPJ'
      DisplayWidth = 18
      FieldName = 'CPF'
      Size = 18
    end
    object qrclienteENDERECO: TStringField
      DisplayLabel = 'ENDERE'#199'O'
      DisplayWidth = 20
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrclienteAPELIDO: TStringField
      DisplayWidth = 50
      FieldName = 'APELIDO'
      Visible = False
      Size = 50
    end
    object qrclienteBAIRRO: TStringField
      DisplayWidth = 30
      FieldName = 'BAIRRO'
      Visible = False
      Size = 30
    end
    object qrclienteCIDADE: TStringField
      DisplayWidth = 40
      FieldName = 'CIDADE'
      Visible = False
      Size = 40
    end
    object qrclienteUF: TStringField
      DisplayWidth = 2
      FieldName = 'UF'
      Visible = False
      Size = 2
    end
    object qrclienteCEP: TStringField
      DisplayWidth = 10
      FieldName = 'CEP'
      Visible = False
      Size = 10
    end
    object qrclienteCOMPLEMENTO: TStringField
      DisplayWidth = 40
      FieldName = 'COMPLEMENTO'
      Visible = False
      Size = 40
    end
    object qrclienteMORADIA: TIntegerField
      DisplayWidth = 10
      FieldName = 'MORADIA'
      Visible = False
    end
    object qrclienteTIPO: TIntegerField
      DisplayWidth = 10
      FieldName = 'TIPO'
      Visible = False
    end
    object qrclienteSITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrclienteTELEFONE1: TStringField
      DisplayWidth = 20
      FieldName = 'TELEFONE1'
      Visible = False
    end
    object qrclienteTELEFONE2: TStringField
      DisplayWidth = 20
      FieldName = 'TELEFONE2'
      Visible = False
    end
    object qrclienteTELEFONE3: TStringField
      DisplayWidth = 20
      FieldName = 'TELEFONE3'
      Visible = False
    end
    object qrclienteCELULAR: TStringField
      DisplayWidth = 20
      FieldName = 'CELULAR'
      Visible = False
    end
    object qrclienteEMAIL: TStringField
      DisplayWidth = 50
      FieldName = 'EMAIL'
      Visible = False
      Size = 50
    end
    object qrclienteRG: TStringField
      DisplayWidth = 25
      FieldName = 'RG'
      Visible = False
      Size = 25
    end
    object qrclienteFILIACAO: TStringField
      DisplayWidth = 80
      FieldName = 'FILIACAO'
      Visible = False
      Size = 80
    end
    object qrclienteESTADOCIVIL: TStringField
      DisplayWidth = 15
      FieldName = 'ESTADOCIVIL'
      Visible = False
      Size = 15
    end
    object qrclienteCONJUGE: TStringField
      DisplayWidth = 60
      FieldName = 'CONJUGE'
      Visible = False
      Size = 60
    end
    object qrclientePROFISSAO: TStringField
      DisplayWidth = 30
      FieldName = 'PROFISSAO'
      Visible = False
      Size = 30
    end
    object qrclienteEMPRESA: TStringField
      DisplayWidth = 40
      FieldName = 'EMPRESA'
      Visible = False
      Size = 40
    end
    object qrclienteRENDA: TFloatField
      DisplayWidth = 10
      FieldName = 'RENDA'
      Visible = False
    end
    object qrclienteLIMITE: TFloatField
      DisplayWidth = 10
      FieldName = 'LIMITE'
      Visible = False
    end
    object qrclienteREF1: TStringField
      DisplayWidth = 50
      FieldName = 'REF1'
      Visible = False
      Size = 50
    end
    object qrclienteREF2: TStringField
      DisplayWidth = 50
      FieldName = 'REF2'
      Visible = False
      Size = 50
    end
    object qrclienteCODVENDEDOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrclienteDATA_CADASTRO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_CADASTRO'
      Visible = False
    end
    object qrclienteDATA_ULTIMACOMPRA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_ULTIMACOMPRA'
      Visible = False
    end
    object qrclienteOBS1: TStringField
      DisplayWidth = 80
      FieldName = 'OBS1'
      Visible = False
      Size = 80
    end
    object qrclienteOBS2: TStringField
      DisplayWidth = 80
      FieldName = 'OBS2'
      Visible = False
      Size = 80
    end
    object qrclienteOBS3: TStringField
      DisplayWidth = 80
      FieldName = 'OBS3'
      Visible = False
      Size = 80
    end
    object qrclienteOBS4: TStringField
      DisplayWidth = 80
      FieldName = 'OBS4'
      Visible = False
      Size = 80
    end
    object qrclienteOBS5: TStringField
      DisplayWidth = 80
      FieldName = 'OBS5'
      Visible = False
      Size = 80
    end
    object qrclienteOBS6: TStringField
      DisplayWidth = 80
      FieldName = 'OBS6'
      Visible = False
      Size = 80
    end
    object qrclienteNASCIMENTO: TStringField
      DisplayWidth = 10
      FieldName = 'NASCIMENTO'
      Visible = False
      Size = 10
    end
    object qrclienteCODREGIAO: TStringField
      DisplayWidth = 6
      FieldName = 'CODREGIAO'
      Visible = False
      Size = 6
    end
    object qrclienteregiao: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'regiao'
      LookupDataSet = frmmodulo.qrregiao
      LookupKeyFields = 'codigo'
      LookupResultField = 'regiao'
      KeyFields = 'codregiao'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrclientevendedor: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = frmmodulo.qrfunci
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codvendedor'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qrclientepessoa: TStringField
      FieldKind = fkCalculated
      FieldName = 'pessoa'
      Size = 15
      Calculated = True
    end
    object qrclientesit: TStringField
      FieldKind = fkCalculated
      FieldName = 'sit'
      Size = 25
      Calculated = True
    end
  end
  object qrcidade: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select cidade, count(codigo) total from c000007 group by cidade')
    Params = <>
    Left = 160
    Top = 112
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'fxcliente2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CIDADE=CIDADE'
      'TOTAL=TOTAL')
    DataSet = qrcidade
    BCDToCurrency = False
    Left = 248
    Top = 80
  end
  object dscidade: TDataSource
    DataSet = qrcidade
    Left = 160
    Top = 64
  end
  object qrregiao: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      
        'select codregiao, count(codigo) total from c000007 group by codr' +
        'egiao')
    Params = <>
    Left = 296
    Top = 112
    object qrregiaoCODREGIAO: TStringField
      FieldName = 'CODREGIAO'
      Size = 6
    end
    object qrregiaoTOTAL: TIntegerField
      FieldName = 'TOTAL'
      ReadOnly = True
      Required = True
    end
    object qrregiaoregiao: TStringField
      FieldKind = fkLookup
      FieldName = 'regiao'
      LookupDataSet = frmmodulo.qrregiao
      LookupKeyFields = 'codigo'
      LookupResultField = 'regiao'
      KeyFields = 'codregiao'
      Size = 30
      Lookup = True
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'fxregiao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODREGIAO=CODREGIAO'
      'TOTAL=TOTAL'
      'regiao=regiao')
    DataSet = qrregiao
    BCDToCurrency = False
    Left = 304
    Top = 152
  end
  object dsregiao: TDataSource
    DataSet = qrregiao
    Left = 208
    Top = 136
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
end
