object frmacesso: Tfrmacesso
  Left = 288
  Top = 234
  BorderStyle = bsDialog
  Caption = 'Controle de Acesso ao Sistema'
  ClientHeight = 315
  ClientWidth = 322
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 45
    Height = 13
    Caption = 'Cliente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 72
    Top = 16
    Width = 211
    Height = 13
    Caption = '010041 | Micromarc Inform'#225'tica'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 48
    Width = 297
    Height = 41
    TabOrder = 0
    object LSENHA: TEdit
      Left = 4
      Top = 15
      Width = 285
      Height = 20
      BorderStyle = bsNone
      Color = clBtnFace
      Font.Charset = OEM_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Terminal'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'CNPJ DO CLIENTE'
      OnExit = LSENHAExit
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 144
    Width = 297
    Height = 41
    Caption = 'Senha de Ativa'#231#227'o'
    TabOrder = 1
    object ESENHA: TEdit
      Left = 4
      Top = 15
      Width = 285
      Height = 20
      BorderStyle = bsNone
      Color = clBtnFace
      Font.Charset = OEM_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Terminal'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 208
    Width = 113
    Height = 25
    Caption = 'Liberar'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 136
    Top = 208
    Width = 113
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
  end
  object PFUNCAO: TFlatPanel
    Left = 8
    Top = 256
    Width = 305
    Height = 17
    Caption = 'REGISTRAR SISTEMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    Color = 10703892
    ColorHighLight = clWhite
    ColorShadow = clWhite
    TabOrder = 4
    UseDockManager = True
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 96
    Width = 297
    Height = 41
    Caption = 'Contra-Senha'
    Enabled = False
    TabOrder = 5
    object lcontrasenha: TLabel
      Left = 2
      Top = 15
      Width = 293
      Height = 24
      Align = alClient
      Alignment = taCenter
      Caption = 'xxxxxxxxxxxxxxxxxxxxxxxx'
      Font.Charset = OEM_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Terminal'
      Font.Style = []
      ParentFont = False
    end
  end
end
