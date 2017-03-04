object frmlista_entrada_sintegra: Tfrmlista_entrada_sintegra
  Left = 450
  Top = 241
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'NOTA DE ENTRADA | Relat'#243'rios'
  ClientHeight = 105
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
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
    Top = 24
    Width = 60
    Height = 13
    Caption = 'Relat'#243'rio: '
  end
  object ViewSplit1: TViewSplit
    Left = 0
    Top = 70
    Width = 425
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object combo_relatorio: TComboBox
    Left = 93
    Top = 19
    Width = 300
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnKeyPress = combo_relatorioKeyPress
    Items.Strings = (
      'RELA'#199#195'O DE NOTAS FISCAIS - FORNECEDOR'
      'RELA'#199#195'O POR CFOP'
      'RESUMO DAS NOTAS FISCAIS')
  end
  object Panel1: TPanel
    Left = 0
    Top = 73
    Width = 425
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
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
    Left = 224
    Top = 18
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
    ReportOptions.LastChange = 39510.468741319400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 192
    Top = 18
    Datasets = <
      item
        DataSet = fsnota
        DataSetName = 'fsnota'
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
          Left = -2.000000000000000000
          Top = 34.692950000000010000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Top = 20.031496059999990000
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
            'C'#195#8220'DIGO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 173.472480000000000000
          Top = 20.031496059999990000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'C'#195#8220'D')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 479.496290000000000000
          Top = 20.031496059999990000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'VALOR')
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
          Left = 52.472480000000000000
          Top = 20.031496059999990000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CFOP SE    ESP  MOD.')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 200.992270000000000000
          Top = 18.897650000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CNPJ/CPF')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 288.141930000000000000
          Top = 18.897650000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FORNECEDOR')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 370.512060000000000000
          Top = 18.897650000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'UF')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 397.189240000000000000
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
            'DATA')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 547.913730000000000000
          Top = 18.897650000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ALQ.')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 587.268090000000000000
          Top = 18.897650000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'B.ICMS')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 634.622450000000000000
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
            'ISENTAS')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 686.756340000000000000
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
            'OUTRAS')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 740.409927000000000000
        DataSet = fsnota
        DataSetName = 'fsnota'
        RowCount = 0
        object Memo13: TfrxMemoView
          Left = 53.614100000000000000
          Width = 34.015770000000000000
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
          Left = 459.653897000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'VALOR_CONTABIL'
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
            '[fsnota."VALOR_CONTABIL"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 396.866420000000000000
          Top = 1.779529999999994000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DATA_ESCRITURACAO'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."DATA_ESCRITURACAO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 4.338590000000000000
          Top = 1.440940000000012000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NOTAFISCAL'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."NOTAFISCAL"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 145.315090000000000000
          Top = 1.661409999999989000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'MODELO_NF'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."MODELO_NF"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 113.063080000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ESPECIE'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."ESPECIE"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 90.488250000000000000
          Width = 22.677180000000000000
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
        object Memo3: TfrxMemoView
          Left = 167.771800000000000000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CODIGO_CLIENTE'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsnota."CODIGO_CLIENTE"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 200.023810000000000000
          Width = 86.929190000000010000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CNPJ_CLIENTE'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."CNPJ_CLIENTE"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 287.512060000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'FORNECEDOR'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."FORNECEDOR"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 370.543600000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'UF_IE_CLIENTE'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."UF_IE_CLIENTE"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 523.252320000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ALIQUOTA_ICMS'
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
            '[fsnota."ALIQUOTA_ICMS"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 578.842920000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'BASE_ICMS'
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
            '[fsnota."BASE_ICMS"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 628.858690000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'VALOR_ICMS_ISENTAS'
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
            '[fsnota."VALOR_ICMS_ISENTAS"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 683.772110000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'VALOR_ICMS_OUTRAS'
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
            '[fsnota."VALOR_ICMS_OUTRAS"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 729.449290000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NOTA_CANCELADA'
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsnota."NOTA_CANCELADA"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 37.795300000000000000
        Top = 332.598640000000000000
        Width = 740.409927000000000000
        object Memo15: TfrxMemoView
          Top = 10.779530000000020000
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
          Top = 10.779530000000020000
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
          Top = 10.779530000000020000
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
          Left = -7.559060000000000000
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
      object Footer1: TfrxFooter
        Height = 34.015770000000000000
        Top = 238.110390000000000000
        Width = 740.409927000000000000
        object Memo34: TfrxMemoView
          Left = 146.252010000000000000
          Top = 12.094488189999990000
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
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Top = 12.094488188976410000
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
          Left = 429.779840000000000000
          Top = 12.094488189999990000
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
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fsnota."VALOR_CONTABIL">,MasterData1)]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 192.968770000000000000
          Top = 12.094488189999990000
          Width = 226.771800000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'TOTAL DAS NOTAS FISCAIS DE ENTRADA: ')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 5.000000000000000000
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
      'CODIGO=CODIGO'
      'TURBO=TURBO'
      'TIPO=TIPO'
      'CODIGO_EMPRESA=CODIGO_EMPRESA'
      'CFOP=CFOP'
      'NOTAFISCAL=NOTAFISCAL'
      'SERIE=SERIE'
      'SUBSERIE=SUBSERIE'
      'ESPECIE=ESPECIE'
      'SINTEGRA=SINTEGRA'
      'MODELO_NF=MODELO_NF'
      'S_TRIB=S_TRIB'
      'CODIGO_CLIENTE=CODIGO_CLIENTE'
      'CPF_CLIENTE=CPF_CLIENTE'
      'CNPJ_CLIENTE=CNPJ_CLIENTE'
      'IE_CLIENTE=IE_CLIENTE'
      'UF_IE_CLIENTE=UF_IE_CLIENTE'
      'TIPO_VENDA=TIPO_VENDA'
      'TIPO_FRETE=TIPO_FRETE'
      'DATA=DATA'
      'DATA_ESCRITURACAO=DATA_ESCRITURACAO'
      'CODIGO_CONTABIL=CODIGO_CONTABIL'
      'DESDOBRAMENTO=DESDOBRAMENTO'
      'VALOR_CONTABIL=VALOR_CONTABIL'
      'VALOR_MERCADORIAS=VALOR_MERCADORIAS'
      'ALIQUOTA_ICMS=ALIQUOTA_ICMS'
      'CONDPGTO=CONDPGTO'
      'CONDICAO_PAGAMENTO=CONDICAO_PAGAMENTO'
      'CODEMPRESA=CODEMPRESA'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'CODLANCAMENTO=CODLANCAMENTO'
      'BASE_ICMS=BASE_ICMS'
      'VALOR_ICMS_CREDITADO=VALOR_ICMS_CREDITADO'
      'VALOR_ICMS_ISENTAS=VALOR_ICMS_ISENTAS'
      'VALOR_ICMS_OUTRAS=VALOR_ICMS_OUTRAS'
      'ALIQUOTA_IPI=ALIQUOTA_IPI'
      'BASE_IPI=BASE_IPI'
      'VALOR_IPI_CREDITADO=VALOR_IPI_CREDITADO'
      'VALOR_IPI_CREDITADO50=VALOR_IPI_CREDITADO50'
      'VALOR_IPI_ISENTAS=VALOR_IPI_ISENTAS'
      'VALOR_IPI_OUTRAS=VALOR_IPI_OUTRAS'
      'VALOR_IPI_NAO_CREDITADO=VALOR_IPI_NAO_CREDITADO'
      'BASE_SUBSTITUICAO=BASE_SUBSTITUICAO'
      'VALOR_SUBSTITUICAO=VALOR_SUBSTITUICAO'
      'VALOR_FRETE=VALOR_FRETE'
      'VALOR_SEGURO=VALOR_SEGURO'
      'VALOR_DESPESAS=VALOR_DESPESAS'
      'ALIQUOTA_ISS=ALIQUOTA_ISS'
      'VALOR_ISS=VALOR_ISS'
      'OBS3=OBS3'
      'CONTABIL=CONTABIL'
      'VALOR_ICMS=VALOR_ICMS'
      'CODIGO_MINICIPIO=CODIGO_MINICIPIO'
      'CNPJ=CNPJ'
      'INSC_ESTADUAL=INSC_ESTADUAL'
      'UF=UF'
      'CODIGO_PISCONFINS=CODIGO_PISCONFINS'
      'NOTA_CANCELADA=NOTA_CANCELADA'
      'OBSERVACAO=OBSERVACAO'
      'TRANSPORTE_NOME=TRANSPORTE_NOME'
      'TRANSPORTE_PLACA=TRANSPORTE_PLACA'
      'TRANSPORTE_UF=TRANSPORTE_UF'
      'TRANSPORTE_CNPJCPF=TRANSPORTE_CNPJCPF'
      'TRANSPORTE_ENDERECO=TRANSPORTE_ENDERECO'
      'TRANSPORTE_CIDADE=TRANSPORTE_CIDADE'
      'TRANSPORTE_MUNICIPIO_UF=TRANSPORTE_MUNICIPIO_UF'
      'TRANSPORTE_IE=TRANSPORTE_IE'
      'TRANSPORTE_QUANTIDADE=TRANSPORTE_QUANTIDADE'
      'TRANSPORTE_MARCA=TRANSPORTE_MARCA'
      'TRANSPORTE_ESPECIE=TRANSPORTE_ESPECIE'
      'TRANSPORTE_NUMERO=TRANSPORTE_NUMERO'
      'TRANSPORTE_PESO_BRUTO=TRANSPORTE_PESO_BRUTO'
      'TRANSPORTE_PESO_LIQUIDO=TRANSPORTE_PESO_LIQUIDO'
      'FORNECEDOR=FORNECEDOR')
    DataSet = qrnota
    BCDToCurrency = False
    Left = 160
    Top = 18
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
  object qrnota_item: TZQuery
    Connection = frmmodulo.Conexao
    SortedFields = 'CODNOTA'
    SQL.Strings = (
      'select * from c000088')
    Params = <>
    MasterFields = 'CODIGO'
    MasterSource = dsnota
    IndexFieldNames = 'CODNOTA Asc'
    Left = 344
    Top = 66
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
    Left = 312
    Top = 66
  end
  object dsnota: TDataSource
    DataSet = qrnota
    Left = 80
    Top = 24
  end
  object ZQuery1: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 336
    Top = 170
  end
  object qrnota: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrnotaCalcFields
    Active = True
    SQL.Strings = (
      'SELECT * FROM SINTEGRA_ENTRADA ORDER BY NOTAFISCAL')
    Params = <>
    Left = 128
    Top = 18
    object qrnotaCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 15
    end
    object qrnotaTURBO: TIntegerField
      FieldName = 'TURBO'
    end
    object qrnotaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object qrnotaCODIGO_EMPRESA: TIntegerField
      FieldName = 'CODIGO_EMPRESA'
    end
    object qrnotaCFOP: TStringField
      FieldName = 'CFOP'
      Size = 4
    end
    object qrnotaNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 6
    end
    object qrnotaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object qrnotaSUBSERIE: TStringField
      FieldName = 'SUBSERIE'
      Size = 2
    end
    object qrnotaESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 3
    end
    object qrnotaSINTEGRA: TStringField
      FieldName = 'SINTEGRA'
      Size = 2
    end
    object qrnotaMODELO_NF: TStringField
      FieldName = 'MODELO_NF'
      Size = 2
    end
    object qrnotaS_TRIB: TStringField
      FieldName = 'S_TRIB'
      Size = 3
    end
    object qrnotaCODIGO_CLIENTE: TIntegerField
      FieldName = 'CODIGO_CLIENTE'
    end
    object qrnotaCPF_CLIENTE: TStringField
      FieldName = 'CPF_CLIENTE'
      Size = 11
    end
    object qrnotaCNPJ_CLIENTE: TStringField
      FieldName = 'CNPJ_CLIENTE'
      Size = 14
    end
    object qrnotaIE_CLIENTE: TStringField
      FieldName = 'IE_CLIENTE'
      Size = 14
    end
    object qrnotaUF_IE_CLIENTE: TStringField
      FieldName = 'UF_IE_CLIENTE'
      Size = 2
    end
    object qrnotaTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      Size = 1
    end
    object qrnotaTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      Size = 1
    end
    object qrnotaDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrnotaDATA_ESCRITURACAO: TDateTimeField
      FieldName = 'DATA_ESCRITURACAO'
    end
    object qrnotaCODIGO_CONTABIL: TIntegerField
      FieldName = 'CODIGO_CONTABIL'
    end
    object qrnotaDESDOBRAMENTO: TStringField
      FieldName = 'DESDOBRAMENTO'
      Size = 1
    end
    object qrnotaVALOR_CONTABIL: TFloatField
      FieldName = 'VALOR_CONTABIL'
    end
    object qrnotaVALOR_MERCADORIAS: TFloatField
      FieldName = 'VALOR_MERCADORIAS'
    end
    object qrnotaALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
    end
    object qrnotaCONDPGTO: TStringField
      FieldName = 'CONDPGTO'
      Size = 30
    end
    object qrnotaCONDICAO_PAGAMENTO: TStringField
      FieldName = 'CONDICAO_PAGAMENTO'
      Size = 1
    end
    object qrnotaCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
    end
    object qrnotaOBS1: TStringField
      FieldName = 'OBS1'
      Size = 100
    end
    object qrnotaOBS2: TStringField
      FieldName = 'OBS2'
      Size = 100
    end
    object qrnotaCODLANCAMENTO: TStringField
      FieldName = 'CODLANCAMENTO'
      Size = 6
    end
    object qrnotaBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
    end
    object qrnotaVALOR_ICMS_CREDITADO: TFloatField
      FieldName = 'VALOR_ICMS_CREDITADO'
    end
    object qrnotaVALOR_ICMS_ISENTAS: TFloatField
      FieldName = 'VALOR_ICMS_ISENTAS'
    end
    object qrnotaVALOR_ICMS_OUTRAS: TFloatField
      FieldName = 'VALOR_ICMS_OUTRAS'
    end
    object qrnotaALIQUOTA_IPI: TFloatField
      FieldName = 'ALIQUOTA_IPI'
    end
    object qrnotaBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
    end
    object qrnotaVALOR_IPI_CREDITADO: TFloatField
      FieldName = 'VALOR_IPI_CREDITADO'
    end
    object qrnotaVALOR_IPI_CREDITADO50: TFloatField
      FieldName = 'VALOR_IPI_CREDITADO50'
    end
    object qrnotaVALOR_IPI_ISENTAS: TFloatField
      FieldName = 'VALOR_IPI_ISENTAS'
    end
    object qrnotaVALOR_IPI_OUTRAS: TFloatField
      FieldName = 'VALOR_IPI_OUTRAS'
    end
    object qrnotaVALOR_IPI_NAO_CREDITADO: TFloatField
      FieldName = 'VALOR_IPI_NAO_CREDITADO'
    end
    object qrnotaBASE_SUBSTITUICAO: TFloatField
      FieldName = 'BASE_SUBSTITUICAO'
    end
    object qrnotaVALOR_SUBSTITUICAO: TFloatField
      FieldName = 'VALOR_SUBSTITUICAO'
    end
    object qrnotaVALOR_FRETE: TFloatField
      FieldName = 'VALOR_FRETE'
    end
    object qrnotaVALOR_SEGURO: TFloatField
      FieldName = 'VALOR_SEGURO'
    end
    object qrnotaVALOR_DESPESAS: TFloatField
      FieldName = 'VALOR_DESPESAS'
    end
    object qrnotaALIQUOTA_ISS: TFloatField
      FieldName = 'ALIQUOTA_ISS'
    end
    object qrnotaVALOR_ISS: TFloatField
      FieldName = 'VALOR_ISS'
    end
    object qrnotaOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrnotaCONTABIL: TIntegerField
      FieldName = 'CONTABIL'
    end
    object qrnotaVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrnotaCODIGO_MINICIPIO: TIntegerField
      FieldName = 'CODIGO_MINICIPIO'
    end
    object qrnotaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object qrnotaINSC_ESTADUAL: TStringField
      FieldName = 'INSC_ESTADUAL'
      Size = 18
    end
    object qrnotaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrnotaCODIGO_PISCONFINS: TStringField
      FieldName = 'CODIGO_PISCONFINS'
      Size = 6
    end
    object qrnotaNOTA_CANCELADA: TStringField
      FieldName = 'NOTA_CANCELADA'
      Size = 1
    end
    object qrnotaOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
    end
    object qrnotaTRANSPORTE_NOME: TStringField
      FieldName = 'TRANSPORTE_NOME'
      Size = 40
    end
    object qrnotaTRANSPORTE_PLACA: TStringField
      FieldName = 'TRANSPORTE_PLACA'
      Size = 10
    end
    object qrnotaTRANSPORTE_UF: TStringField
      FieldName = 'TRANSPORTE_UF'
      Size = 2
    end
    object qrnotaTRANSPORTE_CNPJCPF: TStringField
      FieldName = 'TRANSPORTE_CNPJCPF'
      Size = 18
    end
    object qrnotaTRANSPORTE_ENDERECO: TStringField
      FieldName = 'TRANSPORTE_ENDERECO'
      Size = 50
    end
    object qrnotaTRANSPORTE_CIDADE: TStringField
      FieldName = 'TRANSPORTE_CIDADE'
      Size = 30
    end
    object qrnotaTRANSPORTE_MUNICIPIO_UF: TStringField
      FieldName = 'TRANSPORTE_MUNICIPIO_UF'
      Size = 2
    end
    object qrnotaTRANSPORTE_IE: TStringField
      FieldName = 'TRANSPORTE_IE'
    end
    object qrnotaTRANSPORTE_QUANTIDADE: TFloatField
      FieldName = 'TRANSPORTE_QUANTIDADE'
    end
    object qrnotaTRANSPORTE_MARCA: TStringField
      FieldName = 'TRANSPORTE_MARCA'
      Size = 10
    end
    object qrnotaTRANSPORTE_ESPECIE: TStringField
      FieldName = 'TRANSPORTE_ESPECIE'
    end
    object qrnotaTRANSPORTE_NUMERO: TStringField
      FieldName = 'TRANSPORTE_NUMERO'
    end
    object qrnotaTRANSPORTE_PESO_BRUTO: TFloatField
      FieldName = 'TRANSPORTE_PESO_BRUTO'
    end
    object qrnotaTRANSPORTE_PESO_LIQUIDO: TFloatField
      FieldName = 'TRANSPORTE_PESO_LIQUIDO'
    end
    object qrnotaFORNECEDOR: TStringField
      FieldKind = fkCalculated
      FieldName = 'FORNECEDOR'
      Size = 50
      Calculated = True
    end
  end
  object QUERY: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 56
    Top = 16
  end
end
