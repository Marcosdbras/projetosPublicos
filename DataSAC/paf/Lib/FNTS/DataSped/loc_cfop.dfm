object frmloc_cfop: Tfrmloc_cfop
  Left = 225
  Top = 208
  BorderStyle = bsToolWindow
  Caption = 'CFOP | Localizar'
  ClientHeight = 411
  ClientWidth = 429
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
    Top = 41
    Width = 429
    Height = 2
    Align = alTop
  end
  object DBGRID1: TwwDBGrid
    Left = 0
    Top = 43
    Width = 429
    Height = 350
    Selected.Strings = (
      'CFOP'#9'7'#9'CFOP'
      'NATUREZA'#9'57'#9'NATUREZA DA OPERA'#199#195'O')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dscfop
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    PaintOptions.AlternatingRowColor = 16316664
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 429
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 45
      Height = 13
      Caption = 'Localizar:'
    end
    object loc: TwwIncrementalSearch
      Left = 64
      Top = 8
      Width = 346
      Height = 21
      DataSource = dscfop
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
    Top = 393
    Width = 429
    Height = 18
    Panels = <
      item
        Text = 'Siscom +7'
        Width = 50
      end>
  end
  object dscfop: TDataSource
    DataSet = frmModulo.qrcfop
    Left = 216
    Top = 144
  end
end
