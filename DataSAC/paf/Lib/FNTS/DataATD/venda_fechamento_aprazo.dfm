object frmvenda_fechamento_aprazo: Tfrmvenda_fechamento_aprazo
  Left = 334
  Top = 256
  BorderStyle = bsToolWindow
  Caption = 'ATENDIMENTO | Fechamento '#224' Prazo'
  ClientHeight = 256
  ClientWidth = 374
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 43
    Top = 24
    Width = 90
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Subtotal:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 43
    Top = 48
    Width = 90
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Desconto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 43
    Top = 71
    Width = 90
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Acr'#233'scimo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 43
    Top = 95
    Width = 90
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Total:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 4
    Top = 126
    Width = 129
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Cond. de Pgto.:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 43
    Top = 153
    Width = 90
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Parcelas:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 0
    Top = 221
    Width = 374
    Height = 2
    Align = alBottom
  end
  object rdesconto2: TRxCalcEdit
    Left = 222
    Top = 45
    Width = 95
    Height = 22
    AutoSize = False
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
    OnExit = rdesconto2Exit
    OnKeyPress = rdesconto1KeyPress
  end
  object racrescimo2: TRxCalcEdit
    Left = 222
    Top = 68
    Width = 95
    Height = 22
    AutoSize = False
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
    OnExit = racrescimo2Exit
    OnKeyPress = rdesconto1KeyPress
  end
  object rdesconto1: TRxCalcEdit
    Left = 152
    Top = 45
    Width = 69
    Height = 22
    AutoSize = False
    DecimalPlaces = 3
    DisplayFormat = '###,###,##0.00%'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 0
    OnExit = rdesconto1Exit
    OnKeyPress = rdesconto1KeyPress
  end
  object racrescimo1: TRxCalcEdit
    Left = 152
    Top = 68
    Width = 69
    Height = 22
    AutoSize = False
    DecimalPlaces = 3
    DisplayFormat = '###,###,##0.00%'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
    OnKeyPress = rdesconto1KeyPress
  end
  object Panel3: TPanel
    Left = 0
    Top = 223
    Width = 374
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 6
    object bgravar: TBitBtn
      Left = 86
      Top = 3
      Width = 97
      Height = 25
      Caption = 'F2 | Gravar'
      TabOrder = 0
      OnClick = bgravarClick
    end
    object bcancelar: TBitBtn
      Left = 190
      Top = 3
      Width = 97
      Height = 25
      Caption = 'Esc | Cancelar'
      TabOrder = 1
      OnClick = bcancelarClick
    end
  end
  object bParcelamento: TBitBtn
    Left = 151
    Top = 178
    Width = 166
    Height = 23
    Caption = 'F10 | Consultar Parcelas'
    TabOrder = 7
  end
  object rsubtotal: TRxCalcEdit
    Left = 151
    Top = 21
    Width = 166
    Height = 23
    AutoSize = False
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 8
  end
  object rtotal: TRxCalcEdit
    Left = 152
    Top = 91
    Width = 165
    Height = 23
    AutoSize = False
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 9
  end
  object rparcelas: TRxCalcEdit
    Left = 152
    Top = 148
    Width = 165
    Height = 22
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '###,###,##0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonWidth = 0
    MinValue = 1.000000000000000000
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 5
    Value = 1.000000000000000000
    OnExit = rdesconto2Exit
    OnKeyPress = rparcelasKeyPress
  end
  object comboforma: TComboBox
    Left = 152
    Top = 123
    Width = 165
    Height = 24
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ItemHeight = 16
    ItemIndex = 0
    ParentFont = False
    TabOrder = 4
    Text = 'CREDI'#193'RIO'
    OnKeyPress = comboformaKeyPress
    Items.Strings = (
      'CREDI'#193'RIO'
      'CHEQUE '#192' PRAZO'
      'CART'#195'O DE CR'#201'DITO')
  end
  object PopupMenu1: TPopupMenu
    Left = 28
    Top = 4
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
    object Parcelamento1: TMenuItem
      Caption = 'Parcelamento'
      ShortCut = 121
      OnClick = bparcelamentoClick
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
    ReportOptions.CreateDate = 39209.833059294000000000
    ReportOptions.LastChange = 39973.627536724510000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 40
    Top = 72
    Datasets = <
      item
        DataSet = fsorcamento
        DataSetName = 'fsorcamento'
      end
      item
        DataSet = fsorcamento_cliente
        DataSetName = 'fsorcamento_cliente'
      end
      item
        DataSet = fsorcamento_produto
        DataSetName = 'fsorcamento_produto'
      end
      item
        DataSet = fsorcamento_receber
        DataSetName = 'fsorcamento_receber'
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
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      Frame.Width = 0.500000000000000000
      object PageHeader1: TfrxPageHeader
        Height = 191.196970000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo37: TfrxMemoView
          Left = 1.000000000000000000
          Top = 160.960730000000000000
          Width = 715.842519685039000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clBtnFace
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DISCRIMINA'#195#8225#195#402'O DOS PRODUTOS')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 3.779530000000000000
          Top = 178.078850000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8 = (
            'C'#195#8220'DIGO')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 49.133890000000000000
          Top = 178.078850000000000000
          Width = 294.803340000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8 = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 347.716760000000000000
          Top = 178.078850000000000000
          Width = 18.897650000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8 = (
            'UN.')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 370.393940000000000000
          Top = 178.078850000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'QUANTIDADE')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 423.307360000000000000
          Top = 178.078850000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'UNIT'#195#129'RIO')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 646.299630000000000000
          Top = 178.078850000000000000
          Width = 68.031540000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'VALOR TOTAL')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 514.016080000000000000
          Top = 177.858380000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'DESCONTO')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 578.268090000000000000
          Top = 177.858380000000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'ACR'#195#8240'SCIMO')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 191.196970000000000000
          Width = 716.220472440945000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Shape22: TfrxShapeView
          Left = 525.354670000000000000
          Top = 83.149660000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Shape23: TfrxShapeView
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo47: TfrxMemoView
          Left = -3.779530000000000000
          Top = 2.779530000000001000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DOCUMENTO AUXILIAR DE VENDA - OR'#195#8225'AMENTO')
          ParentFont = False
        end
        object Shape24: TfrxShapeView
          Top = 22.677180000000000000
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo48: TfrxMemoView
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#195#402'O '#195#8240' DOCUMENTO FISCAL - N'#195#402'O '#195#8240' VALIDO COMO RECIBO E COMO '
            'GARANTIA DE MERCADORIA - N'#195#402'O COMPROVA PAGAMENTO')
          ParentFont = False
        end
        object Shape25: TfrxShapeView
          Top = 64.252010000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo49: TfrxMemoView
          Top = 65.031540000000010000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Identifica'#195#167#195#163'o do Estabelecimento Emitente')
          ParentFont = False
        end
        object Shape26: TfrxShapeView
          Top = 83.149660000000000000
          Width = 525.354670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo50: TfrxMemoView
          Left = 3.779530000000000000
          Top = 84.929190000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Denomina'#195#167#195#163'o:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 90.708720000000000000
          Top = 85.149660000000000000
          Width = 427.086890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fxemitente."NOME"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 529.134200000000000000
          Top = 85.149660000000000000
          Width = 37.795300000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 570.709030000000000000
          Top = 85.370130000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fxemitente."CNPJ"]')
          ParentFont = False
        end
        object Shape27: TfrxShapeView
          Left = 525.354670000000000000
          Top = 120.944960000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Shape28: TfrxShapeView
          Top = 102.047310000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo66: TfrxMemoView
          Top = 102.826840000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Identifica'#195#167#195#163'o do Destinat'#195#161'rio')
          ParentFont = False
        end
        object Shape29: TfrxShapeView
          Top = 120.944960000000000000
          Width = 525.354670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo69: TfrxMemoView
          Left = 3.779530000000000000
          Top = 122.724490000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nome:')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 52.913420000000000000
          Top = 122.944960000000000000
          Width = 464.882190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fxrelatorio."LINHA2"]')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          Left = 529.134200000000000000
          Top = 122.944960000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ/CPF:')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          Left = 597.165740000000000000
          Top = 123.165430000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsorcamento_cliente."CPF"]')
          ParentFont = False
        end
        object Shape30: TfrxShapeView
          Left = 340.157700000000000000
          Top = 139.842610000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Shape31: TfrxShapeView
          Top = 139.842610000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo89: TfrxMemoView
          Left = 3.779530000000000000
          Top = 141.622140000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'N'#194#186' do Documento:')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 102.047310000000000000
          Top = 141.842610000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DAV'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fsorcamento."DAV"]')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 343.937230000000000000
          Top = 141.842610000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'N'#194#186' do Documento Fiscal:')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Left = 476.220780000000000000
          Top = 142.063080000000000000
          Width = 49.133890000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'XXXXXX')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        Height = 18.897650000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = fsorcamento_produto
        DataSetName = 'fsorcamento_produto'
        RowCount = 0
        object Memo78: TfrxMemoView
          Left = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'CODPRODUTO'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsorcamento_produto."CODPRODUTO"]')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 49.133890000000000000
          Width = 294.803340000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PRODUTO'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsorcamento_produto."PRODUTO"]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 343.937230000000000000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NUMERACAO'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsorcamento_produto."NUMERACAO"]')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 377.953000000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'QTDE'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsorcamento_produto."QTDE"]')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 442.205010000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'UNITARIO'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsorcamento_produto."UNITARIO"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 642.520100000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'TOTAL'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsorcamento_produto."TOTAL"]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 514.016080000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DESCONTO'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsorcamento_produto."DESCONTO"]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 578.268090000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ACRESCIMO'
          DataSet = fsorcamento_produto
          DataSetName = 'fsorcamento_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsorcamento_produto."ACRESCIMO"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 136.842610000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Width = 718.110700000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Shape14: TfrxShapeView
          Left = 1.000000000000000000
          Top = 4.559059999999988000
          Width = 715.842519685039000000
          Height = 98.267780000000000000
          ShowHint = False
          Color = clBtnFace
          Frame.Color = clWhite
          Frame.Width = 0.100000000000000000
        end
        object Shape15: TfrxShapeView
          Left = 585.827150000000000000
          Top = 11.338589999999900000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Color = clWhite
          Frame.Color = clWhite
        end
        object Shape16: TfrxShapeView
          Left = 585.827150000000000000
          Top = 34.015769999999970000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Color = clWhite
          Frame.Color = clWhite
        end
        object Shape17: TfrxShapeView
          Left = 585.827150000000000000
          Top = 78.370130000000190000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Color = clWhite
          Frame.Color = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 423.307360000000000000
          Top = 14.118119999999920000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'VALOR DOS PRODUTOS - R$:')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 423.307360000000000000
          Top = 36.015769999999970000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'DESCONTO - R$:')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 423.307360000000000000
          Top = 79.590600000000220000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'TOTAL DO OR'#195#8225'AMENTO - R$:')
          ParentFont = False
        end
        object Shape18: TfrxShapeView
          Left = 8.338590000000000000
          Top = 11.338589999999900000
          Width = 408.189240000000000000
          Height = 83.905526460000000000
          ShowHint = False
          Color = clWhite
          Frame.Color = clWhite
        end
        object Memo56: TfrxMemoView
          Left = 11.338590000000000000
          Top = 15.118119999999920000
          Width = 102.047310000000000000
          Height = 9.448818900000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8 = (
            'OBSERVA'#195#8225#195#8226'ES:')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 11.338590000000000000
          Top = 22.677180000000190000
          Width = 396.850650000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'LINHA3'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA3"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 11.338590000000000000
          Top = 34.015769999999970000
          Width = 396.850650000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'LINHA4'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA4"]')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 11.338590000000000000
          Top = 45.354359999999990000
          Width = 396.850650000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'LINHA5'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA5"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 11.338590000000000000
          Top = 56.692950000000110000
          Width = 396.850650000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'LINHA6'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fxrelatorio."LINHA6"]')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          Left = 589.606680000000000000
          Top = 11.338590000000010000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'SUBTOTAL'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[fsorcamento."SUBTOTAL"]')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          Left = 589.606680000000000000
          Top = 34.015769999999970000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DESCONTO'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[fsorcamento."DESCONTO"]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 589.606680000000000000
          Top = 77.370130000000010000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'TOTAL'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[fsorcamento."TOTAL"]')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 1.000000000000000000
          Top = 105.826840000000000000
          Width = 715.842519690000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clBtnFace
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONDI'#195#8225#195#8226'ES DE PAGAMENTO')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 136.063080000000000000
          Top = 122.590026380000000000
          Width = 98.267780000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'VALOR - R$')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 7.559060000000000000
          Top = 122.590026380000000000
          Width = 60.472480000000000000
          Height = 11.338590000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8 = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 135.063080000000000000
          Width = 238.110390000000000000
          ShowHint = False
          Frame.Style = fsDot
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Shape21: TfrxShapeView
          Left = 585.827150000000000000
          Top = 56.692950000000110000
          Width = 124.724490000000000000
          Height = 17.007874020000000000
          ShowHint = False
          Color = clWhite
          Frame.Color = clWhite
        end
        object Memo44: TfrxMemoView
          Left = 423.307360000000000000
          Top = 58.692950000000280000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'ACR'#195#8240'SCIMO - R$:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 589.606680000000000000
          Top = 56.692949999999990000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'ACRESCIMO'
          DataSet = fsorcamento
          DataSetName = 'fsorcamento'
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[fsorcamento."ACRESCIMO"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 15.118120000000000000
        Top = 472.441250000000000000
        Width = 718.110700000000000000
        DataSet = fsorcamento_receber
        DataSetName = 'fsorcamento_receber'
        RowCount = 0
        object Memo67: TfrxMemoView
          Left = 8.338590000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'DATA_VENCIMENTO'
          DataSet = fsorcamento_receber
          DataSetName = 'fsorcamento_receber'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          Memo.UTF8 = (
            '[fsorcamento_receber."DATA_VENCIMENTO"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 165.299320000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'VALOR_ORIGINAL'
          DataSet = fsorcamento_receber
          DataSetName = 'fsorcamento_receber'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fsorcamento_receber."VALOR_ORIGINAL"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 102.047310000000000000
        Top = 548.031849999999900000
        Width = 718.110700000000000000
        object Memo65: TfrxMemoView
          Left = 1.000000000000000000
          Top = 3.779530000000022000
          Width = 715.842519690000000000
          Height = 15.118120000000000000
          ShowHint = False
          Color = clBtnFace
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'ASSINATURAS')
          ParentFont = False
        end
        object Shape19: TfrxShapeView
          Top = 21.677180000000020000
          Width = 336.378170000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Shape20: TfrxShapeView
          Left = 343.937230000000000000
          Top = 21.677180000000020000
          Width = 374.173470000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo71: TfrxMemoView
          Left = 3.779530000000000000
          Top = 25.456710000000040000
          Width = 136.063080000000000000
          Height = 9.448818900000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8 = (
            'RESPONS'#195#129'VEL PELO OR'#195#8225'AMENTO')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 347.716760000000000000
          Top = 25.456710000000040000
          Width = 136.063080000000000000
          Height = 9.448818900000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8 = (
            'AUTORIZA'#195#8225#195#402'O DO CLIENTE')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 402.732530000000000000
          Top = 70.252010000000040000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 436.748300000000000000
          Top = 70.252010000000040000
          Width = 11.338590000000000000
          Height = -15.118120000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 375.275820000000000000
          Top = 70.432450870000030000
          Width = 102.047310000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo73: TfrxMemoView
          Left = 347.716760000000000000
          Top = 59.692950000000000000
          Width = 26.456710000000000000
          Height = 9.448818900000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8 = (
            'DATA:')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 536.693260000000000000
          Top = 70.432450870000030000
          Width = 170.078850000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo74: TfrxMemoView
          Left = 480.000310000000000000
          Top = 59.472480000000010000
          Width = 56.692950000000000000
          Height = 9.448818900000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Verdana'
          Font.Style = []
          Memo.UTF8 = (
            'ASSINATURA:')
          ParentFont = False
        end
        object Shape32: TfrxShapeView
          Top = 83.149660000000040000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Frame.Width = 0.500000000000000000
        end
        object Memo93: TfrxMemoView
          Top = 83.929189999999950000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #195#8240' vedada a autentica'#195#167#195#163'o deste documento')
          ParentFont = False
        end
      end
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
    Left = 8
    Top = 72
  end
  object fsorcamento: TfrxDBDataset
    UserName = 'fsorcamento'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODCAIXA=CODCAIXA'
      'CODVENDEDOR=CODVENDEDOR'
      'DATA=DATA'
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
      'TOTAL=TOTAL'
      'CUPOM_FISCAL=CUPOM_FISCAL'
      'NUMERO_CUPOM_FISCAL=NUMERO_CUPOM_FISCAL'
      'RETIRADO=RETIRADO'
      'TIPO=TIPO'
      'MEIO_CONVENIO=MEIO_CONVENIO'
      'DAV=DAV')
    DataSet = frmmodulo.qrorcamento
    BCDToCurrency = False
    Left = 280
    Top = 8
  end
  object fsorcamento_produto: TfrxDBDataset
    UserName = 'fsorcamento_produto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ITEM=ITEM'
      'CODPRODUTO=CODPRODUTO'
      'PRODUTO=PRODUTO'
      'NUMERACAO=NUMERACAO'
      'QTDE=QTDE'
      'UNITARIO=UNITARIO'
      'TOTAL=TOTAL'
      'MIX=MIX'
      'SERIAL=SERIAL'
      'CODGRADE=CODGRADE'
      'CODBARRAS=CODBARRAS'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'TIPO=TIPO'
      'TERMINAL=TERMINAL')
    DataSet = frmvenda_pdv.qrvenda_produto
    BCDToCurrency = False
    Left = 248
    Top = 8
  end
  object fsorcamento_receber: TfrxDBDataset
    UserName = 'fsorcamento_receber'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODVENDA=CODVENDA'
      'CODVENDEDOR=CODVENDEDOR'
      'CODCAIXA=CODCAIXA'
      'CODCLIENTE=CODCLIENTE'
      'DATA_EMISSAO=DATA_EMISSAO'
      'DATA_VENCIMENTO=DATA_VENCIMENTO'
      'DATA_PAGAMENTO=DATA_PAGAMENTO'
      'VALOR_ORIGINAL=VALOR_ORIGINAL'
      'VALOR_PAGO=VALOR_PAGO'
      'VALOR_JUROS=VALOR_JUROS'
      'VALOR_ATUAL=VALOR_ATUAL'
      'VALOR_DESCONTO=VALOR_DESCONTO'
      'DOCUMENTO=DOCUMENTO'
      'TIPO=TIPO'
      'SITUACAO=SITUACAO'
      'FILTRO=FILTRO'
      'NOSSONUMERO=NOSSONUMERO'
      'CODREGIAO=CODREGIAO'
      'CODCEDENTE=CODCEDENTE')
    DataSet = frmmodulo.qrorcamento_receber
    BCDToCurrency = False
    Left = 216
    Top = 8
  end
  object fsorcamento_cliente: TfrxDBDataset
    UserName = 'fsorcamento_cliente'
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
      'CODUSUARIO=CODUSUARIO'
      'SEXO=SEXO'
      'HISTORICO=HISTORICO'
      'PREVISAO=PREVISAO')
    DataSet = frmmodulo.qrcliente
    BCDToCurrency = False
    Left = 184
    Top = 8
  end
end
