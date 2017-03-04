object frmlancamentos: Tfrmlancamentos
  Left = 225
  Top = 33
  Width = 488
  Height = 544
  BorderIcons = [biSystemMenu]
  Caption = 'Lan'#231'amentos dos caixas'
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
    Left = 16
    Top = 16
    Width = 393
    Height = 481
    DataSource = dslancamento
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUPOM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_COMANDA'
        Title.Caption = 'COMANDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUBTOTAL'
        Visible = True
      end>
  end
  object dslancamento: TDataSource
    DataSet = frmmodulo.ZQuery2
    Left = 280
    Top = 112
  end
end
