object frmlista_fornecedor2: Tfrmlista_fornecedor2
  Left = 171
  Top = 206
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'FORNECEDOR | Relat'#243'rios'
  ClientHeight = 162
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
    Top = 64
    Width = 60
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Fornecedor:'
  end
  object Label6: TLabel
    Left = 16
    Top = 88
    Width = 60
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Ordem:'
  end
  object Bevel2: TBevel
    Left = 0
    Top = 127
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
    ItemIndex = 0
    TabOrder = 0
    Text = 'RELA'#199#195'O'
    Items.Strings = (
      'RELA'#199#195'O'
      'FICHA CADASTRAL')
  end
  object combo_FORNECEDOR: TComboBox
    Left = 85
    Top = 59
    Width = 300
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
    OnChange = combo_FORNECEDORChange
    Items.Strings = (
      'TODOS'
      'SELECIONAR')
  end
  object combo_ordem: TComboBox
    Left = 85
    Top = 83
    Width = 300
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      'NOME'
      'CODIGO')
  end
  object Panel1: TPanel
    Left = 0
    Top = 130
    Width = 398
    Height = 32
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
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
    Left = 224
    Top = 112
  end
  object fxfornecedor: TfrxReport
    Version = '4.7.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.OutlineVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39184.669965636600000000
    ReportOptions.LastChange = 39190.726220879630000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 192
    Top = 112
    Datasets = <
      item
        DataSet = fsfornecedor
        DataSetName = 'fsfornecedor'
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
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
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
        object Memo2: TfrxMemoView
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
        object Memo3: TfrxMemoView
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
        object Memo4: TfrxMemoView
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
        object Memo5: TfrxMemoView
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
        object Memo6: TfrxMemoView
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
        object Memo7: TfrxMemoView
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
        object Memo8: TfrxMemoView
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
        object Memo9: TfrxMemoView
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
        object Memo10: TfrxMemoView
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
        object Memo12: TfrxMemoView
          Left = 623.622450000000000000
          Top = 41.574830000000000000
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
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 442.205010000000000000
        Width = 740.409927000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000079000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          Top = 3.779530000000079000
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
          Top = 3.779530000000079000
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
          Top = 3.779530000000079000
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
      object GroupHeader1: TfrxGroupHeader
        Height = 22.677180000000000000
        Top = 139.842610000000000000
        Width = 740.409927000000000000
        Condition = 'fsfornecedor."NOME"'
        OutlineText = 'fsfornecedor."NOME"'
        object Memo13: TfrxMemoView
          Left = 71.811070000000000000
          Width = 668.976810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[fsfornecedor."CODIGO"] - [fsfornecedor."NOME"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frmlista_cliente2.fscliente
          DataSetName = 'fxcliente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            ' CLIENTE:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 196.535560000000000000
        Top = 185.196970000000000000
        Width = 740.409927000000000000
        DataSet = fsfornecedor
        DataSetName = 'fsfornecedor'
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 956.221090000000000000
          Top = 18.897650000000000000
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
        object Memo14: TfrxMemoView
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nome Fantasia:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 90.708720000000000000
          Width = 306.141930000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'FANTASIA'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."FANTASIA"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 404.409710000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Pessoa:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 574.488560000000000000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Data Cadastro:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 657.638220000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DATA'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."DATA"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Top = 15.118120000000010000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Endere'#195#167'o:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 60.472480000000000000
          Top = 15.118120000000010000
          Width = 415.748300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ENDERECO'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."ENDERECO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 480.000310000000000000
          Top = 15.118120000000010000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Bairro:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 521.575140000000000000
          Top = 15.118120000000010000
          Width = 219.212740000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'bairro'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."bairro"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Top = 30.236240000000010000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Cidade:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 45.354360000000000000
          Top = 30.236240000000010000
          Width = 173.858380000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CIDADE'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."CIDADE"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 275.905690000000000000
          Top = 30.236240000000010000
          Width = 30.236240000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CEP:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 309.921460000000000000
          Top = 30.236240000000010000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CEP'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."CEP"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 222.992270000000000000
          Top = 30.236240000000010000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'UF:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 249.448980000000000000
          Top = 30.236240000000010000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'UF'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."UF"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 400.630180000000000000
          Top = 30.236240000000010000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Complemento:')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 480.000310000000000000
          Top = 30.236240000000010000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'COMPLEMENTO'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."COMPLEMENTO"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Top = 45.354360000000010000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Telefones:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 64.252010000000000000
          Top = 45.354360000000010000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."TELEFONE1"]  [fsfornecedor."TELEFONE2"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 347.716760000000000000
          Top = 75.590600000000030000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Celular:')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 393.071120000000000000
          Top = 75.590600000000030000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CELULAR1'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."CELULAR1"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 487.559370000000000000
          Top = 45.354360000000010000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Email:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 525.354670000000000000
          Top = 45.354360000000010000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'EMAIL'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."EMAIL"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Top = 60.472479999999990000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'IE/RG:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 41.574830000000000000
          Top = 60.472479999999990000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'IE'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."IE"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 170.078850000000000000
          Top = 60.472479999999990000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ/CPF:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 238.110390000000000000
          Top = 60.472479999999990000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CNPJ'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."CNPJ"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Top = 75.590600000000030000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Contato #1:')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 68.031540000000000000
          Top = 75.590600000000030000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CONTATO1'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."CONTATO1"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Top = 105.826840000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Home-Page:')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 68.031540000000000000
          Top = 105.826840000000000000
          Width = 672.756340000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'HOMEPAGE'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."HOMEPAGE"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Top = 136.063080000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Observa'#195#167#195#181'es:')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 71.811070000000000000
          Top = 136.063080000000000000
          Width = 665.197280000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'OBS1'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."OBS1"]')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Top = 151.181200000000000000
          Width = 737.008350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'OBS2'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."OBS2"]')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Top = 166.299320000000000000
          Width = 737.008350000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'OBS3'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."OBS3"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 449.764070000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'pessoa'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."pessoa"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 347.716760000000000000
          Top = 90.708720000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Celular:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 393.071120000000000000
          Top = 90.708720000000000000
          Width = 98.267780000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CELULAR2'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."CELULAR2"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Top = 90.708720000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Contato #2:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 68.031540000000000000
          Top = 90.708720000000000000
          Width = 272.126160000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CONTATO2'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."CONTATO2"]')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 340.157700000000000000
          Top = 45.354360000000010000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Fax:')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 370.393940000000000000
          Top = 45.354360000000010000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'FAX'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."FAX"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Top = 120.944960000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Banco:')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 41.574830000000000000
          Top = 120.944960000000000000
          Width = 147.401670000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'BANCO'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."BANCO"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 192.756030000000000000
          Top = 120.944960000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ag'#195#170'ncia:')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 245.669450000000000000
          Top = 120.944960000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'AGENCIA'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."AGENCIA"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 336.378170000000000000
          Top = 120.944960000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Conta:')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 389.291590000000000000
          Top = 120.944960000000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CONTA'
          DataSet = fsfornecedor
          DataSetName = 'fsfornecedor'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsfornecedor."CONTA"]')
          ParentFont = False
        end
      end
    end
  end
  object fsfornecedor: TfrxDBDataset
    UserName = 'fsfornecedor'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'FANTASIA=FANTASIA'
      'ENDERECO=ENDERECO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'COMPLEMENTO=COMPLEMENTO'
      'TELEFONE1=TELEFONE1'
      'TELEFONE2=TELEFONE2'
      'FAX=FAX'
      'CONTATO1=CONTATO1'
      'CONTATO2=CONTATO2'
      'CELULAR1=CELULAR1'
      'CELULAR2=CELULAR2'
      'EMAIL=EMAIL'
      'HOMEPAGE=HOMEPAGE'
      'CNPJ=CNPJ'
      'IE=IE'
      'BANCO=BANCO'
      'AGENCIA=AGENCIA'
      'CONTA=CONTA'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'OBS3=OBS3'
      'DATA=DATA'
      'TIPO=TIPO'
      'ASSISTENCIA_TECNICA=ASSISTENCIA_TECNICA'
      'pessoa=pessoa')
    DataSet = qrfornecedor
    BCDToCurrency = False
    Left = 160
    Top = 112
  end
  object qrfornecedor: TZQuery
    Connection = frmmodulo.Conexao
    OnCalcFields = qrfornecedorCalcFields
    Active = True
    SQL.Strings = (
      'select * from c000009')
    Params = <>
    Left = 128
    Top = 112
    object qrfornecedorCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrfornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object qrfornecedorFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
    object qrfornecedorENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object qrfornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object qrfornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object qrfornecedorUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qrfornecedorCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object qrfornecedorCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object qrfornecedorTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
    end
    object qrfornecedorTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
    end
    object qrfornecedorFAX: TStringField
      FieldName = 'FAX'
    end
    object qrfornecedorCONTATO1: TStringField
      FieldName = 'CONTATO1'
      Size = 40
    end
    object qrfornecedorCONTATO2: TStringField
      FieldName = 'CONTATO2'
      Size = 40
    end
    object qrfornecedorCELULAR1: TStringField
      FieldName = 'CELULAR1'
    end
    object qrfornecedorCELULAR2: TStringField
      FieldName = 'CELULAR2'
    end
    object qrfornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object qrfornecedorHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 80
    end
    object qrfornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object qrfornecedorIE: TStringField
      FieldName = 'IE'
      Size = 25
    end
    object qrfornecedorBANCO: TStringField
      FieldName = 'BANCO'
      Size = 30
    end
    object qrfornecedorAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 15
    end
    object qrfornecedorCONTA: TStringField
      FieldName = 'CONTA'
    end
    object qrfornecedorOBS1: TStringField
      FieldName = 'OBS1'
      Size = 80
    end
    object qrfornecedorOBS2: TStringField
      FieldName = 'OBS2'
      Size = 80
    end
    object qrfornecedorOBS3: TStringField
      FieldName = 'OBS3'
      Size = 80
    end
    object qrfornecedorDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrfornecedorTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object qrfornecedorASSISTENCIA_TECNICA: TIntegerField
      FieldName = 'ASSISTENCIA_TECNICA'
    end
    object qrfornecedorpessoa: TStringField
      FieldKind = fkCalculated
      FieldName = 'pessoa'
      Size = 15
      Calculated = True
    end
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
