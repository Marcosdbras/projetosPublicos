object frmlocvendedor: Tfrmlocvendedor
  Left = 288
  Top = 362
  BorderStyle = bsDialog
  Caption = 'Localizar Vendedor'
  ClientHeight = 231
  ClientWidth = 433
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 37
    Width = 433
    Height = 2
    Align = alTop
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 433
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lpesquisa: TLabel
      Left = 8
      Top = 11
      Width = 57
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Nome:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object loc: TEdit
      Left = 72
      Top = 8
      Width = 347
      Height = 21
      TabOrder = 0
      OnKeyPress = LOCKeyPress
    end
  end
  object grid: TwwDBGrid
    Left = 0
    Top = 39
    Width = 433
    Height = 192
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'CODIGO'#9'8'#9'C'#243'digo'
      'NOME'#9'47'#9'Nome')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsvendedor
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
    OnDblClick = gridDblClick
    OnKeyPress = gridKeyPress
  end
  object dsvendedor: TDataSource
    DataSet = frmmodulo.qrfunci
    Left = 280
    Top = 192
  end
end
