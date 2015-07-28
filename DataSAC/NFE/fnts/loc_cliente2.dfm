object frmloc_cliente2: Tfrmloc_cliente2
  Left = 336
  Top = 164
  Width = 370
  Height = 278
  Caption = 'Registros Encontrados'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 362
    Height = 244
    Selected.Strings = (
      'CODIGO'#9'7'#9'C'#211'DIGO'
      'NOME'#9'38'#9'NOME')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = frmloc_conhecimento.dsquery1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnKeyPress = wwDBGrid1KeyPress
    PaintOptions.AlternatingRowColor = 15987699
    PaintOptions.ActiveRecordColor = clRed
  end
end
