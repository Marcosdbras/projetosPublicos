object frmloc_banco: Tfrmloc_banco
  Left = 593
  Top = 469
  Width = 361
  Height = 364
  Caption = 'Localizar Banco'
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
    Top = 30
    Width = 345
    Height = 2
    Align = alTop
  end
  object DBGRID1: TwwDBGrid
    Left = 0
    Top = 32
    Width = 345
    Height = 296
    Selected.Strings = (
      'NUMERO'#9'7'#9'NUMERO'
      'BANCO'#9'43'#9'BANCO')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsbanco
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
    PaintOptions.AlternatingRowColor = 14671839
    PaintOptions.ActiveRecordColor = clBlack
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 345
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
      Left = 72
      Top = 4
      Width = 265
      Height = 21
      DataSource = dsbanco
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
  end
  object dsbanco: TDataSource
    DataSet = qrbanco
    Left = 216
    Top = 144
  end
  object qrbanco: TIBCQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select * from c000013 order by banco')
    Left = 192
    Top = 72
  end
end
