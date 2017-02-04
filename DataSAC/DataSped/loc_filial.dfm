object frmloc_filial: Tfrmloc_filial
  Left = 411
  Top = 343
  BorderStyle = bsToolWindow
  Caption = 'Localizar Filial'
  ClientHeight = 277
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 353
    Height = 277
    Selected.Strings = (
      'CODIGO'#9'7'#9'C'#243'digo'
      'FILIAL'#9'37'#9'Nome da Empresa')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsfilial
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
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
    PaintOptions.AlternatingRowColor = 16316664
    PaintOptions.ActiveRecordColor = clBlack
  end
  object dsfilial: TDataSource
    DataSet = frmModulo.qrfilial
    Left = 216
    Top = 144
  end
end
