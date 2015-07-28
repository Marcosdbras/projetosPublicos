object FrmSerieMat: TFrmSerieMat
  Left = 232
  Top = 196
  Width = 529
  Height = 251
  BorderIcons = []
  Caption = 'S'#233'rie e mat'#233'ria'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 521
    Height = 163
    DataSource = FrmDados.DTS_SerieMat
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyDown = DBGrid1KeyDown
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'NomeMat'
        Title.Caption = 'Nome da mat'#233'ria'
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODSERIE'
        Title.Caption = 'C'#243'digo da s'#233'rie'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QNTD_AULAS'
        Title.Caption = 'Quantidade de aulas'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeMaster'
        Title.Caption = 'Nome da materia master'
        Width = 133
        Visible = True
      end>
  end
  object BtnConfirmar: TBitBtn
    Left = 104
    Top = 184
    Width = 75
    Height = 25
    Caption = '&Confirmar'
    TabOrder = 1
    OnClick = BtnConfirmarClick
  end
  object BtnExcluir: TBitBtn
    Left = 192
    Top = 184
    Width = 75
    Height = 25
    Caption = '&Excluir'
    TabOrder = 2
    OnClick = BtnExcluirClick
  end
  object BtnSair: TBitBtn
    Left = 280
    Top = 184
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 3
    OnClick = BtnSairClick
  end
end
