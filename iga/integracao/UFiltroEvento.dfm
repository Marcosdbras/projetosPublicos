object FrmFiltroEvento: TFrmFiltroEvento
  Left = 265
  Top = 290
  Width = 550
  Height = 196
  BorderIcons = []
  Caption = 'Filtro de evento'
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
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Campo'
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 47
    Height = 13
    Caption = 'Opera'#231#227'o'
  end
  object Label3: TLabel
    Left = 24
    Top = 127
    Width = 53
    Height = 13
    Caption = 'Informa'#231#227'o'
  end
  object Label4: TLabel
    Left = 280
    Top = 16
    Width = 59
    Height = 13
    Caption = 'Ordenar por:'
  end
  object BtnOK: TBitBtn
    Left = 312
    Top = 128
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 4
    OnClick = BtnOKClick
  end
  object BtnCancel: TBitBtn
    Left = 392
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 5
    OnClick = BtnCancelClick
  end
  object EDInformacao: TEdit
    Left = 104
    Top = 127
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
    ItemIndex = 1
    TabOrder = 0
    Text = 'Nome'
    Items.Strings = (
      'Codigo'
      'Nome'
      'Data'
      'Valor')
  end
  object CBXOrdPor: TComboBox
    Left = 352
    Top = 16
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'N'#227'o selecionado'
    Items.Strings = (
      'Codigo'
      'Nome'
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
end
