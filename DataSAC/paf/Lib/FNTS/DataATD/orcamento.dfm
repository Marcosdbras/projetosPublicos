object frmorcamento: Tfrmorcamento
  Left = 411
  Top = 99
  BorderStyle = bsDialog
  Caption = 'Or'#231'amentos'
  ClientHeight = 461
  ClientWidth = 604
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
  object Bevel1: TBevel
    Left = 0
    Top = 37
    Width = 604
    Height = 2
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 439
    Width = 604
    Height = 2
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 604
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lpesquisa: TLabel
      Left = 288
      Top = 11
      Width = 76
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'F3 | Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 49
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Per'#237'odo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 168
      Top = 11
      Width = 6
      Height = 13
      Caption = 'a'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object loc: TEdit
      Left = 368
      Top = 8
      Width = 169
      Height = 21
      TabOrder = 2
      OnKeyPress = LOCKeyPress
    end
    object ed_inicial: TDateEdit
      Left = 65
      Top = 8
      Width = 96
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
      OnKeyPress = ed_inicialKeyPress
    end
    object ed_final: TDateEdit
      Left = 185
      Top = 8
      Width = 96
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
      OnKeyPress = ed_finalKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 547
      Top = 6
      Width = 51
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 3
      OnClick = BitBtn1Click
    end
  end
  object grid: TwwDBGrid
    Left = 0
    Top = 39
    Width = 604
    Height = 400
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'CODIGO'#9'7'#9'C'#243'digo'
      'DATA'#9'11'#9'Data'
      'NOME'#9'33'#9'Cliente'
      'TOTAL'#9'10'#9'Total'
      'vendedor'#9'17'#9'Vendedor')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsorcamento
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = gridDblClick
    OnKeyPress = gridKeyPress
  end
  object Panel2: TPanel
    Left = 0
    Top = 441
    Width = 604
    Height = 20
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Label14: TLabel
      Left = 10
      Top = 3
      Width = 45
      Height = 13
      Caption = 'F2 | Abrir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label36: TLabel
      Left = 90
      Top = 3
      Width = 47
      Height = 13
      Caption = 'ESC | Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object dsorcamento: TDataSource
    DataSet = qrorcamento
    Left = 272
    Top = 376
  end
  object qrorcamento: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      
        'select orc.*, cli.nome from c000074 orc, c000007 cli where orc.c' +
        'odcliente = cli.codigo')
    Params = <>
    Left = 248
    Top = 224
    object qrorcamentoCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrorcamentoDATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 11
      FieldName = 'DATA'
    end
    object qrorcamentoNOME: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 33
      FieldName = 'NOME'
      Size = 80
    end
    object qrorcamentoTOTAL: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object qrorcamentovendedor: TStringField
      DisplayLabel = 'Vendedor'
      DisplayWidth = 17
      FieldKind = fkLookup
      FieldName = 'vendedor'
      LookupDataSet = frmmodulo.qrfunci
      LookupKeyFields = 'codigo'
      LookupResultField = 'nome'
      KeyFields = 'codvendedor'
      Size = 30
      Lookup = True
    end
    object qrorcamentoagc: TStringField
      DisplayLabel = '*'
      DisplayWidth = 2
      FieldKind = fkCalculated
      FieldName = 'agc'
      Visible = False
      Size = 2
      Calculated = True
    end
    object qrorcamentoRETIRADO: TStringField
      DisplayLabel = ' '
      DisplayWidth = 3
      FieldName = 'RETIRADO'
      Visible = False
      Size = 50
    end
    object qrorcamentoCODVENDEDOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODVENDEDOR'
      Visible = False
      Size = 6
    end
    object qrorcamentoCODCAIXA: TStringField
      DisplayWidth = 6
      FieldName = 'CODCAIXA'
      Visible = False
      Size = 6
    end
    object qrorcamentoCODCLIENTE: TStringField
      DisplayWidth = 6
      FieldName = 'CODCLIENTE'
      Visible = False
      Size = 6
    end
    object qrorcamentoOBS: TStringField
      DisplayWidth = 50
      FieldName = 'OBS'
      Visible = False
      Size = 50
    end
    object qrorcamentoMEIO_DINHEIRO: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_DINHEIRO'
      Visible = False
    end
    object qrorcamentoMEIO_CHEQUEAV: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CHEQUEAV'
      Visible = False
    end
    object qrorcamentoMEIO_CHEQUEAP: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CHEQUEAP'
      Visible = False
    end
    object qrorcamentoMEIO_CARTAOCRED: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CARTAOCRED'
      Visible = False
    end
    object qrorcamentoMEIO_CARTAODEB: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CARTAODEB'
      Visible = False
    end
    object qrorcamentoMEIO_CREDIARIO: TFloatField
      DisplayWidth = 10
      FieldName = 'MEIO_CREDIARIO'
      Visible = False
    end
    object qrorcamentoSUBTOTAL: TFloatField
      DisplayWidth = 10
      FieldName = 'SUBTOTAL'
      Visible = False
    end
    object qrorcamentoDESCONTO: TFloatField
      DisplayWidth = 10
      FieldName = 'DESCONTO'
      Visible = False
    end
    object qrorcamentoACRESCIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ACRESCIMO'
      Visible = False
    end
    object qrorcamentoCUPOM_FISCAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'CUPOM_FISCAL'
      Visible = False
    end
    object qrorcamentoNUMERO_CUPOM_FISCAL: TStringField
      DisplayWidth = 10
      FieldName = 'NUMERO_CUPOM_FISCAL'
      Visible = False
      Size = 10
    end
    object qrorcamentoTIPO: TIntegerField
      FieldName = 'TIPO'
      Visible = False
    end
  end
  object qrorcamento_produto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000075')
    Params = <>
    Left = 320
    Top = 224
    object qrorcamento_produtoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrorcamento_produtoCODNOTA: TStringField
      FieldName = 'CODNOTA'
      Size = 6
    end
    object qrorcamento_produtoCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Size = 6
    end
    object qrorcamento_produtoUNITARIO: TFloatField
      FieldName = 'UNITARIO'
    end
    object qrorcamento_produtoTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrorcamento_produtoICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qrorcamento_produtoIPI: TFloatField
      FieldName = 'IPI'
    end
    object qrorcamento_produtoCFOP: TStringField
      FieldName = 'CFOP'
      Size = 6
    end
    object qrorcamento_produtoDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object qrorcamento_produtoNUMERONOTA: TStringField
      FieldName = 'NUMERONOTA'
      Size = 6
    end
    object qrorcamento_produtoCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrorcamento_produtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrorcamento_produtoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrorcamento_produtoMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
    end
    object qrorcamento_produtoCODVENDEDOR: TStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrorcamento_produtoCODGRADE: TStringField
      FieldName = 'CODGRADE'
      Size = 6
    end
    object qrorcamento_produtoSERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 25
    end
    object qrorcamento_produtoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object qrorcamento_produtoQTDE: TFloatField
      FieldName = 'QTDE'
    end
    object qrorcamento_produtoVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
    end
    object qrorcamento_produtoICMS_REDUZIDO: TFloatField
      FieldName = 'ICMS_REDUZIDO'
    end
    object qrorcamento_produtoBASE_CALCULO: TFloatField
      FieldName = 'BASE_CALCULO'
    end
    object qrorcamento_produtoVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
    end
    object qrorcamento_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrorcamento_produtoproduto: TStringField
      FieldKind = fkLookup
      FieldName = 'produto'
      LookupDataSet = qrproduto
      LookupKeyFields = 'codigo'
      LookupResultField = 'produto'
      KeyFields = 'codproduto'
      Size = 60
      Lookup = True
    end
  end
  object qrorcamento_receber: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000076')
    Params = <>
    Left = 280
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 248
    object ipodePesquisa1: TMenuItem
      Caption = 'Tipo de Pesquisa'
      ShortCut = 114
      OnClick = ipodePesquisa1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Abrir1: TMenuItem
      Caption = 'Abrir'
      ShortCut = 113
      OnClick = Abrir1Click
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = Sair1Click
    end
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 352
    Top = 224
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 472
    Top = 192
  end
end
