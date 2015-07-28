object frmproduto_grade: Tfrmproduto_grade
  Left = 292
  Top = 187
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'ENTRADA - Grade'
  ClientHeight = 289
  ClientWidth = 255
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
    Top = 247
    Width = 255
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 255
    Height = 195
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'NUMERACAO'#9'20'#9'N'#218'MERO'
      'QTDE'#9'10'#9'QTDE.')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 1
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsgrade_produto
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnEnter = wwDBGrid1Enter
    OnExit = wwDBGrid1Exit
  end
  object pgravar: TFlatPanel
    Left = 0
    Top = 250
    Width = 255
    Height = 39
    Color = clWindow
    ColorHighLight = clWindow
    ColorShadow = clWindow
    Align = alBottom
    TabOrder = 1
    object bgravar: TBitBtn
      Left = 64
      Top = 6
      Width = 129
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
  end
  object FlipPanel1: TFlipPanel
    Left = 0
    Top = 195
    Width = 255
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
      OnChange = RDIFERENCAChange
    end
  end
  object dsgrade_produto: TDataSource
    DataSet = qrgrade_entrada
    Left = 33
    Top = 25
  end
  object qrgrade_entrada: TZQuery
    Connection = frmmodulo.Conexao
    CachedUpdates = False
    BeforeInsert = qrgrade_entradaBeforeInsert
    AfterInsert = qrgrade_entradaAfterInsert
    BeforeEdit = qrgrade_entradaBeforeEdit
    AfterPost = qrgrade_entradaAfterPost
    Active = True
    SQL.Strings = (
      'select * from c000033')
    ParamCheck = True
    Params = <>
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 192
    Top = 120
    object qrgrade_entradaNUMERACAO: TStringField
      DisplayLabel = 'N'#218'MERO'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'NUMERACAO'
      LookupDataSet = frmmodulo.qrgrade_produto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NUMERACAO'
      KeyFields = 'CODGRADE'
      Lookup = True
    end
    object qrgrade_entradaQTDE: TFloatField
      DisplayLabel = 'QTDE.'
      DisplayWidth = 10
      FieldName = 'QTDE'
    end
    object qrgrade_entradaCODGRADE: TStringField
      DisplayWidth = 6
      FieldName = 'CODGRADE'
      Visible = False
      Size = 6
    end
    object qrgrade_entradaCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrgrade_entradaCODPRODUTO: TStringField
      DisplayWidth = 6
      FieldName = 'CODPRODUTO'
      Visible = False
      Size = 6
    end
    object qrgrade_entradaCODNOTA: TStringField
      DisplayWidth = 6
      FieldName = 'CODNOTA'
      Visible = False
      Size = 6
    end
    object qrgrade_entradaCODITEM: TStringField
      DisplayWidth = 6
      FieldName = 'CODITEM'
      Visible = False
      Size = 6
    end
  end
  object Pop2: TPopupMenu
    Left = 136
    Top = 120
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 16499
      OnClick = Fechar1Click
    end
  end
end
