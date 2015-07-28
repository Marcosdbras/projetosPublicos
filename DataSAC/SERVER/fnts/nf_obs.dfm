object frmnf_obs: Tfrmnf_obs
  Left = 191
  Top = 114
  BorderStyle = bsToolWindow
  Caption = 'Observa'#231#245'es na NF'
  ClientHeight = 94
  ClientWidth = 462
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
  object Edit1: TEdit
    Left = 16
    Top = 8
    Width = 433
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 16
    Top = 32
    Width = 433
    Height = 21
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object Edit3: TEdit
    Left = 16
    Top = 56
    Width = 433
    Height = 21
    TabOrder = 2
    OnKeyPress = Edit3KeyPress
  end
end
