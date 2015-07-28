object frmampliafoto: Tfrmampliafoto
  Left = 69
  Top = 58
  Width = 1003
  Height = 724
  BorderIcons = []
  Caption = 'Amplia'#231#227'o Foto'
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
  object imgfoto1: TImage
    Left = 0
    Top = 57
    Width = 987
    Height = 629
    Align = alClient
    Stretch = True
  end
  object pnlsuperior: TPanel
    Left = 0
    Top = 0
    Width = 987
    Height = 57
    Align = alTop
    TabOrder = 0
    object pnlesq: TPanel
      Left = 701
      Top = 1
      Width = 285
      Height = 55
      Align = alRight
      TabOrder = 0
      object btnimprimir: TBitBtn
        Left = 6
        Top = 3
        Width = 135
        Height = 47
        Caption = '&Imprimir'
        TabOrder = 0
        OnClick = btnimprimirClick
      end
      object btnfechar: TBitBtn
        Left = 146
        Top = 3
        Width = 135
        Height = 47
        Caption = '&Fechar'
        TabOrder = 1
        OnClick = btnfecharClick
      end
    end
  end
end
