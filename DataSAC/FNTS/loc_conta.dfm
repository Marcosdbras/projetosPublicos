object frmloc_conta: Tfrmloc_conta
  Left = 220
  Top = 167
  Width = 361
  Height = 404
  Caption = 'Localizar Plano de Contas'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ViewSplit1: TViewSplit
    Left = 0
    Top = 33
    Width = 353
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object FlipPanel1: TFlipPanel
    Left = 0
    Top = 0
    Width = 353
    Height = 33
    Align = alTop
    BorderStyle = bsSingle
    ParentColor = False
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 55
      Height = 13
      Caption = 'Localizar:'
    end
    object loc: TwwIncrementalSearch
      Left = 72
      Top = 4
      Width = 265
      Height = 21
      DataSource = dsbanco
      TabOrder = 0
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
  end
  object DBGRID1: TwwDBGrid
    Left = 0
    Top = 36
    Width = 353
    Height = 334
    Selected.Strings = (
      'CODIGO'#9'7'#9'C'#211'DIGO'
      'CONTA'#9'37'#9'CONTA')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsbanco
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    PaintOptions.AlternatingRowColor = 14671839
    PaintOptions.ActiveRecordColor = clRed
  end
  object dsbanco: TDataSource
    Left = 216
    Top = 144
  end
end
