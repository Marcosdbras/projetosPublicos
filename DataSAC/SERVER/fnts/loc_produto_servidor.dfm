object frmLoc_Produto_Servidor: TfrmLoc_Produto_Servidor
  Left = 463
  Top = 266
  BorderStyle = bsDialog
  Caption = 'Localizar produto'
  ClientHeight = 402
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 36
    Width = 592
    Height = 2
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 36
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 11
      Width = 45
      Height = 13
      Caption = 'Localizar:'
    end
    object cb_localizar: TRzComboBox
      Left = 64
      Top = 8
      Width = 105
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Text = 'PRODUTO'
      Items.Strings = (
        'PRODUTO'
        'C'#211'DIGO'
        'COD.BARRAS')
      ItemIndex = 0
    end
    object ed_localizar: TRzEdit
      Left = 176
      Top = 8
      Width = 401
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = ed_localizarKeyPress
    end
  end
  object grid_produto: TNextGrid
    Left = 0
    Top = 38
    Width = 592
    Height = 364
    Align = alClient
    AppearanceOptions = [aoHighlightSlideCells]
    HideScrollBar = False
    Options = [goGrid, goHeader, goSelectFullRow]
    TabOrder = 1
    TabStop = True
    OnKeyPress = grid_produtoKeyPress
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
      DefaultWidth = 347
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
      Width = 347
    end
    object NxTextColumn3: TNxTextColumn
      DefaultWidth = 30
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Un.'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 2
      SortType = stAlphabetic
      Width = 30
    end
    object NxNumberColumn3: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 63
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Estoque'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 3
      SortType = stNumeric
      Width = 63
      FormatMask = '###,###,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxNumberColumn1: TNxNumberColumn
      Alignment = taCenter
      DefaultValue = '0'
      DefaultWidth = 71
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Pre'#231'o'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 4
      SortType = stNumeric
      Width = 71
      FormatMask = '###,###,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
  end
  object qrProduto: TIBCQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select * from c000025')
    Left = 96
    Top = 192
  end
end
