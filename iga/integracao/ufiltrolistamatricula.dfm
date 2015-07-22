object frmfiltrolistamatricula: Tfrmfiltrolistamatricula
  Left = 217
  Top = 227
  Width = 602
  Height = 221
  BorderIcons = []
  Caption = 'Imprime Lista Matr'#237'cula'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 51
    Width = 60
    Height = 13
    Caption = 'Matr'#237'cula de'
  end
  object Label2: TLabel
    Left = 280
    Top = 52
    Width = 15
    Height = 13
    Caption = 'at'#233
  end
  object edidatai: TMaskEdit
    Left = 168
    Top = 48
    Width = 104
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object edidataf: TMaskEdit
    Left = 306
    Top = 47
    Width = 110
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object btnimprime: TBitBtn
    Left = 472
    Top = 56
    Width = 113
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = btnimprimeClick
  end
  object BitBtn1: TBitBtn
    Left = 472
    Top = 96
    Width = 113
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
end
