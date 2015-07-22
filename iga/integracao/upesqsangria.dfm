object frmpesqsangria: Tfrmpesqsangria
  Left = 34
  Top = 79
  Width = 961
  Height = 628
  BorderIcons = []
  Caption = 'Lan'#231'amento de Sangrias'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 23
    Top = 72
    Width = 746
    Height = 377
    DataSource = FrmDados.DTS_SANGRIA
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'MOTIVO'
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 459
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA'
        Width = 65
        Visible = True
      end>
  end
  object Filtrar: TBitBtn
    Left = 24
    Top = 23
    Width = 113
    Height = 25
    Caption = '&Filtrar'
    TabOrder = 1
    OnClick = FiltrarClick
  end
  object Sair: TBitBtn
    Left = 257
    Top = 23
    Width = 121
    Height = 25
    Caption = '&Sair'
    TabOrder = 2
    OnClick = SairClick
  end
  object btnlimpar: TBitBtn
    Left = 141
    Top = 23
    Width = 113
    Height = 25
    Caption = '&Limpar'
    TabOrder = 3
    OnClick = btnlimparClick
  end
end
