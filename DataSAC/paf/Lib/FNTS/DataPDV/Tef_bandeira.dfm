object frmTef_Bandeira: TfrmTef_Bandeira
  Left = 599
  Top = 344
  BorderStyle = bsDialog
  Caption = 'TEF - Bandeiras'
  ClientHeight = 145
  ClientWidth = 228
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 125
    Height = 13
    Caption = 'Esolha a Bandeira do TEF:'
  end
  object rb_visanet: TRadioButton
    Tag = 1
    Left = 24
    Top = 34
    Width = 113
    Height = 17
    Caption = 'Visanet'
    Checked = True
    TabOrder = 0
    TabStop = True
    OnKeyPress = rb_visanetKeyPress
  end
  object rb_redecard: TRadioButton
    Tag = 2
    Left = 24
    Top = 50
    Width = 113
    Height = 17
    Caption = 'Redecard'
    TabOrder = 1
    OnKeyPress = rb_visanetKeyPress
  end
  object rb_amex: TRadioButton
    Tag = 3
    Left = 24
    Top = 66
    Width = 113
    Height = 17
    Caption = 'American Express'
    TabOrder = 2
    OnKeyPress = rb_visanetKeyPress
  end
  object rb_tecban: TRadioButton
    Tag = 4
    Left = 24
    Top = 82
    Width = 113
    Height = 17
    Caption = 'TecBan'
    TabOrder = 3
    OnKeyPress = rb_visanetKeyPress
  end
  object rb_hipercard: TRadioButton
    Tag = 5
    Left = 24
    Top = 98
    Width = 113
    Height = 17
    Caption = 'Hipercard'
    TabOrder = 4
    OnKeyPress = rb_visanetKeyPress
  end
  object rb_tribanco: TRadioButton
    Tag = 6
    Left = 24
    Top = 114
    Width = 113
    Height = 17
    Caption = 'Tribanco'
    TabOrder = 5
    OnKeyPress = rb_visanetKeyPress
  end
end
