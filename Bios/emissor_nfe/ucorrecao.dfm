object frmcorrecao: Tfrmcorrecao
  Left = 278
  Top = 294
  Width = 660
  Height = 229
  Caption = 'Carta de Corre'#231#227'o'
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
    Left = 8
    Top = 48
    Width = 55
    Height = 13
    Caption = 'Justificativa'
  end
  object Enviar: TButton
    Left = 464
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
    OnClick = EnviarClick
  end
  object Cancelar: TButton
    Left = 552
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = CancelarClick
  end
  object ediresp: TEdit
    Left = 8
    Top = 88
    Width = 625
    Height = 21
    TabOrder = 2
    Text = 'ediresp'
  end
end
