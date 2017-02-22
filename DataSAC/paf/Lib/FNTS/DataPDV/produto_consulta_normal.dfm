object frmProduto_consulta_normal: TfrmProduto_consulta_normal
  Left = 435
  Top = 507
  BorderStyle = bsDialog
  Caption = 'Localizar Produto'
  ClientHeight = 276
  ClientWidth = 575
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop_principal
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grid: TNextGrid
    Left = 0
    Top = 34
    Width = 575
    Height = 223
    Align = alClient
    AppearanceOptions = [aoHighlightSlideCells]
    EnableVisualStyles = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GridLinesStyle = lsFramed
    HideScrollBar = False
    Options = [goGrid, goHeader, goSelectFullRow]
    ParentFont = False
    TabOrder = 0
    TabStop = True
    OnDblClick = gridDblClick
    OnKeyPress = gridKeyPress
    object NxNumberColumn1: TNxNumberColumn
      DefaultValue = '0'
      DefaultWidth = 49
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      Header.Caption = 'C'#243'digo'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 0
      SortType = stNumeric
      Width = 49
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxTextColumn2: TNxTextColumn
      DefaultWidth = 96
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      Header.Caption = 'C'#243'digo de Barras'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 1
      SortType = stAlphabetic
      Width = 96
    end
    object NxTextColumn1: TNxTextColumn
      DefaultWidth = 296
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      Header.Caption = 'Produto'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 2
      SortType = stAlphabetic
      Width = 296
    end
    object NxTextColumn3: TNxTextColumn
      DefaultWidth = 35
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      Header.Caption = 'Un.'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 3
      SortType = stAlphabetic
      Width = 35
    end
    object NxNumberColumn3: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      Header.Caption = 'Pre'#231'o'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 4
      SortType = stNumeric
      FormatMask = '###,###,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 575
    Height = 34
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 42
      Height = 13
      Caption = 'Produto:'
    end
    object ed_barra: TRzEdit
      Left = 55
      Top = 6
      Width = 514
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FrameStyle = fsNone
      FramingPreference = fpCustomFraming
      ParentFont = False
      TabOrder = 0
      OnKeyPress = ed_barraKeyPress
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 257
    Width = 575
    Height = 19
    Panels = <
      item
        Text = 'F8 - Menu Fiscal'
        Width = 50
      end>
  end
  object query: TIBCQuery
    Connection = frmModulo.conexao
    Left = 40
    Top = 104
  end
  object pop_principal: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.5.0.1'
    Left = 8
    Top = 104
    object MenuFiscal2: TMenuItem
      Caption = 'Menu Fiscal'
      ShortCut = 119
      OnClick = MenuFiscal2Click
    end
  end
end
