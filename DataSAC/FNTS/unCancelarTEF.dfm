object frmCancelarTEF: TfrmCancelarTEF
  Left = 252
  Top = 190
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Cancelar TEF'
  ClientHeight = 185
  ClientWidth = 231
  Color = 16770995
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label21: TLabel
    Left = 139
    Top = 52
    Width = 50
    Height = 13
    Caption = 'Valor total:'
    ParentShowHint = False
    ShowHint = True
  end
  object Label22: TLabel
    Left = 11
    Top = 95
    Width = 26
    Height = 13
    Caption = 'Data:'
    ParentShowHint = False
    ShowHint = True
  end
  object Label23: TLabel
    Left = 139
    Top = 95
    Width = 26
    Height = 13
    Caption = 'Hora:'
    ParentShowHint = False
    ShowHint = True
  end
  object Label24: TLabel
    Left = 11
    Top = 52
    Width = 80
    Height = 13
    Caption = 'N'#186' da transa'#231#227'o:'
    ParentShowHint = False
    ShowHint = True
  end
  object Label1: TLabel
    Left = 11
    Top = 20
    Width = 29
    Height = 13
    Caption = 'Rede:'
  end
  object edNSUTransacao: TEdit
    Left = 8
    Top = 67
    Width = 121
    Height = 21
    Hint = 'N'#186' da transa'#231#227'o impresso no comprovante'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnKeyPress = cboRedeKeyPress
  end
  object cboRede: TComboBox
    Left = 45
    Top = 16
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 0
    Text = 'AMEX'
    OnKeyPress = cboRedeKeyPress
    Items.Strings = (
      'AMEX'
      'REDECARD'
      'TECBAN'
      'VISANET')
  end
  object eddatatransacao: TMaskEdit
    Left = 8
    Top = 110
    Width = 80
    Height = 21
    EditMask = '!99/99/0000;1; '
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
    OnKeyPress = cboRedeKeyPress
  end
  object edvalortotalc: TRxCalcEdit
    Left = 136
    Top = 66
    Width = 89
    Height = 21
    AutoSize = False
    DisplayFormat = '######0.00'
    ButtonWidth = 0
    NumGlyphs = 2
    TabOrder = 2
    OnKeyPress = cboRedeKeyPress
  end
  object edhoratransacao: TMaskEdit
    Left = 136
    Top = 110
    Width = 55
    Height = 21
    EditMask = '!90:00:00;1; '
    MaxLength = 8
    TabOrder = 4
    Text = '  :  :  '
    OnKeyPress = cboRedeKeyPress
  end
  object BSIM: TButton
    Left = 8
    Top = 144
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 5
    OnClick = bsimClick
  end
  object DXBUTTON1: TButton
    Left = 128
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = dxButton1Click
  end
end
