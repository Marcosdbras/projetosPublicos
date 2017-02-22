object frmprevenda_cliente: Tfrmprevenda_cliente
  Left = 533
  Top = 388
  BorderStyle = bsDialog
  Caption = 'Identifica'#231#227'o do Cliente'
  ClientHeight = 180
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 11
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 10
    Top = 35
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Label3: TLabel
    Left = 10
    Top = 59
    Width = 32
    Height = 13
    Caption = 'Bairro:'
  end
  object Label4: TLabel
    Left = 10
    Top = 83
    Width = 37
    Height = 13
    Caption = 'Cidade:'
  end
  object Label5: TLabel
    Left = 10
    Top = 107
    Width = 23
    Height = 13
    Caption = 'CPF:'
  end
  object Label6: TLabel
    Left = 368
    Top = 83
    Width = 17
    Height = 13
    Caption = 'UF:'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 137
    Width = 434
    Height = 2
    Align = alBottom
  end
  object ed_nome: TEdit
    Left = 64
    Top = 8
    Width = 353
    Height = 21
    TabOrder = 0
    OnKeyPress = ed_nomeKeyPress
  end
  object ed_endereco: TEdit
    Left = 64
    Top = 32
    Width = 353
    Height = 21
    TabOrder = 1
    OnKeyPress = ed_nomeKeyPress
  end
  object ed_bairro: TEdit
    Left = 64
    Top = 56
    Width = 353
    Height = 21
    TabOrder = 2
    OnKeyPress = ed_nomeKeyPress
  end
  object ed_cidade: TEdit
    Left = 64
    Top = 80
    Width = 297
    Height = 21
    TabOrder = 3
    OnKeyPress = ed_nomeKeyPress
  end
  object ed_cpf: TEdit
    Left = 64
    Top = 104
    Width = 353
    Height = 21
    TabOrder = 5
    OnKeyPress = ed_nomeKeyPress
  end
  object ed_uf: TEdit
    Left = 392
    Top = 80
    Width = 25
    Height = 21
    TabOrder = 4
    OnKeyPress = ed_nomeKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 139
    Width = 434
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 6
    object Button1: TButton
      Left = 152
      Top = 8
      Width = 129
      Height = 25
      Caption = 'Ok'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
end
