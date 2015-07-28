object frmFabricacao: TfrmFabricacao
  Left = 384
  Top = 278
  BorderStyle = bsDialog
  Caption = 'Fabrica'#231#227'o'
  ClientHeight = 454
  ClientWidth = 648
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
  object Bevel1: TBevel
    Left = 0
    Top = 58
    Width = 648
    Height = 2
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 422
    Width = 648
    Height = 2
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 424
    Width = 648
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object bt_ok: TButton
      Left = 246
      Top = 2
      Width = 75
      Height = 25
      Caption = 'F2 &Gravar'
      TabOrder = 0
      OnClick = bt_okClick
    end
    object bt_cancelar: TButton
      Left = 326
      Top = 2
      Width = 75
      Height = 25
      Caption = 'ESC &Cancelar'
      TabOrder = 1
      OnClick = bt_cancelarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 648
    Height = 58
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 11
      Width = 42
      Height = 13
      Caption = 'Produto:'
    end
    object Label2: TLabel
      Left = 240
      Top = 35
      Width = 43
      Height = 13
      Caption = 'Unidade:'
    end
    object Label6: TLabel
      Left = 16
      Top = 38
      Width = 108
      Height = 13
      Caption = 'Quantidade fabricada:'
    end
    object ed_produto_codigo: TRzButtonEdit
      Left = 64
      Top = 8
      Width = 73
      Height = 21
      TabOrder = 0
      OnKeyPress = ed_produto_codigoKeyPress
      OnButtonClick = ed_produto_codigoButtonClick
    end
    object ed_produto_nome: TRzEdit
      Left = 144
      Top = 8
      Width = 489
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      ReadOnlyColor = clBtnFace
      TabOrder = 1
    end
    object ed_produto_unidade: TRzEdit
      Left = 288
      Top = 32
      Width = 33
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      ReadOnlyColor = clBtnFace
      TabOrder = 2
    end
    object ed_qtde_prod: TRzNumericEdit
      Left = 144
      Top = 32
      Width = 89
      Height = 21
      TabOrder = 3
      OnExit = ed_qtde_prodExit
      OnKeyPress = ed_qtde_prodKeyPress
      IntegersOnly = False
      DisplayFormat = '###,###,##0.000'
    end
  end
  object grid_insumo: TNextGrid
    Left = 0
    Top = 132
    Width = 648
    Height = 254
    Align = alClient
    AppearanceOptions = [aoHighlightSlideCells]
    HideScrollBar = False
    Options = [goGrid, goHeader, goSelectFullRow]
    TabOrder = 2
    TabStop = True
    object NxNumberColumn2: TNxTextColumn
      Alignment = taRightJustify
      DefaultValue = '0'
      DefaultWidth = 61
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'C'#243'digo'
      Header.Alignment = taCenter
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing]
      ParentFont = False
      Position = 0
      SortType = stAlphabetic
      Width = 61
    end
    object NxTextColumn2: TNxTextColumn
      DefaultWidth = 279
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Produto'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 1
      SortType = stAlphabetic
      Width = 279
    end
    object NxNumberColumn3: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 63
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'QT/Un.'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 2
      SortType = stNumeric
      Width = 63
      FormatMask = '###,###,##0.000'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxTextColumn3: TNxTextColumn
      DefaultWidth = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Un.'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 3
      SortType = stAlphabetic
      Width = 21
    end
    object NxNumberColumn1: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Produ'#231#227'o'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 4
      SortType = stNumeric
      FormatMask = '###,###,##0.000'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxTextColumn1: TNxTextColumn
      DefaultWidth = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Un.'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 5
      SortType = stAlphabetic
      Width = 21
    end
    object NxNumberColumn4: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 68
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'QT/Total'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 6
      SortType = stNumeric
      Width = 68
      FormatMask = '###,###,##0.000'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxTextColumn5: TNxTextColumn
      DefaultWidth = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Un.'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 7
      SortType = stAlphabetic
      Width = 21
    end
    object NxNumberColumn5: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'valor'
      ParentFont = False
      Position = 8
      SortType = stNumeric
      Visible = False
      Increment = 1.000000000000000000
      Precision = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 60
    Width = 648
    Height = 72
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Bevel3: TBevel
      Left = 0
      Top = 17
      Width = 648
      Height = 2
      Align = alTop
    end
    object Label3: TLabel
      Left = 8
      Top = 25
      Width = 42
      Height = 13
      Caption = 'Produto:'
    end
    object Label4: TLabel
      Left = 433
      Top = 25
      Width = 25
      Height = 13
      Caption = 'Unid.'
    end
    object Label5: TLabel
      Left = 342
      Top = 25
      Width = 75
      Height = 13
      Caption = 'Qtde. por Unid.'
    end
    object Label7: TLabel
      Left = 481
      Top = 25
      Width = 55
      Height = 13
      Caption = 'Qtde. Total'
    end
    object Label8: TLabel
      Left = 559
      Top = 25
      Width = 25
      Height = 13
      Caption = 'Unid.'
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 648
      Height = 17
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Insumos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object ed_insumo_codigo: TRzButtonEdit
      Left = 8
      Top = 40
      Width = 73
      Height = 21
      TabOrder = 1
      OnKeyPress = ed_insumo_codigoKeyPress
      OnButtonClick = ed_insumo_codigoButtonClick
    end
    object ed_insumo_nome: TRzEdit
      Left = 88
      Top = 40
      Width = 241
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      ReadOnlyColor = clBtnFace
      TabOrder = 2
    end
    object ed_insumo_un: TRzEdit
      Left = 432
      Top = 40
      Width = 25
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      ReadOnlyColor = clBtnFace
      TabOrder = 3
    end
    object ed_insumo_qtde: TRzNumericEdit
      Left = 336
      Top = 40
      Width = 89
      Height = 21
      TabOnEnter = True
      TabOrder = 4
      OnExit = ed_insumo_qtdeExit
      IntegersOnly = False
      DisplayFormat = '###,###,##0.000'
    end
    object bt_insumo_gravar: TButton
      Left = 588
      Top = 37
      Width = 52
      Height = 25
      Caption = 'Gravar'
      TabOrder = 5
      OnClick = bt_insumo_gravarClick
    end
    object ed_insumo_qtde_prod: TRzNumericEdit
      Left = 464
      Top = 40
      Width = 89
      Height = 21
      TabOnEnter = True
      TabOrder = 6
      IntegersOnly = False
      DisplayFormat = '###,###,##0.000'
    end
    object ed_insumo_un2: TRzEdit
      Left = 558
      Top = 40
      Width = 25
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      ReadOnlyColor = clBtnFace
      TabOrder = 7
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 386
    Width = 648
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object BitBtn1: TBitBtn
      Left = 6
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object qrProduto: TIBCQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select * from c000025')
    Left = 64
    Top = 192
  end
  object qrInsumo: TIBCQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select * from c000025')
    Left = 96
    Top = 192
  end
  object query: TIBCQuery
    Connection = frmModulo.conexao
    SQL.Strings = (
      'select * from c000025')
    Left = 128
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 192
    Top = 200
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bt_okClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bt_cancelarClick
    end
  end
end
