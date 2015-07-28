object frmcheque_conta: Tfrmcheque_conta
  Left = 235
  Top = 191
  BorderStyle = bsToolWindow
  Caption = 'CHEQUE | Conta Corrente do Cliente'
  ClientHeight = 144
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 7
    Width = 481
    Height = 129
    Selected.Strings = (
      'CONTA'#9'11'#9'CONTA'
      'CODBANCO'#9'6'#9'BANCO'
      'BANCO'#9'21'#9'BANCO'
      'AGENCIA'#9'10'#9'AGENCIA'
      'DATA_CONTA'#9'12'#9'ABERTURA')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsconta_cliente
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -9
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
    OnKeyPress = wwDBGrid1KeyPress
    PaintOptions.AlternatingRowColor = 15265520
    PaintOptions.ActiveRecordColor = clBlack
  end
  object dsconta_cliente: TDataSource
    DataSet = frmcheque_avulso.qrconta_cliente
    Left = 16
    Top = 104
  end
end
