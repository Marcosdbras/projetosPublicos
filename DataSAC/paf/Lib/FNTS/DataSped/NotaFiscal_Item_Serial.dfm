object frmNotaFiscal_Item_Serial: TfrmNotaFiscal_Item_Serial
  Left = 671
  Top = 313
  BorderStyle = bsToolWindow
  Caption = ' Seriais Dispon'#237'veis'
  ClientHeight = 323
  ClientWidth = 334
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 334
    Height = 323
    Selected.Strings = (
      'SERIAL'#9'30'#9'N'#186' de S'#233'rie')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    ShowVertScrollBar = False
    Align = alClient
    BorderStyle = bsNone
    Color = clBtnFace
    DataSource = dserial
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    Options = [dgColumnResize, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    RowHeightPercent = 105
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    LineColors.DataColor = clBtnFace
    LineColors.HighlightColor = clBtnFace
    LineColors.ShadowColor = clBtnFace
    LineColors.FixedColor = clBtnFace
    OnDblClick = wwDBGrid1DblClick
    OnKeyPress = wwDBGrid1KeyPress
  end
  object dserial: TIBCDataSource
    DataSet = frmNotaFiscal_Item2.qrserial
    Left = 104
    Top = 144
  end
end
