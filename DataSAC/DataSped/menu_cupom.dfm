object frmCupom_Menu: TfrmCupom_Menu
  Left = 368
  Top = 160
  Width = 459
  Height = 444
  Caption = 'Cupons Fiscais'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pop_fechamento
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 29
    Width = 451
    Height = 2
    Align = alTop
  end
  object Bevel2: TBevel
    Left = 0
    Top = 356
    Width = 451
    Height = 2
    Align = alBottom
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 451
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 7
      Width = 27
      Height = 13
      Caption = 'Data:'
    end
    object Label2: TLabel
      Left = 136
      Top = 7
      Width = 23
      Height = 13
      Caption = 'ECF:'
    end
    object ed_data: TDateEdit
      Left = 40
      Top = 4
      Width = 89
      Height = 21
      ButtonWidth = 0
      NumGlyphs = 2
      TabOrder = 0
    end
    object ed_ecf: TEdit
      Left = 168
      Top = 4
      Width = 265
      Height = 21
      TabOrder = 1
      Text = 'ed_ecf'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 358
    Width = 451
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 6
      Top = 3
      Width = 75
      Height = 25
      Caption = 'F2 &Visualizar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object bt_fechar: TBitBtn
      Left = 363
      Top = 3
      Width = 75
      Height = 25
      Caption = 'ESC &Fechar'
      TabOrder = 1
      OnClick = bt_fecharClick
    end
  end
  object grid_cupom: TNextGrid
    Left = 0
    Top = 31
    Width = 451
    Height = 325
    Align = alClient
    BorderStyle = bsNone
    EnableVisualStyles = False
    HideScrollBar = False
    Options = [goGrid, goHeader, goSelectFullRow]
    TabOrder = 2
    TabStop = True
    OnCellFormating = grid_cupomCellFormating
    object NxTextColumn1: TNxTextColumn
      DefaultWidth = 65
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'N'#250'mero'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 0
      SortType = stAlphabetic
      Width = 65
    end
    object NxTextColumn4: TNxTextColumn
      DefaultWidth = 53
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Hora'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 1
      SortType = stAlphabetic
      Width = 53
    end
    object NxTextColumn2: TNxTextColumn
      DefaultWidth = 226
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Consumidor'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 2
      SortType = stAlphabetic
      Width = 226
    end
    object NxNumberColumn1: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Valor-R$'
      Header.Alignment = taCenter
      ParentFont = False
      Position = 3
      SortType = stNumeric
      FormatMask = '###,###,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxTextColumn3: TNxTextColumn
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'C'#243'digo'
      ParentFont = False
      Position = 4
      SortType = stAlphabetic
      Visible = False
    end
    object NxNumberColumn2: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Header.Caption = 'Cancelado'
      ParentFont = False
      Position = 5
      SortType = stNumeric
      Visible = False
      Increment = 1.000000000000000000
      Precision = 0
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 391
    Width = 451
    Height = 19
    Panels = <
      item
        Text = 'F8 - Menu Fiscal'
        Width = 50
      end>
  end
  object query: TIBCQuery
    Connection = frmModulo.conexao
    Left = 12
    Top = 264
  end
  object pop_fechamento: TAdvPopupMenu
    MenuStyler = frmModulo.estilo_menu
    Version = '2.5.0.1'
    Left = 40
    Top = 192
    object MenuFiscal1: TMenuItem
      Caption = 'Menu Fiscal'
      ShortCut = 119
      OnClick = MenuFiscal1Click
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bt_fecharClick
    end
    object Visualizar1: TMenuItem
      Caption = 'Visualizar'
      ShortCut = 113
      OnClick = BitBtn1Click
    end
  end
  object qrcupom: TIBCQuery
    Connection = frmModulo.conexao
    Left = 60
    Top = 264
  end
end
