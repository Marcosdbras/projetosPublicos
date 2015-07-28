object FrmIndices: TFrmIndices
  Left = 192
  Top = 108
  Width = 397
  Height = 162
  Caption = 'Indices'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LblData: TLabel
    Left = 24
    Top = 40
    Width = 77
    Height = 13
    Caption = 'Data do boletim:'
  end
  object LblAno: TLabel
    Left = 24
    Top = 40
    Width = 50
    Height = 13
    Caption = 'Ano letivo:'
  end
  object EDData: TDBEdit
    Left = 136
    Top = 32
    Width = 121
    Height = 21
    DataField = 'DT_BOLETIM'
    DataSource = FrmDados.DTS_Indices
    TabOrder = 3
  end
  object EDAno: TDBEdit
    Left = 136
    Top = 32
    Width = 121
    Height = 21
    DataField = 'ANO'
    DataSource = FrmDados.DTS_Indices
    TabOrder = 0
  end
  object BtnAlterar: TBitBtn
    Left = 144
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 1
    OnClick = BtnAlterarClick
  end
  object BtnSair: TBitBtn
    Left = 248
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = BtnSairClick
  end
end
