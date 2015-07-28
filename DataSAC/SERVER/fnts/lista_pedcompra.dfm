object FRMLISTA_PEDCOMPRA: TFRMLISTA_PEDCOMPRA
  Left = 504
  Top = 360
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'PEDIDO DE COMPRA | Relat'#243'rios'
  ClientHeight = 95
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
    Top = 16
    Width = 60
    Height = 13
    Caption = 'Relat'#243'rio: '
  end
  object Bevel1: TBevel
    Left = 16
    Top = 40
    Width = 385
    Height = 2
  end
  object ViewSplit1: TViewSplit
    Left = 0
    Top = 51
    Width = 425
    Height = 3
    Cursor = crVSplit
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
      'PEDIDO DE COMPRA')
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 54
    Width = 425
    Height = 41
    Color = clWindow
    ColorHighLight = clWindow
    ColorShadow = clWindow
    Align = alBottom
    TabOrder = 1
    UseDockManager = True
    object bcancelar: TBitBtn
      Left = 272
      Top = 8
      Width = 113
      Height = 25
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = bcancelarClick
      OnKeyPress = combo_relatorioKeyPress
      Glyph.Data = {
        DA050000424DDA05000000000000360000002800000019000000130000000100
        180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFF406B00406B00406B00406B00406B00406B00406B00406B
        00406B00406B00406B00406B00406B00406B00406B00406B00406B00406B0040
        6B00406B00406B00406B00406B00FFFFFF00FFFFFF406B00ECE3E0ECE2DFEBE2
        DFECE2DFECE2DFECE2DFECE3E0ECE2DFEBE2DFECE2DFECE3E0ECE3E0ECE2DFEB
        E2DFEBE2DFECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF406B00FFFFFF00FFFF
        FF416C00ECE3E0539300538E004F87004C8000487900457200416C003F65003C
        61003B5D003A58003A5300395200374D00354B00354A00354A00354B00374E00
        ECE2DF416C00FFFFFF00FFFFFF406B00ECE2DF559700539200528D004F86004C
        7F00487700457000426B003F64003C5F003B5A003A5500385100374D00364B00
        354800344707354800354A00EBE2DF406B00FFFFFF00FFFFFF406B00ECE2DF5A
        9E00589900559500538F005089004D8100487900477400466E00476E003C6100
        3B5B003B5600395200374E003B5300354800344800354A00EBE1DE406B00FFFF
        FF00FFFFFF416C00ECE3E05EA300A2C36EFFFFFFFFFFFFFFFFFFFFFFFF699900
        9CB866FBFBFAFFFFFFD8DFCE5174003C5E008D9E65F4F4F2FFFFFFC8CEBB3B54
        00364B00EBE2DF416C00FFFFFF00FFFFFF406B00ECE2DF63A800A3C572FFFFFF
        BED39BAAC87BA9C6796EA400FDFDFCD1DDC27EA324FAFBFAB1C28C608200FFFF
        FFD3D9C7AAB58DFFFFFF92A071374E00EBE2DF406B00FFFFFF00FFFFFF416C00
        ECE3E068AD00A5C876FFFFFFA0C46D83B6327EB21B65A60082B22178AB00A6C2
        74FFFFFFC1D1A491AC59FFFFFF6A89283C5D009BAA765B7323385200EBE1DE41
        6C00FFFFFF00FFFFFF406B00ECE3E070B200A7C979FFFFFFFFFFFFFFFFFFEAF0
        E56AAE00A0C46DF4F8F4FFFFFFF3F6F275A400ADC481FFFFFF5C82003F64003C
        5E003A59003B5800EBE2DF406B00FFFFFF00FFFFFF406B00ECE3E074B426A7CA
        7AFFFFFF9DC56B85BA4683BA4372B31DF5F8F4E4ECDD9CC16598BD5B6FA4009A
        BA60FFFFFF87A545487200AFBE8C6C892E3C5E00ECE2DF406B00FFFFFF00FFFF
        FF416C00ECE3E077B736A7C97AFFFFFFE5EDDEDDE9D2DDE9D17EB83CD9E6CBE6
        EDDFCADBB0FFFFFF94BB54619B00F4F6F3FAFBFAEDEFE9FFFFFF7895383E6400
        ECE2DF416C00FFFFFF00FFFFFF406B00ECE2DF78B73A95C160BBD498BBD498BB
        D498BAD4987CB73982B93EB4CF8BC7D9AAA3C6725EA100589A006B9F00B3C98B
        C0CFA084A440457000436D00EBE2DF406B00FFFFFF00FFFFFF416C00ECE3E078
        B83B7BB93F7BB93F7AB83D79B83A78B73675B52C72B3186DB00067AD0063A800
        5FA2005A9D00559500518D004E84004B7E00487800467400EBE2DF416C00FFFF
        FF00FFFFFF406B00ECE2DF7AB83D7BB93F7AB83D7AB83C78B73676B62F73B422
        71B2006CAF0067AC0064A8005FA3005C9E00579800549100518C004E84004B7F
        004A7C00ECE2DF406B00FFFFFF00FFFFFF406B00ECE2DF7AB83D7AB83E7AB83C
        79B73877B63275B52A72B3186FB1006BAE0067AC0064A80060A4005DA1005A9C
        00569600539100518C004F86004E8300EBE2DF406B00FFFFFF00FFFFFF406B00
        EBE2DFEBE2DFEBE1DEEBE2DFEBE2DFEBE2DFEBE2DFEBE2DFEBE1DEEBE2DFEBE2
        DFEBE2DFEBE2DFEBE1DEEBE1DEEBE2DFEBE2DFEBE1DEEBE2DFEBE1DEEBE1DE40
        6B00FFFFFF00FFFFFF406B00406B00406B00406B00406B00406B00406B00406B
        00406B00406B00406B00406B00406B00406B00406B00406B00406B00406B0040
        6B00406B00406B00406B00406B00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    end
    object bimprimir: TBitBtn
      Left = 8
      Top = 8
      Width = 121
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 0
      OnClick = bimprimirClick
      OnKeyPress = combo_relatorioKeyPress
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFC79561C99764C99664C99664C99664C99663C89663C89663C99764C794
        61FFFFFFFFFFFFFFFFFFA1A1A1797979575757C69460F8F6F5F8F0EBF8F0EAF7
        EFE8F6ECE5F3E9E0F1E7DDF9F7F5C693602323234A4A4A9595956A6A6AA6A6A6
        B4B4B4808080AEABA9C4BFBCC4BFBCC4BFBCC4BFBCC4BFBCC4BFBCACA9A72B2B
        2BB4B4B49A9A9A2222226F6F6FB4B4B4B4B4B49494948080808080807878786D
        6D6D6060605151514242424141416D6D6DB4B4B4B4B4B4242424747474BABABA
        BABABA8C8C8CD3D3D3B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8D2D2D28282
        82BABABABABABA292929797979D6D6D6D6D6D6969696D7D7D7BEBEBEBEBEBEBE
        BEBEBEBEBEBEBEBEBEBEBED6D6D68D8D8DD6D6D6D6D6D63E3E3E7D7D7DF8F8F8
        F8F8F8AAAAAADEDEDECACACACACACACACACACACACACACACACACACADEDEDEA2A2
        A2F8F8F8F8F8F8606060838383FBFBFBFBFBFBCACACAF1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1C5C5C5FBFBFBFBFBFB707070969696D1D1D1
        E7E7E77C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
        7CE7E7E7C3C3C36C6C6CDDDDDD999999CBCBCBC68A4DF8F3ECFDE7D7FDE7D6FC
        E4D2FBE3D0F9DFC6F8DCC2F9F3ECC68449C2C2C2737373CDCDCDFFFFFFCECECE
        868686C4884BF8F3EEFDE6D6FCE6D4FBE5D1FAE0CBF7DBC1F5D9BCF9F3EEC382
        47606060BCBCBCFFFFFFFFFFFFFFFFFFFBFBFBC58B4EF8F3EFFBE5D2FCE6D2FA
        E2CCF9DFC7F4D5BAF2D3B4F7F3EFC38449F9F9F9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC78C50F8F4F0FBE2CEFBE3CEF9E0C9F8DCC3F3E8DEF6F1EBF4EEE8C27F
        47FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC78C51F8F4F0FBE2CCFAE2CCF8
        DFC7F7DBC1FCFAF7FBE5CCE1B583D5A783FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC4874CF6F1EBF7F3EDF7F2ECF7F2ECF7F1EBF1E5D6E1B17CDA9468FDFB
        FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7CEB8D6A97CC78B4FC78B4EC9
        9054CA8F54C4884CDCAF8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object BitBtn1: TBitBtn
      Left = 144
      Top = 8
      Width = 113
      Height = 25
      Caption = 'Editar...'
      TabOrder = 1
      OnClick = BitBtn1Click
      OnKeyPress = combo_relatorioKeyPress
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFF1742592A61884B89BD6FA8CCE3EDF5FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D668493C6F890C8F840
        84C8266AADD8E6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F3F3F3C5C5C54288A9DFF1FE5399D71979BD4897C43D83BCA7B5C2F4F4F4FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5A8A8A8CDCDCD9BB9CD79B5D48FB6D054
        C8E35ADEF477CFEC4A96D688939DE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFAFAFAF
        DDDDDDF2F2F2DADADA95B7C874B8D5C1F5FC62DEF65CE1F778D2EF4796D98892
        9CFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2EFEFEFDDDDDDD3D3D3D1D1D198BDCE76
        CAE6C6F6FC5DDBF459E0F67AD3F04694D7D6E7F7FFFFFFFFFFFFFFFFFFB4B4B4
        F1F1F1E1E1E1D7D7D7D4D4D4DBDBDBA3CBD878D2EDC6F6FC5EDBF45AE1F679D5
        F150A1E1DCE9F5FFFFFFFFFFFFB6B6B6F2F2F2E6E6E6DCDCDCD8D8D8DFDFDFDA
        DADA96BFCC7BD3EDC3F5FC6BDCF56CC9EC62A2D668A2D4E5EFF7FFFFFFB7B7B7
        F3F3F3E9E9E9E0E0E0DCDCDCE2E2E2DDDDDDC8C8C888B9C87FD3ECB1E2F88ABF
        E6ADD2F5C3DFFB6AA1D3FFFFFFB9B9B9F4F4F4EDEDEDE5E5E5E1E1E1E5E5E5E0
        E0E0CCCCCCC1C1C188BDCD76BDE6B3D1EFE4F2FEABD1EE5895CBFFFFFFBABABA
        F5F5F5EAEAEADDDDDDD5D5D5D4D4D4D0D0D0C2C2C2BBBBBBBFBFBFAAD3E257A4
        D784B0DA459CCFB0D8EEFFFFFFBCBCBCF6F6F6E6E6E6EEEEEEF5F5F5FAFAFAF9
        F9F9EFEFEFDDDDDDC2C2C2E5E5E5ABABABFFFFFFFFFFFFFFFFFFFFFFFFBEBEBE
        F7F7F7FDFDFDFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFAFAFAE9E9E9ADAD
        ADFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBE0E0E0FDFDFDFEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFAFAFACECECEC8C8C8FFFFFFFFFFFFFFFFFFFFFFFFF4F4F4
        C6C6C6CFCFCFE7E7E7F2F2F2FCFCFCFBFBFBECECECDFDFDFC1C1C1C0C0C0F6F6
        F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE8E8E8CFCFCFC3C3C3B7B7B7B7
        B7B7C2C2C2CCCCCCE9E9E9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF}
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
    ReportOptions.LastChange = 39366.682490231480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'procedure MasterData2OnAfterCalcHeight(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'procedure Memo21OnAfterData(Sender: TfrxComponent);'
      'begin'
      '  '
      '  '
      'end;'
      ''
      'begin'
      '  '
      'end.')
    Left = 192
    Top = 18
    Datasets = <
      item
        DataSet = fspedido
        DataSetName = 'fspedido'
      end
      item
        DataSet = fspedido_item
        DataSetName = 'fspedido_item'
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
        Height = 99.267780000000000000
        Top = 98.267780000000000000
        Width = 740.409927000000000000
        object Line1: TfrxLineView
          Top = 77.897650000000010000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Top = 94.692950000000010000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          Top = 79.897650000000010000
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
          Top = 79.897650000000010000
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
          Left = 586.527830000000000000
          Top = 79.897650000000010000
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
          Top = 79.897650000000010000
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
          Left = 60.252010000000000000
          Top = 78.897650000000010000
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
          Top = 78.897650000000010000
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
          Left = 498.457020000000000000
          Top = 78.897650000000010000
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
          Top = 79.677180000000010000
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
        object Memo28: TfrxMemoView
          Left = 623.622450000000000000
          Top = 79.897650000000010000
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
            'SIT')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 12.779530000000000000
          Top = 39.779530000000010000
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
            'NOTA FISCAL:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 192.756030000000000000
          Top = 39.779530000000010000
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
            'DATA :')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 317.480520000000000000
          Top = 39.779530000000010000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PREVIS'#195#402'O DE ENTREGA:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 100.488250000000000000
          Top = 39.779530000000010000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          ShowHint = False
          DataField = 'NUMERO'
          DataSet = fspedido
          DataSetName = 'fspedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fspedido."NUMERO"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 241.448980000000000000
          Top = 39.779530000000010000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          ShowHint = False
          DataField = 'DATA'
          DataSet = fspedido
          DataSetName = 'fspedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fspedido."DATA"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 461.102660000000000000
          Top = 39.779530000000010000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          ShowHint = False
          DataField = 'PREVISAO'
          DataSet = fspedido
          DataSetName = 'fspedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fspedido."PREVISAO"]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 3.779530000000000000
          Top = 54.897650000000010000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'COND. DE PAGAMENTO:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 147.401670000000000000
          Top = 54.897650000000010000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          ShowHint = False
          DataField = 'CONDPGTO'
          DataSet = fspedido
          DataSetName = 'fspedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fspedido."CONDPGTO"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FORNECEDOR :')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 39.779530000000000000
          Top = 20.677180000000010000
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
            'C'#195#8220'DIGO:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 98.267780000000000000
          Top = 3.779529999999994000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          ShowHint = False
          DataField = 'CODFORNECEDOR'
          DataSet = fspedido
          DataSetName = 'fspedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fspedido."CODFORNECEDOR"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 151.181200000000000000
          Top = 3.779529999999994000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          ShowHint = False
          DataField = 'fornecedor'
          DataSet = fspedido
          DataSetName = 'fspedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fspedido."fornecedor"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 98.267780000000000000
          Top = 20.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          ShowHint = False
          DataField = 'CODIGO'
          DataSet = fspedido
          DataSetName = 'fspedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fspedido."CODIGO"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 194.976500000000000000
          Top = 22.677180000000010000
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
            'CFOP:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 241.889920000000000000
          Top = 22.897650000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          ShowHint = False
          DataField = 'CFOP'
          DataSet = fspedido
          DataSetName = 'fspedido'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fspedido."CFOP"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 461.102660000000000000
          Top = 56.692950000000010000
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
        object Memo1: TfrxMemoView
          Left = 390.480520000000000000
          Top = 56.692950000000010000
          Width = 64.252010000000100000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'SITUA'#195#8225#195#402'O:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 37.795300000000000000
        Top = 393.071120000000000000
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
        object Memo6: TfrxMemoView
          Top = 34.015770000000000000
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
      end
      object ReportSummary1: TfrxReportSummary
        Height = 30.236240000000000000
        Top = 340.157700000000000000
        Width = 740.409927000000000000
        object Memo34: TfrxMemoView
          Left = 146.252010000000000000
          Top = 3.314958190000027000
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
          Top = 3.314958190000027000
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
          Left = 620.425480000000000000
          Top = 1.535428190000005000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
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
            '[SUM(<fsnota."TOTAL_NOTA">,MasterData1)]'
            ' ')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 471.882190000000000000
          Top = 3.314958190000027000
          Width = 139.842610000000000000
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
            'TOTAL DAS NOTAS:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 257.008040000000000000
        Width = 740.409927000000000000
        DataSet = fspedido_item
        DataSetName = 'fspedido_item'
        RowCount = 0
        object Memo13: TfrxMemoView
          Left = 507.393940000000000000
          Top = 3.000000000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'UNITARIO'
          DataSet = fspedido_item
          DataSetName = 'fspedido_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fspedido_item."UNITARIO"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 63.220470000000000000
          Top = 3.000000000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'produto'
          DataSet = fspedido_item
          DataSetName = 'fspedido_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fspedido_item."produto"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 399.598640000000000000
          Top = 3.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'QTDE'
          DataSet = fspedido_item
          DataSetName = 'fspedido_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fspedido_item."QTDE"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 8.779530000000000000
          Top = 4.440939999999955000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          OnAfterData = 'Memo4OnAfterData'
          OnBeforePrint = 'Memo4OnBeforePrint'
          ShowHint = False
          DataField = 'CODPRODUTO'
          DataSet = fspedido_item
          DataSetName = 'fspedido_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fspedido_item."CODPRODUTO"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 672.299630000000000000
          Top = 4.661409999999989000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'TOTAL'
          DataSet = fspedido_item
          DataSetName = 'fspedido_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fspedido_item."TOTAL"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 340.819110000000000000
          Top = 3.000000000000000000
          Width = 34.015770000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'unidade'
          DataSet = fspedido_item
          DataSetName = 'fspedido_item'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fspedido_item."unidade"]')
          ParentFont = False
        end
      end
    end
  end
  object fspedido: TfrxDBDataset
    UserName = 'fspedido'
    CloseDataSource = False
    FieldAliases.Strings = (
      'fornecedor=fornecedor'
      'CODIGO=CODIGO'
      'NUMERO=NUMERO'
      'CFOP=CFOP'
      'DATA=DATA'
      'CODFORNECEDOR=CODFORNECEDOR'
      'TOTAL_NOTA=TOTAL_NOTA'
      'ITENS=ITENS'
      'SITUACAO=SITUACAO'
      'PREVISAO=PREVISAO'
      'CONDPGTO=CONDPGTO')
    DataSource = dspedido
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
  object fspedido_item: TfrxDBDataset
    UserName = 'fspedido_item'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODPRODUTO=CODPRODUTO'
      'produto=produto'
      'QTDE=QTDE'
      'UNITARIO=UNITARIO'
      'TOTAL=TOTAL'
      'RECEBIDO=RECEBIDO'
      'FALTA=FALTA'
      'unidade=unidade'
      'CODIGO=CODIGO'
      'CODNOTA=CODNOTA')
    DataSource = dspedido_item
    BCDToCurrency = False
    Left = 312
    Top = 34
  end
  object ZQuery1: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 384
    Top = 2
  end
  object qrpedido_item: TZQuery
    Connection = frmmodulo.Conexao
    Active = True
    SQL.Strings = (
      'select * from c000038')
    Params = <>
    Left = 344
    Top = 32
    object qrpedido_itemCODPRODUTO: TStringField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 8
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrpedido_itemproduto: TStringField
      DisplayLabel = 'PRODUTO'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'CODPRODUTO'
      Size = 50
      Lookup = True
    end
    object qrpedido_itemQTDE: TFloatField
      DisplayLabel = 'QTDE.'
      DisplayWidth = 11
      FieldName = 'QTDE'
      DisplayFormat = '###,###,##0.00'
    end
    object qrpedido_itemUNITARIO: TFloatField
      DisplayLabel = 'UNIT'#193'RIO'
      DisplayWidth = 9
      FieldName = 'UNITARIO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrpedido_itemTOTAL: TFloatField
      DisplayWidth = 11
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrpedido_itemRECEBIDO: TFloatField
      DisplayWidth = 10
      FieldName = 'RECEBIDO'
      DisplayFormat = '###,###,##0.00'
    end
    object qrpedido_itemFALTA: TFloatField
      DisplayWidth = 10
      FieldKind = fkCalculated
      FieldName = 'FALTA'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qrpedido_itemunidade: TStringField
      FieldKind = fkLookup
      FieldName = 'unidade'
      LookupDataSet = frmmodulo.qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'UNIDADE'
      KeyFields = 'codproduto'
      Visible = False
      Size = 5
      Lookup = True
    end
    object qrpedido_itemCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrpedido_itemCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Visible = False
      Size = 6
    end
  end
  object dspedido_item: TDataSource
    DataSet = qrpedido_item
    Left = 376
    Top = 32
  end
  object qrpedido_produto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000037')
    Params = <>
    DataSource = dspedido
    Left = 96
    Top = 24
    object qrpedido_produtoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrpedido_produtoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qrpedido_produtoCFOP: TStringField
      FieldName = 'CFOP'
      Size = 5
    end
    object qrpedido_produtoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrpedido_produtoCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Size = 6
    end
    object qrpedido_produtoTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
    end
    object qrpedido_produtoITENS: TIntegerField
      FieldName = 'ITENS'
    end
    object qrpedido_produtofornecedor: TStringField
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupDataSet = frmmodulo.qrfornecedor
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Size = 50
      Lookup = True
    end
  end
  object dspedido: TDataSource
    DataSet = frmmodulo.qrpedido_produto
    Left = 128
    Top = 24
  end
end
