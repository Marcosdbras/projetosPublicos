object frmconfig_balanca: Tfrmconfig_balanca
  Left = 606
  Top = 358
  BorderStyle = bsDialog
  Caption = 'Balan'#231'a'
  ClientHeight = 300
  ClientWidth = 237
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox6: TGroupBox
    Left = 13
    Top = 10
    Width = 212
    Height = 242
    Caption = 'Balan'#231'a PDV'
    TabOrder = 0
    object Label27: TLabel
      Left = 58
      Top = 55
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Porta:'
    end
    object Label28: TLabel
      Left = 8
      Top = 30
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Modelo:'
    end
    object Label29: TLabel
      Left = 8
      Top = 106
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BaudRate:'
    end
    object Label30: TLabel
      Left = 8
      Top = 81
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DataBits:'
    end
    object Label37: TLabel
      Left = 8
      Top = 130
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Handshaking:'
    end
    object Label38: TLabel
      Left = 8
      Top = 156
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'StopBits:'
    end
    object Label39: TLabel
      Left = 8
      Top = 206
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Time-Out:'
    end
    object Label40: TLabel
      Left = 8
      Top = 180
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Parity:'
    end
    object cb_bal_porta: TComboBox
      Left = 94
      Top = 53
      Width = 100
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'COM1'
      Items.Strings = (
        'COM1'
        'COM2'
        'COM3'
        'COM4'
        'COM5'
        'COM6'
        'COM7'
        'COM8'
        'COM9')
    end
    object cb_bal_modelo: TComboBox
      Left = 94
      Top = 28
      Width = 100
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'Nenhuma'
      Items.Strings = (
        'Nenhuma'
        'Filizola'
        'Toledo')
    end
    object cb_bal_baudrate: TComboBox
      Left = 94
      Top = 103
      Width = 100
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 6
      TabOrder = 2
      Text = '9600'
      Items.Strings = (
        '110'
        '300'
        '600'
        '1200'
        '2400'
        '4800'
        '9600'
        '14400'
        '19200'
        '38400'
        '56000'
        '57600')
    end
    object cb_bal_databits: TComboBox
      Left = 94
      Top = 78
      Width = 100
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 3
      Text = '8'
      Items.Strings = (
        '5'
        '6'
        '7'
        '8')
    end
    object cb_bal_hand: TComboBox
      Left = 94
      Top = 128
      Width = 100
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      Text = 'Nenhum'
      Items.Strings = (
        'Nenhum'
        'XON/XOFF'
        'RTS/CTS'
        'DTR/DSR')
    end
    object cb_bal_stop: TComboBox
      Left = 94
      Top = 153
      Width = 100
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 's1'
      Items.Strings = (
        's1'
        's1,5'
        's2')
    end
    object cb_bal_time_out: TEdit
      Left = 94
      Top = 203
      Width = 100
      Height = 21
      TabOrder = 6
      Text = '5000'
    end
    object cb_parity: TComboBox
      Left = 94
      Top = 178
      Width = 100
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 7
      Text = 'pNone'
      Items.Strings = (
        'pEven'
        'pMark'
        'pNone'
        'pOdd'
        'pSpace')
    end
  end
  object BitBtn1: TBitBtn
    Left = 13
    Top = 264
    Width = 100
    Height = 25
    Caption = 'Gravar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 125
    Top = 264
    Width = 100
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
