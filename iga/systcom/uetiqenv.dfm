object frmetiqenv: Tfrmetiqenv
  Left = 327
  Top = 299
  Width = 477
  Height = 189
  BorderIcons = [biSystemMenu]
  Caption = 'Imprime Etiqueta para Remessa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 14
    Top = 70
    Width = 46
    Height = 13
    Caption = 'Volume(s)'
  end
  object Label2: TLabel
    Left = 14
    Top = 20
    Width = 41
    Height = 13
    Caption = 'Empresa'
  end
  object Label3: TLabel
    Left = 154
    Top = 70
    Width = 15
    Height = 13
    Caption = 'at'#233
  end
  object Label4: TLabel
    Left = 14
    Top = 118
    Width = 63
    Height = 13
    Caption = 'Notas Fiscais'
  end
  object edinvol1: TEdit
    Left = 102
    Top = 66
    Width = 41
    Height = 21
    TabOrder = 1
    Text = 'edinvol1'
    OnKeyPress = edinvol1KeyPress
  end
  object btnimprimir: TButton
    Left = 374
    Top = 61
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    TabOrder = 5
    OnClick = btnimprimirClick
  end
  object btncancelar: TButton
    Left = 374
    Top = 29
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 4
    OnClick = btncancelarClick
  end
  object edincli: TEdit
    Left = 102
    Top = 17
    Width = 257
    Height = 21
    TabOrder = 0
    Text = 'edincli'
    OnKeyPress = edincliKeyPress
  end
  object edinvol2: TEdit
    Left = 182
    Top = 66
    Width = 41
    Height = 21
    TabOrder = 2
    Text = 'edinvol2'
    OnKeyPress = edinvol2KeyPress
  end
  object edinfs: TEdit
    Left = 102
    Top = 114
    Width = 345
    Height = 21
    TabOrder = 3
    Text = 'edinfs'
    OnKeyPress = edinfsKeyPress
  end
  object sImpEtq: TSayPrint
    Porta = Lpt1
    Impressora = imEpsom
    EjectPage = False
    DelayPauseHide = 0
    CommandFile = False
    OutputFile = 'imprime.txt'
    Left = 336
    Top = 56
  end
end
