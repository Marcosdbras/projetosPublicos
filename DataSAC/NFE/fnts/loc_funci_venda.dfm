object frmloc_funci_venda: Tfrmloc_funci_venda
  Left = 496
  Top = 283
  BorderStyle = bsToolWindow
  Caption = 'FUNCION'#193'RIO | Localizar...'
  ClientHeight = 347
  ClientWidth = 417
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
    Top = 30
    Width = 417
    Height = 3
    Align = alTop
  end
  object dbgrid1: TwwDBGrid
    Left = 0
    Top = 33
    Width = 417
    Height = 296
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'CODIGO'#9'7'#9'C'#243'digo'#9#9
      'NOME'#9'54'#9'Nome'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsfunci
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 45
      Height = 13
      Caption = 'Localizar:'
    end
    object loc: TwwIncrementalSearch
      Left = 64
      Top = 4
      Width = 337
      Height = 21
      DataSource = dsfunci
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 329
    Width = 417
    Height = 18
    Panels = <
      item
        Text = 'Siscom 8.3'
        Width = 50
      end>
  end
  object dsfunci: TDataSource
    DataSet = frmvenda_inicio.qrfunci
    Left = 216
    Top = 144
  end
end
