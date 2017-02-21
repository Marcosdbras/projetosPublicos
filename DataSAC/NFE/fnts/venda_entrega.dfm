object frmVenda_Entrega: TfrmVenda_Entrega
  Left = 322
  Top = 184
  BorderStyle = bsToolWindow
  Caption = 'VENDA | Controle de Entrega'
  ClientHeight = 429
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 397
    Width = 645
    Height = 2
    Align = alBottom
  end
  object Bevel2: TBevel
    Left = 0
    Top = 364
    Width = 645
    Height = 2
    Align = alBottom
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 645
    Height = 364
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    ControlType.Strings = (
      'qtde_entregue;CustomEdit;ed_entregue;F')
    Selected.Strings = (
      'Item'#9'3'#9'Item'#9#9
      'Codigo'#9'8'#9'C'#243'digo'#9#9
      'Produto'#9'49'#9'Produto'#9'F'#9
      'Unidade'#9'5'#9'Un.'#9#9
      'qtde_vendida'#9'10'#9'Vendido'#9'T'#9
      'qtde_entregue'#9'10'#9'Entregue'#9#9
      'qtde_saldo'#9'10'#9'Saldo'#9'T'#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 4
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsEntrega
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 399
    Width = 645
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object bgravar: TAdvGlowButton
      Left = 216
      Top = 3
      Width = 103
      Height = 24
      Caption = 'F2 | Imprimir'
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
      OnClick = bgravarClick
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
      Left = 325
      Top = 3
      Width = 103
      Height = 24
      Caption = 'ESC | Sair'
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
        650041646F626520496D616765526561647971C9653C000002A04944415478DA
        62FCFFFF3F032500208058D005FEB6652BFFFBFF3FEAFFBF7F71FFFEFD930062
        06207E01C48BFEFDFDB74CA063D15D64F50001C488EC82DFAD59C1FFFFFD9FFC
        95914D924D598581858F0F22FEE923C3B7EBD71998BE7D7CFEEFDFDF5CB1BE95
        6B617A0002086EC0AF964CA0E67F0B7F8AC97173A9A932FC7DF690E11F108300
        93A41C0393943CC3A76BD7197EDCBAFCF5DFDFBFF1B2D336800D010820B0013F
        9B3294804E3CFC4B424E8A5B4D8DE1D7D15D608D5CB573C0F497FA2406867FFF
        19D86CDD183E5EB9CAF0E5FAF9677FFFFDB35599BBFD1E40003181FDFDF74FCC
        3726768466A0A140AFC0BDF6EFCF3F86BF7FFE337CDBBB9D814F438BE13F8FB0
        D49FDFBF63407200010436E0CF9F3FB1ECAA40673FB90FD6F8EF2FD000A02664
        03FEFDFECBF0F7D73F869FF7EE32F06BE830FCFEFD3B16240710403003A45905
        0418FE3CBE0FD608B3111E33408D7F7F43C47FDCB9CBC02A20C4F0E7F71F6990
        1C4000410CF8FD87E13FD0569846988DBF6F5D4178E137D490BF409701F19F3F
        BFC17200010475C1EFA73FDFBC0386B63CDCA920C5DF8FEC65F8B26139DCF67F
        409A455681E1DB9B37204B9F82F4020410CC058B3F5CB9C4C02CA500570CA2F9
        92F219780222C11AFF82C48036B32B2831BCBA701AE4EDC520BD000104360018
        204B7EBD7DF6ECFDD52B0C5C4E9E7043DE4DEE62783BB913AC11C417F0F26178
        7DE502C3FBC7B79F010D5802D20B1040F084742DD639189840160A689B710B02
        43F9C7FD7BE00003C9B32B2A81F11BA0E647C7777D05A69978A77D37C0090920
        805092F28550EB60600299CC21242529AC63C4C02E20084A120C3FDEBF637879
        FE24C3FB27778049F95FAECB819BF0A40C10408CE8B9F1A49F893250511430B4
        8199E92F6A66FAF76F99EBC1DB28990920801829CDCE0001060095D1AF4C86CE
        FBDD0000000049454E44AE426082}
      TabOrder = 1
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
  object ed_entregue: TwwDBEdit
    Left = 424
    Top = 40
    Width = 97
    Height = 21
    TabOrder = 2
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnExit = ed_entregueExit
  end
  object Panel2: TPanel
    Left = 0
    Top = 366
    Width = 645
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 106
      Height = 13
      Caption = 'Modelo da Impress'#227'o:'
    end
    object Label2: TLabel
      Left = 352
      Top = 8
      Width = 23
      Height = 13
      Caption = 'Vias:'
    end
    object ComboBox1: TComboBox
      Left = 129
      Top = 4
      Width = 216
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        '1 - BOBINA'
        '2 - RAZ'#195'O MATRICIAL'
        '4 - CARTA MATRICIAL'
        '3 - RAZ'#195'O LASER/TINTA')
    end
    object evias: TSpinEdit
      Left = 384
      Top = 4
      Width = 49
      Height = 22
      MaxValue = 10
      MinValue = 1
      TabOrder = 1
      Value = 1
    end
  end
  object bt_razao: TButton
    Left = 456
    Top = 144
    Width = 113
    Height = 25
    Caption = 'Razao - Matricial'
    TabOrder = 4
    Visible = False
    OnClick = bt_razaoClick
  end
  object bt_bobina: TButton
    Left = 456
    Top = 168
    Width = 113
    Height = 25
    Caption = 'Bobina - Matricial'
    TabOrder = 5
    Visible = False
    OnClick = bt_bobinaClick
  end
  object bt_carta: TButton
    Left = 456
    Top = 192
    Width = 113
    Height = 25
    Caption = 'Carta - Matricial'
    TabOrder = 6
    Visible = False
    OnClick = bt_cartaClick
  end
  object bt_laser: TButton
    Left = 456
    Top = 216
    Width = 113
    Height = 25
    Caption = 'Razao - Laser'
    TabOrder = 7
    Visible = False
    OnClick = bt_laserClick
  end
  object Pop1: TPopupMenu
    Left = 352
    Top = 256
    object Imprimir1: TMenuItem
      Caption = 'Imprimir'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = Cancelar1Click
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
    Left = 88
    Top = 264
  end
  object rel_entrega: TfrxReport
    Version = '4.7.37'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39188.758111979200000000
    ReportOptions.LastChange = 39643.381793252300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      ''
      'BEGIN'
      'END.            ')
    Left = 120
    Top = 264
    Datasets = <
      item
        DataSet = fscliente
        DataSetName = 'fscliente'
      end
      item
        DataSet = fs_entrega
        DataSetName = 'fs_entrega'
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
    object Page2: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.500000000000000000
      PaperSize = 256
      LeftMargin = 7.800000000000000000
      RightMargin = 8.200000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      Frame.Width = 0.500000000000000000
      OnAfterPrint = 'Page2OnAfterPrint'
      object PageHeader1: TfrxPageHeader
        Height = 83.149660000000000000
        Top = 18.897650000000000000
        Width = 733.228820000000000000
        object Shape11: TfrxShapeView
          Top = 64.929190000000000000
          Width = 733.228820000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo34: TfrxMemoView
          Left = 5.559060000000000000
          Top = 66.708720000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'C'#195#8220'DIGO')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 64.252010000000000000
          Top = 66.708720000000000000
          Width = 336.378170000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 589.606680000000000000
          Top = 66.708720000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'UNID.')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 646.299630000000000000
          Top = 66.708720000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'QTDE.')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 268.346630000000000000
          Top = 1.000000000000000000
          Width = 464.882190000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14211288
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'G U I A    D E   E N T R E G A    N'#194#186': [fxrelatorio."LINHA10"]')
          ParentFont = False
        end
        object Line14: TfrxLineView
          Left = 53.913420000000000000
          Top = 66.141732280000000000
          Height = 457.322839530000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line17: TfrxLineView
          Left = 589.606680000000000000
          Top = 66.141732280000000000
          Height = 457.322839530000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 642.520100000000000000
          Top = 66.141732280000000000
          Height = 457.322839530001000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Left = 1.133858270000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Cliente')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 37.795300000000000000
          Width = 733.228820000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo87: TfrxMemoView
          Left = 0.755905510000000000
          Top = 22.677180000000000000
          Width = 442.205010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[FSCLIENTE."CODIGO"]  [FSCLIENTE."NOME"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 449.764070000000000000
          Top = 37.795300000000000000
          Height = -22.677180000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          Left = 453.543600000000000000
          Top = 15.118120000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'CPF/CNPJ')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 566.929500000000000000
          Top = 37.795300000000000000
          Height = -22.677180000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          Left = 570.709030000000000000
          Top = 15.118120000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Identidade / Insc.Estadual')
          ParentFont = False
        end
        object Line19: TfrxLineView
          Left = 661.417750000000000000
          Top = 37.795300000000000000
          Height = -22.677180000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          Left = 665.197280000000000000
          Top = 15.118120000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Data da Compra')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 664.197280000000000000
          Top = 23.677180000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'LINHA6'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fxrelatorio."LINHA6"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 452.543600000000000000
          Top = 24.456710000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[FSCLIENTE."CPF"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 568.709030000000000000
          Top = 24.677180000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'RG'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[FSCLIENTE."RG"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 1.133858270000000000
          Top = 37.795300000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Endere'#195#167'o:')
          ParentFont = False
        end
        object Line20: TfrxLineView
          Left = 245.669450000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          Left = 2.779530000000000000
          Top = 44.354360000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ENDERECO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[FSCLIENTE."ENDERECO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 3.000000000000000000
          Top = 53.692949999999990000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'BAIRRO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[FSCLIENTE."BAIRRO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 249.448980000000000000
          Top = 37.795300000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Cidade/UF')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 355.275820000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          Left = 245.669450000000000000
          Top = 49.133889999999990000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[FSCLIENTE."CIDADE"] / [FSCLIENTE."UF"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 359.055350000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Complemento')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 358.055350000000000000
          Top = 44.354360000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataField = 'COMPLEMENTO'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[FSCLIENTE."COMPLEMENTO"]')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Left = 502.677490000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          Left = 507.457020000000000000
          Top = 37.795300000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Telefones')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 506.457020000000000000
          Top = 44.354360000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              '[FSCLIENTE."TELEFONE1"]  [FSCLIENTE."TELEFONE2"]  [FSCLIENTE."CE' +
              'LULAR"]')
          ParentFont = False
        end
        object Line23: TfrxLineView
          Left = 623.622450000000000000
          Top = 64.252010000000000000
          Height = -26.456710000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo19: TfrxMemoView
          Left = 625.401980000000000000
          Top = 39.795300000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Caixa:')
          ParentFont = False
        end
        object Line24: TfrxLineView
          Left = 623.622450000000000000
          Top = 51.913420000000000000
          Width = 109.606370000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo100: TfrxMemoView
          Left = 659.638220000000000000
          Top = 39.795300000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'LINHA9'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fxrelatorio."LINHA9"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 625.401980000000000000
          Top = 53.133889999999990000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8 = (
            'Vendedor:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 660.417750000000000000
          Top = 53.133889999999990000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'LINHA8'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fxrelatorio."LINHA8"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 1.000000000000000000
          Top = 1.000000000000000000
          Width = 268.346630000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Color = 14211288
          DataField = 'FANTASIA'
          DataSet = frmmodulo.fxemitente
          DataSetName = 'fxemitente'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fxemitente."FANTASIA"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 52.913420000000000000
        Top = 238.110390000000000000
        Width = 733.228820000000000000
        object Shape1: TfrxShapeView
          Width = 733.228820000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Color = clWhite
          Frame.Width = 0.500000000000000000
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779529999999994000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Reconhe'#195#167'o que recebi a(s) mercadoria(s) acima relacionada(s) em' +
              ' perfeito estado.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 30.236239999999900000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Data:')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 41.574830000000000000
          Top = 41.574830000000020000
          Width = 192.756030000000000000
          ShowHint = False
          Diagonal = True
        end
        object Memo21: TfrxMemoView
          Left = 325.039580000000000000
          Top = 26.456709999999820000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Assinatura:')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 393.071120000000000000
          Top = 37.795299999999880000
          Width = 328.819110000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 94.488250000000000000
          Top = 41.574830000000020000
          Width = 15.118120000000000000
          Height = -18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 147.401670000000000000
          Top = 41.574830000000020000
          Width = 15.118120000000000000
          Height = -18.897650000000000000
          ShowHint = False
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        Height = 15.118120000000000000
        Top = 162.519790000000000000
        Width = 733.228820000000000000
        DataSet = fs_entrega
        DataSetName = 'fs_entrega'
        RowCount = 0
        object Memo22: TfrxMemoView
          Left = 5.779530000000000000
          Top = 1.779529999999994000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'Codigo'
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fs_entrega."Codigo"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 64.472480000000000000
          Top = 1.779529999999994000
          Width = 514.016080000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fs_entrega."PRODUTO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 589.827150000000000000
          Top = 1.779529999999994000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'Unidade'
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fs_entrega."Unidade"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 646.520100000000000000
          Top = 1.779529999999994000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DataField = 'qtde_entregue'
          DataSet = fs_entrega
          DataSetName = 'fs_entrega'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fs_entrega."qtde_entregue"]')
          ParentFont = False
        end
      end
    end
  end
  object fs_entrega: TfrxDBDataset
    UserName = 'fs_entrega'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Item=ITEM'
      'Codigo=Codigo'
      'Produto=PRODUTO'
      'Unidade=Unidade'
      'qtde_vendida=qtde_vendida'
      'qtde_entregue=qtde_entregue'
      'qtde_saldo=qtde_saldo')
    DataSet = qrEntrega
    BCDToCurrency = False
    Left = 56
    Top = 264
  end
  object fscliente: TfrxDBDataset
    UserName = 'fscliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'APELIDO=APELIDO'
      'ENDERECO=ENDERECO'
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
      'CPF=CPF'
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
      'CODCONVENIO=CODCONVENIO'
      'CODUSUARIO=CODUSUARIO')
    DataSet = frmvenda.qrcliente
    BCDToCurrency = False
    Left = 176
    Top = 264
  end
  object qrentrega2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from cL00002')
    Params = <>
    Left = 64
    Top = 160
  end
  object dsEntrega: TDataSource
    DataSet = qrEntrega
    Left = 312
    Top = 216
  end
  object qrEntrega: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 272
    Top = 216
    Data = {
      C40000009619E0BD010000001800000007000000000003000000C40004497465
      6D010049000000010005574944544802000200030006436F6469676F01004900
      000001000557494454480200020006000750726F6475746F0100490000000100
      05574944544802000200500007556E6964616465010049000000010005574944
      5448020002000A000C717464655F76656E6469646108000400000000000D7174
      64655F656E74726567756508000400000000000A717464655F73616C646F0800
      0400000000000000}
    object qrEntregaItem: TStringField
      DisplayWidth = 3
      FieldName = 'Item'
      Size = 3
    end
    object qrEntregaCodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 8
      FieldName = 'Codigo'
      Size = 6
    end
    object qrEntregaProduto: TStringField
      DisplayWidth = 49
      FieldName = 'Produto'
      Size = 80
    end
    object qrEntregaUnidade: TStringField
      DisplayLabel = 'Un.'
      DisplayWidth = 5
      FieldName = 'Unidade'
      Size = 10
    end
    object qrEntregaqtde_vendida: TFloatField
      DisplayLabel = 'Vendido'
      DisplayWidth = 10
      FieldName = 'qtde_vendida'
    end
    object qrEntregaqtde_entregue: TFloatField
      DisplayLabel = 'Entregue'
      DisplayWidth = 10
      FieldName = 'qtde_entregue'
    end
    object qrEntregaqtde_saldo: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 10
      FieldName = 'qtde_saldo'
    end
  end
end
