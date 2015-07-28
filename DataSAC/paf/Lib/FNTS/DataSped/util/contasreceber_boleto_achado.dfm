object frmcontasreceber_boleto_achado: Tfrmcontasreceber_boleto_achado
  Left = 364
  Top = 361
  BorderStyle = bsToolWindow
  Caption = 'Boletos Encontrados'
  ClientHeight = 240
  ClientWidth = 351
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
  object wwDBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 351
    Height = 240
    Align = alClient
    DataSource = dsreceber
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = wwDBGrid1DblClick
    OnKeyPress = wwDBGrid1KeyPress
  end
  object dsreceber: TDataSource
    DataSet = frmcontasreceber.qrcontasreceber
    Left = 184
    Top = 40
  end
end
