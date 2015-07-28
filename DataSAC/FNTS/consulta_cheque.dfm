object frmconsulta_cheque: Tfrmconsulta_cheque
  Left = 220
  Top = 368
  BorderStyle = bsDialog
  Caption = 'Siscom +7 | Consulta Cheque'
  ClientHeight = 189
  ClientWidth = 283
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 32
    Top = 32
    Width = 217
    Height = 81
    Caption = 'Op'#231#245'es de Consulta'
    TabOrder = 0
    object RadioButton1: TRadioButton
      Left = 16
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Redecard / Serasa'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnKeyPress = RadioButton1KeyPress
    end
    object RadioButton2: TRadioButton
      Left = 16
      Top = 48
      Width = 177
      Height = 17
      Caption = 'Tecban (Banco 24H)'
      TabOrder = 1
      OnKeyPress = RadioButton2KeyPress
    end
  end
  object BitBtn1: TBitBtn
    Left = 32
    Top = 120
    Width = 97
    Height = 25
    Caption = 'Ok'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 152
    Top = 120
    Width = 97
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
