object frmlista_notaentrada: Tfrmlista_notaentrada
  Left = 149
  Top = 187
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'NOTA DE ENTRADA | Relat'#243'rios'
  ClientHeight = 122
  ClientWidth = 398
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
    Left = 8
    Top = 40
    Width = 385
    Height = 2
  end
  object ViewSplit1: TViewSplit
    Left = 0
    Top = 78
    Width = 398
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Label6: TLabel
    Left = 16
    Top = 53
    Width = 44
    Height = 13
    Caption = 'Ordem:'
  end
  object combo_relatorio: TComboBox
    Left = 85
    Top = 11
    Width = 300
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    OnKeyPress = combo_relatorioKeyPress
    Items.Strings = (
      'NOTA FISCAL DE ENTRADA'
      'ITENS DA NOTA FISCAL DE ENTRADA'
      'RELA'#199#195'O DE NOTAS POR CFOP')
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 81
    Width = 398
    Height = 41
    Color = clWindow
    ColorHighLight = clWindow
    ColorShadow = clWindow
    Align = alBottom
    TabOrder = 2
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
  object combo_ordem: TComboBox
    Left = 85
    Top = 48
    Width = 300
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
    OnKeyPress = combo_relatorioKeyPress
    Items.Strings = (
      'DATA_LANCAMENTO'
      'DATA_EMISSAO'
      'NUMERO'
      'CFOP')
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
    ReportOptions.LastChange = 39475.374488923600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      
        '                                                                ' +
        '                      '
      'end.')
    Left = 192
    Top = 18
    Datasets = <
      item
        DataSet = frmproduto_falta.fsproduto
        DataSetName = 'fsproduto'
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 76.590600000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 627.401980000000000000
          Top = 23.456710000000000000
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
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999990000
          Width = 328.819110000000000000
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
        object Memo4: TfrxMemoView
          Left = 192.756030000000000000
          Top = 3.779529999999990000
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
        object Memo8: TfrxMemoView
          Left = 627.401980000000000000
          Top = 6.779529999999991000
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
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
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
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 34.015770000000010000
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
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Top = 45.354360000000000000
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
        object Memo45: TfrxMemoView
          Left = 627.401980000000000000
          Top = 45.354360000000000000
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
        object Memo46: TfrxMemoView
          Left = 309.921460000000000000
          Top = 22.677180000000000000
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
        object Memo47: TfrxMemoView
          Left = 309.921460000000000000
          Top = 34.015770000000010000
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
        object Memo48: TfrxMemoView
          Left = 309.921460000000000000
          Top = 45.354360000000000000
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
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 226.771800000000000000
        Width = 740.409927000000000000
        DataSet = frmproduto_falta.fsproduto
        DataSetName = 'fsproduto'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 60.472480000000000000
          Top = 1.000000000000000000
          Width = 343.937230000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = frmproduto_falta.fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsproduto."PRODUTO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 4.000000000000000000
          Top = 1.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CODIGO'
          DataSet = frmproduto_falta.fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsproduto."CODIGO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 495.118430000000000000
          Top = 1.000000000000000000
          Width = 22.677180000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'UNIDADE'
          DataSet = frmproduto_falta.fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fsproduto."UNIDADE"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 525.354670000000000000
          Top = 1.000000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ESTOQUE_INVENTARIO'
          DataSet = frmproduto_falta.fsproduto
          DataSetName = 'fsproduto'
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
            '[fsproduto."ESTOQUE_INVENTARIO"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 593.386210000000000000
          Top = 1.000000000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PRECO'
          DataSet = frmproduto_falta.fsproduto
          DataSetName = 'fsproduto'
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
            '[fsproduto."PRECO"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 668.976810000000000000
          Top = 1.000000000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'total'
          DataSet = frmproduto_falta.fsproduto
          DataSetName = 'fsproduto'
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
            '[fsproduto."total"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 23.677180000000000000
        Top = 408.189240000000000000
        Width = 740.409927000000000000
        object Line4: TfrxLineView
          Top = 0.677180000000021200
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          Top = 1.677180000000021000
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
          Top = 1.677180000000021000
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
          Top = 1.677180000000021000
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
      object GroupHeader2: TfrxGroupHeader
        Height = 49.133890000000000000
        Top = 154.960730000000000000
        Width = 740.409927000000000000
        Condition = 'fsproduto."CST"'
        object Memo37: TfrxMemoView
          Left = 2.338590000000000000
          Top = 3.000000000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CST:')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 45.252010000000000000
          Top = 3.000000000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CST'
          DataSet = frmproduto_falta.fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsproduto."CST"]')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 3.779530000000000000
          Top = 23.677179999999990000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo21: TfrxMemoView
          Left = 3.779530000000000000
          Top = 27.677179999999990000
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
        object Memo39: TfrxMemoView
          Left = 661.370440000000000000
          Top = 27.677179999999990000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'VALOR TOTAL')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 60.252010000000000000
          Top = 26.677179999999990000
          Width = 347.716760000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DISCRIMINA'#195#8225#195#402'O DO PRODUTO')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 495.118430000000000000
          Top = 26.677179999999990000
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
            'UN')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 531.354670000000000000
          Top = 27.456709999999990000
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
            'ESTOQUE')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 614.386210000000000000
          Top = 26.677179999999990000
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
            'PRE'#195#8225'O')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 4.220470000000000000
          Top = 45.354360000000010000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line3: TfrxLineView
          Left = 3.779530000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        Height = 34.015770000000000000
        Top = 313.700990000000000000
        Width = 740.409927000000000000
        object Memo34: TfrxMemoView
          Left = 138.330708661417000000
          Top = 12.094488189999990000
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
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 6.047244090000000000
          Top = 12.094488189999990000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'QUANTIDADE DE ITEMS:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 662.779840000000000000
          Top = 12.094488189999990000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fsproduto."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 474.968770000000000000
          Top = 12.094488189999990000
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
            'TOTAL DO INVENT'#195#129'RIO POR CST:'
            ': ')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 5.000000000000000000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 268.346630000000000000
        Width = 740.409927000000000000
        object Memo24: TfrxMemoView
          Left = 138.252010000000000000
          Top = 3.779530000000022000
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
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 6.000000000000000000
          Top = 3.779530000000022000
          Width = 132.283550000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'QUANTIDADE DE ITEMS:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 662.779840000000000000
          Top = 3.779530000000022000
          Width = 79.370130000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = fsnota
          DataSetName = 'fsnota'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fsproduto."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 501.764070000000000000
          Top = 3.779530000000022000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'TOTAL DA CST:')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 3.779527559055120000
          Width = 740.787880000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo28: TfrxMemoView
          Left = 589.606680000000000000
          Top = 3.779530000000022000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CST'
          DataSet = frmproduto_falta.fsproduto
          DataSetName = 'fsproduto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsproduto."CST"]')
          ParentFont = False
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
  object qrnota: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000087')
    Params = <>
    Left = 128
    Top = 18
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
end
