object FrmFiltrofornecedores: TFrmFiltrofornecedores
  Left = 287
  Top = 296
  Width = 471
  Height = 249
  BorderIcons = []
  Caption = 'Filtro de Fornecedores'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 11
    Top = 56
    Width = 33
    Height = 13
    Caption = 'Campo'
  end
  object Label2: TLabel
    Left = 11
    Top = 101
    Width = 47
    Height = 13
    Caption = 'Opera'#231#227'o'
  end
  object Label3: TLabel
    Left = 11
    Top = 138
    Width = 53
    Height = 13
    Caption = 'Informa'#231#227'o'
  end
  object Label4: TLabel
    Left = 11
    Top = 181
    Width = 59
    Height = 13
    Caption = 'Ordenar por:'
  end
  object Operador: TLabel
    Left = 12
    Top = 17
    Width = 44
    Height = 13
    Caption = 'Operador'
  end
  object BtnOK: TBitBtn
    Left = 382
    Top = 105
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 4
    Visible = False
    OnClick = BtnOKClick
  end
  object BtnCancel: TBitBtn
    Left = 383
    Top = 40
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 5
    OnClick = BtnCancelClick
  end
  object ediinformacao: TEdit
    Left = 104
    Top = 136
    Width = 281
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 2
    OnKeyPress = ediinformacaoKeyPress
  end
  object CbxCampo: TComboBox
    Left = 104
    Top = 56
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    OnDropDown = CbxCampoDropDown
    OnKeyDown = CbxCampoKeyDown
    OnKeyPress = CbxCampoKeyPress
  end
  object CbxOrdPor: TComboBox
    Left = 104
    Top = 176
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    OnKeyDown = CbxOrdPorKeyDown
    OnKeyPress = CbxOrdPorKeyPress
  end
  object CbxOperacao: TComboBox
    Left = 104
    Top = 96
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    OnKeyDown = CbxOperacaoKeyDown
    OnKeyPress = CbxOperacaoKeyPress
  end
  object cbxoperador: TComboBox
    Left = 104
    Top = 12
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    OnKeyDown = cbxoperadorKeyDown
    OnKeyPress = cbxoperadorKeyPress
  end
  object btnaplicar: TBitBtn
    Left = 383
    Top = 12
    Width = 75
    Height = 25
    Caption = '&Aplicar'
    TabOrder = 7
    OnClick = btnaplicarClick
  end
  object btnlimpar: TBitBtn
    Left = 383
    Top = 68
    Width = 75
    Height = 25
    Caption = '&Limpar'
    TabOrder = 8
    OnClick = btnlimparClick
  end
end
