object frmcalendario: Tfrmcalendario
  Left = 55
  Top = 195
  BorderStyle = bsToolWindow
  Caption = 'Calend'#225'rio'
  ClientHeight = 159
  ClientWidth = 586
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MonthCalendar1: TMonthCalendar
    Left = 0
    Top = 0
    Width = 586
    Height = 159
    Align = alClient
    Date = 38629.843654872680000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object PopupMenu1: TPopupMenu
    Left = 424
    Top = 72
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
end
