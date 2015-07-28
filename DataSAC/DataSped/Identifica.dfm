object frmIdentifica: TfrmIdentifica
  Left = 371
  Top = 376
  BorderStyle = bsDialog
  Caption = 'Identifica'#231#227'o do Consumidor'
  ClientHeight = 116
  ClientWidth = 401
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 12
    Width = 52
    Height = 13
    Caption = 'CPF/CNPJ:'
  end
  object Label2: TLabel
    Left = 8
    Top = 36
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 8
    Top = 60
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 84
    Width = 401
    Height = 2
    Align = alBottom
  end
  object ed_cpf: TEdit
    Left = 72
    Top = 8
    Width = 177
    Height = 21
    TabOrder = 0
    OnExit = ed_cpfExit
    OnKeyPress = ed_cpfKeyPress
  end
  object ed_nome: TEdit
    Left = 72
    Top = 32
    Width = 321
    Height = 21
    TabOrder = 1
    OnExit = ed_nomeExit
    OnKeyPress = ed_nomeKeyPress
  end
  object ed_endereco: TEdit
    Left = 72
    Top = 56
    Width = 321
    Height = 21
    TabOrder = 2
    OnKeyPress = ed_enderecoKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 86
    Width = 401
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object bt_ok: TButton
      Left = 123
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 0
      OnClick = bt_okClick
    end
    object bt_cancelar: TButton
      Left = 203
      Top = 2
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = bt_cancelarClick
    end
  end
end
