object frmloc_veiculo: Tfrmloc_veiculo
  Left = 217
  Top = 165
  BorderStyle = bsToolWindow
  Caption = 'Localizar Ve'#237'culo'
  ClientHeight = 309
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
    Top = 37
    Width = 353
    Height = 3
    Align = alTop
  end
  object DBGRID1: TwwDBGrid
    Left = 0
    Top = 40
    Width = 353
    Height = 251
    Selected.Strings = (
      'CODIGO'#9'7'#9'C'#211'DIGO'
      'NOME'#9'29'#9'VE'#205'CULO'
      'PLACA'#9'14'#9'PLACA')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsveiculo
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
    PaintOptions.AlternatingRowColor = 14671839
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 353
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 45
      Height = 13
      Caption = 'Localizar:'
    end
    object loc: TwwIncrementalSearch
      Left = 72
      Top = 7
      Width = 265
      Height = 21
      DataSource = dsveiculo
      SearchField = 'nome'
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
    Top = 291
    Width = 353
    Height = 18
    Panels = <
      item
        Text = 'Siscom +7'
        Width = 50
      end>
  end
  object dsveiculo: TDataSource
    DataSet = frmmodulo.qrveiculo
    Left = 216
    Top = 144
  end
end
