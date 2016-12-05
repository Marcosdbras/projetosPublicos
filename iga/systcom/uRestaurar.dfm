object frmRestaurar: TfrmRestaurar
  Left = 236
  Top = 225
  Width = 585
  Height = 327
  Caption = 'Restaurar'
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 24
  object Label1: TLabel
    Left = 24
    Top = 112
    Width = 133
    Height = 24
    Caption = 'Arquivo Backup'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 155
    Width = 113
    Height = 24
    Caption = 'Pasta Destino'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 72
    Width = 143
    Height = 24
    Caption = 'Pasta do FireBird'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton2: TSpeedButton
    Left = 536
    Top = 112
    Width = 23
    Height = 22
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 536
    Top = 152
    Width = 23
    Height = 22
    OnClick = SpeedButton3Click
  end
  object SpeedButton1: TSpeedButton
    Left = 536
    Top = 72
    Width = 23
    Height = 22
    Layout = blGlyphTop
    OnClick = SpeedButton1Click
  end
  object Label4: TLabel
    Left = 0
    Top = 16
    Width = 571
    Height = 37
    Caption = 'RESTAURA BACKUP NO FIREBIRD'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 192
    Top = 112
    Width = 337
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 192
    Top = 152
    Width = 337
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 24
    Top = 208
    Width = 529
    Height = 33
    Caption = 'Backup'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 192
    Top = 72
    Width = 337
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = 'Arquivos de programas\Firebird\Firebird_2_1\bin'
  end
  object OpenDialog1: TOpenDialog
    Left = 264
    Top = 256
  end
end
