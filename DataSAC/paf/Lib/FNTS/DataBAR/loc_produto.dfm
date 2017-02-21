object frmLoc_produto: TfrmLoc_produto
  Left = 376
  Top = 317
  Width = 601
  Height = 367
  Caption = 'Localiza'#231#227'o de Produtos'
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
    Top = 41
    Width = 593
    Height = 2
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 593
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 45
      Height = 13
      Caption = 'Localizar:'
    end
    object cb_loc: TComboBox
      Left = 64
      Top = 8
      Width = 97
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Nome'
      Items.Strings = (
        'Nome'
        'C'#243'digo'
        'C'#243'd.Barras')
    end
    object ed_loc: TEdit
      Left = 168
      Top = 8
      Width = 409
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnKeyPress = ed_locKeyPress
    end
  end
  object grid: TNextGrid
    Left = 0
    Top = 43
    Width = 593
    Height = 290
    Align = alClient
    AppearanceOptions = [aoHighlightSlideCells]
    HideScrollBar = False
    Options = [goGrid, goHeader, goSelectFullRow]
    TabOrder = 1
    TabStop = True
    OnKeyPress = gridKeyPress
    object NxTextColumn1: TNxTextColumn
      DefaultWidth = 46
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'C'#243'digo'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 0
      SortType = stAlphabetic
      Width = 46
    end
    object NxTextColumn2: TNxTextColumn
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'C'#243'd.Barra'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 1
      SortType = stAlphabetic
    end
    object NxTextColumn3: TNxTextColumn
      DefaultWidth = 320
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
      Width = 320
    end
    object NxTextColumn4: TNxTextColumn
      DefaultWidth = 47
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Unidade'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 3
      SortType = stAlphabetic
      Width = 47
    end
    object NxNumberColumn1: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 73
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
      Width = 73
      FormatMask = '###,###,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
  end
  object query: TIBCQuery
    Left = 352
    Top = 176
  end
end
