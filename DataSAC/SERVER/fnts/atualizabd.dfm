object frmatualizabd: Tfrmatualizabd
  Left = 4
  Top = 146
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Atualiza'#231#227'o do banco de dados'
  ClientHeight = 441
  ClientWidth = 1302
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 76
    Width = 146
    Height = 13
    Caption = 'Aguarde, atualizando tabelas...'
  end
  object lblretorno: TLabel
    Left = 20
    Top = 36
    Width = 43
    Height = 13
    Caption = 'lblretorno'
  end
  object mmoEstruturaDados: TMemo
    Left = 16
    Top = 112
    Width = 1257
    Height = 89
    Lines.Strings = (
      'mmoEstruturaDados')
    TabOrder = 0
  end
  object mmoscriptgeral: TMemo
    Left = 16
    Top = 208
    Width = 1257
    Height = 105
    Lines.Strings = (
      'mmoscriptgeral')
    TabOrder = 1
  end
end
