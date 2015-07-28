object frmproduto_serialF: Tfrmproduto_serialF
  Left = 321
  Top = 173
  Width = 231
  Height = 353
  BorderIcons = []
  Caption = 'Entrada - Seriais'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = Pop2
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ViewSplit1: TViewSplit
    Left = 0
    Top = 277
    Width = 223
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object wwDBGrid2: TwwDBGrid
    Left = 0
    Top = 0
    Width = 223
    Height = 187
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'SERIAL'#9'26'#9'N'#218'MERO DE S'#201'RIE')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsserial_produto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -9
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDrawDataCell = wwDBGrid2DrawDataCell
  end
  object FlipPanel1: TFlipPanel
    Left = 0
    Top = 187
    Width = 223
    Height = 52
    Align = alBottom
    BorderStyle = bsSingle
    ParentColor = False
    object Label1: TLabel
      Left = 4
      Top = 0
      Width = 116
      Height = 12
      Caption = 'QTDE. DO PRODUTO:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 4
      Top = 15
      Width = 98
      Height = 12
      Caption = 'QTDE. DIGITADA:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 4
      Top = 31
      Width = 68
      Height = 12
      Caption = 'DIFEREN'#199'A:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object RTOTAL: TRxCalcEdit
      Left = 128
      Top = 1
      Width = 49
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object RDIGITADO: TRxCalcEdit
      Left = 120
      Top = 15
      Width = 57
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
    object RDIFERENCA: TRxCalcEdit
      Left = 120
      Top = 31
      Width = 57
      Height = 17
      AutoSize = False
      BorderStyle = bsNone
      DisplayFormat = '###,###,##0.00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ButtonWidth = 0
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
    end
  end
  object pgravar: TFlatPanel
    Left = 0
    Top = 280
    Width = 223
    Height = 39
    Color = clWindow
    ColorHighLight = clWindow
    ColorShadow = clWindow
    Align = alBottom
    TabOrder = 2
    object bgravar: TBitBtn
      Left = 8
      Top = 6
      Width = 97
      Height = 25
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = bgravarClick
      Glyph.Data = {
        DA050000424DDA05000000000000360000002800000019000000130000000100
        180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
        398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
        45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
        DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
        E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
        FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
        441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
        ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
        5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
        6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
        723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
        794020733D246C3A266537266035275E35275E3527613626EBDFDD8F4539FFFF
        FF00FFFFFF8F4539ECE3E0B9763CB7753CCA8D50FFFFFFFFFFFFB7753DA66030
        A25B2D9C552BCFA887FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB59E886136255E35
        26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3ECE9254
        FFFFFFFFFFFFBD7C41B06C39AC6737A86232B16E3BF8F6F5FFFFFFE0D7CCC8B1
        9AC5AE9A9C7758663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
        ECE3E0C17F3DC1803FD39857FFFFFFFFFFFFCD904EC28144BF7E42B36F3BAE69
        35BC7C48F1EEEBFBFAF9BF957582431D783F226F3C236A3A25693925EBDFDD8F
        4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853ED89D55FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFBD7B3FB6733CAF6B39B8763FE8E0D6FFFFFFCDB29785461C7B
        4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
        3EDCA153FFFFFFFFFFFFE4B57BE1AC69E0AA69C1803FBF7E41C38344BA7941B0
        6C38E8E0D7FFFFFFAE794F87461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
        FF8F4539ECE3E0CB8B3BCC8C3ADFA551FFFFFFFFFFFFE8BF88E5B67CE4B67CD7
        9C54E0AB71FFFFFFEADED0C3854CE5D9CBFFFFFFBE8E66904B228A471E86451C
        ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38E0A652FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE8BF8DC58442E8D3B9FFFFFFFFFFFFFFFFFFE1CFBA
        A45F2E98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
        8F36D09037D29237D8993FD8993ED59741D39442D19344C98942C17F3EBC7A3E
        C28142C7894EB8753DA96434A45E2E9F582D9B5429985128EBE0DE8F4539FFFF
        FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
        C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
        2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
        CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
        3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
        EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
        DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
        4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
        398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
        45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    end
    object BitBtn1: TBitBtn
      Left = 120
      Top = 6
      Width = 97
      Height = 25
      Caption = 'Excluir'
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        DA050000424DDA05000000000000360000002800000019000000130000000100
        180000000000A4050000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
        398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
        45398F45398F45398F45398F4539FFFFFF00FFFFFF8F4539ECE3E0ECE2DFEBE0
        DEECE2DFECE2DFECE2DFECE3E0ECE2DFEBE0DEECE2DFECE3E0ECE3E0ECE2DFEB
        E0DEEBE0DEECE2DFECE2DFECE2DFECE2DFECE2DFECE2DF8F4539FFFFFF00FFFF
        FF8F4539ECE3E0AE6A37AC6734A66031A25B2D9C552B965028914B238A481D84
        441C7D411F763E22713D236D3B256838266536276437266438256537266A3A25
        ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFB16D39AE6A37AA6533A6602FA1
        5A2C9B542A955026904B2388471D81431C793F22733C256C3B24663826643726
        6136255E3526613625643825EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFB5
        723BB36F3AB06C38AC6734A86231A35D2D9D562A985228924D248A481D82441B
        794020733D246C3A266537266035275E35275E3527613626EBDFDD8F4539FFFF
        FF00FFFFFF8F4539ECE3E0B9763CB7753CB5723BCC9158FFFFFFEDE8E1A66030
        A25B2D9C552B954F278E492386461B7E421DD8CEC3F1EEEC6437266136255E35
        26623626EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE2DFBC7A3EBC7A3EBA783E
        D1975CFFFFFFEEE8E1B06C39AC6737A86232B77845DAC4AAD7C2ABD3C0ABF2F0
        EEFAFAF9B99F88663726623626633726EBE0DE8F4539FFFFFF00FFFFFF8F4539
        ECE3E0C17F3DC1803FC17F3FD79E60FFFFFFF1EBE5C28144BF7E42B8763DCA91
        5AFFFFFFF2EEEBE8E2DBFAF9F8FDFDFDCFC0AE6F3C236A3A25693925EBDFDD8F
        4539FFFFFF00FFFFFF8F4539ECE3E0C6853DC6853EC6853EDBA35EFFFFFFFFFF
        FFFFFFFFFFFFFFE6C29BB9773EE8DBCCE8DFD5A96431DFD2C3F2EFEC83441C7B
        4120733D23723D23EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0C8873CC888
        3EC9893DE0A75BFFFFFFF5F2EEE1AC69E0AA69D29652BC7A3EC18142F1EDE8E2
        CEB7E3D6C7F2EFEC8F4B2387461C7F411E7C4020ECE2DF8F4539FFFFFF00FFFF
        FF8F4539ECE3E0CB8B3BCC8C3ACE8E39E2AA5CFFFFFFF6F3F0E5B67CE4B67CE3
        B37CC38241BB793DC98C50FBFAF8FFFFFFF2EFEC975029904B228A471E86451C
        ECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCD8D38CF8F38D09037E3AB5BFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFC58542BC7A3DB7753CD49F6CFFFFFFF2EFEC
        9E572B98512A934D268F4B22EBE0DE8F4539FFFFFF00FFFFFF8F4539ECE3E0CF
        8F36D09037D09037D29237D8993ED59741D39442D19344CE9045C1803EBC7A3E
        B9773CB5723CC3844CBF814AA45E2E9F582D9B5429985128EBE0DE8F4539FFFF
        FF00FFFFFF8F4539ECE2DFD09036D09037CF8F38CE8E38CD8D39CA8A3BC8873D
        C6853EC3833EBF7E3FBC7A3EB9773DB6733CB26F3AAE6937AA6533A55F30A25B
        2C9F582CECE2DF8F4539FFFFFF00FFFFFF8F4539ECE2DFCF8F38CF8F38CE8E39
        CD8D3ACB8B3CC8883DC6863DC5843EC3823FC07F3FBD7B3FBA783DB8763DB572
        3CB16E3AAE6937AB6634A86231A6602FEBE0DE8F4539FFFFFF00FFFFFF8F4539
        EBE0DEEBE0DEEBDFDDEBE0DEEBE0DEEBE0DEEBE0DEEBE0DEEBDFDDEBE0DEEBE0
        DEEBE0DEEBE0DEEBDFDDEBDFDDEBE0DEEBE0DEEBDFDDEBE0DEEBDFDDEBDFDD8F
        4539FFFFFF00FFFFFF8F45398F45398F45398F45398F45398F45398F45398F45
        398F45398F45398F45398F45398F45398F45398F45398F45398F45398F45398F
        45398F45398F45398F45398F4539FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    end
  end
  object plegenda: TFlipPanel
    Left = 0
    Top = 239
    Width = 223
    Height = 38
    Align = alBottom
    BorderStyle = bsSingle
    ParentColor = False
    object Label7: TLabel
      Left = 20
      Top = 2
      Width = 95
      Height = 13
      Caption = 'Seriais Vendidos'
    end
    object Shape1: TShape
      Left = 4
      Top = 3
      Width = 13
      Height = 12
      Brush.Color = clRed
      Shape = stRoundRect
    end
    object Shape2: TShape
      Left = 4
      Top = 19
      Width = 13
      Height = 12
      Brush.Color = clYellow
      Shape = stRoundRect
    end
    object Label8: TLabel
      Left = 20
      Top = 18
      Width = 95
      Height = 13
      Caption = 'Seriais Baixados'
    end
  end
  object dsserial_produto: TDataSource
    DataSet = qrserial_produto
    Left = 137
    Top = 97
  end
  object qrserial_produto: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    AfterEdit = qrserial_produtoAfterEdit
    BeforePost = qrserial_produtoBeforePost
    Active = True
    SQL.Strings = (
      'select * from c000022')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 96
    Top = 104
    object qrserial_produtoSERIAL: TStringField
      DisplayLabel = 'N'#218'MERO DE S'#201'RIE'
      DisplayWidth = 26
      FieldName = 'SERIAL'
      Size = 30
    end
    object qrserial_produtoCODNOTA: TStringField
      DisplayLabel = 'NF.COMPRA'
      DisplayWidth = 9
      FieldName = 'CODNOTA'
      Visible = False
      Size = 6
    end
    object qrserial_produtoPRECOCUSTO: TFloatField
      DisplayLabel = 'PRE'#199'O CUSTO'
      DisplayWidth = 11
      FieldName = 'PRECOCUSTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrserial_produtoPRECOVENDA: TFloatField
      DisplayLabel = 'PRE'#199'O VENDA'
      DisplayWidth = 11
      FieldName = 'PRECOVENDA'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrserial_produtoDATAVENDA: TDateTimeField
      DisplayLabel = 'DATA VENDA'
      DisplayWidth = 11
      FieldName = 'DATAVENDA'
      Visible = False
    end
    object qrserial_produtoCLIENTE: TStringField
      DisplayWidth = 19
      FieldName = 'CLIENTE'
      Visible = False
      Size = 80
    end
    object qrserial_produtoESTOQUE: TFloatField
      DisplayWidth = 7
      FieldName = 'ESTOQUE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrserial_produtoCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrserial_produtoCODPRODUTO: TStringField
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 6
    end
    object qrserial_produtoCODCLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrserial_produtoSITUACAO: TIntegerField
      DisplayWidth = 10
      FieldName = 'SITUACAO'
      Visible = False
    end
    object qrserial_produtoCODITEM: TStringField
      FieldName = 'CODITEM'
      Visible = False
      Size = 6
    end
    object qrserial_produtoDATACOMPRA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATACOMPRA'
      Visible = False
    end
    object qrserial_produtoNUMERONOTA: TStringField
      DisplayWidth = 6
      FieldName = 'NUMERONOTA'
      Visible = False
      Size = 6
    end
    object qrserial_produtoCODFORNECEDOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
  end
  object Pop2: TPopupMenu
    Left = 168
    Top = 104
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      ShortCut = 115
      OnClick = BitBtn1Click
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 16499
      OnClick = Fechar1Click
    end
  end
end
