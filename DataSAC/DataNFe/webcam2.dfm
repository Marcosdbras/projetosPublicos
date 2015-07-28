object frmwebcam2: Tfrmwebcam2
  Left = 411
  Top = 219
  Width = 361
  Height = 339
  Caption = 'Webcam - Aquisi'#231#227'o de Imagem'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 18
    Top = 16
    Width = 327
    Height = 241
    BevelOuter = bvLowered
    Caption = 'Panel1'
    TabOrder = 0
    object Camera1: TCamera
      Left = 5
      Top = 5
      Width = 316
      Height = 231
      FichierVideo = 'Video.avi'
      FichierImage = 'Imagen.bmp'
      StrechView = False
    end
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 267
    Width = 73
    Height = 25
    Caption = 'Gravar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 96
    Top = 267
    Width = 61
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
