object frmPrevenda_conciliar: TfrmPrevenda_conciliar
  Left = 222
  Top = 398
  BorderStyle = bsDialog
  Caption = 'Pre-Venda - Concilia'#231#227'o'
  ClientHeight = 348
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 316
    Width = 605
    Height = 2
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 605
    Height = 17
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Cliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object grid_cliente: TNextGrid
    Left = 0
    Top = 17
    Width = 605
    Height = 73
    Align = alTop
    AppearanceOptions = [aoHighlightSlideCells]
    HideScrollBar = False
    Options = [goGrid, goHeader, goSelectFullRow]
    TabOrder = 1
    TabStop = True
    OnAfterEdit = grid_clienteAfterEdit
    object NxCheckBoxColumn1: TNxCheckBoxColumn
      Alignment = taCenter
      DefaultWidth = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'S'
      Header.Alignment = taCenter
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
      ParentFont = False
      Position = 0
      SortType = stBoolean
      Width = 25
    end
    object NxNumberColumn1: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 69
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'C'#243'digo'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 1
      SortType = stNumeric
      Width = 69
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxTextColumn1: TNxTextColumn
      DefaultWidth = 491
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Nome do Cliente'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 2
      SortType = stAlphabetic
      Width = 491
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 90
    Width = 605
    Height = 17
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Produtos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object grid_produto: TNextGrid
    Left = 0
    Top = 107
    Width = 605
    Height = 178
    Align = alClient
    AppearanceOptions = [aoHighlightSlideCells]
    HideScrollBar = False
    Options = [goGrid, goHeader]
    TabOrder = 3
    TabStop = True
    OnAfterEdit = grid_produtoAfterEdit
    object NxCheckBoxColumn2: TNxCheckBoxColumn
      Alignment = taCenter
      DefaultWidth = 25
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'S'
      Header.Alignment = taCenter
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
      ParentFont = False
      Position = 0
      SortType = stBoolean
      Width = 25
    end
    object NxNumberColumn2: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 69
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'C'#243'digo'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 1
      SortType = stNumeric
      Width = 69
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxTextColumn2: TNxTextColumn
      DefaultWidth = 230
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Produto'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 2
      SortType = stAlphabetic
      Width = 230
    end
    object NxNumberColumn3: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 65
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Qtde.'
      Header.Alignment = taCenter
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
      Position = 3
      SortType = stNumeric
      Width = 65
      FormatMask = '###,###,##0.000'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxNumberColumn4: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 65
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Unit'#225'rio'
      Header.Alignment = taCenter
      Position = 4
      SortType = stNumeric
      Width = 65
      FormatMask = '###,###,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxNumberColumn5: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 65
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Desconto'
      Header.Alignment = taCenter
      Position = 5
      SortType = stNumeric
      Width = 65
      FormatMask = '###,###,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxNumberColumn6: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 65
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Total'
      Header.Alignment = taCenter
      Position = 6
      SortType = stNumeric
      Width = 65
      FormatMask = '###,###,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxNumberColumn7: TNxTextColumn
      Alignment = taRightJustify
      DefaultValue = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'cod_vendedor'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing]
      Position = 7
      SortType = stAlphabetic
      Visible = False
    end
    object NxTextColumn3: TNxTextColumn
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Unidade'
      Position = 8
      SortType = stAlphabetic
      Visible = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 285
    Width = 605
    Height = 31
    Align = alBottom
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 4
    object Label1: TLabel
      Left = 10
      Top = 7
      Width = 128
      Height = 13
      Caption = 'Produtos Selecionados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 352
      Top = 8
      Width = 28
      Height = 13
      Caption = 'Qtde:'
    end
    object Label3: TLabel
      Left = 472
      Top = 8
      Width = 28
      Height = 13
      Caption = 'Total:'
    end
    object ed_total: TRzNumericEdit
      Left = 512
      Top = 5
      Width = 73
      Height = 21
      TabOrder = 0
      IntegersOnly = False
      DisplayFormat = '###,###,##0.00'
    end
    object ed_qtde: TRzNumericEdit
      Left = 384
      Top = 5
      Width = 41
      Height = 21
      TabOrder = 1
      IntegersOnly = False
      DisplayFormat = ',0;(,0)'
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 318
    Width = 605
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 5
    object bt_ok: TButton
      Left = 225
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 0
      OnClick = bt_okClick
    end
    object bt_cancelar: TButton
      Left = 305
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = bt_cancelarClick
    end
  end
end
