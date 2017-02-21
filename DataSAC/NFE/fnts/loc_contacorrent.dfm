object frmloc_contacorrente: Tfrmloc_contacorrente
  Left = 220
  Top = 167
  BorderStyle = bsToolWindow
  Caption = 'CONTA CORRENTE | Localizar'
  ClientHeight = 297
  ClientWidth = 483
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
    Top = 31
    Width = 483
    Height = 3
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 483
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
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
      Width = 401
      Height = 21
      DataSource = dscontacorrente
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = locChange
      OnKeyPress = locKeyPress
    end
  end
  object DBGrid1: TwwDBGrid
    Left = 0
    Top = 34
    Width = 483
    Height = 245
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'CONTA'#9'15'#9'Conta'#9#9
      'banco'#9'19'#9'Banco'#9#9
      'AGENCIA'#9'6'#9'Ag'#234'ncia'#9#9
      'TITULAR'#9'31'#9'Titular'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dscontacorrente
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    PaintOptions.AlternatingRowColor = 16053492
    PaintOptions.ActiveRecordColor = clBlack
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 279
    Width = 483
    Height = 18
    Panels = <
      item
        Text = 'Siscom 8.3'
        Width = 50
      end>
  end
  object dscontacorrente: TDataSource
    DataSet = frmmodulo.qrcontacorrente
    Left = 216
    Top = 144
  end
end
