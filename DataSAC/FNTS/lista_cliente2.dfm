object frmlista_cliente2: Tfrmlista_cliente2
  Left = 149
  Top = 187
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'CLIENTE | Relat'#243'rios'
  ClientHeight = 292
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
  object lcliente: TLabel
    Left = 16
    Top = 56
    Width = 45
    Height = 13
    Caption = 'Cliente:'
  end
  object Label3: TLabel
    Left = 16
    Top = 88
    Width = 60
    Height = 13
    Caption = 'Vendedor:'
  end
  object ldia: TLabel
    Left = 16
    Top = 216
    Width = 24
    Height = 13
    Caption = 'Dia:'
    Visible = False
  end
  object ViewSplit1: TViewSplit
    Left = 0
    Top = 248
    Width = 398
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object Label7: TLabel
    Left = 16
    Top = 120
    Width = 44
    Height = 13
    Caption = 'Regi'#227'o:'
  end
  object Label6: TLabel
    Left = 16
    Top = 184
    Width = 44
    Height = 13
    Caption = 'Ordem:'
  end
  object Label4: TLabel
    Left = 16
    Top = 152
    Width = 54
    Height = 13
    Caption = 'Situa'#231#227'o:'
  end
  object lmes: TLabel
    Left = 176
    Top = 216
    Width = 27
    Height = 13
    Caption = 'M'#234's:'
    Visible = False
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
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 251
    Width = 398
    Height = 41
    Color = clWindow
    ColorHighLight = clWindow
    ColorShadow = clWindow
    Align = alBottom
    TabOrder = 7
    UseDockManager = True
    object bcancelar: TBitBtn
      Left = 272
      Top = 8
      Width = 113
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = bcancelarClick
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
      TabOrder = 1
      OnClick = bimprimirClick
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
      TabOrder = 2
      OnClick = BitBtn1Click
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
    TabOrder = 8
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
      end
      item
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
