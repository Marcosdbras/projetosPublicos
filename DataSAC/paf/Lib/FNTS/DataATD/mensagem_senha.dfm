object frmmensagem_senha: Tfrmmensagem_senha
  Left = 434
  Top = 381
  BorderStyle = bsDialog
  Caption = 'M'#243'dulo de Acesso'
  ClientHeight = 134
  ClientWidth = 256
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 39
    Top = 43
    Width = 40
    Height = 13
    Caption = 'Usu'#225'rio:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 39
    Top = 64
    Width = 34
    Height = 13
    Caption = 'Senha:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Bevel2: TBevel
    Left = 0
    Top = 15
    Width = 256
    Height = 2
    Align = alTop
  end
  object Bevel1: TBevel
    Left = 0
    Top = 96
    Width = 256
    Height = 2
    Align = alBottom
  end
  object edit2: TEdit
    Left = 96
    Top = 58
    Width = 124
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    OnKeyPress = edit2KeyPress
  end
  object combobox1: TComboBox
    Left = 96
    Top = 34
    Width = 124
    Height = 21
    CharCase = ecUpperCase
    ItemHeight = 13
    TabOrder = 0
    OnExit = combobox1Exit
    OnKeyPress = combobox1KeyPress
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 256
    Height = 15
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object lfuncao: TLabel
      Left = 0
      Top = 0
      Width = 256
      Height = 15
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = '001 - Entrada no Sistema'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 98
    Width = 256
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object bsim: TBitBtn
      Left = 29
      Top = 5
      Width = 100
      Height = 25
      Caption = 'Sim'
      TabOrder = 0
      OnClick = bsimClick
    end
    object bok: TBitBtn
      Left = 82
      Top = 5
      Width = 97
      Height = 25
      Caption = 'OK'
      TabOrder = 1
      OnClick = bokClick
    end
    object bnao: TBitBtn
      Left = 133
      Top = 5
      Width = 97
      Height = 25
      Caption = 'N'#227'o'
      TabOrder = 2
      OnClick = bnaoClick
    end
  end
  object DataSource1: TDataSource
    Left = 8
    Top = 88
  end
end
