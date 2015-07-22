object frmpesqcomanda: Tfrmpesqcomanda
  Left = 498
  Top = 59
  Width = 473
  Height = 638
  Caption = 'Pesquisa de Comanda'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 45
    Height = 13
    Caption = 'Comanda'
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 40
    Width = 441
    Height = 553
    DataSource = frmDados.Dts_totalcmdb
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CMDB'
        Title.Caption = 'COMANDA'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALP'
        Title.Caption = 'VALOR TOTAL'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_OP'
        Title.Caption = 'DATA ABERTURA'
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA_OP'
        Title.Caption = 'HORA ABERTURA'
        Width = 103
        Visible = True
      end>
  end
  object edicomanda: TEdit
    Left = 71
    Top = 11
    Width = 218
    Height = 21
    TabOrder = 0
    Text = 'edicomanda'
    OnChange = edicomandaChange
    OnKeyPress = edicomandaKeyPress
  end
end
