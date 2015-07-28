object frmloc_grupo_servico: Tfrmloc_grupo_servico
  Left = 217
  Top = 165
  BorderStyle = bsToolWindow
  Caption = 'SERVI'#199'OS | Localizar Grupo'
  ClientHeight = 277
  ClientWidth = 353
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
    Width = 353
    Height = 3
    Align = alTop
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 259
    Width = 353
    Height = 18
    Panels = <
      item
        Text = 'Siscom 8.3'
        Width = 50
      end>
  end
  object DBGRID1: TwwDBGrid
    Left = 0
    Top = 33
    Width = 353
    Height = 226
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'CODIGO'#9'7'#9'C'#243'digo'#9#9
      'GRUPO'#9'44'#9'Grupo'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsgrupo_servico
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
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
    Width = 353
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 45
      Height = 13
      Caption = 'Localizar:'
    end
    object loc: TwwIncrementalSearch
      Left = 72
      Top = 4
      Width = 273
      Height = 21
      DataSource = dsgrupo_servico
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = locChange
      OnKeyPress = locKeyPress
    end
  end
  object dsgrupo_servico: TDataSource
    DataSet = frmmodulo.qrgrupo_servico
    Left = 216
    Top = 144
  end
end
