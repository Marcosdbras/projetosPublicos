object frmpedido_troco: Tfrmpedido_troco
  Left = 462
  Top = 408
  Width = 256
  Height = 164
  Caption = 'Troco'
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
  object GroupBox1: TGroupBox
    Left = 48
    Top = 24
    Width = 161
    Height = 49
    Caption = 'Troco'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object ltroco: TLabel
      Left = 8
      Top = 14
      Width = 145
      Height = 33
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'R$ 19,00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object BitBtn1: TBitBtn
    Left = 72
    Top = 88
    Width = 105
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
