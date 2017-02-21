object frmloc_aliquota: Tfrmloc_aliquota
  Left = 177
  Top = 161
  Width = 182
  Height = 311
  Caption = 'Al'#237'quotas'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 174
    Height = 277
    Align = alClient
    DataSource = dsaliquota
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#211'DIGO'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -9
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ES'
        Title.Caption = 'ICMS - ES'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -9
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 77
        Visible = True
      end>
  end
  object dsaliquota: TDataSource
    DataSet = frmmodulo.qraliquota
    Left = 88
    Top = 112
  end
end
