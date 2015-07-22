object FrmPesqSerie: TFrmPesqSerie
  Left = 192
  Top = 108
  Width = 736
  Height = 480
  Caption = 'Pesquisa de s'#233'rie'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 725
    Height = 341
    DataSource = FrmDados.DTS_Serie
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Caption = 'Nome'
        Width = 470
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'Codigo'
        Width = 199
        Visible = True
      end>
  end
  object BtnInserir: TBitBtn
    Left = 48
    Top = 392
    Width = 75
    Height = 25
    Caption = '&Inserir'
    TabOrder = 1
  end
  object BtnEditar: TBitBtn
    Left = 128
    Top = 392
    Width = 75
    Height = 25
    Caption = 'E&ditar'
    TabOrder = 2
  end
  object BtnMenu: TBitBtn
    Left = 616
    Top = 408
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 3
  end
  object BtnExcluir: TBitBtn
    Left = 208
    Top = 392
    Width = 75
    Height = 25
    Caption = '&Excluir'
    TabOrder = 4
  end
  object BtnFiltrar: TBitBtn
    Left = 504
    Top = 360
    Width = 97
    Height = 25
    Caption = '&Filtrar pesquisa'
    TabOrder = 5
  end
  object BtnLimpFiltro: TBitBtn
    Left = 616
    Top = 360
    Width = 75
    Height = 25
    Caption = '&Limpar filtro'
    TabOrder = 6
  end
end
