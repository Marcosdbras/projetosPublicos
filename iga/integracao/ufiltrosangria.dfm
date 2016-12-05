object FrmFiltroSangria: TFrmFiltroSangria
  Left = 264
  Top = 317
  Width = 463
  Height = 196
  BorderIcons = []
  Caption = 'Filtro de contas'
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
    Left = 24
    Top = 18
    Width = 33
    Height = 13
    Caption = 'Campo'
  end
  object Label2: TLabel
    Left = 24
    Top = 76
    Width = 47
    Height = 13
    Caption = 'Opera'#231#227'o'
  end
  object Label3: TLabel
    Left = 24
    Top = 136
    Width = 53
    Height = 13
    Caption = 'Informa'#231#227'o'
  end
  object Label4: TLabel
    Left = 240
    Top = 18
    Width = 31
    Height = 13
    Caption = 'Ordem'
  end
  object BtnOK: TBitBtn
    Left = 264
    Top = 128
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 3
    OnClick = BtnOKClick
  end
  object BtnCancel: TBitBtn
    Left = 344
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 4
    OnClick = BtnCancelClick
  end
  object EDInformacao: TEdit
    Left = 88
    Top = 132
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object CBXCampo: TComboBox
    Left = 80
    Top = 16
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'Descricao'
    Items.Strings = (
      'Descricao'
      'Data'
      'Valor')
  end
  object CBXOperacao: TComboBox
    Left = 80
    Top = 72
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 6
    TabOrder = 1
    Text = 'Qualquer parte'
    Items.Strings = (
      'Igual'
      'Diferente de'
      'Menor ou igual'
      'Maior ou igual'
      'Menor'
      'Maior'
      'Qualquer parte')
  end
  object cbxordem: TComboBox
    Left = 296
    Top = 16
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'Nome'
    Items.Strings = (
      'Descricao'
      'Data'
      'Valor')
  end
end
