object FrmEscSerie: TFrmEscSerie
  Left = 192
  Top = 108
  Width = 823
  Height = 480
  Caption = 'Escolha da serie e projeto para rela'#231#227'o'
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
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 815
    Height = 405
    Align = alClient
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
        FieldName = 'CODIGO'
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TURMA'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRAU'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERIODO'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 815
    Height = 41
    Align = alTop
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 672
      Top = 8
      Width = 73
      Height = 25
      Caption = '&OK'
      OnClick = SpeedButton1Click
    end
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 22
      Height = 13
      Caption = 'Ano:'
    end
    object EdAno: TEdit
      Left = 45
      Top = 11
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'EdAno'
      OnEnter = EdAnoExit
      OnExit = EdAnoExit
      OnKeyPress = EdAnoKeyPress
    end
  end
end
